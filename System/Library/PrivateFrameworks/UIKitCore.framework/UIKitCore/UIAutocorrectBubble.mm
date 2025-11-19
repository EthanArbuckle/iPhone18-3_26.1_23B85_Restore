@interface UIAutocorrectBubble
- (UIAutocorrectBubble)init;
- (UIEdgeInsets)alignmentRectInsets;
- (id)lastBaselineAnchor;
- (void)updateWithAutocorrectionText:(id)a3;
@end

@implementation UIAutocorrectBubble

- (UIAutocorrectBubble)init
{
  v47[9] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = UIAutocorrectBubble;
  v2 = [(UIView *)&v46 init];
  if (v2)
  {
    v45 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v44 = [v45 pathForResource:@"autocorrect_bubble_stretchable@2x" ofType:@"png"];
    v43 = [UIImage imageWithContentsOfFile:v44];
    v42 = [v43 resizableImageWithCapInsets:{0.0, 5.0, 0.0, 30.0}];
    v3 = [[UIImageView alloc] initWithImage:v42];
    backgroundView = v2->_backgroundView;
    v2->_backgroundView = v3;

    [(UIImageView *)v2->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2 addSubview:v2->_backgroundView];
    v5 = objc_alloc_init(UILabel);
    textLabel = v2->_textLabel;
    v2->_textLabel = v5;

    [(UIView *)v2->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v2 addSubview:v2->_textLabel];
    [(UILabel *)v2->_textLabel setText:&stru_1EFB14550];
    v7 = v2->_textLabel;
    v8 = [off_1E70ECC18 systemFontOfSize:16.0 weight:*off_1E70ECD28];
    [(UILabel *)v7 setFont:v8];

    v9 = v2->_textLabel;
    v10 = +[UIColor whiteColor];
    [(UILabel *)v9 setTextColor:v10];

    v29 = MEMORY[0x1E69977A0];
    v41 = [(UIView *)v2->_backgroundView leadingAnchor];
    v40 = [(UIView *)v2 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v47[0] = v39;
    v38 = [(UIView *)v2->_backgroundView trailingAnchor];
    v37 = [(UIView *)v2 trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v47[1] = v36;
    v35 = [(UIView *)v2->_backgroundView topAnchor];
    v34 = [(UIView *)v2 topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v47[2] = v33;
    v32 = [(UIView *)v2->_backgroundView bottomAnchor];
    v31 = [(UIView *)v2 bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v47[3] = v30;
    v28 = [(UIView *)v2->_textLabel topAnchor];
    v27 = [(UIView *)v2 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v47[4] = v26;
    v25 = [(UIView *)v2->_textLabel bottomAnchor];
    v24 = [(UIView *)v2 bottomAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v47[5] = v23;
    v22 = [(UIView *)v2 heightAnchor];
    v21 = [v22 constraintEqualToConstant:19.0];
    v47[6] = v21;
    v11 = [(UIAutocorrectBubble *)v2 textLabel];
    v12 = [v11 leadingAnchor];
    v13 = [(UIView *)v2 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];
    v47[7] = v14;
    v15 = [(UIView *)v2 trailingAnchor];
    v16 = [(UIAutocorrectBubble *)v2 textLabel];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
    v47[8] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:9];
    [v29 activateConstraints:v19];
  }

  return v2;
}

- (void)updateWithAutocorrectionText:(id)a3
{
  v4 = a3;
  v5 = [(UIAutocorrectBubble *)self textLabel];
  [v5 setText:v4];

  [(UIView *)self setNeedsUpdateConstraints];
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.0;
  v3 = 4.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)lastBaselineAnchor
{
  v2 = [(UIAutocorrectBubble *)self textLabel];
  v3 = [v2 lastBaselineAnchor];

  return v3;
}

@end