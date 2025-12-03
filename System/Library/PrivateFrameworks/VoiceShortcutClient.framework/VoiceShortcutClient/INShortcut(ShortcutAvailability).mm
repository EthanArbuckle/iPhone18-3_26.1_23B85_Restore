@interface INShortcut(ShortcutAvailability)
- (uint64_t)wf_shortcutAvailability;
@end

@implementation INShortcut(ShortcutAvailability)

- (uint64_t)wf_shortcutAvailability
{
  intent = [self intent];

  if (intent)
  {
    intent2 = [self intent];
LABEL_5:
    v5 = intent2;
    shortcutAvailability = [intent2 shortcutAvailability];

    return shortcutAvailability;
  }

  userActivity = [self userActivity];

  if (userActivity)
  {
    intent2 = [self userActivity];
    goto LABEL_5;
  }

  return 0;
}

@end