@interface BTAddressUpdateObserver
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation BTAddressUpdateObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = [pathCopy isEqualToString:@"advertisingAddress"];
  if (context)
  {
    if (v12)
    {
      v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeKindKey];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      if (unsignedIntegerValue == 1)
      {
        contextCopy = context;
        if (self)
        {
          lock = self->_lock;
        }

        else
        {
          lock = 0;
        }

        [(NSCondition *)lock lock];
        advertisingAddress = [contextCopy advertisingAddress];
        advertisingAddressType = [contextCopy advertisingAddressType];
        if ([advertisingAddress length] == 6)
        {
          v22 = [[NSMutableData alloc] initWithLength:7];
          bytes = [advertisingAddress bytes];
          mutableBytes = [v22 mutableBytes];
          v25 = [advertisingAddress length];
          if ((v25 - 1) >= 0)
          {
            do
            {
              *mutableBytes++ = (v25--)[(bytes - 1)];
            }

            while (v25);
          }

          *mutableBytes = advertisingAddressType;
          if (self)
          {
            objc_storeStrong(&self->_btAddress, v22);
            [(NSCondition *)self->_lock broadcast];
            v26 = self->_lock;
          }

          else
          {
            [0 broadcast];
            v26 = 0;
          }

          [(NSCondition *)v26 unlock];
        }

        else
        {
          sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "[BTAddressUpdateObserver observeValueForKeyPath:ofObject:change:context:]", 54, @"LE: Unable to obtain address", v19, v20, v21, v28);
          if (self)
          {
            v27 = self->_lock;
          }

          else
          {
            v27 = 0;
          }

          [(NSCondition *)v27 unlock];
        }
      }
    }
  }
}

@end