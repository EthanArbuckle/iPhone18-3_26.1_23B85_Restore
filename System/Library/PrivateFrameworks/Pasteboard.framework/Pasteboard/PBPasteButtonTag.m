@interface PBPasteButtonTag
+ (id)systemInputAssistantPasteButtonTagWithSite:(int64_t)a3;
+ (id)undoInteractionHUDIconPasteButtonTagWithMinWidth:(double)a3;
+ (id)undoInteractionHUDTextPasteButtonTagWithMinWidth:(double)a3;
- (CGColor)baseForegroundColorForStyle:(id)a3;
- (PBPasteButtonTag)initWithCoder:(id)a3;
@end

@implementation PBPasteButtonTag

+ (id)systemInputAssistantPasteButtonTagWithSite:(int64_t)a3
{
  v3 = [[PBSystemInputAssistantPasteButtonTag alloc] initWithSite:a3];

  return v3;
}

+ (id)undoInteractionHUDIconPasteButtonTagWithMinWidth:(double)a3
{
  v3 = [[PBUndoInteractionHUDIconPasteButtonTag alloc] initWithMinWidth:a3];

  return v3;
}

+ (id)undoInteractionHUDTextPasteButtonTagWithMinWidth:(double)a3
{
  v3 = [[PBUndoInteractionHUDTextPasteButtonTag alloc] initWithMinWidth:a3];

  return v3;
}

- (PBPasteButtonTag)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PBPasteButtonTag;
  return [(PBPasteButtonTag *)&v4 init];
}

- (CGColor)baseForegroundColorForStyle:(id)a3
{
  v3 = [a3 userInterfaceStyle];
  if (v3)
  {
    if (v3 != 1)
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