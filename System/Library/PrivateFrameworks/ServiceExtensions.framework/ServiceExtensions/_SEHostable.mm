@interface _SEHostable
+ (id)createHostableWithError:(id *)error;
+ (id)createHostableWithOptions:(id)options error:(id *)error;
- (CALayer)layer;
- (_SEHostable)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SEHostable

- (CALayer)layer
{
  layer = [*(&self->super.isa + OBJC_IVAR____SEHostable__context) layer];

  return layer;
}

- (_SEHostable)init
{
  result = sub_265750408();
  __break(1u);
  return result;
}

+ (id)createHostableWithError:(id *)error
{
  v3 = sub_26574F574();

  return v3;
}

+ (id)createHostableWithOptions:(id)options error:(id *)error
{
  sub_265750188();
  v4 = sub_26574F39C();

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(_SEHostable *)&v3 dealloc];
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____SEHostable__invalidationSignal);
  selfCopy = self;
  if ([v2 signal])
  {
    [*(&selfCopy->super.isa + OBJC_IVAR____SEHostable__context) invalidate];
  }
}

@end