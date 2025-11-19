@interface _SRSTCallServer
- (_SRSTCallServer)init;
@end

@implementation _SRSTCallServer

- (_SRSTCallServer)init
{
  ObjectType = swift_getObjectType();
  v3 = *InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v4 = *(ObjectType + 128);

  v6 = v4(v5);
  swift_deallocPartialClassInstance();
  return v6;
}

@end