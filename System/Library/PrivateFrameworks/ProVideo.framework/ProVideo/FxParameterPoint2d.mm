@interface FxParameterPoint2d
- (FxParameterPoint2d)init;
- (void)dealloc;
@end

@implementation FxParameterPoint2d

- (FxParameterPoint2d)init
{
  v4.receiver = self;
  v4.super_class = FxParameterPoint2d;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    v2->_point2dPriv = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_point2dPriv != 0, &cfstr_Point2dprivNul.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_point2dPriv);
  v9.receiver = self;
  v9.super_class = FxParameterPoint2d;
  [(FxPinParameter *)&v9 dealloc];
}

@end