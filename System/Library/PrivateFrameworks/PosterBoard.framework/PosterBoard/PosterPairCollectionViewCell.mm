@interface PosterPairCollectionViewCell
- (void)layoutSubviews;
- (void)posterPairDidUpdateConfiguredProperties:(id)properties;
- (void)posterPairDidUpdateLockPosterAppearance:(id)appearance;
- (void)posterPairDidUpdateLockPosterSnapshots:(id)snapshots;
- (void)prepareForReuse;
@end

@implementation PosterPairCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21B63E750();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_21B63EA60();
}

- (void)posterPairDidUpdateConfiguredProperties:(id)properties
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0x1B0);
  selfCopy = self;
  v3();
}

- (void)posterPairDidUpdateLockPosterAppearance:(id)appearance
{
  selfCopy = self;
  sub_21B63EF0C(2, 1);
}

- (void)posterPairDidUpdateLockPosterSnapshots:(id)snapshots
{
  selfCopy = self;
  sub_21B63EF0C(1, 1);
}

@end