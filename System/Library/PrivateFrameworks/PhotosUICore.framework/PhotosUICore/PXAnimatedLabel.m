@interface PXAnimatedLabel
- (CGSize)intrinsicContentSize;
- (PXAnimatedLabel)initWithCoder:(id)a3;
- (PXAnimatedLabel)initWithFrame:(CGRect)a3;
- (void)_updateConstraintsForText;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)setText:(id)a3 withAnimationStyle:(int64_t)a4 completionBlock:(id)a5;
@end

@implementation PXAnimatedLabel

- (void)_updateConstraintsForText
{
  v7 = [(PXAnimatedLabel *)self counter];
  v3 = [(PXAnimatedLabel *)self text];
  if ([v3 rangeOfDigits] || !objc_msgSend(v3, "containsDigits"))
  {
    [v7 setHidden:1];
    v5 = 0.0;
  }

  else
  {
    [v7 setHidden:0];
    [v7 requiredSizeForNumber:{objc_msgSend(v3, "digits")}];
    *&v4 = v4;
    v5 = ceilf(*&v4);
  }

  v6 = [(PXAnimatedLabel *)self counterWidthConstraint];
  [v6 setConstant:v5];
}

- (void)setFont:(id)a3
{
  objc_storeStrong(&self->_font, a3);
  v5 = a3;
  v6 = [(PXAnimatedLabel *)self label];
  [v6 setFont:v5];

  v7 = [(PXAnimatedLabel *)self counter];
  [v7 setFont:v5];
}

- (void)setText:(id)a3 withAnimationStyle:(int64_t)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(PXAnimatedLabel *)self layoutIfNeeded];
  v10 = [(PXAnimatedLabel *)self text];
  objc_storeStrong(&self->_text, a3);
  v45 = [(PXAnimatedLabel *)self label];
  v11 = [(PXAnimatedLabel *)self counter];
  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  v14 = [v8 containsDigits];
  v15 = [v8 digits];
  v16 = v13;
  v17 = v12;
  if ([v10 containsDigits])
  {
    [v11 requiredSizeForNumber:{objc_msgSend(v11, "number")}];
    v17 = v18;
    v16 = v19;
  }

  v40 = v14;
  if (v14)
  {
    [v11 requiredSizeForNumber:v15];
    v12 = v20;
    v13 = v21;
  }

  v43 = v15;
  v22 = [v10 stringByRemovingDigits];
  v23 = [v8 stringByRemovingDigits];
  v44 = v10;
  if ([v8 rangeOfDigits])
  {
    v24 = 0;
    v25 = v10;
    v26 = v8;
  }

  else
  {
    v27 = [v8 containsDigits];
    v24 = v27;
    if (v27)
    {
      v25 = v22;
    }

    else
    {
      v25 = v10;
    }

    if (v27)
    {
      v26 = v23;
    }

    else
    {
      v26 = v8;
    }
  }

  v41 = v23;
  v42 = v22;
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
    v34 = [v45 text];
    v35 = [v34 isEqualToString:v29];

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
  [v45 setText:v29];
LABEL_22:
  if (v33)
  {
    v36 = v11;
    if ([v11 preferredAnimationStyleForNumber:v43] == 1)
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
        v49 = v9;
        [v11 setNumber:v43 animated:v39 != 0 completionBlock:v48];
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
      v47 = v9;
      [v11 setNumber:v43 animated:v39 != 0 completionBlock:v46];
      v37 = v47;
      goto LABEL_31;
    }
  }

  else
  {
    v36 = v11;
    if ((v40 & v24) == 1)
    {
      [v11 setNumber:v43 animated:v39 != 0];
      [(PXAnimatedLabel *)self invalidateIntrinsicContentSize];
      if (v9)
      {
        (*(v9 + 2))(v9, 1);
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

- (void)setText:(id)a3
{
  [(PXAnimatedLabel *)self setText:a3 withAnimationStyle:0 completionBlock:0];
  [(PXAnimatedLabel *)self _updateConstraintsForText];

  [(PXAnimatedLabel *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PXAnimatedLabel *)self label];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = [(PXAnimatedLabel *)self counterWidthConstraint];
  [v8 constant];
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

- (PXAnimatedLabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXAnimatedLabel;
  v3 = [(PXAnimatedLabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PXAnimatedLabel *)v3 commonInit];
  }

  return v4;
}

- (PXAnimatedLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXAnimatedLabel;
  v3 = [(PXAnimatedLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v3 setTextColor:v5];

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
  v12 = [(PXAnimatedCounter *)v10 widthAnchor];
  v13 = [v12 constraintEqualToConstant:0.0];
  counterWidthConstraint = self->_counterWidthConstraint;
  self->_counterWidthConstraint = v13;

  v33 = MEMORY[0x1E696ACD8];
  v47 = [(PXAnimatedCounter *)v10 topAnchor];
  v46 = [v11 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v48[0] = v45;
  v44 = [(PXAnimatedCounter *)v10 bottomAnchor];
  v43 = [v11 bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v48[1] = v42;
  v41 = [(PXAnimatedCounter *)v10 leadingAnchor];
  v40 = [v11 leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v48[2] = v39;
  v38 = [(PXAnimatedCounter *)v10 trailingAnchor];
  v37 = [(UILabel *)v7 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v48[3] = v36;
  v35 = [(UILabel *)v7 trailingAnchor];
  v34 = [v11 trailingAnchor];
  v32 = [v35 constraintEqualToAnchor:v34];
  v48[4] = v32;
  v31 = [(UILabel *)v7 bottomAnchor];
  v30 = [v11 bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v48[5] = v29;
  v28 = [(UILabel *)v7 topAnchor];
  v27 = [v11 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v48[6] = v26;
  v25 = [v11 topAnchor];
  v24 = [(PXAnimatedLabel *)self topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v48[7] = v23;
  v15 = [v11 bottomAnchor];
  v16 = [(PXAnimatedLabel *)self bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v48[8] = v17;
  v18 = [v11 centerXAnchor];
  v19 = [(PXAnimatedLabel *)self centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v21 = self->_counterWidthConstraint;
  v48[9] = v20;
  v48[10] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:11];
  [v33 activateConstraints:v22];
}

@end