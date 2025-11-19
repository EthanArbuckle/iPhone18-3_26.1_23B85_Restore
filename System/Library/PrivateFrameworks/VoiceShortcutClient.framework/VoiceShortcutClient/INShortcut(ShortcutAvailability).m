@interface INShortcut(ShortcutAvailability)
- (uint64_t)wf_shortcutAvailability;
@end

@implementation INShortcut(ShortcutAvailability)

- (uint64_t)wf_shortcutAvailability
{
  v2 = [a1 intent];

  if (v2)
  {
    v3 = [a1 intent];
LABEL_5:
    v5 = v3;
    v6 = [v3 shortcutAvailability];

    return v6;
  }

  v4 = [a1 userActivity];

  if (v4)
  {
    v3 = [a1 userActivity];
    goto LABEL_5;
  }

  return 0;
}

@end