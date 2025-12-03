@interface PCProgressEvent
- (BOOL)isEqual:(id)equal;
- (PCProgressEvent)initWithCoder:(id)coder;
- (PCProgressEvent)initWithError:(id)error;
- (PCProgressEvent)initWithEventType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCProgressEvent

- (PCProgressEvent)initWithEventType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = PCProgressEvent;
  v4 = [(PCProgressEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = type;
    v6 = v4;
  }

  return v5;
}

- (PCProgressEvent)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = PCProgressEvent;
  v6 = [(PCProgressEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    v7->_eventType = 0;
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    mediaRemoteID = [v5 mediaRemoteID];
    mediaRemoteID = self->_mediaRemoteID;
    v8 = mediaRemoteID;
    v9 = mediaRemoteID;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if ((v8 != 0) == (v9 == 0))
      {
        goto LABEL_12;
      }

      v11 = [(NSError *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    error = [v5 error];
    error = self->_error;
    v8 = error;
    v15 = error;
    v10 = v15;
    if (v8 == v15)
    {

LABEL_15:
      v12 = [v5 eventType] == self->_eventType;
      goto LABEL_16;
    }

    if ((v8 != 0) != (v15 == 0))
    {
      v16 = [(NSError *)v8 isEqual:v15];

      if (v16)
      {
        goto LABEL_15;
      }

LABEL_13:
      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  error = self->_error;
  v8 = coderCopy;
  if (error)
  {
    [coderCopy encodeObject:error forKey:@"er"];
    coderCopy = v8;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    [v8 encodeInteger:eventType forKey:@"et"];
    coderCopy = v8;
  }

  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    [v8 encodeObject:mediaRemoteID forKey:@"mrID"];
    coderCopy = v8;
  }
}

- (PCProgressEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PCProgressEvent;
  v5 = [(PCProgressEvent *)&v10 init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = coderCopy;
    if ([v6 containsValueForKey:@"et"])
    {
      v5->_eventType = [v6 decodeIntegerForKey:@"et"];
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  eventType = self->_eventType;
  if (eventType > 2)
  {
    v3 = @"?";
  }

  else
  {
    v3 = off_279AD1A78[eventType];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v3];
}

@end