@interface CSProminentDisplayViewController(PREditing)
- (uint64_t)pr_setSubtitleHidden:()PREditing;
- (void)pr_setForcesActiveAppearance:()PREditing;
@end

@implementation CSProminentDisplayViewController(PREditing)

- (uint64_t)pr_setSubtitleHidden:()PREditing
{
  v5 = [a1 elements] & 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (a3)
  {
    v6 = 0;
  }

  return [a1 setElements:v5 | v6];
}

- (void)pr_setForcesActiveAppearance:()PREditing
{
  v1 = [a1 traitOverrides];
  [v1 setNSIntegerValue:1 forTrait:objc_opt_class()];
}

@end