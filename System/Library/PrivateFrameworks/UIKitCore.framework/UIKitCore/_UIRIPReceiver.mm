@interface _UIRIPReceiver
- (BOOL)isEqual:(id)equal;
- (_UIRIPReceiver)initWithResponder:(id)responder class:(Class)class press:(id)press inPhase:(int64_t)phase withEvent:(id)event;
- (id)description;
@end

@implementation _UIRIPReceiver

- (_UIRIPReceiver)initWithResponder:(id)responder class:(Class)class press:(id)press inPhase:(int64_t)phase withEvent:(id)event
{
  responderCopy = responder;
  pressCopy = press;
  eventCopy = event;
  v19.receiver = self;
  v19.super_class = _UIRIPReceiver;
  v16 = [(_UIRIPReceiver *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_responder, responder);
    objc_storeStrong(&v17->_clazz, class);
    objc_storeStrong(&v17->_press, press);
    v17->_phase = phase;
    objc_storeStrong(&v17->_event, event);
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->_responder == v5[2] && self->_clazz == v5[3] && self->_press == v5[5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  responder = self->_responder;
  v7 = NSStringFromClass(self->_clazz);
  v8 = [v3 stringWithFormat:@"[%@:%p:%@]", v5, responder, v7];

  return v8;
}

@end