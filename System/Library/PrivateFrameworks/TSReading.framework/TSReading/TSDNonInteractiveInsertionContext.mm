@interface TSDNonInteractiveInsertionContext
- (CGPoint)preferredCenter;
@end

@implementation TSDNonInteractiveInsertionContext

- (CGPoint)preferredCenter
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDNonInteractiveInsertionContext preferredCenter]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInsertionContext.m"), 175, @"The preferred center is not applicable for a noninteractive insertion context."}];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

@end