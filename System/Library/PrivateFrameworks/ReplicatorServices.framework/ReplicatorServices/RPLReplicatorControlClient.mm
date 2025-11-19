@interface RPLReplicatorControlClient
- (RPLReplicatorControlClient)init;
@end

@implementation RPLReplicatorControlClient

- (RPLReplicatorControlClient)init
{
  v6.receiver = self;
  v6.super_class = RPLReplicatorControlClient;
  v2 = [(RPLReplicatorControlClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC18ReplicatorServices33ReplicatorControlClientObjcBridge);
    controlClient = v2->_controlClient;
    v2->_controlClient = v3;
  }

  return v2;
}

@end