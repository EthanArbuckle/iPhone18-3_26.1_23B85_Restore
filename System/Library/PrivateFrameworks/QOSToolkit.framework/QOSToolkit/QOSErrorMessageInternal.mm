@interface QOSErrorMessageInternal
+ (id)getObjcInstanceWithConfig:(id)config error:(id *)error logger:(id)logger metricsRecorder:(id)recorder defaultAlert:(id)alert;
- (QOSErrorMessageInternal)init;
@end

@implementation QOSErrorMessageInternal

- (QOSErrorMessageInternal)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(QOSErrorMessageInternal *)&v3 init];
}

+ (id)getObjcInstanceWithConfig:(id)config error:(id *)error logger:(id)logger metricsRecorder:(id)recorder defaultAlert:(id)alert
{
  v11 = _Block_copy(logger);
  v12 = _Block_copy(recorder);
  v13 = _Block_copy(alert);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = *(config + OBJC_IVAR___QOSConfigInternal_appTarget);
  if (v17 == 1)
  {
    sub_2614560EC();
    v18 = swift_allocError();
    *v19 = 0;
    swift_willThrow();

    if (error)
    {
      v20 = sub_261464730();

      v21 = v20;
      v22 = 0;
      *error = v20;
    }

    else
    {

      v22 = 0;
    }
  }

  else
  {
    if (v17)
    {
      v25 = *(config + OBJC_IVAR___QOSConfigInternal_appTarget);
      configCopy = config;
      result = sub_261464DB0();
      __break(1u);
      return result;
    }

    v22 = sub_2614569A8(config, sub_261456F78, v14, sub_261456FE0, v15, sub_26145704C, v16);
  }

  return v22;
}

@end