@interface UIAutocorrectBubble
- (UIAutocorrectBubble)init;
- (UIEdgeInsets)alignmentRectInsets;
- (id)lastBaselineAnchor;
- (void)updateWithAutocorrectionText:(id)text;
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
    leadingAnchor = [(UIView *)v2->_backgroundView leadingAnchor];
    leadingAnchor2 = [(UIView *)v2 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v39;
    trailingAnchor = [(UIView *)v2->_backgroundView trailingAnchor];
    trailingAnchor2 = [(UIView *)v2 trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v36;
    topAnchor = [(UIView *)v2->_backgroundView topAnchor];
    topAnchor2 = [(UIView *)v2 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v33;
    bottomAnchor = [(UIView *)v2->_backgroundView bottomAnchor];
    bottomAnchor2 = [(UIView *)v2 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v47[3] = v30;
    topAnchor3 = [(UIView *)v2->_textLabel topAnchor];
    topAnchor4 = [(UIView *)v2 topAnchor];
    v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v47[4] = v26;
    bottomAnchor3 = [(UIView *)v2->_textLabel bottomAnchor];
    bottomAnchor4 = [(UIView *)v2 bottomAnchor];
    v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v47[5] = v23;
    heightAnchor = [(UIView *)v2 heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:19.0];
    v47[6] = v21;
    textLabel = [(UIAutocorrectBubble *)v2 textLabel];
    leadingAnchor3 = [textLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)v2 leadingAnchor];
    v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
    v47[7] = v14;
    trailingAnchor3 = [(UIView *)v2 trailingAnchor];
    textLabel2 = [(UIAutocorrectBubble *)v2 textLabel];
    trailingAnchor4 = [textLabel2 trailingAnchor];
    v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
    v47[8] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:9];
    [v29 activateConstraints:v19];
  }

  return v2;
}

- (void)updateWithAutocorrectionText:(id)text
{
  textCopy = text;
  textLabel = [(UIAutocorrectBubble *)self textLabel];
  [textLabel setText:textCopy];

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
  textLabel = [(UIAutocorrectBubble *)self textLabel];
  lastBaselineAnchor = [textLabel lastBaselineAnchor];

  return lastBaselineAnchor;
}

@end