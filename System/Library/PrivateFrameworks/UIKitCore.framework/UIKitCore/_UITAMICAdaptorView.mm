@interface _UITAMICAdaptorView
+ (BOOL)shouldWrapView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_UITAMICAdaptorView)initWithView:(id)view;
- (_UITAMICAdaptorViewDelegate)delegate;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_updateTraitsAndLayoutSizeIfNecessary;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setSizingPriority:(float)priority;
- (void)updateForAvailableSize;
@end

@implementation _UITAMICAdaptorView

- (void)didMoveToWindow
{
  window = [(UIView *)self window];
  if (window)
  {
    [(_UITAMICAdaptorView *)self updateForAvailableSize];
    [(UIView *)&self->_view->super.super.isa _addGeometryChangeObserver:?];
  }

  else
  {
    [(UIView *)&self->_view->super.super.isa _removeGeometryChangeObserver:?];
  }
}

- (void)updateForAvailableSize
{
  self->_inLayout = 1;
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained availableSizeForAdaptor:self proposedSize:{v4, v6}];
    v4 = v8;
    v6 = v9;
  }

  [(UIView *)self->_view systemLayoutSizeFittingSize:v4, v6];
  v11 = v10;
  v13 = v12;
  [(UIView *)self->_view frame];
  if (v14 >= v11)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  if (v15 >= v13)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  if (v16 != self->_layoutSize.width || v17 != self->_layoutSize.height)
  {
    self->_layoutSize.width = v16;
    self->_layoutSize.height = v17;
    [(NSLayoutConstraint *)self->_width setConstant:?];
    [(NSLayoutConstraint *)self->_height setConstant:self->_layoutSize.height];
    if ([(_UITAMICAdaptorView *)self invalidatesIntrinsicContentSizeOnSizeChange])
    {
      [(UIView *)self invalidateIntrinsicContentSize];
    }
  }

  self->_inLayout = 0;
}

- (void)layoutSubviews
{
  v3 = +[UIView areAnimationsEnabled];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [UIView setAnimationsEnabled:0];
  }

  self->_inLayout = 1;
  v4.receiver = self;
  v4.super_class = _UITAMICAdaptorView;
  [(UIView *)&v4 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_view setFrame:?];
  self->_inLayout = 0;
  [UIView setAnimationsEnabled:v3];
}

- (void)_updateTraitsAndLayoutSizeIfNecessary
{
  if ((*(&self->super._viewFlags + 14) & 2) != 0)
  {
    _window = [(UIView *)self _window];

    if (_window)
    {
      [(UIView *)self updateTraitsIfNeeded];

      [(_UITAMICAdaptorView *)self updateForAvailableSize];
    }
  }
}

+ (BOOL)shouldWrapView:(id)view
{
  viewCopy = view;
  if ([viewCopy _hasLayoutArrangements])
  {
    v4 = 0;
  }

  else
  {
    if (UIApp)
    {
      v5 = 0;
    }

    else
    {
      v6 = *MEMORY[0x1E695F060];
      v7 = *(MEMORY[0x1E695F060] + 8);
      [viewCopy systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], v7}];
      v9 = v8;
      v11 = v10;
      _wantsAutolayout = [viewCopy _wantsAutolayout];
      v13 = v11 == v7 && v9 == v6;
      if (_wantsAutolayout)
      {
        v5 = v13;
      }

      else
      {
        v5 = 0;
      }
    }

    _constraintsExceptingSubviewAutoresizingConstraints = [viewCopy _constraintsExceptingSubviewAutoresizingConstraints];
    v15 = [_constraintsExceptingSubviewAutoresizingConstraints count];

    if ([viewCopy translatesAutoresizingMaskIntoConstraints])
    {
      v4 = v15 == 0 || v5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (_UITAMICAdaptorView)initWithView:(id)view
{
  viewCopy = view;
  if (([viewCopy translatesAutoresizingMaskIntoConstraints] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITAMICAdaptorView.m" lineNumber:50 description:{@"_UITAMICAdaptorView only works with views that have .translatesAutoresizingMaskIntoConstraints=YES (%@)", viewCopy}];
  }

  [viewCopy frame];
  v20.receiver = self;
  v20.super_class = _UITAMICAdaptorView;
  v7 = [(UIView *)&v20 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_view, view);
    [(UIView *)v8 addSubview:v8->_view];
    [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v8 setAutoresizesSubviews:0];
    v8->_sizingPriority = 900.0;
    widthAnchor = [(UIView *)v8 widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:0.0];
    width = v8->_width;
    v8->_width = v10;

    sizingPriority = v8->_sizingPriority;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [viewCopy contentCompressionResistancePriorityForAxis:0];
      *&v13 = fmaxf(*&v13, 51.0);
      if (*&v13 <= 999.0)
      {
        sizingPriority = *&v13;
      }

      else
      {
        sizingPriority = 999.0;
      }
    }

    *&v13 = sizingPriority;
    [(NSLayoutConstraint *)v8->_width setPriority:v13];
    [(NSLayoutConstraint *)v8->_width setActive:1];
    heightAnchor = [(UIView *)v8 heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:0.0];
    height = v8->_height;
    v8->_height = v15;

    *&v17 = v8->_sizingPriority;
    [(NSLayoutConstraint *)v8->_height setPriority:v17];
    [(NSLayoutConstraint *)v8->_height setActive:1];
  }

  return v8;
}

- (void)setSizingPriority:(float)priority
{
  if (self->_sizingPriority != priority)
  {
    self->_sizingPriority = priority;
    [(NSLayoutConstraint *)self->_width setPriority:?];
    *&v4 = self->_sizingPriority;
    height = self->_height;

    [(NSLayoutConstraint *)height setPriority:v4];
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(_UITAMICAdaptorView *)self _updateTraitsAndLayoutSizeIfNecessary];
  v14.receiver = self;
  v14.super_class = _UITAMICAdaptorView;
  *&v10 = priority;
  *&v11 = fittingPriority;
  [(UIView *)&v14 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_UITAMICAdaptorView *)self _updateTraitsAndLayoutSizeIfNecessary:fits.width];
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  ancestorCopy = ancestor;
  if (self->_view == ancestorCopy && !self->_inLayout)
  {
    v6 = ancestorCopy;
    [(_UITAMICAdaptorView *)self updateForAvailableSize];
    ancestorCopy = v6;
  }
}

- (_UITAMICAdaptorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end