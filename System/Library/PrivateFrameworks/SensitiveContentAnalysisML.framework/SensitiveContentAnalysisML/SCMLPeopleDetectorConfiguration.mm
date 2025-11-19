@interface SCMLPeopleDetectorConfiguration
- (BOOL)isEqual:(id)a3;
- (SCMLPeopleDetectorConfiguration)initWithModelManagerServicesUseCaseID:(id)a3;
- (unint64_t)hash;
@end

@implementation SCMLPeopleDetectorConfiguration

- (SCMLPeopleDetectorConfiguration)initWithModelManagerServicesUseCaseID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCMLPeopleDetectorConfiguration;
  v5 = [(SCMLPeopleDetectorConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF58] currentLocale];
    [(SCMLPeopleDetectorConfiguration *)v5 setLocale:v6];

    [(SCMLPeopleDetectorConfiguration *)v5 setOnBehalfOfProcessID:0xFFFFFFFFLL];
    [(SCMLPeopleDetectorConfiguration *)v5 setModelManagerServicesUseCaseID:v4];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      locale = self->_locale;
      v7 = v5->_locale;
      v8 = (locale == v7 || v7 && [(NSLocale *)locale isEqual:?]) && [(NSString *)self->_modelManagerServicesUseCaseID isEqualToString:v5->_modelManagerServicesUseCaseID]&& self->_onBehalfOfProcessID == v5->_onBehalfOfProcessID;
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
  v3 = [(NSLocale *)self->_locale hash];
  v4 = 0xFF51AFD7ED558CCDLL * (v3 ^ 0x8F66D7997DCDFA58 ^ ((v3 ^ 0x8F66D7997DCDFA58) >> 33));
  v5 = 0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33));
  v6 = [(NSString *)self->_modelManagerServicesUseCaseID hash];
  v7 = 0xFF51AFD7ED558CCDLL * (v6 ^ (v5 >> 33) ^ v5 ^ ((v6 ^ (v5 >> 33) ^ v5) >> 33));
  v8 = 0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33));
  v9 = self->_onBehalfOfProcessID ^ (v8 >> 33);
  v10 = 0xFF51AFD7ED558CCDLL * (v9 ^ v8 ^ ((v9 ^ v8) >> 33));
  return (0xC4CEB9FE1A85EC53 * (v10 ^ (v10 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v10 ^ (v10 >> 33))) >> 33);
}

@end