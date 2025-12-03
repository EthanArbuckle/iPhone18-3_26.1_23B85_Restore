@interface ReplicatorClientSingleton
- (void)handleRecordChangesWithParameters:(id)parameters;
@end

@implementation ReplicatorClientSingleton

- (void)handleRecordChangesWithParameters:(id)parameters
{
  sub_1BAB0E24C(parameters, &v6);
  v5 = v6;
  selfCopy = self;
  sub_1BAB12CE8(&v5);
}

@end