@interface OKAction
+ (id)action;
+ (id)createContext;
+ (unint64_t)directionFromPoint:(CGPoint)a3;
+ (void)setupJavascriptContext:(id)a3;
- (CGPoint)location;
- (OKAction)init;
- (OKAction)initWithCoder:(id)a3;
- (OKAction)initWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 context:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (OKAction)initWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 context:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = [(OKAction *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_location.x = x;
    v11->_location.y = y;
    v11->_state = a3;
    v11->_touchCount = a5;
    v11->_timestamp = CFAbsoluteTimeGetCurrent();
    v12->_context = a6;
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

- (void)encodeWithCoder:(id)a3
{
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [a3 encodeObject:keyPath forKey:@"keyPath"];
  }

  [a3 encodeDouble:@"timestamp" forKey:self->_timestamp];
  if (self->_location.x != *MEMORY[0x277CBF348] || self->_location.y != *(MEMORY[0x277CBF348] + 8))
  {
    [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"location"}];
  }

  [a3 encodeInt32:LODWORD(self->_state) forKey:@"state"];
  [a3 encodeInt32:LODWORD(self->_touchCount) forKey:@"touchCount"];
  [a3 encodeBool:self->_shouldCancelCouchPotato forKey:@"shouldCancelCouchPotato"];
  [a3 encodeBool:self->_shouldPropagate forKey:@"shouldPropagate"];
  [a3 encodeBool:self->_isInstantaneous forKey:@"isInstantaneous"];
  [a3 encodeInteger:self->_scope forKey:@"scope"];
  [a3 encodeInt32:LODWORD(self->_platform) forKey:@"platform"];
  context = self->_context;

  [a3 encodeObject:context forKey:@"context"];
}

- (OKAction)initWithCoder:(id)a3
{
  v4 = [(OKAction *)self init];
  if (v4)
  {
    v4->_keyPath = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"];
    [a3 decodeDoubleForKey:@"timestamp"];
    v4->_timestamp = v5;
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    if (v6)
    {
      [v6 CGPointValue];
      v4->_location.x = v7;
      v4->_location.y = v8;
    }

    v4->_state = [a3 decodeInt32ForKey:@"state"];
    v4->_touchCount = [a3 decodeInt32ForKey:@"touchCount"];
    v4->_shouldCancelCouchPotato = [a3 decodeBoolForKey:@"shouldCancelCouchPotato"];
    v4->_shouldPropagate = [a3 decodeBoolForKey:@"shouldPropagate"];
    v4->_isInstantaneous = [a3 decodeBoolForKey:@"isInstantaneous"];
    v4->_scope = [a3 decodeIntegerForKey:@"scope"];
    v4->_platform = [a3 decodeInt32ForKey:@"platform"];
    v9 = objc_opt_class();
    v4->_context = [objc_msgSend(a3 decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:{@"context", "mutableCopy"}];
  }

  return v4;
}

+ (unint64_t)directionFromPoint:(CGPoint)a3
{
  v3 = 5;
  v4 = 1;
  if (a3.x < 0.0)
  {
    v4 = 3;
  }

  if (a3.x <= 0.0)
  {
    v3 = v4;
  }

  v5 = v3 | 0x10;
  if (a3.y >= 0.0)
  {
    v5 = v3;
  }

  v6 = v3 | 8;
  if (a3.y > 0.0)
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

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKAction"];
  [a3 setObject:&unk_287AF19D0 forKeyedSubscript:@"OKActionDirectionNone"];
  [a3 setObject:&unk_287AF19E8 forKeyedSubscript:@"OKActionDirectionLeft"];
  [a3 setObject:&unk_287AF1A00 forKeyedSubscript:@"OKActionDirectionRight"];
  [a3 setObject:&unk_287AF1A18 forKeyedSubscript:@"OKActionDirectionUp"];
  [a3 setObject:&unk_287AF1A30 forKeyedSubscript:@"OKActionDirectionDown"];
  [a3 setObject:&unk_287AF1A48 forKeyedSubscript:@"OKActionStateUnknown"];
  [a3 setObject:&unk_287AF19D0 forKeyedSubscript:@"OKActionStateBegan"];
  [a3 setObject:&unk_287AF19E8 forKeyedSubscript:@"OKActionStateChanged"];
  [a3 setObject:&unk_287AF1A60 forKeyedSubscript:@"OKActionStateEnded"];

  [a3 setObject:&unk_287AF1A00 forKeyedSubscript:@"OKActionStateAborted"];
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