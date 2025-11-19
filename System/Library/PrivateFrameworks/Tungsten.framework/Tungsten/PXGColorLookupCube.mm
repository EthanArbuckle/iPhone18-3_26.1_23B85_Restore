@interface PXGColorLookupCube
- (NSData)textureData;
- (id)createTextureWithContext:(id)a3;
- (void)center;
@end

@implementation PXGColorLookupCube

- (void)center
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXGColorLookupCube.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "-[PXGColorLookupCube center]", v6}];

  abort();
}

- (NSData)textureData
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGColorLookupCube.m" lineNumber:32 description:{@"Method %s is a responsibility of subclass %@", "-[PXGColorLookupCube textureData]", v6}];

  abort();
}

- (id)createTextureWithContext:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXGColorLookupCube.m" lineNumber:28 description:{@"Method %s is a responsibility of subclass %@", "-[PXGColorLookupCube createTextureWithContext:]", v8}];

  abort();
}

@end