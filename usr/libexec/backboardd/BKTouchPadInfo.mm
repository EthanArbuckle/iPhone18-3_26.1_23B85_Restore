@interface BKTouchPadInfo
- (BKTouchPadInfo)initWithService:(id)service;
- (CGSize)digitizerSurfaceDimensions;
- (id)description;
- (void)resetForCancel;
@end

@implementation BKTouchPadInfo

- (CGSize)digitizerSurfaceDimensions
{
  width = self->_digitizerSurfaceDimensions.width;
  height = self->_digitizerSurfaceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)resetForCancel
{
  currentDestinations = self->_currentDestinations;
  self->_currentDestinations = 0;

  eventDispatcher = self->_eventDispatcher;
  self->_eventDispatcher = 0;

  *&self->_pathIndexInRangeMask = 0;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendInteger:self->_pathIndexInRangeMask withName:@"pathIndexInRangeMask"];
  v5 = [v3 appendInteger:self->_pathIndexTouchingMask withName:@"pathIndexTouchingMask"];
  v6 = [NSString stringWithFormat:@"%g", self->_maxForce];
  [v3 appendString:v6 withName:@"maxForce"];

  v7 = [v3 appendObject:self->_currentDestinations withName:@"currentDestinations"];
  v8 = [v3 appendObject:self->_senderInfo withName:@"senderInfo"];
  v9 = [v3 appendObject:self->_overrideSenderDescriptor withName:@"overrideSenderDescriptor" skipIfNil:1];
  v10 = [v3 appendObject:self->_eventDispatcher withName:@"dispatcher"];
  build = [v3 build];

  return build;
}

- (BKTouchPadInfo)initWithService:(id)service
{
  serviceCopy = service;
  v24.receiver = self;
  v24.super_class = BKTouchPadInfo;
  v6 = [(BKTouchPadInfo *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_senderInfo, service);
    v8 = [serviceCopy propertyOfClass:objc_opt_class() forKey:@"SurfaceDimensions"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"Width"];
      v11 = objc_opt_class();
      v12 = v10;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      v15 = [v9 objectForKeyedSubscript:@"Height"];
      v16 = objc_opt_class();
      v17 = v15;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v7->_digitizerSurfaceDimensions.width = vcvtd_n_f64_s64([v14 integerValue], 0x10uLL);
      integerValue = [v19 integerValue];

      v7->_digitizerSurfaceDimensions.height = vcvtd_n_f64_s64(integerValue, 0x10uLL);
    }

    v21 = [serviceCopy propertyOfClass:objc_opt_class() forKey:@"AccurateMaxDigitizerPressureValue"];
    [v21 floatValue];
    v7->_maxForce = v22;
  }

  return v7;
}

@end