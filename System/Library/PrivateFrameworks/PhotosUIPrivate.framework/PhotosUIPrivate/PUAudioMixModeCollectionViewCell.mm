@interface PUAudioMixModeCollectionViewCell
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation PUAudioMixModeCollectionViewCell

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = sub_1B37DF7F8(&selRef_isSelected);

  return v3 & 1;
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_1B37DF894(selected, &selRef_setSelected_);
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_1B37DF7F8(&selRef_isHighlighted);

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1B37DF894(highlighted, &selRef_setHighlighted_);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B37DFA54();
}

@end