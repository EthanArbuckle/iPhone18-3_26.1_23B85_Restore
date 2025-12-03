@interface CSDClarityUICallFilter
- (BOOL)containsOutgoingRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously;
- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from;
@end

@implementation CSDClarityUICallFilter

- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from
{
  callCopy = call;
  fromCopy = from;
  selfCopy = self;
  v9 = sub_10042D25C(callCopy, fromCopy);

  return v9 & 1;
}

- (BOOL)containsOutgoingRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously
{
  if (identifier)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  handleCopy = handle;
  selfCopy = self;
  v12 = sub_10042D9C0(handle, v7, v9);

  return v12 & 1;
}

@end