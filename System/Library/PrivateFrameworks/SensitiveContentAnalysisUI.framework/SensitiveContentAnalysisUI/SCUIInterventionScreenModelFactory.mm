@interface SCUIInterventionScreenModelFactory
+ (id)modelForScreen:(int64_t)screen workflow:(int64_t)workflow type:(int64_t)type options:(int64_t)options;
- (SCUIInterventionScreenModelFactory)init;
@end

@implementation SCUIInterventionScreenModelFactory

+ (id)modelForScreen:(int64_t)screen workflow:(int64_t)workflow type:(int64_t)type options:(int64_t)options
{
  v6 = _sSo34SCUIInterventionScreenModelFactoryC26SensitiveContentAnalysisUIE5model3for8workflow4type7optionsSo0abC8Protocol_pSo0afB0V_So0A8WorkflowVSo0A4TypeVSo0A7OptionsVtFZ_0(screen, workflow, type, options);

  return v6;
}

- (SCUIInterventionScreenModelFactory)init
{
  v3.receiver = self;
  v3.super_class = SCUIInterventionScreenModelFactory;
  return [(SCUIInterventionScreenModelFactory *)&v3 init];
}

@end