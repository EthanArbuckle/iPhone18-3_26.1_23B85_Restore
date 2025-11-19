@interface SGREMaterialCompilationOptions
- (BOOL)enableFailedCompileMaterial;
- (SGREMaterialCompilationOptions)init;
- (SGREMaterialCompilationOptions)initWithWorkingColorSpace:(CGColorSpace *)a3;
- (void)setEnableFailedCompileMaterial:(BOOL)a3;
@end

@implementation SGREMaterialCompilationOptions

- (BOOL)enableFailedCompileMaterial
{
  v3 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableFailedCompileMaterial:(BOOL)a3
{
  v5 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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

- (SGREMaterialCompilationOptions)initWithWorkingColorSpace:(CGColorSpace *)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial) = 1;
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) = 0;
  *(&self->super.isa + OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(SGREMaterialCompilationOptions *)&v8 init];
}

@end