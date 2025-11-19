@interface FxParameterSlider
- (FxParameterSlider)init;
- (void)dealloc;
@end

@implementation FxParameterSlider

- (FxParameterSlider)init
{
  v4.receiver = self;
  v4.super_class = FxParameterSlider;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    v2->_sliderPriv = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040C179455EuLL);
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_sliderPriv != 0, &cfstr_SliderprivNull.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_sliderPriv);
  v9.receiver = self;
  v9.super_class = FxParameterSlider;
  [(FxPinParameter *)&v9 dealloc];
}

@end