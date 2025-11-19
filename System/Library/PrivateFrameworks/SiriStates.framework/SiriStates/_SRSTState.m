@interface _SRSTState
+ (_SRSTState)analyzing;
+ (_SRSTState)available;
+ (_SRSTState)disabled;
+ (_SRSTState)postResponse;
+ (_SRSTState)processing;
+ (_SRSTState)responding;
+ (_SRSTState)resting;
+ (_SRSTState)understanding;
- (_SRSTState)init;
@end

@implementation _SRSTState

+ (_SRSTState)resting
{
  if (one-time initialization token for resting != -1)
  {
    swift_once();
  }

  v3 = static State.resting;

  return v3;
}

+ (_SRSTState)responding
{
  if (one-time initialization token for responding != -1)
  {
    swift_once();
  }

  v3 = static State.responding;

  return v3;
}

+ (_SRSTState)available
{
  if (one-time initialization token for available != -1)
  {
    swift_once();
  }

  v3 = static State.available;

  return v3;
}

+ (_SRSTState)postResponse
{
  if (one-time initialization token for postResponse != -1)
  {
    swift_once();
  }

  v3 = static State.postResponse;

  return v3;
}

- (_SRSTState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (_SRSTState)disabled
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v3 = static State.disabled;

  return v3;
}

+ (_SRSTState)analyzing
{
  if (one-time initialization token for analyzing != -1)
  {
    swift_once();
  }

  v3 = static State.analyzing;

  return v3;
}

+ (_SRSTState)understanding
{
  if (one-time initialization token for understanding != -1)
  {
    swift_once();
  }

  v3 = static State.understanding;

  return v3;
}

+ (_SRSTState)processing
{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v3 = static State.processing;

  return v3;
}

@end