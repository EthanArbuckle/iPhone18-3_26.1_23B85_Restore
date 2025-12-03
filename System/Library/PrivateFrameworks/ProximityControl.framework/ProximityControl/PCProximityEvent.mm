@interface PCProximityEvent
- (BOOL)isEqual:(id)equal;
- (PCProximityEvent)initWithCoder:(id)coder;
- (PCProximityEvent)initWithError:(id)error mediaRemoteID:(id)d;
- (PCProximityEvent)initWithType:(int64_t)type mediaRemoteID:(id)d info:(id)info;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCProximityEvent

- (id)description
{
  eventType = self->_eventType;
  mediaRemoteID = self->_mediaRemoteID;
  if (eventType > 9)
  {
    v5 = @"?";
  }

  else
  {
    v5 = off_279AD1D50[eventType];
  }

  v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"<PCProximityEvent id=%@ type=%@", self->_mediaRemoteID, v5];
  v7 = v6;
  if (self->_expectsDisplayContext)
  {
    [v6 appendString:{@", expects content"}];
  }

  if (self->_info)
  {
    [v7 appendString:{@", info present"}];
  }

  error = self->_error;
  if (error)
  {
    localizedDescription = [(NSError *)error localizedDescription];
    [v7 appendFormat:@", error=%@", localizedDescription];
  }

  [v7 appendString:@">"];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([v5 eventType] != self->_eventType || self->_expectsDisplayContext != objc_msgSend(v5, "expectsDisplayContext"))
    {
      goto LABEL_13;
    }

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
        goto LABEL_20;
      }

      v11 = [v8 isEqual:v9];

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
    }

    else
    {
      if ((v8 != 0) == (v15 == 0))
      {
        goto LABEL_20;
      }

      v16 = [v8 isEqual:v15];

      if (!v16)
      {
LABEL_13:
        v12 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    info = [v5 info];
    info = self->_info;
    v8 = info;
    v20 = info;
    v10 = v20;
    if (v8 == v20)
    {
      v12 = 1;
      goto LABEL_21;
    }

    if ((v8 != 0) != (v20 == 0))
    {
      v12 = [v8 isEqual:v20];
LABEL_21:

      goto LABEL_14;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  error = self->_error;
  v8 = coderCopy;
  if (error)
  {
    [coderCopy encodeObject:error forKey:@"err"];
    coderCopy = v8;
  }

  if (LODWORD(self->_eventType))
  {
    [v8 encodeInteger:SLODWORD(self->_eventType) forKey:@"type"];
    coderCopy = v8;
  }

  if (self->_expectsDisplayContext)
  {
    [v8 encodeBool:1 forKey:@"exp"];
    coderCopy = v8;
  }

  info = self->_info;
  if (info)
  {
    [v8 encodeObject:info forKey:@"info"];
    coderCopy = v8;
  }

  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    [v8 encodeObject:mediaRemoteID forKey:@"mID"];
    coderCopy = v8;
  }
}

- (PCProximityEvent)initWithType:(int64_t)type mediaRemoteID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = PCProximityEvent;
  v11 = [(PCProximityEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_eventType = type;
    objc_storeStrong(&v11->_info, info);
    objc_storeStrong(&v12->_mediaRemoteID, d);
  }

  return v12;
}

- (PCProximityEvent)initWithError:(id)error mediaRemoteID:(id)d
{
  errorCopy = error;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PCProximityEvent;
  v9 = [(PCProximityEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, error);
    objc_storeStrong(&v10->_mediaRemoteID, d);
  }

  return v10;
}

- (PCProximityEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PCProximityEvent;
  v5 = [(PCProximityEvent *)&v10 init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v11 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      LODWORD(v5->_eventType) = v11;
    }

    v6 = coderCopy;
    if ([v6 containsValueForKey:@"exp"])
    {
      v5->_expectsDisplayContext = [v6 decodeBoolForKey:@"exp"];
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeStandardContainerIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

@end