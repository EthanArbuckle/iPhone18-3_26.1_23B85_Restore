@interface SKAPrimaryQueueActor
+ (OS_dispatch_queue)queue;
+ (SKAPrimaryQueueActor)shared;
@end

@implementation SKAPrimaryQueueActor

+ (OS_dispatch_queue)queue
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v3 = static SKAPrimaryQueueActor.queue;

  return v3;
}

+ (SKAPrimaryQueueActor)shared
{
  type metadata accessor for SKAPrimaryQueueActor();
  inited = swift_initStaticObject();

  return inited;
}

@end