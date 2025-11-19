@interface NS_onnection_info
- (NS_onnection_info)init;
- (void)dealloc;
@end

@implementation NS_onnection_info

- (NS_onnection_info)init
{
  v7.receiver = self;
  v7.super_class = NS_onnection_info;
  v2 = [(NS_onnection_info *)&v7 init];
  v3 = v2;
  if (v2)
  {
    rumbaID = v2->rumbaID;
    v2->mambaID = 0;
    v2->rumbaID = 0;

    exchange = v3->exchange;
    v3->exchange = 0;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NS_onnection_info;
  [(NS_onnection_info *)&v2 dealloc];
}

@end