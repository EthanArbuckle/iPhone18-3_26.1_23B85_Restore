@interface TUSmartHoldingEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSession:(id)session;
- (TUSmartHoldingEvent)initWithCoder:(id)coder;
- (TUSmartHoldingEvent)initWithType:(int64_t)type text:(id)text date:(id)date confidenceScore:(double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSmartHoldingEvent

- (TUSmartHoldingEvent)initWithType:(int64_t)type text:(id)text date:(id)date confidenceScore:(double)score
{
  textCopy = text;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = TUSmartHoldingEvent;
  v13 = [(TUSmartHoldingEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_eventType = type;
    objc_storeStrong(&v13->_text, text);
    objc_storeStrong(&v14->_date, date);
    v14->_confidenceScore = score;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" eventType=%ld", -[TUSmartHoldingEvent eventType](self, "eventType")];
  if ([(TUSmartHoldingEvent *)self eventType]== 2)
  {
    text = [(TUSmartHoldingEvent *)self text];
    [v3 appendFormat:@" text=%@", text];
  }

  else
  {
    [v3 appendString:@" text=<redacted>"];
  }

  date = [(TUSmartHoldingEvent *)self date];
  [v3 appendFormat:@" date=%@", date];

  [(TUSmartHoldingEvent *)self confidenceScore];
  [v3 appendFormat:@" confidenceScore=%f", v6];
  [v3 appendFormat:@" "];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  eventType_low = LODWORD(self->_eventType);
  coderCopy = coder;
  [coderCopy encodeInt:eventType_low forKey:@"eventType"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidenceScore];
  [coderCopy encodeObject:v6 forKey:@"confidenceScore"];
}

- (TUSmartHoldingEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUSmartHoldingEvent *)self init];
  if (v5)
  {
    v5->_eventType = [coderCopy decodeIntForKey:@"eventType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidenceScore"];
    [v10 doubleValue];
    v5->_confidenceScore = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[1] = [(TUSmartHoldingEvent *)self eventType];
  text = [(TUSmartHoldingEvent *)self text];
  v6 = [text copy];
  v7 = v4[2];
  v4[2] = v6;

  date = [(TUSmartHoldingEvent *)self date];
  v9 = [date copy];
  v10 = v4[3];
  v4[3] = v9;

  [(TUSmartHoldingEvent *)self confidenceScore];
  v4[4] = v11;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSmartHoldingEvent *)self isEqualToSession:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSession:(id)session
{
  sessionCopy = session;
  eventType = [(TUSmartHoldingEvent *)self eventType];
  if (eventType == [sessionCopy eventType])
  {
    text = [(TUSmartHoldingEvent *)self text];
    text2 = [sessionCopy text];
    if ([text isEqual:text2])
    {
      date = [(TUSmartHoldingEvent *)self date];
      date2 = [sessionCopy date];
      if ([date isEqual:date2])
      {
        [(TUSmartHoldingEvent *)self confidenceScore];
        v11 = v10;
        [sessionCopy confidenceScore];
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