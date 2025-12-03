@interface OKAction
+ (id)action;
+ (id)createContext;
+ (unint64_t)directionFromPoint:(CGPoint)point;
+ (void)setupJavascriptContext:(id)context;
- (CGPoint)location;
- (OKAction)init;
- (OKAction)initWithCoder:(id)coder;
- (OKAction)initWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count context:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OKAction

+ (id)action
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (OKAction)init
{
  v5.receiver = self;
  v5.super_class = OKAction;
  v2 = [(OKAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_location = *MEMORY[0x277CBF348];
    v2->_state = 0;
    v2->_touchCount = 0;
    v2->_timestamp = CFAbsoluteTimeGetCurrent();
    *&v3->_shouldCancelCouchPotato = 257;
    v3->_isInstantaneous = 0;
    v3->_scope = 3;
    v3->_platform = +[OKRuntime currentPlatform];
    v3->_context = 0;
    [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  }

  return v3;
}

- (OKAction)initWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count context:(id)context
{
  y = location.y;
  x = location.x;
  v11 = [(OKAction *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_location.x = x;
    v11->_location.y = y;
    v11->_state = state;
    v11->_touchCount = count;
    v11->_timestamp = CFAbsoluteTimeGetCurrent();
    v12->_context = context;
  }

  return v12;
}

- (void)dealloc
{
  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  context = self->_context;
  if (context)
  {

    self->_context = 0;
  }

  keyPath = self->_keyPath;
  if (keyPath)
  {

    self->_keyPath = 0;
  }

  v5.receiver = self;
  v5.super_class = OKAction;
  [(OKAction *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [coder encodeObject:keyPath forKey:@"keyPath"];
  }

  [coder encodeDouble:@"timestamp" forKey:self->_timestamp];
  if (self->_location.x != *MEMORY[0x277CBF348] || self->_location.y != *(MEMORY[0x277CBF348] + 8))
  {
    [coder encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"location"}];
  }

  [coder encodeInt32:LODWORD(self->_state) forKey:@"state"];
  [coder encodeInt32:LODWORD(self->_touchCount) forKey:@"touchCount"];
  [coder encodeBool:self->_shouldCancelCouchPotato forKey:@"shouldCancelCouchPotato"];
  [coder encodeBool:self->_shouldPropagate forKey:@"shouldPropagate"];
  [coder encodeBool:self->_isInstantaneous forKey:@"isInstantaneous"];
  [coder encodeInteger:self->_scope forKey:@"scope"];
  [coder encodeInt32:LODWORD(self->_platform) forKey:@"platform"];
  context = self->_context;

  [coder encodeObject:context forKey:@"context"];
}

- (OKAction)initWithCoder:(id)coder
{
  v4 = [(OKAction *)self init];
  if (v4)
  {
    v4->_keyPath = [coder decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"];
    [coder decodeDoubleForKey:@"timestamp"];
    v4->_timestamp = v5;
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    if (v6)
    {
      [v6 CGPointValue];
      v4->_location.x = v7;
      v4->_location.y = v8;
    }

    v4->_state = [coder decodeInt32ForKey:@"state"];
    v4->_touchCount = [coder decodeInt32ForKey:@"touchCount"];
    v4->_shouldCancelCouchPotato = [coder decodeBoolForKey:@"shouldCancelCouchPotato"];
    v4->_shouldPropagate = [coder decodeBoolForKey:@"shouldPropagate"];
    v4->_isInstantaneous = [coder decodeBoolForKey:@"isInstantaneous"];
    v4->_scope = [coder decodeIntegerForKey:@"scope"];
    v4->_platform = [coder decodeInt32ForKey:@"platform"];
    v9 = objc_opt_class();
    v4->_context = [objc_msgSend(coder decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:{@"context", "mutableCopy"}];
  }

  return v4;
}

+ (unint64_t)directionFromPoint:(CGPoint)point
{
  v3 = 5;
  v4 = 1;
  if (point.x < 0.0)
  {
    v4 = 3;
  }

  if (point.x <= 0.0)
  {
    v3 = v4;
  }

  v5 = v3 | 0x10;
  if (point.y >= 0.0)
  {
    v5 = v3;
  }

  v6 = v3 | 8;
  if (point.y > 0.0)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

+ (id)createContext
{
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v3 = [v2 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCACA8], "generateUUID"), @"contextID", 0}];

  return v3;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKAction"];
  [context setObject:&unk_287AF19D0 forKeyedSubscript:@"OKActionDirectionNone"];
  [context setObject:&unk_287AF19E8 forKeyedSubscript:@"OKActionDirectionLeft"];
  [context setObject:&unk_287AF1A00 forKeyedSubscript:@"OKActionDirectionRight"];
  [context setObject:&unk_287AF1A18 forKeyedSubscript:@"OKActionDirectionUp"];
  [context setObject:&unk_287AF1A30 forKeyedSubscript:@"OKActionDirectionDown"];
  [context setObject:&unk_287AF1A48 forKeyedSubscript:@"OKActionStateUnknown"];
  [context setObject:&unk_287AF19D0 forKeyedSubscript:@"OKActionStateBegan"];
  [context setObject:&unk_287AF19E8 forKeyedSubscript:@"OKActionStateChanged"];
  [context setObject:&unk_287AF1A60 forKeyedSubscript:@"OKActionStateEnded"];

  [context setObject:&unk_287AF1A00 forKeyedSubscript:@"OKActionStateAborted"];
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end