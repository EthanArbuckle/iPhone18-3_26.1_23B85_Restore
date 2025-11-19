@interface SCUIInterventionScreenModelFactory
+ (id)modelForScreen:(int64_t)a3 workflow:(int64_t)a4 type:(int64_t)a5 options:(int64_t)a6;
- (SCUIInterventionScreenModelFactory)init;
@end

@implementation SCUIInterventionScreenModelFactory

+ (id)modelForScreen:(int64_t)a3 workflow:(int64_t)a4 type:(int64_t)a5 options:(int64_t)a6
{
  v6 = _sSo34SCUIInterventionScreenModelFactoryC26SensitiveContentAnalysisUIE5model3for8workflow4type7optionsSo0abC8Protocol_pSo0afB0V_So0A8WorkflowVSo0A4TypeVSo0A7OptionsVtFZ_0(a3, a4, a5, a6);

  return v6;
}

- (SCUIInterventionScreenModelFactory)init
{
  v3.receiver = self;
  v3.super_class = SCUIInterventionScreenModelFactory;
  return [(SCUIInterventionScreenModelFactory *)&v3 init];
}

@end