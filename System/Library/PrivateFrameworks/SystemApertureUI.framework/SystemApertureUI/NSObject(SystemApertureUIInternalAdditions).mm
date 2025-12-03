@interface NSObject(SystemApertureUIInternalAdditions)
- (void)uniquelyIdentifyElement;
@end

@implementation NSObject(SystemApertureUIInternalAdditions)

- (void)uniquelyIdentifyElement
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"NSObject+SystemApertureUI.m" lineNumber:39 description:{@"Attempt to uniquely identify object that isn't an element: %@", a2}];
}

@end