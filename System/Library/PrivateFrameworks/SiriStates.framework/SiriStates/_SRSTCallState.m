@interface _SRSTCallState
+ (_SRSTCallState)micMutedCall;
+ (_SRSTCallState)noCall;
+ (_SRSTCallState)onHoldCall;
+ (_SRSTCallState)ongoingCall;
- (_SRSTCallState)init;
@end

@implementation _SRSTCallState

+ (_SRSTCallState)ongoingCall
{
  if (one-time initialization token for ongoingCall != -1)
  {
    swift_once();
  }

  v3 = static CallState.ongoingCall;

  return v3;
}

+ (_SRSTCallState)micMutedCall
{
  if (one-time initialization token for micMutedCall != -1)
  {
    swift_once();
  }

  v3 = static CallState.micMutedCall;

  return v3;
}

+ (_SRSTCallState)noCall
{
  if (one-time initialization token for noCall != -1)
  {
    swift_once();
  }

  v3 = static CallState.noCall;

  return v3;
}

+ (_SRSTCallState)onHoldCall
{
  if (one-time initialization token for onHoldCall != -1)
  {
    swift_once();
  }

  v3 = static CallState.onHoldCall;

  return v3;
}

- (_SRSTCallState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end