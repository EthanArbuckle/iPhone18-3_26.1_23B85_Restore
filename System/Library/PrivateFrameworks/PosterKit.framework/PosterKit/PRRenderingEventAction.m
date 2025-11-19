@interface PRRenderingEventAction
- (CGPoint)location;
- (NSDictionary)metadata;
- (NSString)eventType;
- (PRRenderingEventAction)init;
- (PRRenderingEventAction)initWithEvent:(id)a3 responder:(id)a4;
- (PRRenderingEventAction)initWithInfo:(id)a3 responder:(id)a4;
- (id)event;
@end

@implementation PRRenderingEventAction

- (PRRenderingEventAction)initWithEvent:(id)a3 responder:(id)a4
{
  v6 = MEMORY[0x1E698E700];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:v8 forSetting:0];

  v12.receiver = self;
  v12.super_class = PRRenderingEventAction;
  v10 = [(PRRenderingEventAction *)&v12 initWithInfo:v9 responder:v7];

  return v10;
}

- (id)event
{
  v2 = [(PRRenderingEventAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

- (PRRenderingEventAction)initWithInfo:(id)a3 responder:(id)a4
{
  [(PRRenderingEventAction *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (PRRenderingEventAction)init
{
  [(PRRenderingEventAction *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSString)eventType
{
  v2 = [(PRRenderingEventAction *)self event];
  v3 = [v2 type];

  return v3;
}

- (CGPoint)location
{
  v2 = [(PRRenderingEventAction *)self event];
  [v2 location];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (NSDictionary)metadata
{
  v2 = [(PRRenderingEventAction *)self event];
  v3 = [v2 metadata];

  return v3;
}

@end