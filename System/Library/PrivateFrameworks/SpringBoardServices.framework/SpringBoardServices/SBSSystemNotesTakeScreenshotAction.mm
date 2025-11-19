@interface SBSSystemNotesTakeScreenshotAction
- (BSXPCCodingArray)displaysToScreenshot;
- (SBSSystemNotesTakeScreenshotAction)initWithDisplaysToScreenshot:(id)a3 responder:(id)a4;
@end

@implementation SBSSystemNotesTakeScreenshotAction

- (SBSSystemNotesTakeScreenshotAction)initWithDisplaysToScreenshot:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E698E700];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  if (v6)
  {
    v10 = [objc_alloc(MEMORY[0x1E698E7B0]) initWithArray:v6];
    [v9 setObject:v10 forSetting:0];
  }

  v13.receiver = self;
  v13.super_class = SBSSystemNotesTakeScreenshotAction;
  v11 = [(SBSSystemNotesTakeScreenshotAction *)&v13 initWithInfo:v9 responder:v8];

  return v11;
}

- (BSXPCCodingArray)displaysToScreenshot
{
  v2 = [(SBSSystemNotesTakeScreenshotAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

@end