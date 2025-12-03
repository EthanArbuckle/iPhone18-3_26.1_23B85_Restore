@interface PBPasteButtonTag
+ (id)systemInputAssistantPasteButtonTagWithSite:(int64_t)site;
+ (id)undoInteractionHUDIconPasteButtonTagWithMinWidth:(double)width;
+ (id)undoInteractionHUDTextPasteButtonTagWithMinWidth:(double)width;
- (CGColor)baseForegroundColorForStyle:(id)style;
- (PBPasteButtonTag)initWithCoder:(id)coder;
@end

@implementation PBPasteButtonTag

+ (id)systemInputAssistantPasteButtonTagWithSite:(int64_t)site
{
  v3 = [[PBSystemInputAssistantPasteButtonTag alloc] initWithSite:site];

  return v3;
}

+ (id)undoInteractionHUDIconPasteButtonTagWithMinWidth:(double)width
{
  v3 = [[PBUndoInteractionHUDIconPasteButtonTag alloc] initWithMinWidth:width];

  return v3;
}

+ (id)undoInteractionHUDTextPasteButtonTagWithMinWidth:(double)width
{
  v3 = [[PBUndoInteractionHUDTextPasteButtonTag alloc] initWithMinWidth:width];

  return v3;
}

- (PBPasteButtonTag)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PBPasteButtonTag;
  return [(PBPasteButtonTag *)&v4 init];
}

- (CGColor)baseForegroundColorForStyle:(id)style
{
  userInterfaceStyle = [style userInterfaceStyle];
  if (userInterfaceStyle)
  {
    if (userInterfaceStyle != 1)
    {
      return 0;
    }

    v4 = MEMORY[0x277CBF4D8];
  }

  else
  {
    v4 = MEMORY[0x277CBF3B8];
  }

  v5 = *v4;

  return CGColorGetConstantColor(v5);
}

@end