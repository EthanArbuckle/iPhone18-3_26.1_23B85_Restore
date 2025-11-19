@interface PKSharingMessageExtensionInvitationTheme
+ (id)messageBubbleBackgroundColor;
@end

@implementation PKSharingMessageExtensionInvitationTheme

+ (id)messageBubbleBackgroundColor
{
  if (_UISolariumEnabled())
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }
  v2 = ;

  return v2;
}

@end