@interface SCMLImageSanitizerConfiguration
- (BOOL)isEqual:(id)equal;
- (SCMLImageSanitizerConfiguration)init;
- (unint64_t)hash;
@end

@implementation SCMLImageSanitizerConfiguration

- (SCMLImageSanitizerConfiguration)init
{
  v7.receiver = self;
  v7.super_class = SCMLImageSanitizerConfiguration;
  v2 = [(SCMLImageSanitizerConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_trackPerformance = 0;
    v2->_granularity = 0;
    clipClassifierConfig = v2->_clipClassifierConfig;
    v2->_clipClassifierConfig = &stru_1F374C020;

    v3->_mode = 1;
    v3->_region = 0;
    modelManagerServicesUseCaseID = v3->_modelManagerServicesUseCaseID;
    v3->_backends = 0;
    v3->_modelManagerServicesUseCaseID = @"Safety.unset";

    v3->_onBehalfOfProcessID = -1;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      v7 = self->_trackPerformance == v5->_trackPerformance && self->_granularity == v5->_granularity && [(NSString *)self->_clipClassifierConfig isEqualToString:v5->_clipClassifierConfig]&& self->_mode == v6->_mode && self->_backends == v6->_backends && self->_region == v6->_region && [(NSString *)self->_modelManagerServicesUseCaseID isEqualToString:v6->_modelManagerServicesUseCaseID]&& self->_onBehalfOfProcessID == v6->_onBehalfOfProcessID;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = 0x8F66D7997DCDFA58;
  scml::Hasher::combineRecursive<BOOL &,SCMLImageSanitizerGranularity &,NSString * {__strong}&,SCMLImageSanitizerMode &,unsigned long &,SCMLRegion &,NSString * {__strong}&,int &>(&v3, &self->_trackPerformance, &self->_granularity, &self->_clipClassifierConfig, &self->_mode, &self->_backends, &self->_region, &self->_modelManagerServicesUseCaseID, &self->_onBehalfOfProcessID);
  return v3;
}

@end