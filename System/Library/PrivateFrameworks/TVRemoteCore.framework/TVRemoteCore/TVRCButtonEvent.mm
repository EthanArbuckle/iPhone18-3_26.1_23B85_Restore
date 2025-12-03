@interface TVRCButtonEvent
+ (id)buttonEventForButton:(id)button eventType:(int64_t)type;
- (TVRCButtonEvent)initWithCoder:(id)coder;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCButtonEvent

+ (id)buttonEventForButton:(id)button eventType:(int64_t)type
{
  buttonCopy = button;
  _init = [[TVRCButtonEvent alloc] _init];
  v7 = _init[2];
  _init[2] = buttonCopy;
  v8 = buttonCopy;

  _init[3] = type;
  date = [MEMORY[0x277CBEAA8] date];
  v10 = _init[1];
  _init[1] = date;

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = TVRCButtonEvent;
  return [(TVRCButtonEvent *)&v3 init];
}

- (TVRCButtonEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TVRCButtonEvent;
  v5 = [(TVRCButtonEvent *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"button"];
    button = v5->_button;
    v5->_button = v8;

    v5->_eventType = [coderCopy decodeIntegerForKey:@"eventType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_button forKey:@"button"];
  [coderCopy encodeInteger:self->_eventType forKey:@"eventType"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  eventType = self->_eventType;
  if (eventType >= 4)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v6 = [v7 stringWithFormat:@"Unknown %@", v8];
  }

  else
  {
    v6 = off_279D828C0[eventType];
  }

  v9 = [v3 stringWithFormat:@"<%@ %p type=%@; button=%@>", v4, self, v6, self->_button];;

  return v9;
}

@end