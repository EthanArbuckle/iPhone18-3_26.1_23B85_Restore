@interface TVRCButtonEvent
+ (id)buttonEventForButton:(id)a3 eventType:(int64_t)a4;
- (TVRCButtonEvent)initWithCoder:(id)a3;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCButtonEvent

+ (id)buttonEventForButton:(id)a3 eventType:(int64_t)a4
{
  v5 = a3;
  v6 = [[TVRCButtonEvent alloc] _init];
  v7 = v6[2];
  v6[2] = v5;
  v8 = v5;

  v6[3] = a4;
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = TVRCButtonEvent;
  return [(TVRCButtonEvent *)&v3 init];
}

- (TVRCButtonEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TVRCButtonEvent;
  v5 = [(TVRCButtonEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"button"];
    button = v5->_button;
    v5->_button = v8;

    v5->_eventType = [v4 decodeIntegerForKey:@"eventType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_button forKey:@"button"];
  [v5 encodeInteger:self->_eventType forKey:@"eventType"];
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