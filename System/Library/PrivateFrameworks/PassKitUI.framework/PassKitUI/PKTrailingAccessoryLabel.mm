@interface PKTrailingAccessoryLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSAttributedString)attributedText;
- (PKTrailingAccessoryLabel)initWithCoder:(id)a3;
- (UIEdgeInsets)contentInsets;
- (int64_t)maximumNumberOfLines;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setMaximumNumberOfLines:(int64_t)a3;
- (void)unregisterAccessories;
@end

@implementation PKTrailingAccessoryLabel

- (NSAttributedString)attributedText
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR___PKTrailingAccessoryLabel_textView) attributedText];

  return v2;
}

- (void)setAttributedText:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___PKTrailingAccessoryLabel_textView);
  v5 = a3;
  v6 = self;
  [v4 setAttributedText_];
  [(PKTrailingAccessoryLabel *)v6 setNeedsLayout];
}

- (int64_t)maximumNumberOfLines
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___PKTrailingAccessoryLabel_textView);
  v3 = self;
  v4 = [v2 textContainer];
  v5 = [v4 maximumNumberOfLines];

  return v5;
}

- (void)setMaximumNumberOfLines:(int64_t)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___PKTrailingAccessoryLabel_textView);
  v6 = self;
  v5 = [v4 textContainer];
  [v5 setMaximumNumberOfLines_];
}

- (UIEdgeInsets)contentInsets
{
  v2 = (self + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = (self + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets);
  swift_beginAccess();
  *v8 = top;
  v8[1] = left;
  v8[2] = bottom;
  v8[3] = right;
  [(PKTrailingAccessoryLabel *)self setNeedsLayout];
}

- (PKTrailingAccessoryLabel)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  *v4 = *MEMORY[0x1E69DDCE0];
  v4[1] = v5;
  v6 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  *(&self->super.super.super.isa + v6) = sub_1BD1AE038(MEMORY[0x1E69E7CC0]);
  v7 = (&self->super.super.super.isa + OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize);
  *v7 = 0;
  v7[1] = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1BD6D80C8(1, 0.0, 0.0, width, 1.79769313e308);

  v6 = width;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(PKTrailingAccessoryLabel *)&v7 layoutSubviews];
  [v2 bounds];
  sub_1BD6D80C8(0, v3, v4, v5, v6);
}

- (void)unregisterAccessories
{
  v2 = self;
  TrailingAccessoryLabel.unregisterAccessories()();
}

@end