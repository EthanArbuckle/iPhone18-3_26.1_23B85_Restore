@interface CSDClarityUICallFilter
- (BOOL)containsOutgoingRestrictedHandle:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5;
- (BOOL)shouldFilterIncomingCall:(id)a3 from:(id)a4;
@end

@implementation CSDClarityUICallFilter

- (BOOL)shouldFilterIncomingCall:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10042D25C(v6, v7);

  return v9 & 1;
}

- (BOOL)containsOutgoingRestrictedHandle:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5
{
  if (a4)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  v12 = sub_10042D9C0(a3, v7, v9);

  return v12 & 1;
}

@end