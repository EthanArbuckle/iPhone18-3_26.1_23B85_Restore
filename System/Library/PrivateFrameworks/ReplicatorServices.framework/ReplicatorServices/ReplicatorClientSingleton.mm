@interface ReplicatorClientSingleton
- (void)handleRecordChangesWithParameters:(id)a3;
@end

@implementation ReplicatorClientSingleton

- (void)handleRecordChangesWithParameters:(id)a3
{
  sub_1BAB0E24C(a3, &v6);
  v5 = v6;
  v4 = self;
  sub_1BAB12CE8(&v5);
}

@end