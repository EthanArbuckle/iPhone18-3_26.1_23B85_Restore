@interface AHTDeviceMatchingNotification
- (AHTDeviceMatchingNotification)initWithMatchingDictionary:(id)a3 type:(char)a4[128];
- (BOOL)startWithDispatchQueue:(id)a3 error:(id *)a4 action:(id)a5;
- (BOOL)startWithRunLoop:(id)a3 error:(id *)a4 action:(id)a5;
- (BOOL)stop:(id *)a3;
- (void)dealloc;
@end

@implementation AHTDeviceMatchingNotification

- (AHTDeviceMatchingNotification)initWithMatchingDictionary:(id)a3 type:(char)a4[128]
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = AHTDeviceMatchingNotification;
  v7 = [(AHTDeviceMatchingNotification *)&v14 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = 0;
  if (v6 && a4)
  {
    v9 = [NSString stringWithUTF8String:a4];
    type = v7->_type;
    v7->_type = v9;

    v11 = [v6 copy];
    matching = v7->_matching;
    v7->_matching = v11;

    v7->_iterator = 0;
LABEL_5:
    v8 = v7;
  }

  return v8;
}

- (void)dealloc
{
  [(AHTDeviceMatchingNotification *)self stop:0];
  v3.receiver = self;
  v3.super_class = AHTDeviceMatchingNotification;
  [(AHTDeviceMatchingNotification *)&v3 dealloc];
}

- (BOOL)startWithRunLoop:(id)a3 error:(id *)a4 action:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(AHTDeviceMatchingNotification *)self deviceNotification];

  if (!v10)
  {
    if (!v8 || !v9)
    {
      v11 = 3758097090;
      goto LABEL_10;
    }

    v12 = objc_alloc_init(AHTDeviceNotification);
    v13 = v12;
    if (v12)
    {
      if (![(AHTDeviceNotification *)v12 startWithRunLoop:v8 error:a4])
      {
        v18 = 0;
        goto LABEL_16;
      }

      v14 = [(AHTDeviceMatchingNotification *)self matching];
      notification = 0;
      v15 = [(AHTDeviceNotification *)v13 port];
      v16 = [(AHTDeviceMatchingNotification *)self type];
      LODWORD(v14) = IOServiceAddMatchingNotification(v15, [v16 UTF8String], v14, sub_1718, self, &notification);

      if (!v14)
      {
        [(AHTDeviceMatchingNotification *)self setAction:v9];
        [(AHTDeviceMatchingNotification *)self setIterator:notification];
        [(AHTDeviceMatchingNotification *)self setDeviceNotification:v13];
        sub_1718(self, self->_iterator);
        v18 = 1;
        goto LABEL_16;
      }

      v17 = 3758097097;
    }

    else
    {
      v17 = 3758097086;
    }

    v18 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v17 error:a4];
LABEL_16:

    goto LABEL_11;
  }

  v11 = 3758097109;
LABEL_10:
  v18 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v11 error:a4];
LABEL_11:

  return v18;
}

- (BOOL)startWithDispatchQueue:(id)a3 error:(id *)a4 action:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(AHTDeviceMatchingNotification *)self deviceNotification];

  if (!v10)
  {
    if (!v8 || !v9)
    {
      v11 = 3758097090;
      goto LABEL_10;
    }

    v12 = objc_alloc_init(AHTDeviceNotification);
    v13 = v12;
    if (v12)
    {
      if (![(AHTDeviceNotification *)v12 startWithDispatchQueue:v8 error:a4])
      {
        v18 = 0;
        goto LABEL_16;
      }

      v14 = [(AHTDeviceMatchingNotification *)self matching];
      notification = 0;
      v15 = [(AHTDeviceNotification *)v13 port];
      v16 = [(AHTDeviceMatchingNotification *)self type];
      LODWORD(v14) = IOServiceAddMatchingNotification(v15, [v16 UTF8String], v14, sub_1718, self, &notification);

      if (!v14)
      {
        [(AHTDeviceMatchingNotification *)self setAction:v9];
        [(AHTDeviceMatchingNotification *)self setIterator:notification];
        [(AHTDeviceMatchingNotification *)self setDeviceNotification:v13];
        sub_1718(self, self->_iterator);
        v18 = 1;
        goto LABEL_16;
      }

      v17 = 3758097097;
    }

    else
    {
      v17 = 3758097086;
    }

    v18 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v17 error:a4];
LABEL_16:

    goto LABEL_11;
  }

  v11 = 3758097109;
LABEL_10:
  v18 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v11 error:a4];
LABEL_11:

  return v18;
}

- (BOOL)stop:(id *)a3
{
  v5 = [(AHTDeviceMatchingNotification *)self deviceNotification];

  if (v5)
  {
    IOObjectRelease([(AHTDeviceMatchingNotification *)self iterator]);
    [(AHTDeviceMatchingNotification *)self setIterator:0];
    [(AHTDeviceMatchingNotification *)self setDeviceNotification:0];
    [(AHTDeviceMatchingNotification *)self setAction:0];
    return 1;
  }

  else
  {

    return [NSError ioErrorWithDomain:@"AHTHIDSupport" code:3758097111 error:a3];
  }
}

@end