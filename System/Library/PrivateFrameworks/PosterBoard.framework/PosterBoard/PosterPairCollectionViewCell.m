@interface PosterPairCollectionViewCell
- (void)layoutSubviews;
- (void)posterPairDidUpdateConfiguredProperties:(id)a3;
- (void)posterPairDidUpdateLockPosterAppearance:(id)a3;
- (void)posterPairDidUpdateLockPosterSnapshots:(id)a3;
- (void)prepareForReuse;
@end

@implementation PosterPairCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_21B63E750();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_21B63EA60();
}

- (void)posterPairDidUpdateConfiguredProperties:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0x1B0);
  v4 = self;
  v3();
}

- (void)posterPairDidUpdateLockPosterAppearance:(id)a3
{
  v3 = self;
  sub_21B63EF0C(2, 1);
}

- (void)posterPairDidUpdateLockPosterSnapshots:(id)a3
{
  v3 = self;
  sub_21B63EF0C(1, 1);
}

@end