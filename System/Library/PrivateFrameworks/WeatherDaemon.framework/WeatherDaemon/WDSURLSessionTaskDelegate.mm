@interface WDSURLSessionTaskDelegate
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
@end

@implementation WDSURLSessionTaskDelegate

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1B6037418(v8, v7);
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1B6048224(v11, v9, v10);
}

@end