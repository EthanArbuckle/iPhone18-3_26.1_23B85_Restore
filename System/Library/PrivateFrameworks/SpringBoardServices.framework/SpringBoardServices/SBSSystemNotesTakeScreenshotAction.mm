@interface SBSSystemNotesTakeScreenshotAction
- (BSXPCCodingArray)displaysToScreenshot;
- (SBSSystemNotesTakeScreenshotAction)initWithDisplaysToScreenshot:(id)screenshot responder:(id)responder;
@end

@implementation SBSSystemNotesTakeScreenshotAction

- (SBSSystemNotesTakeScreenshotAction)initWithDisplaysToScreenshot:(id)screenshot responder:(id)responder
{
  screenshotCopy = screenshot;
  v7 = MEMORY[0x1E698E700];
  responderCopy = responder;
  v9 = objc_alloc_init(v7);
  if (screenshotCopy)
  {
    v10 = [objc_alloc(MEMORY[0x1E698E7B0]) initWithArray:screenshotCopy];
    [v9 setObject:v10 forSetting:0];
  }

  v13.receiver = self;
  v13.super_class = SBSSystemNotesTakeScreenshotAction;
  v11 = [(SBSSystemNotesTakeScreenshotAction *)&v13 initWithInfo:v9 responder:responderCopy];

  return v11;
}

- (BSXPCCodingArray)displaysToScreenshot
{
  info = [(SBSSystemNotesTakeScreenshotAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

@end