@interface PFStateCaptureEventDescription
- (NSString)description;
- (PFStateCaptureEventDescription)initWithStartTimestamp:(double)a3;
- (id)appendAbsoluteTimestamp:(double)a3;
- (id)appendBool:(BOOL)a3;
- (id)appendEndTimestamp:(double)a3;
- (id)appendNumber:(id)a3;
- (id)appendQoSClass:(unsigned int)a3;
- (id)appendRelativeTimestamp:(double)a3;
- (id)appendString:(id)a3;
@end

@implementation PFStateCaptureEventDescription

- (NSString)description
{
  v2 = [(NSMutableString *)self->_description copy];

  return v2;
}

- (id)appendBool:(BOOL)a3
{
  if (a3)
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  return [(PFStateCaptureEventDescription *)self appendString:v3];
}

- (id)appendEndTimestamp:(double)a3
{
  if (a3 <= 0.0)
  {
    v6 = [(PFStateCaptureEventDescription *)self appendString:@" now: "];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v6;
  }

  else
  {
    v5 = [(PFStateCaptureEventDescription *)self appendString:@" end: "];
    v6 = v5;
    v7 = a3;
  }

  v8 = [v5 appendRelativeTimestamp:v7];

  return self;
}

- (id)appendRelativeTimestamp:(double)a3
{
  description = self->_description;
  if (a3 == 0.0)
  {
    [(NSMutableString *)description appendString:@"INV"];
  }

  else
  {
    [(NSMutableString *)description appendFormat:@"%+.3f", a3 - self->_startTimestamp];
  }

  return self;
}

- (id)appendAbsoluteTimestamp:(double)a3
{
  v4 = [PFStateCaptureHandler stringFromTimestamp:a3];
  v5 = [(PFStateCaptureEventDescription *)self appendString:v4];

  return v5;
}

- (id)appendQoSClass:(unsigned int)a3
{
  if (a3 <= 16)
  {
    switch(a3)
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

  if (a3 > 24)
  {
    if (a3 == 33)
    {
      v3 = @"UI";
      return [(PFStateCaptureEventDescription *)self appendString:v3];
    }

    if (a3 == 25)
    {
      v3 = @"IN";
      return [(PFStateCaptureEventDescription *)self appendString:v3];
    }

    goto LABEL_15;
  }

  if (a3 == 17)
  {
    v3 = @"UT";
    return [(PFStateCaptureEventDescription *)self appendString:v3];
  }

  if (a3 != 21)
  {
    goto LABEL_15;
  }

  v3 = @"DEF";
  return [(PFStateCaptureEventDescription *)self appendString:v3];
}

- (id)appendNumber:(id)a3
{
  description = self->_description;
  if (a3)
  {
    [(NSMutableString *)description appendFormat:@"%@", a3];
  }

  else
  {
    [(NSMutableString *)description appendString:@"<nil>"];
  }

  return self;
}

- (id)appendString:(id)a3
{
  description = self->_description;
  if (!a3)
  {
    a3 = @"<nil>";
  }

  [(NSMutableString *)description appendString:a3];
  return self;
}

- (PFStateCaptureEventDescription)initWithStartTimestamp:(double)a3
{
  v12.receiver = self;
  v12.super_class = PFStateCaptureEventDescription;
  v4 = [(PFStateCaptureEventDescription *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_startTimestamp = a3;
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    description = v5->_description;
    v5->_description = v6;

    v8 = v5->_description;
    v9 = [PFStateCaptureHandler stringFromTimestamp:a3];
    [(NSMutableString *)v8 appendFormat:@"%@:", v9];

    v10 = v5;
  }

  return v5;
}

@end