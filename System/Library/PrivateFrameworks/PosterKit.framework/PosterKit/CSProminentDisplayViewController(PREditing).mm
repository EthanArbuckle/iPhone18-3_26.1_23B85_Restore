@interface CSProminentDisplayViewController(PREditing)
- (uint64_t)pr_setSubtitleHidden:()PREditing;
- (void)pr_setForcesActiveAppearance:()PREditing;
@end

@implementation CSProminentDisplayViewController(PREditing)

- (uint64_t)pr_setSubtitleHidden:()PREditing
{
  v5 = [self elements] & 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (a3)
  {
    v6 = 0;
  }

  return [self setElements:v5 | v6];
}

- (void)pr_setForcesActiveAppearance:()PREditing
{
  traitOverrides = [self traitOverrides];
  [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
}

@end