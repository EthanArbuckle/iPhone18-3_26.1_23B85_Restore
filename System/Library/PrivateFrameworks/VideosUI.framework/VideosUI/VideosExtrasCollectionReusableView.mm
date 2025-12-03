@interface VideosExtrasCollectionReusableView
- (VideosExtrasCollectionReusableView)initWithFrame:(CGRect)frame;
- (void)_configureConstraintsForInsets:(UIEdgeInsets)insets;
- (void)configureForHeaderElement:(id)element headerStyle:(id)style;
@end

@implementation VideosExtrasCollectionReusableView

- (VideosExtrasCollectionReusableView)initWithFrame:(CGRect)frame
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VideosExtrasCollectionReusableView;
  v3 = [(VideosExtrasCollectionReusableView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VideosExtrasCollectionReusableView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(VideosExtrasCollectionReusableView *)v4 setBackgroundColor:clearColor];

    initForAutolayout = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    textLabel = v4->_textLabel;
    v4->_textLabel = initForAutolayout;

    [(UILabel *)v4->_textLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v4->_textLabel setBackgroundColor:clearColor2];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_textLabel setTextColor:whiteColor];

    [(VideosExtrasCollectionReusableView *)v4 addSubview:v4->_textLabel];
    v10 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_textLabel attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:0.0];
    textLeftConstraint = v4->_textLeftConstraint;
    v4->_textLeftConstraint = v10;

    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_textLabel attribute:2 relatedBy:0 toItem:v4 attribute:2 multiplier:1.0 constant:0.0];
    textRightConstraint = v4->_textRightConstraint;
    v4->_textRightConstraint = v12;

    v17[0] = v4->_textLeftConstraint;
    v17[1] = v4->_textRightConstraint;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [(VideosExtrasCollectionReusableView *)v4 addConstraints:v14];
  }

  return v4;
}

- (void)_configureConstraintsForInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(NSLayoutConstraint *)self->_textLeftConstraint constant];
  if (left != v8)
  {
    [(NSLayoutConstraint *)self->_textLeftConstraint setConstant:left];
    [(VideosExtrasCollectionReusableView *)self setNeedsUpdateConstraints];
  }

  [(NSLayoutConstraint *)self->_textRightConstraint constant];
  if (right != -v9)
  {
    [(NSLayoutConstraint *)self->_textRightConstraint setConstant:-right];
    [(VideosExtrasCollectionReusableView *)self setNeedsUpdateConstraints];
  }

  self->_labelInsets.top = top;
  self->_labelInsets.left = left;
  self->_labelInsets.bottom = bottom;
  self->_labelInsets.right = right;
}

- (void)configureForHeaderElement:(id)element headerStyle:(id)style
{
  elementCopy = element;
  styleCopy = style;
  title = [elementCopy title];
  text = [title text];
  v9 = [text length];

  if (v9)
  {
    [styleCopy insets];
    [(VideosExtrasCollectionReusableView *)self _configureConstraintsForInsets:?];
    textColor = [styleCopy textColor];
    [(UILabel *)self->_textLabel setTextColor:textColor];

    textStyle = [styleCopy textStyle];
    v12 = MEMORY[0x1E69DB880];
    defaultFontAttributes = [styleCopy defaultFontAttributes];
    v14 = [v12 fontDescriptorWithFontAttributes:defaultFontAttributes];

    [(UILabel *)self->_textLabel configureForIKTextElement:title fontDescriptor:v14 textStyle:textStyle];
    textBottomConstraint = self->_textBottomConstraint;
    if (!textBottomConstraint)
    {
      v16 = MEMORY[0x1E69AD980];
      textLabel = self->_textLabel;
      [styleCopy textBaselineDescender];
      v19 = [v16 contentSizeAutoupdatingConstraintWithItem:self attribute:4 relatedBy:0 toItem:textLabel attribute:12 multiplier:textStyle textStyle:1.0 defaultSizeConstant:v18];
      v20 = self->_textBottomConstraint;
      self->_textBottomConstraint = v19;

      LODWORD(v21) = 1148829696;
      [(MPUContentSizeLayoutConstraint *)self->_textBottomConstraint setPriority:v21];
      textBottomConstraint = self->_textBottomConstraint;
    }

    [(MPUContentSizeLayoutConstraint *)textBottomConstraint setTextStyle:textStyle];
    [styleCopy textBaselineDescender];
    [(MPUContentSizeLayoutConstraint *)self->_textBottomConstraint setDefaultSizeConstant:?];
    [(MPUContentSizeLayoutConstraint *)self->_textBottomConstraint setActive:1];
    textTopConstraint = self->_textTopConstraint;
    if (!textTopConstraint)
    {
      v23 = MEMORY[0x1E69AD980];
      v24 = self->_textLabel;
      [styleCopy textBaselineHeight];
      v26 = [v23 constraintWithAutoupdatingBaselineOfView:v24 relation:0 toView:self attribute:3 withTextStyle:textStyle multiplier:1.0 nonStandardLeading:v25];
      v27 = self->_textTopConstraint;
      self->_textTopConstraint = v26;

      LODWORD(v28) = 1148829696;
      [(MPUContentSizeLayoutConstraint *)self->_textTopConstraint setPriority:v28];
      textTopConstraint = self->_textTopConstraint;
    }

    [(MPUContentSizeLayoutConstraint *)textTopConstraint setTextStyle:textStyle];
    [styleCopy textBaselineHeight];
    [(MPUContentSizeLayoutConstraint *)self->_textTopConstraint setDefaultSizeConstant:?];
    [(MPUContentSizeLayoutConstraint *)self->_textTopConstraint setActive:1];
  }

  separator = [elementCopy separator];
  borderView = self->_borderView;
  if (separator == 1)
  {
    if (!borderView)
    {
      v31 = +[VideosExtrasElementViewController _borderView];
      v32 = self->_borderView;
      self->_borderView = v31;

      [(UIView *)self->_borderView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(VideosExtrasCollectionReusableView *)self addSubview:self->_borderView];
    }

    if (!self->_borderConstraints)
    {
      v33 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_borderView attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
      v34 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_borderView toView:self alongEdges:10 insets:{self->_labelInsets.top, self->_labelInsets.left, self->_labelInsets.bottom, self->_labelInsets.right}];
      v35 = [v34 arrayByAddingObject:v33];
      borderConstraints = self->_borderConstraints;
      self->_borderConstraints = v35;

      [(VideosExtrasCollectionReusableView *)self addConstraints:self->_borderConstraints];
LABEL_16:
    }
  }

  else
  {
    if (borderView)
    {
      [(UIView *)borderView removeFromSuperview];
      v37 = self->_borderView;
      self->_borderView = 0;
    }

    if (self->_borderConstraints)
    {
      [(VideosExtrasCollectionReusableView *)self removeConstraints:?];
      v33 = self->_borderConstraints;
      self->_borderConstraints = 0;
      goto LABEL_16;
    }
  }
}

@end