@interface CSStudiesServerConfiguration
+ (id)igneousCMPrototypingConfiguration;
+ (id)igneousGMConfiguration;
+ (id)igneousStagingConfiguration;
+ (id)kappaCMPrototypingConfiguration;
+ (id)kappaGMConfiguration;
+ (id)kappaInternalConfiguration;
+ (id)kappaStagingConfiguration;
+ (id)persistentConfiguration;
+ (id)persistentConfigurationIgneous;
- (CSStudiesServerConfiguration)initWithServer:(id)server certificate:(id)certificate study:(id)study andAuthorizationID:(id)d;
@end

@implementation CSStudiesServerConfiguration

- (CSStudiesServerConfiguration)initWithServer:(id)server certificate:(id)certificate study:(id)study andAuthorizationID:(id)d
{
  serverCopy = server;
  certificateCopy = certificate;
  studyCopy = study;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = CSStudiesServerConfiguration;
  v15 = [(CSStudiesServerConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_server, server);
    objc_storeStrong(&v16->_certificate, certificate);
    objc_storeStrong(&v16->_studyUUID, study);
    objc_storeStrong(&v16->_auth, d);
  }

  return v16;
}

+ (id)persistentConfiguration
{
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 objectForKey:@"hdsEndpointName"];
  if ([v3 isEqualToString:@"GM"])
  {
    v4 = +[CSStudiesServerConfiguration kappaGMConfiguration];
  }

  else if ([v3 isEqualToString:@"Internal"])
  {
    v4 = +[CSStudiesServerConfiguration kappaInternalConfiguration];
  }

  else if ([v3 isEqualToString:@"CMPrototyping"])
  {
    v4 = +[CSStudiesServerConfiguration kappaCMPrototypingConfiguration];
  }

  else
  {
    if (![v3 isEqualToString:@"Staging"])
    {
      v7 = +[CSPlatformInfo sharedInstance];
      if ([v7 isInternalInstall])
      {
        +[CSStudiesServerConfiguration kappaInternalConfiguration];
      }

      else
      {
        +[CSStudiesServerConfiguration kappaGMConfiguration];
      }
      v5 = ;

      goto LABEL_10;
    }

    v4 = +[CSStudiesServerConfiguration kappaStagingConfiguration];
  }

  v5 = v4;
LABEL_10:

  return v5;
}

+ (id)persistentConfigurationIgneous
{
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 objectForKey:@"hdsEndpointNameIgneous"];
  if ([v3 isEqualToString:@"GM"])
  {
    goto LABEL_2;
  }

  if ([v3 isEqualToString:@"CMPrototyping"])
  {
    v4 = +[CSStudiesServerConfiguration igneousCMPrototypingConfiguration];
  }

  else
  {
    if (![v3 isEqualToString:@"Staging"])
    {
LABEL_2:
      v4 = +[CSStudiesServerConfiguration igneousGMConfiguration];
      goto LABEL_7;
    }

    v4 = +[CSStudiesServerConfiguration igneousStagingConfiguration];
  }

LABEL_7:
  v5 = v4;

  return v5;
}

+ (id)kappaGMConfiguration
{
  if (qword_1004587E8 != -1)
  {
    sub_100358194();
  }

  v3 = qword_1004587B0;

  return v3;
}

+ (id)kappaInternalConfiguration
{
  if (qword_1004587F0 != -1)
  {
    sub_1003581A8();
  }

  v3 = qword_1004587B8;

  return v3;
}

+ (id)kappaCMPrototypingConfiguration
{
  if (qword_1004587F8 != -1)
  {
    sub_1003581BC();
  }

  v3 = qword_1004587C0;

  return v3;
}

+ (id)kappaStagingConfiguration
{
  if (qword_100458800 != -1)
  {
    sub_1003581D0();
  }

  v3 = qword_1004587C8;

  return v3;
}

+ (id)igneousCMPrototypingConfiguration
{
  if (qword_100458808 != -1)
  {
    sub_1003581E4();
  }

  v3 = qword_1004587D0;

  return v3;
}

+ (id)igneousStagingConfiguration
{
  if (qword_100458810 != -1)
  {
    sub_1003581F8();
  }

  v3 = qword_1004587D8;

  return v3;
}

+ (id)igneousGMConfiguration
{
  if (qword_100458818 != -1)
  {
    sub_10035820C();
  }

  v3 = qword_1004587E0;

  return v3;
}

@end