@interface BTAddressUpdateObserver
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation BTAddressUpdateObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v29 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v29 isEqualToString:@"advertisingAddress"];
  if (a6)
  {
    if (v12)
    {
      v13 = [v11 objectForKeyedSubscript:NSKeyValueChangeKindKey];
      v14 = [v13 unsignedIntegerValue];

      if (v14 == 1)
      {
        v15 = a6;
        if (self)
        {
          lock = self->_lock;
        }

        else
        {
          lock = 0;
        }

        [(NSCondition *)lock lock];
        v17 = [v15 advertisingAddress];
        v18 = [v15 advertisingAddressType];
        if ([v17 length] == 6)
        {
          v22 = [[NSMutableData alloc] initWithLength:7];
          v23 = [v17 bytes];
          v24 = [v22 mutableBytes];
          v25 = [v17 length];
          if ((v25 - 1) >= 0)
          {
            do
            {
              *v24++ = (v25--)[(v23 - 1)];
            }

            while (v25);
          }

          *v24 = v18;
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