@interface TUSmartHoldingEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSession:(id)a3;
- (TUSmartHoldingEvent)initWithCoder:(id)a3;
- (TUSmartHoldingEvent)initWithType:(int64_t)a3 text:(id)a4 date:(id)a5 confidenceScore:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUSmartHoldingEvent

- (TUSmartHoldingEvent)initWithType:(int64_t)a3 text:(id)a4 date:(id)a5 confidenceScore:(double)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = TUSmartHoldingEvent;
  v13 = [(TUSmartHoldingEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_eventType = a3;
    objc_storeStrong(&v13->_text, a4);
    objc_storeStrong(&v14->_date, a5);
    v14->_confidenceScore = a6;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" eventType=%ld", -[TUSmartHoldingEvent eventType](self, "eventType")];
  if ([(TUSmartHoldingEvent *)self eventType]== 2)
  {
    v4 = [(TUSmartHoldingEvent *)self text];
    [v3 appendFormat:@" text=%@", v4];
  }

  else
  {
    [v3 appendString:@" text=<redacted>"];
  }

  v5 = [(TUSmartHoldingEvent *)self date];
  [v3 appendFormat:@" date=%@", v5];

  [(TUSmartHoldingEvent *)self confidenceScore];
  [v3 appendFormat:@" confidenceScore=%f", v6];
  [v3 appendFormat:@" "];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  eventType_low = LODWORD(self->_eventType);
  v5 = a3;
  [v5 encodeInt:eventType_low forKey:@"eventType"];
  [v5 encodeObject:self->_text forKey:@"text"];
  [v5 encodeObject:self->_date forKey:@"date"];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidenceScore];
  [v5 encodeObject:v6 forKey:@"confidenceScore"];
}

- (TUSmartHoldingEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUSmartHoldingEvent *)self init];
  if (v5)
  {
    v5->_eventType = [v4 decodeIntForKey:@"eventType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidenceScore"];
    [v10 doubleValue];
    v5->_confidenceScore = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[1] = [(TUSmartHoldingEvent *)self eventType];
  v5 = [(TUSmartHoldingEvent *)self text];
  v6 = [v5 copy];
  v7 = v4[2];
  v4[2] = v6;

  v8 = [(TUSmartHoldingEvent *)self date];
  v9 = [v8 copy];
  v10 = v4[3];
  v4[3] = v9;

  [(TUSmartHoldingEvent *)self confidenceScore];
  v4[4] = v11;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSmartHoldingEvent *)self isEqualToSession:v4];
  }

  return v5;
}

- (BOOL)isEqualToSession:(id)a3
{
  v4 = a3;
  v5 = [(TUSmartHoldingEvent *)self eventType];
  if (v5 == [v4 eventType])
  {
    v6 = [(TUSmartHoldingEvent *)self text];
    v7 = [v4 text];
    if ([v6 isEqual:v7])
    {
      v8 = [(TUSmartHoldingEvent *)self date];
      v9 = [v4 date];
      if ([v8 isEqual:v9])
      {
        [(TUSmartHoldingEvent *)self confidenceScore];
        v11 = v10;
        [v4 confidenceScore];
        v13 = v11 == v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end