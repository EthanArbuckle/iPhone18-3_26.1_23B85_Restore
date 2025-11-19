@interface _SRSTSharedState
+ (_SRSTSharedState)passive;
+ (_SRSTSharedState)preparingToServe;
+ (_SRSTSharedState)serving;
+ (_SRSTSharedState)unshared;
- (_SRSTSharedState)init;
@end

@implementation _SRSTSharedState

+ (_SRSTSharedState)passive
{
  if (one-time initialization token for passive != -1)
  {
    swift_once();
  }

  v3 = static SharedState.passive;

  return v3;
}

- (_SRSTSharedState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (_SRSTSharedState)preparingToServe
{
  if (one-time initialization token for preparingToServe != -1)
  {
    swift_once();
  }

  v3 = static SharedState.preparingToServe;

  return v3;
}

+ (_SRSTSharedState)unshared
{
  if (one-time initialization token for unshared != -1)
  {
    swift_once();
  }

  v3 = static SharedState.unshared;

  return v3;
}

+ (_SRSTSharedState)serving
{
  if (one-time initialization token for serving != -1)
  {
    swift_once();
  }

  v3 = static SharedState.serving;

  return v3;
}

@end