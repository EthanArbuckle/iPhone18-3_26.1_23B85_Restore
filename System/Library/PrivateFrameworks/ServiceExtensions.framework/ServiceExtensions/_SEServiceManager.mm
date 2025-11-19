@interface _SEServiceManager
+ (id)sharedInstance;
- (_SEServiceManager)init;
@end

@implementation _SEServiceManager

+ (id)sharedInstance
{
  if (qword_28001C0B0 != -1)
  {
    swift_once();
  }

  v3 = qword_28001C5B0;

  return v3;
}

- (_SEServiceManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _SEServiceManager();
  return [(_SEServiceManager *)&v3 init];
}

@end