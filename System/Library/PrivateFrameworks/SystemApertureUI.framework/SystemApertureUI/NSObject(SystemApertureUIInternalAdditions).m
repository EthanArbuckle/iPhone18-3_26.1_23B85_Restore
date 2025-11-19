@interface NSObject(SystemApertureUIInternalAdditions)
- (void)uniquelyIdentifyElement;
@end

@implementation NSObject(SystemApertureUIInternalAdditions)

- (void)uniquelyIdentifyElement
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSObject+SystemApertureUI.m" lineNumber:39 description:{@"Attempt to uniquely identify object that isn't an element: %@", a2}];
}

@end