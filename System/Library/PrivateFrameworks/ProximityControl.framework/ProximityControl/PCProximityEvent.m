@interface PCProximityEvent
- (BOOL)isEqual:(id)a3;
- (PCProximityEvent)initWithCoder:(id)a3;
- (PCProximityEvent)initWithError:(id)a3 mediaRemoteID:(id)a4;
- (PCProximityEvent)initWithType:(int64_t)a3 mediaRemoteID:(id)a4 info:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
    v9 = [(NSError *)error localizedDescription];
    [v7 appendFormat:@", error=%@", v9];
  }

  [v7 appendString:@">"];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 eventType] != self->_eventType || self->_expectsDisplayContext != objc_msgSend(v5, "expectsDisplayContext"))
    {
      goto LABEL_13;
    }

    v6 = [v5 mediaRemoteID];
    mediaRemoteID = self->_mediaRemoteID;
    v8 = v6;
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

    v13 = [v5 error];
    error = self->_error;
    v8 = v13;
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

    v18 = [v5 info];
    info = self->_info;
    v8 = v18;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  error = self->_error;
  v8 = v4;
  if (error)
  {
    [v4 encodeObject:error forKey:@"err"];
    v4 = v8;
  }

  if (LODWORD(self->_eventType))
  {
    [v8 encodeInteger:SLODWORD(self->_eventType) forKey:@"type"];
    v4 = v8;
  }

  if (self->_expectsDisplayContext)
  {
    [v8 encodeBool:1 forKey:@"exp"];
    v4 = v8;
  }

  info = self->_info;
  if (info)
  {
    [v8 encodeObject:info forKey:@"info"];
    v4 = v8;
  }

  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    [v8 encodeObject:mediaRemoteID forKey:@"mID"];
    v4 = v8;
  }
}

- (PCProximityEvent)initWithType:(int64_t)a3 mediaRemoteID:(id)a4 info:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PCProximityEvent;
  v11 = [(PCProximityEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_eventType = a3;
    objc_storeStrong(&v11->_info, a5);
    objc_storeStrong(&v12->_mediaRemoteID, a4);
  }

  return v12;
}

- (PCProximityEvent)initWithError:(id)a3 mediaRemoteID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PCProximityEvent;
  v9 = [(PCProximityEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, a3);
    objc_storeStrong(&v10->_mediaRemoteID, a4);
  }

  return v10;
}

- (PCProximityEvent)initWithCoder:(id)a3
{
  v4 = a3;
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

    v6 = v4;
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