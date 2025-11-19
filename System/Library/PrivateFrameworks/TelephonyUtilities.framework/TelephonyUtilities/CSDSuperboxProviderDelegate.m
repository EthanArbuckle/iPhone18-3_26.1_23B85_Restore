@interface CSDSuperboxProviderDelegate
- (void)provider:(id)a3 performAnswerCallAction:(id)a4;
- (void)provider:(id)a3 performStartCallAction:(id)a4;
- (void)provider:(void *)a3 performSetMutedCallAction:(void *)a4;
@end

@implementation CSDSuperboxProviderDelegate

- (void)provider:(void *)a3 performSetMutedCallAction:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1003E3774(v8, v7);
}

- (void)provider:(id)a3 performStartCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003E2788(v8, v7);
}

- (void)provider:(id)a3 performAnswerCallAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003E34F0(v8, v7);
}

@end