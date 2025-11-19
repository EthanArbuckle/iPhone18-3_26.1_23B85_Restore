@interface VideosExtrasCollectionReusableView
- (VideosExtrasCollectionReusableView)initWithFrame:(CGRect)a3;
- (void)_configureConstraintsForInsets:(UIEdgeInsets)a3;
- (void)configureForHeaderElement:(id)a3 headerStyle:(id)a4;
@end

@implementation VideosExtrasCollectionReusableView

- (VideosExtrasCollectionReusableView)initWithFrame:(CGRect)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VideosExtrasCollectionReusableView;
  v3 = [(VideosExtrasCollectionReusableView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VideosExtrasCollectionReusableView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(VideosExtrasCollectionReusableView *)v4 setBackgroundColor:v5];

    v6 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    textLabel = v4->_textLabel;
    v4->_textLabel = v6;

    [(UILabel *)v4->_textLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v4->_textLabel setBackgroundColor:v8];

    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_textLabel setTextColor:v9];

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

- (void)_configureConstraintsForInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)configureForHeaderElement:(id)a3 headerStyle:(id)a4
{
  v38 = a3;
  v6 = a4;
  v7 = [v38 title];
  v8 = [v7 text];
  v9 = [v8 length];

  if (v9)
  {
    [v6 insets];
    [(VideosExtrasCollectionReusableView *)self _configureConstraintsForInsets:?];
    v10 = [v6 textColor];
    [(UILabel *)self->_textLabel setTextColor:v10];

    v11 = [v6 textStyle];
    v12 = MEMORY[0x1E69DB880];
    v13 = [v6 defaultFontAttributes];
    v14 = [v12 fontDescriptorWithFontAttributes:v13];

    [(UILabel *)self->_textLabel configureForIKTextElement:v7 fontDescriptor:v14 textStyle:v11];
    textBottomConstraint = self->_textBottomConstraint;
    if (!textBottomConstraint)
    {
      v16 = MEMORY[0x1E69AD980];
      textLabel = self->_textLabel;
      [v6 textBaselineDescender];
      v19 = [v16 contentSizeAutoupdatingConstraintWithItem:self attribute:4 relatedBy:0 toItem:textLabel attribute:12 multiplier:v11 textStyle:1.0 defaultSizeConstant:v18];
      v20 = self->_textBottomConstraint;
      self->_textBottomConstraint = v19;

      LODWORD(v21) = 1148829696;
      [(MPUContentSizeLayoutConstraint *)self->_textBottomConstraint setPriority:v21];
      textBottomConstraint = self->_textBottomConstraint;
    }

    [(MPUContentSizeLayoutConstraint *)textBottomConstraint setTextStyle:v11];
    [v6 textBaselineDescender];
    [(MPUContentSizeLayoutConstraint *)self->_textBottomConstraint setDefaultSizeConstant:?];
    [(MPUContentSizeLayoutConstraint *)self->_textBottomConstraint setActive:1];
    textTopConstraint = self->_textTopConstraint;
    if (!textTopConstraint)
    {
      v23 = MEMORY[0x1E69AD980];
      v24 = self->_textLabel;
      [v6 textBaselineHeight];
      v26 = [v23 constraintWithAutoupdatingBaselineOfView:v24 relation:0 toView:self attribute:3 withTextStyle:v11 multiplier:1.0 nonStandardLeading:v25];
      v27 = self->_textTopConstraint;
      self->_textTopConstraint = v26;

      LODWORD(v28) = 1148829696;
      [(MPUContentSizeLayoutConstraint *)self->_textTopConstraint setPriority:v28];
      textTopConstraint = self->_textTopConstraint;
    }

    [(MPUContentSizeLayoutConstraint *)textTopConstraint setTextStyle:v11];
    [v6 textBaselineHeight];
    [(MPUContentSizeLayoutConstraint *)self->_textTopConstraint setDefaultSizeConstant:?];
    [(MPUContentSizeLayoutConstraint *)self->_textTopConstraint setActive:1];
  }

  v29 = [v38 separator];
  borderView = self->_borderView;
  if (v29 == 1)
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