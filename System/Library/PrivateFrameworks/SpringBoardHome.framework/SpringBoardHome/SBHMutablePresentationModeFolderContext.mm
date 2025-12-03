@interface SBHMutablePresentationModeFolderContext
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBHMutablePresentationModeFolderContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBHPresentationModeFolderContext alloc];

  return [(SBHPresentationModeFolderContext *)v4 _initWithContext:self];
}

@end