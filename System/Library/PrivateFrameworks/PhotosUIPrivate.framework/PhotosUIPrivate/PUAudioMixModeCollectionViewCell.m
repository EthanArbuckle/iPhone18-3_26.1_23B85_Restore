@interface PUAudioMixModeCollectionViewCell
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PUAudioMixModeCollectionViewCell

- (BOOL)isSelected
{
  v2 = self;
  v3 = sub_1B37DF7F8(&selRef_isSelected);

  return v3 & 1;
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_1B37DF894(a3, &selRef_setSelected_);
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_1B37DF7F8(&selRef_isHighlighted);

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1B37DF894(a3, &selRef_setHighlighted_);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1B37DFA54();
}

@end