@interface _SRSTServer
- (_SRSTServer)init;
@end

@implementation _SRSTServer

- (_SRSTServer)init
{
  ObjectType = swift_getObjectType();
  v3 = *InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v4 = *(ObjectType + 128);

  v6 = v4(v5);
  swift_deallocPartialClassInstance();
  return v6;
}

@end