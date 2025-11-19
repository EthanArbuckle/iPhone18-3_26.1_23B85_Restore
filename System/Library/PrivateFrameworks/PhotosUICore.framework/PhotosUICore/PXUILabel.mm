@interface PXUILabel
- (PXUILabel)initWithCoder:(id)a3;
- (PXUILabel)initWithFrame:(CGRect)a3;
- (id)_configuredText;
- (void)_commonPXMemoriesLabelInitialization;
- (void)_configureLabel;
- (void)setSpec:(id)a3;
- (void)setText:(id)a3;
- (void)updateConstraints;
@end

@implementation PXUILabel

- (id)_configuredText
{
  v3 = [(PXUILabel *)self text];
  v4 = [(PXUILabel *)self spec];
  v5 = [v3 px_stringByApplyingCapitalization:{objc_msgSend(v4, "capitalization")}];

  return v5;
}

- (void)updateConstraints
{
  v35[5] = *MEMORY[0x1E69E9840];
  verticalAlignment = self->_verticalAlignment;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = self->_label;
  LODWORD(v6) = 1132068864;
  [(UILabel *)v5 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [(UILabel *)v5 setContentCompressionResistancePriority:0 forAxis:v7];
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  visualEffectView = self->_visualEffectView;
  if (!visualEffectView)
  {
    visualEffectView = self;
  }

  v32 = visualEffectView;
  v34[0] = @"leftInset";
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:left];
  v35[0] = v13;
  v34[1] = @"topInset";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:top];
  v35[1] = v14;
  v34[2] = @"rightInset";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:right];
  v35[2] = v15;
  v34[3] = @"bottomInset";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:bottom];
  v34[4] = @"marginPriority";
  v35[3] = v16;
  v35[4] = &unk_1F1911C28;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:5];

  if (verticalAlignment)
  {
    if (verticalAlignment == 1)
    {
      v18 = v32;
      v23 = [MEMORY[0x1E696ACD8] constraintWithItem:v5 attribute:11 relatedBy:0 toItem:v32 attribute:4 multiplier:1.0 constant:-self->_contentInsets.bottom];
      [v4 addObject:v23];
    }

    else
    {
      v18 = v32;
      if (verticalAlignment != 2)
      {
        goto LABEL_10;
      }

      v19 = MEMORY[0x1E696ACD8];
      v20 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v5, 0);
      v21 = [v19 constraintsWithVisualFormat:@"V:|-(topInset@marginPriority)-[label(label@marginPriority)]-(>=bottomInset@marginPriority)-|" options:2048 metrics:v17 views:v20];
      [v4 addObjectsFromArray:v21];
    }

    LODWORD(v22) = 1148846080;
    [(UILabel *)v5 setContentHuggingPriority:1 forAxis:v22];
  }

  else
  {
    v24 = MEMORY[0x1E696ACD8];
    v25 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v5, 0);
    v26 = [v24 constraintsWithVisualFormat:@"V:|-(topInset@marginPriority)-[label(label@marginPriority)]-(bottomInset@marginPriority)-|" options:2048 metrics:v17 views:v25];
    [v4 addObjectsFromArray:v26];

    v18 = v32;
  }

LABEL_10:
  v27 = MEMORY[0x1E696ACD8];
  v28 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v5, 0);
  v29 = [v27 constraintsWithVisualFormat:@"H:|-(leftInset@marginPriority)-[label(label@marginPriority)]-(rightInset@marginPriority)-|" options:0 metrics:v17 views:v28];
  [v4 addObjectsFromArray:v29];

  if (self->_labelLayoutConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v4];
  v30 = [v4 copy];
  labelLayoutConstraints = self->_labelLayoutConstraints;
  self->_labelLayoutConstraints = v30;

  v33.receiver = self;
  v33.super_class = PXUILabel;
  [(PXUILabel *)&v33 updateConstraints];
}

- (void)_configureLabel
{
  v11 = [(PXUILabel *)self spec];
  v3 = [(PXUILabel *)self _configuredText];
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [(UILabel *)self->_label text];
    v6 = [v4 isEqualToString:v5];

    if ((v6 & 1) == 0)
    {
      [(UILabel *)self->_label setText:v4];
    }

    v7 = [v11 font];
    v8 = [(UILabel *)self->_label font];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [(UILabel *)self->_label setFont:v7];
    }

    v10 = [v11 verticalAlignment];
    if (v10 != self->_verticalAlignment)
    {
      self->_verticalAlignment = v10;
      [(PXUILabel *)self setNeedsUpdateConstraints];
    }

    [v11 contentInsets];
    PXEdgeInsetsEqualToEdgeInsets();
  }

  [(UILabel *)self->_label setText:0];
}

- (void)_commonPXMemoriesLabelInitialization
{
  [(PXUILabel *)self setUserInteractionEnabled:0];
  obj = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [obj setAdjustsFontSizeToFitWidth:1];
  [obj setMinimumScaleFactor:0.5];
  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_label, obj);
  visualEffectView = self->_visualEffectView;
  if (visualEffectView)
  {
    v4 = [(UIVisualEffectView *)visualEffectView contentView];
  }

  else
  {
    v4 = self;
  }

  v5 = v4;
  [(PXUILabel *)v4 addSubview:obj];
  [(PXUILabel *)self setNeedsUpdateConstraints];
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXUILabel *)self _configureLabel];
    v5 = v6;
  }
}

- (void)setText:(id)a3
{
  if (self->_text != a3)
  {
    v4 = [a3 copy];
    text = self->_text;
    self->_text = v4;

    [(PXUILabel *)self _configureLabel];
  }
}

- (PXUILabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXUILabel;
  v3 = [(PXUILabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXUILabel *)v3 _commonPXMemoriesLabelInitialization];
  }

  return v4;
}

- (PXUILabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXUILabel;
  v3 = [(PXUILabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PXUILabel *)v3 _commonPXMemoriesLabelInitialization];
  }

  return v4;
}

@end