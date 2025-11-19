@interface FxParameterPoint3d
- (FxParameterPoint3d)init;
- (void)dealloc;
@end

@implementation FxParameterPoint3d

- (FxParameterPoint3d)init
{
  v4.receiver = self;
  v4.super_class = FxParameterPoint3d;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    v2->_point3dPriv = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_point3dPriv != 0, &cfstr_Point3dprivNul.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_point3dPriv);
  v9.receiver = self;
  v9.super_class = FxParameterPoint3d;
  [(FxPinParameter *)&v9 dealloc];
}

@end