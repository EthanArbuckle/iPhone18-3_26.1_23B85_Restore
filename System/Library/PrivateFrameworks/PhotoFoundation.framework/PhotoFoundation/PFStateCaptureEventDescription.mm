@interface PFStateCaptureEventDescription
- (NSString)description;
- (PFStateCaptureEventDescription)initWithStartTimestamp:(double)timestamp;
- (id)appendAbsoluteTimestamp:(double)timestamp;
- (id)appendBool:(BOOL)bool;
- (id)appendEndTimestamp:(double)timestamp;
- (id)appendNumber:(id)number;
- (id)appendQoSClass:(unsigned int)class;
- (id)appendRelativeTimestamp:(double)timestamp;
- (id)appendString:(id)string;
@end

@implementation PFStateCaptureEventDescription

- (NSString)description
{
  v2 = [(NSMutableString *)self->_description copy];

  return v2;
}

- (id)appendBool:(BOOL)bool
{
  if (bool)
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  return [(PFStateCaptureEventDescription *)self appendString:v3];
}

- (id)appendEndTimestamp:(double)timestamp
{
  if (timestamp <= 0.0)
  {
    v6 = [(PFStateCaptureEventDescription *)self appendString:@" now: "];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v6;
  }

  else
  {
    v5 = [(PFStateCaptureEventDescription *)self appendString:@" end: "];
    v6 = v5;
    timestampCopy = timestamp;
  }

  v8 = [v5 appendRelativeTimestamp:timestampCopy];

  return self;
}

- (id)appendRelativeTimestamp:(double)timestamp
{
  description = self->_description;
  if (timestamp == 0.0)
  {
    [(NSMutableString *)description appendString:@"INV"];
  }

  else
  {
    [(NSMutableString *)description appendFormat:@"%+.3f", timestamp - self->_startTimestamp];
  }

  return self;
}

- (id)appendAbsoluteTimestamp:(double)timestamp
{
  v4 = [PFStateCaptureHandler stringFromTimestamp:timestamp];
  v5 = [(PFStateCaptureEventDescription *)self appendString:v4];

  return v5;
}

- (id)appendQoSClass:(unsigned int)class
{
  if (class <= 16)
  {
    switch(class)
    {
      case 0u:
        v3 = @"UN";
        return [(PFStateCaptureEventDescription *)self appendString:v3];
      case 5u:
        v3 = @"MAINTENANCE";
        return [(PFStateCaptureEventDescription *)self appendString:v3];
      case 9u:
        v3 = @"BG";
        return [(PFStateCaptureEventDescription *)self appendString:v3];
    }

LABEL_15:
    v3 = @"UNKNOWN";
    return [(PFStateCaptureEventDescription *)self appendString:v3];
  }

  if (class > 24)
  {
    if (class == 33)
    {
      v3 = @"UI";
      return [(PFStateCaptureEventDescription *)self appendString:v3];
    }

    if (class == 25)
    {
      v3 = @"IN";
      return [(PFStateCaptureEventDescription *)self appendString:v3];
    }

    goto LABEL_15;
  }

  if (class == 17)
  {
    v3 = @"UT";
    return [(PFStateCaptureEventDescription *)self appendString:v3];
  }

  if (class != 21)
  {
    goto LABEL_15;
  }

  v3 = @"DEF";
  return [(PFStateCaptureEventDescription *)self appendString:v3];
}

- (id)appendNumber:(id)number
{
  description = self->_description;
  if (number)
  {
    [(NSMutableString *)description appendFormat:@"%@", number];
  }

  else
  {
    [(NSMutableString *)description appendString:@"<nil>"];
  }

  return self;
}

- (id)appendString:(id)string
{
  description = self->_description;
  if (!string)
  {
    string = @"<nil>";
  }

  [(NSMutableString *)description appendString:string];
  return self;
}

- (PFStateCaptureEventDescription)initWithStartTimestamp:(double)timestamp
{
  v12.receiver = self;
  v12.super_class = PFStateCaptureEventDescription;
  v4 = [(PFStateCaptureEventDescription *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_startTimestamp = timestamp;
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    description = v5->_description;
    v5->_description = v6;

    v8 = v5->_description;
    v9 = [PFStateCaptureHandler stringFromTimestamp:timestamp];
    [(NSMutableString *)v8 appendFormat:@"%@:", v9];

    v10 = v5;
  }

  return v5;
}

@end