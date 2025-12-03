@interface SGREMaterialCompilationOptions
- (BOOL)enableFailedCompileMaterial;
- (SGREMaterialCompilationOptions)init;
- (SGREMaterialCompilationOptions)initWithWorkingColorSpace:(CGColorSpace *)space;
- (void)setEnableFailedCompileMaterial:(BOOL)material;
@end

@implementation SGREMaterialCompilationOptions

- (BOOL)enableFailedCompileMaterial
{
  v3 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableFailedCompileMaterial:(BOOL)material
{
  v5 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  swift_beginAccess();
  *(&self->super.isa + v5) = material;
}

- (SGREMaterialCompilationOptions)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial) = 1;
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) = 0;
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SGREMaterialCompilationOptions *)&v5 init];
}

- (SGREMaterialCompilationOptions)initWithWorkingColorSpace:(CGColorSpace *)space
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial) = 1;
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) = 0;
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace) = space;
  v8.receiver = self;
  v8.super_class = ObjectType;
  spaceCopy = space;
  return [(SGREMaterialCompilationOptions *)&v8 init];
}

@end