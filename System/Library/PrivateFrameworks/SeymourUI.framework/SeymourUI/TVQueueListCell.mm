@interface TVQueueListCell
- (NSArray)preferredFocusEnvironments;
- (void)handleDelete;
- (void)handleGrab;
- (void)prepareForReuse;
@end

@implementation TVQueueListCell

- (NSArray)preferredFocusEnvironments
{
  sub_20B8E0B2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v2 = sub_20C13CC54();

  return v2;
}

- (void)handleGrab
{
  v2 = self;
  sub_20B8E1CAC();
}

- (void)handleDelete
{
  v2 = self;
  sub_20B8E1F0C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_20B8E2154();
}

@end