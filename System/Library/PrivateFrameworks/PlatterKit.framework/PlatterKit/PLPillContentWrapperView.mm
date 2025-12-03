@interface PLPillContentWrapperView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PLPillContentWrapperView)initWithFrame:(CGRect)frame;
- (id)_contentLabel;
- (void)_makeBottomConstraintBreakable;
- (void)_makeTopConstraintBreakable;
- (void)_setContentView:(id)view transitionCoordinator:(id)coordinator;
- (void)_updateConstraintsPriority;
- (void)beginAppearanceTransition:(BOOL)transition;
- (void)endAppearanceTransition:(BOOL)transition;
- (void)setContentItem:(id)item transitionCoordinator:(id)coordinator;
- (void)setTopConstraintBreakable:(BOOL)breakable;
- (void)updateWithContentItem:(id)item;
@end

@implementation PLPillContentWrapperView

- (PLPillContentWrapperView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PLPillContentWrapperView;
  v3 = [(PLPillContentWrapperView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
    [(PLPillContentWrapperView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1132068864;
    [(PLPillContentWrapperView *)v4 setContentCompressionResistancePriority:0 forAxis:v5];
  }

  return v4;
}

- (void)setTopConstraintBreakable:(BOOL)breakable
{
  if (self->_topConstraintBreakable != breakable)
  {
    self->_topConstraintBreakable = breakable;
    [(PLPillContentWrapperView *)self _updateConstraintsPriority];
  }
}

- (void)setContentItem:(id)item transitionCoordinator:(id)coordinator
{
  itemCopy = item;
  coordinatorCopy = coordinator;
  if (([itemCopy isEqual:self->_contentItem] & 1) == 0)
  {
    objc_storeStrong(&self->_contentItem, item);
    if (self->_adjustsFontForContentSizeCategory)
    {
      traitCollection = [(PLPillContentWrapperView *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      preferredContentSizeCategory = self->_preferredContentSizeCategory;
      self->_preferredContentSizeCategory = preferredContentSizeCategory;
    }

    v11 = UIViewForPLPillContentItem(itemCopy, self->_preferredContentSizeCategory);
    [(PLPillContentWrapperView *)self _setContentView:v11 transitionCoordinator:coordinatorCopy];
  }
}

- (void)beginAppearanceTransition:(BOOL)transition
{
  appearState = self->_appearState;
  if (transition)
  {
    if (appearState)
    {
      v5 = appearState == 3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      return;
    }

    v6 = 1;
  }

  else
  {
    if ((appearState - 1) > 1)
    {
      return;
    }

    v6 = 3;
  }

  self->_appearState = v6;
  if (![(PLPillContentItem *)self->_contentItem isSolo]&& self->_appearState == 3)
  {
    _contentLabel = [(PLPillContentWrapperView *)self _contentLabel];
    [_contentLabel setMarqueeRunning:0];
    [_contentLabel _setMarqueeUpdatable:0];
  }
}

- (void)endAppearanceTransition:(BOOL)transition
{
  appearState = self->_appearState;
  if (transition)
  {
    if (appearState != 1)
    {
      return;
    }

    v5 = 2;
  }

  else
  {
    if (appearState != 3)
    {
      return;
    }

    v5 = 0;
  }

  self->_appearState = v5;
  if (![(PLPillContentItem *)self->_contentItem isSolo]&& self->_appearState == 2)
  {
    _contentLabel = [(PLPillContentWrapperView *)self _contentLabel];
    [_contentLabel setMarqueeRunning:1];
  }
}

- (void)updateWithContentItem:(id)item
{
  v39 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = itemCopy;
  if (self->_contentView)
  {
    text = [itemCopy text];

    if (text)
    {
      _contentLabel = [(PLPillContentWrapperView *)self _contentLabel];
      if (!_contentLabel)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          arrangedSubviews = [(UIView *)self->_contentView arrangedSubviews];
          _contentLabel = [arrangedSubviews countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (_contentLabel)
          {
            v9 = *v35;
            while (2)
            {
              for (i = 0; i != _contentLabel; i = i + 1)
              {
                if (*v35 != v9)
                {
                  objc_enumerationMutation(arrangedSubviews);
                }

                v11 = *(*(&v34 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  _contentLabel = v11;
                  goto LABEL_16;
                }
              }

              _contentLabel = [arrangedSubviews countByEnumeratingWithState:&v34 objects:v38 count:16];
              if (_contentLabel)
              {
                continue;
              }

              break;
            }
          }

LABEL_16:
        }

        else
        {
          _contentLabel = 0;
        }
      }

      [_contentLabel _setMarqueeUpdatable:1];
      text2 = [v5 text];
      [_contentLabel setText:text2];
    }

    accessoryView = [v5 accessoryView];
    v14 = accessoryView == 0;

    if (!v14)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0x7FFFFFFFFFFFFFFFLL;
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x3032000000;
      v28[3] = __Block_byref_object_copy_;
      v28[4] = __Block_byref_object_dispose_;
      v29 = 0;
      contentView = self->_contentView;
      v16 = objc_opt_class();
      v17 = contentView;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (v19)
      {
        arrangedSubviews2 = [(UIView *)v19 arrangedSubviews];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __50__PLPillContentWrapperView_updateWithContentItem___block_invoke;
        v27[3] = &unk_2784253F0;
        v27[4] = &v30;
        v27[5] = v28;
        [arrangedSubviews2 enumerateObjectsUsingBlock:v27];

        if (v31[3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = MEMORY[0x277D75D18];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __50__PLPillContentWrapperView_updateWithContentItem___block_invoke_2;
          v22[3] = &unk_278425418;
          v23 = v19;
          v24 = v5;
          v25 = &v30;
          v26 = v28;
          [v21 performWithoutAnimation:v22];
        }
      }

      _Block_object_dispose(v28, 8);
      _Block_object_dispose(&v30, 8);
    }
  }
}

void __50__PLPillContentWrapperView_updateWithContentItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __50__PLPillContentWrapperView_updateWithContentItem___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accessoryView];
  [v2 insertArrangedSubview:v3 atIndex:*(*(*(a1 + 48) + 8) + 24)];

  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 56) + 8) + 40);

  return [v4 removeArrangedSubview:v5];
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_contentView intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  _contentLabel = [(PLPillContentWrapperView *)self _contentLabel];
  v8 = _contentLabel;
  if (_contentLabel)
  {
    font = [_contentLabel font];
    [font capHeight];
    v11 = v10;
    [font descender];
    v13 = v11 - v12;
    [font _scaledValueForValue:2.0];
    v6 = ceil(v13 + v14);
  }

  v15 = v4;
  v16 = v6;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_contentView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)adjustsFontForContentSizeCategory
{
  if (!self->_adjustsFontForContentSizeCategory)
  {
    return 0;
  }

  _contentLabel = [(PLPillContentWrapperView *)self _contentLabel];
  v3 = _contentLabel != 0;

  return v3;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  traitCollection = [(PLPillContentWrapperView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (self->_adjustsFontForContentSizeCategory && (BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, preferredContentSizeCategory);
    _contentLabel = [(PLPillContentWrapperView *)self _contentLabel];
    if (_contentLabel)
    {
      PLConfigureUILabelWithPLPillContentItemStyle(_contentLabel, [(PLPillContentItem *)self->_contentItem style], [(PLPillContentItem *)self->_contentItem isSolo]^ 1, self->_preferredContentSizeCategory);
    }

    [(PLPillContentWrapperView *)self invalidateIntrinsicContentSize];
    [(PLPillContentWrapperView *)self setNeedsLayout];

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateConstraintsPriority
{
  if (self->_topConstraintBreakable)
  {
    [(PLPillContentWrapperView *)self _makeTopConstraintBreakable];
  }

  else
  {
    [(PLPillContentWrapperView *)self _makeBottomConstraintBreakable];
  }
}

- (void)_makeTopConstraintBreakable
{
  LODWORD(v2) = 1132068864;
  [(NSLayoutConstraint *)self->_topConstraint setPriority:v2];
  bottomConstraint = self->_bottomConstraint;
  LODWORD(v5) = 1148846080;

  [(NSLayoutConstraint *)bottomConstraint setPriority:v5];
}

- (void)_makeBottomConstraintBreakable
{
  LODWORD(v2) = 1132068864;
  [(NSLayoutConstraint *)self->_bottomConstraint setPriority:v2];
  topConstraint = self->_topConstraint;
  LODWORD(v5) = 1148846080;

  [(NSLayoutConstraint *)topConstraint setPriority:v5];
}

- (void)_setContentView:(id)view transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v32 = contentView;
    objc_storeStrong(&self->_contentView, view);
    [(UIView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PLPillContentWrapperView *)self addSubview:viewCopy];
    leftAnchor = [(PLPillContentWrapperView *)self leftAnchor];
    leftAnchor2 = [(UIView *)viewCopy leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

    rightAnchor = [(PLPillContentWrapperView *)self rightAnchor];
    rightAnchor2 = [(UIView *)viewCopy rightAnchor];
    v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

    LODWORD(v16) = 1144750080;
    [(PLPillContentWrapperView *)self setContentHuggingPriority:1 forAxis:v16];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v12, v15, 0}];
    _contentLabel = [(PLPillContentWrapperView *)self _contentLabel];

    if (_contentLabel)
    {
      centerYAnchor = [(PLPillContentWrapperView *)self centerYAnchor];
      centerYAnchor2 = [(UIView *)viewCopy centerYAnchor];
      v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      LODWORD(v22) = 1148846080;
      [(NSLayoutConstraint *)v21 setPriority:v22];
    }

    else
    {
      topAnchor = [(PLPillContentWrapperView *)self topAnchor];
      topAnchor2 = [(UIView *)viewCopy topAnchor];
      v25 = [topAnchor constraintEqualToAnchor:topAnchor2];

      topConstraint = self->_topConstraint;
      self->_topConstraint = v25;
      v27 = v25;

      bottomAnchor = [(PLPillContentWrapperView *)self bottomAnchor];
      bottomAnchor2 = [(UIView *)viewCopy bottomAnchor];
      v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

      bottomConstraint = self->_bottomConstraint;
      self->_bottomConstraint = v30;
      v21 = v30;

      [v17 addObject:v27];
    }

    [v17 addObject:v21];

    [MEMORY[0x277CCAAD0] activateConstraints:v17];
    [(PLPillContentWrapperView *)self _updateConstraintsPriority];
    [(PLPillContentWrapperView *)self invalidateIntrinsicContentSize];
    if (coordinatorCopy)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __66__PLPillContentWrapperView__setContentView_transitionCoordinator___block_invoke;
      v38[3] = &unk_2784250D8;
      v38[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v38];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __66__PLPillContentWrapperView__setContentView_transitionCoordinator___block_invoke_2;
      v35[3] = &unk_278425440;
      v36 = v32;
      selfCopy = self;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __66__PLPillContentWrapperView__setContentView_transitionCoordinator___block_invoke_3;
      v33[3] = &unk_2784251C8;
      v34 = v36;
      [coordinatorCopy animateAlongsideTransition:v35 completion:v33];
    }

    else
    {
      [(UIView *)v32 removeFromSuperview];
      [(UIView *)self pl_performCrossFadeIfNecessary];
    }
  }
}

uint64_t __66__PLPillContentWrapperView__setContentView_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 408);

  return [v2 setAlpha:1.0];
}

- (id)_contentLabel
{
  contentView = self->_contentView;
  v3 = objc_opt_class();
  v4 = contentView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end