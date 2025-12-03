@interface ActionLoadingButton
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
- (void)updateConfiguration;
@end

@implementation ActionLoadingButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActionLoadingButton();
  return [(ActionLoadingButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActionLoadingButton();
  v4 = v5.receiver;
  [(ActionLoadingButton *)&v5 setHighlighted:highlightedCopy];
  sub_20BAC14B8();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_20BABF064();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_20BABF65C();
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_20BABF9FC();
}

@end