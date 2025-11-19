@interface SBHMutablePresentationModeFolderContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBHMutablePresentationModeFolderContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBHPresentationModeFolderContext alloc];

  return [(SBHPresentationModeFolderContext *)v4 _initWithContext:self];
}

@end