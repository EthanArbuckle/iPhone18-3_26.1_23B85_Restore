@interface SiriAnalyticsDirectUploadTopic
- (void)append:(SISchemaAnyEvent *)a3 topic:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation SiriAnalyticsDirectUploadTopic

- (void)append:(SISchemaAnyEvent *)a3 topic:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1D9905654(&unk_1D9935800, v9);
}

@end