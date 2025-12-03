@interface VFXPrecomputedLightingEnvironment
- (VFXPrecomputedLightingEnvironment)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VFXPrecomputedLightingEnvironment

- (VFXPrecomputedLightingEnvironment)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = VFXPrecomputedLightingEnvironment;
  v4 = [(VFXPrecomputedLightingEnvironment *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_radianceData = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"radiance");
    v7 = objc_opt_class();
    v4->_irradianceData = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"irradiance");
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_radianceData, @"radiance");
  irradianceData = self->_irradianceData;

  objc_msgSend_encodeObject_forKey_(coder, v5, irradianceData, @"irradiance");
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationPrecomputedLightingEnvironmentWillDie", self, 0, 1u);

  v4.receiver = self;
  v4.super_class = VFXPrecomputedLightingEnvironment;
  [(VFXPrecomputedLightingEnvironment *)&v4 dealloc];
}

@end