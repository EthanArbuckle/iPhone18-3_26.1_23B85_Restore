@interface PFSharedDispatchQueues
+ (id)localAssetSupportWorkQueue;
- (PFSharedDispatchQueues)init;
@end

@implementation PFSharedDispatchQueues

+ (id)localAssetSupportWorkQueue
{
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD0998;

  return v3;
}

- (PFSharedDispatchQueues)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SharedDispatchQueues();
  return [(PFSharedDispatchQueues *)&v3 init];
}

@end