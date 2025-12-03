@interface PXGColorLookupCube
- (NSData)textureData;
- (id)createTextureWithContext:(id)context;
- (void)center;
@end

@implementation PXGColorLookupCube

- (void)center
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGColorLookupCube.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "-[PXGColorLookupCube center]", v6}];

  abort();
}

- (NSData)textureData
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGColorLookupCube.m" lineNumber:32 description:{@"Method %s is a responsibility of subclass %@", "-[PXGColorLookupCube textureData]", v6}];

  abort();
}

- (id)createTextureWithContext:(id)context
{
  contextCopy = context;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGColorLookupCube.m" lineNumber:28 description:{@"Method %s is a responsibility of subclass %@", "-[PXGColorLookupCube createTextureWithContext:]", v8}];

  abort();
}

@end