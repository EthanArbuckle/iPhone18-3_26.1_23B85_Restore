@interface PXAnimatedLabel
- (CGSize)intrinsicContentSize;
- (PXAnimatedLabel)initWithCoder:(id)coder;
- (PXAnimatedLabel)initWithFrame:(CGRect)frame;
- (void)_updateConstraintsForText;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)setText:(id)text withAnimationStyle:(int64_t)style completionBlock:(id)block;
@end

@implementation PXAnimatedLabel

- (void)_updateConstraintsForText
{
  counter = [(PXAnimatedLabel *)self counter];
  text = [(PXAnimatedLabel *)self text];
  if ([text rangeOfDigits] || !objc_msgSend(text, "containsDigits"))
  {
    [counter setHidden:1];
    v5 = 0.0;
  }

  else
  {
    [counter setHidden:0];
    [counter requiredSizeForNumber:{objc_msgSend(text, "digits")}];
    *&v4 = v4;
    v5 = ceilf(*&v4);
  }

  counterWidthConstraint = [(PXAnimatedLabel *)self counterWidthConstraint];
  [counterWidthConstraint setConstant:v5];
}

- (void)setFont:(id)font
{
  objc_storeStrong(&self->_font, font);
  fontCopy = font;
  label = [(PXAnimatedLabel *)self label];
  [label setFont:fontCopy];

  counter = [(PXAnimatedLabel *)self counter];
  [counter setFont:fontCopy];
}

- (void)setText:(id)text withAnimationStyle:(int64_t)style completionBlock:(id)block
{
  textCopy = text;
  blockCopy = block;
  [(PXAnimatedLabel *)self layoutIfNeeded];
  text = [(PXAnimatedLabel *)self text];
  objc_storeStrong(&self->_text, text);
  label = [(PXAnimatedLabel *)self label];
  counter = [(PXAnimatedLabel *)self counter];
  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  containsDigits = [textCopy containsDigits];
  digits = [textCopy digits];
  v16 = v13;
  v17 = v12;
  if ([text containsDigits])
  {
    [counter requiredSizeForNumber:{objc_msgSend(counter, "number")}];
    v17 = v18;
    v16 = v19;
  }

  v40 = containsDigits;
  if (containsDigits)
  {
    [counter requiredSizeForNumber:digits];
    v12 = v20;
    v13 = v21;
  }

  v43 = digits;
  stringByRemovingDigits = [text stringByRemovingDigits];
  stringByRemovingDigits2 = [textCopy stringByRemovingDigits];
  v44 = text;
  if ([textCopy rangeOfDigits])
  {
    v24 = 0;
    v25 = text;
    v26 = textCopy;
  }

  else
  {
    containsDigits2 = [textCopy containsDigits];
    v24 = containsDigits2;
    if (containsDigits2)
    {
      v25 = stringByRemovingDigits;
    }

    else
    {
      v25 = text;
    }

    if (containsDigits2)
    {
      v26 = stringByRemovingDigits2;
    }

    else
    {
      v26 = textCopy;
    }
  }

  v41 = stringByRemovingDigits2;
  v42 = stringByRemovingDigits;
  v28 = v25;
  v29 = v26;
  v30 = [v29 isEqualToString:v28];
  v31 = v30;
  if (v17 != v12 || v16 != v13)
  {
    v33 = [v29 isEqualToString:v28];
    if (!v31)
    {
      goto LABEL_21;
    }

LABEL_20:
    text2 = [label text];
    v35 = [text2 isEqualToString:v29];

    if (v35)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v33 = 0;
  if (v30)
  {
    goto LABEL_20;
  }

LABEL_21:
  [label setText:v29];
LABEL_22:
  if (v33)
  {
    v36 = counter;
    if ([counter preferredAnimationStyleForNumber:v43] == 1)
    {
      [(PXAnimatedLabel *)self _updateConstraintsForText];
      [(PXAnimatedLabel *)self layoutIfNeeded];
      if (v40)
      {
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __62__PXAnimatedLabel_setText_withAnimationStyle_completionBlock___block_invoke;
        v48[3] = &unk_1E7740890;
        v48[4] = self;
        v49 = blockCopy;
        [counter setNumber:v43 animated:v39 != 0 completionBlock:v48];
        v37 = v49;
LABEL_31:
      }
    }

    else if (v40)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __62__PXAnimatedLabel_setText_withAnimationStyle_completionBlock___block_invoke_2;
      v46[3] = &unk_1E7740890;
      v46[4] = self;
      v47 = blockCopy;
      [counter setNumber:v43 animated:v39 != 0 completionBlock:v46];
      v37 = v47;
      goto LABEL_31;
    }
  }

  else
  {
    v36 = counter;
    if ((v40 & v24) == 1)
    {
      [counter setNumber:v43 animated:v39 != 0];
      [(PXAnimatedLabel *)self invalidateIntrinsicContentSize];
      if (blockCopy)
      {
        (*(blockCopy + 2))(blockCopy, 1);
      }
    }
  }
}

