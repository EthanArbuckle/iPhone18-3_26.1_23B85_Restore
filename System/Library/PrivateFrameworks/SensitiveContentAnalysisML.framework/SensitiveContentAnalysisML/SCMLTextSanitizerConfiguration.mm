@interface SCMLTextSanitizerConfiguration
- (BOOL)isEqual:(id)equal;
- (SCMLTextSanitizerConfiguration)initWithModelManagerServicesUseCaseID:(id)d;
- (unint64_t)hash;
@end

@implementation SCMLTextSanitizerConfiguration

- (SCMLTextSanitizerConfiguration)initWithModelManagerServicesUseCaseID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = SCMLTextSanitizerConfiguration;
  v5 = [(SCMLTextSanitizerConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
    [(SCMLTextSanitizerConfiguration *)v5 setLocale:v6];

    [(SCMLTextSanitizerConfiguration *)v5 setMode:2];
    [(SCMLTextSanitizerConfiguration *)v5 setBackends:0];
    [(SCMLTextSanitizerConfiguration *)v5 setTrackPerformance:0];
    [(SCMLTextSanitizerConfiguration *)v5 setGranularity:0];
    [(SCMLTextSanitizerConfiguration *)v5 setThrowInAdapterAsyncHandler:0];
    [(SCMLTextSanitizerConfiguration *)v5 setOnBehalfOfProcessID:0xFFFFFFFFLL];
    [(SCMLTextSanitizerConfiguration *)v5 setModelManagerServicesUseCaseID:dCopy];
    [(SCMLTextSanitizerConfiguration *)v5 setRegion:0];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      locale = self->_locale;
      v7 = v5->_locale;
      v8 = (locale == v7 || v7 && [(NSLocale *)locale isEqual:?]) && self->_trackPerformance == v5->_trackPerformance && self->_granularity == v5->_granularity && self->_mode == v5->_mode && self->_backends == v5->_backends && self->_throwInAdapterAsyncHandler == v5->_throwInAdapterAsyncHandler && self->_region == v5->_region && [(NSString *)self->_modelManagerServicesUseCaseID isEqualToString:v5->_modelManagerServicesUseCaseID]&& self->_onBehalfOfProcessID == v5->_onBehalfOfProcessID;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  p_onBehalfOfProcessID = &self->_onBehalfOfProcessID;
  v4 = [(NSLocale *)self->_locale hash];
  v5 = 0xFF51AFD7ED558CCDLL * (v4 ^ 0x8F66D7997DCDFA58 ^ ((v4 ^ 0x8F66D7997DCDFA58) >> 33));
  v7 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
  scml::Hasher::combineRecursive<BOOL &,SCMLTextSanitizerGranularity &,SCMLTextSanitizerMode &,unsigned long &,BOOL &,SCMLRegion &,NSString * {__strong}&,int &>(&v7, &self->_trackPerformance, &self->_granularity, &self->_mode, &self->_backends, &self->_throwInAdapterAsyncHandler, &self->_region, &self->_modelManagerServicesUseCaseID, p_onBehalfOfProcessID);
  return v7;
}

@end