uint64_t __62__PXAnimatedLabel_setText_withAnimationStyle_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateIntrinsicContentSize];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __62__PXAnimatedLabel_setText_withAnimationStyle_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateConstraintsForText];
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 32) invalidateIntrinsicContentSize];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setText:(id)text
{
  [(PXAnimatedLabel *)self setText:text withAnimationStyle:0 completionBlock:0];
  [(PXAnimatedLabel *)self _updateConstraintsForText];

  [(PXAnimatedLabel *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  label = [(PXAnimatedLabel *)self label];
  [label intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  counterWidthConstraint = [(PXAnimatedLabel *)self counterWidthConstraint];
  [counterWidthConstraint constant];
  v10 = v5 + v9;

  v11 = v10;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXAnimatedLabel;
  [(PXAnimatedLabel *)&v3 layoutSubviews];
  [(PXAnimatedLabel *)self _updateConstraintsForText];
}

- (PXAnimatedLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PXAnimatedLabel;
  v3 = [(PXAnimatedLabel *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PXAnimatedLabel *)v3 commonInit];
  }

  return v4;
}

- (PXAnimatedLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXAnimatedLabel;
  v3 = [(PXAnimatedLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXAnimatedLabel *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v48[11] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(UILabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 0];
  [(UILabel *)v3 setText:v4];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v3 setTextColor:secondaryLabelColor];

  label = self->_label;
  self->_label = v3;
  v7 = v3;

  v8 = [[PXAnimatedCounter alloc] initWithNumber:0];
  [(PXAnimatedCounter *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXAnimatedCounter *)v8 setHidden:1];
  counter = self->_counter;
  self->_counter = v8;
  v10 = v8;

  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:v10];
  [v11 addSubview:v7];
  [(PXAnimatedLabel *)self addSubview:v11];
  widthAnchor = [(PXAnimatedCounter *)v10 widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:0.0];
  counterWidthConstraint = self->_counterWidthConstraint;
  self->_counterWidthConstraint = v13;

  v33 = MEMORY[0x1E696ACD8];
  topAnchor = [(PXAnimatedCounter *)v10 topAnchor];
  topAnchor2 = [v11 topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v48[0] = v45;
  bottomAnchor = [(PXAnimatedCounter *)v10 bottomAnchor];
  bottomAnchor2 = [v11 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v48[1] = v42;
  leadingAnchor = [(PXAnimatedCounter *)v10 leadingAnchor];
  leadingAnchor2 = [v11 leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[2] = v39;
  trailingAnchor = [(PXAnimatedCounter *)v10 trailingAnchor];
  leadingAnchor3 = [(UILabel *)v7 leadingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  v48[3] = v36;
  trailingAnchor2 = [(UILabel *)v7 trailingAnchor];
  trailingAnchor3 = [v11 trailingAnchor];
  v32 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v48[4] = v32;
  bottomAnchor3 = [(UILabel *)v7 bottomAnchor];
  bottomAnchor4 = [v11 bottomAnchor];
  v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v48[5] = v29;
  topAnchor3 = [(UILabel *)v7 topAnchor];
  topAnchor4 = [v11 topAnchor];
  v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v48[6] = v26;
  topAnchor5 = [v11 topAnchor];
  topAnchor6 = [(PXAnimatedLabel *)self topAnchor];
  v23 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v48[7] = v23;
  bottomAnchor5 = [v11 bottomAnchor];
  bottomAnchor6 = [(PXAnimatedLabel *)self bottomAnchor];
  v17 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v48[8] = v17;
  centerXAnchor = [v11 centerXAnchor];
  centerXAnchor2 = [(PXAnimatedLabel *)self centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v21 = self->_counterWidthConstraint;
  v48[9] = v20;
  v48[10] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:11];
  [v33 activateConstraints:v22];
}

@end