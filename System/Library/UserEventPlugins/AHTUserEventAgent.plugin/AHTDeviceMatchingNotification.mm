@interface AHTDeviceMatchingNotification
- (AHTDeviceMatchingNotification)initWithMatchingDictionary:(id)dictionary type:(char)type[128];
- (BOOL)startWithDispatchQueue:(id)queue error:(id *)error action:(id)action;
- (BOOL)startWithRunLoop:(id)loop error:(id *)error action:(id)action;
- (BOOL)stop:(id *)stop;
- (void)dealloc;
@end

@implementation AHTDeviceMatchingNotification

- (AHTDeviceMatchingNotification)initWithMatchingDictionary:(id)dictionary type:(char)type[128]
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = AHTDeviceMatchingNotification;
  v7 = [(AHTDeviceMatchingNotification *)&v14 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = 0;
  if (dictionaryCopy && type)
  {
    v9 = [NSString stringWithUTF8String:type];
    type = v7->_type;
    v7->_type = v9;

    v11 = [dictionaryCopy copy];
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

- (BOOL)startWithRunLoop:(id)loop error:(id *)error action:(id)action
{
  loopCopy = loop;
  actionCopy = action;
  deviceNotification = [(AHTDeviceMatchingNotification *)self deviceNotification];

  if (!deviceNotification)
  {
    if (!loopCopy || !actionCopy)
    {
      v11 = 3758097090;
      goto LABEL_10;
    }

    v12 = objc_alloc_init(AHTDeviceNotification);
    v13 = v12;
    if (v12)
    {
      if (![(AHTDeviceNotification *)v12 startWithRunLoop:loopCopy error:error])
      {
        v18 = 0;
        goto LABEL_16;
      }

      matching = [(AHTDeviceMatchingNotification *)self matching];
      notification = 0;
      port = [(AHTDeviceNotification *)v13 port];
      type = [(AHTDeviceMatchingNotification *)self type];
      LODWORD(matching) = IOServiceAddMatchingNotification(port, [type UTF8String], matching, sub_1718, self, &notification);

      if (!matching)
      {
        [(AHTDeviceMatchingNotification *)self setAction:actionCopy];
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

    v18 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v17 error:error];
LABEL_16:

    goto LABEL_11;
  }

  v11 = 3758097109;
LABEL_10:
  v18 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v11 error:error];
LABEL_11:

  return v18;
}

- (BOOL)startWithDispatchQueue:(id)queue error:(id *)error action:(id)action
{
  queueCopy = queue;
  actionCopy = action;
  deviceNotification = [(AHTDeviceMatchingNotification *)self deviceNotification];

  if (!deviceNotification)
  {
    if (!queueCopy || !actionCopy)
    {
      v11 = 3758097090;
      goto LABEL_10;
    }

    v12 = objc_alloc_init(AHTDeviceNotification);
    v13 = v12;
    if (v12)
    {
      if (![(AHTDeviceNotification *)v12 startWithDispatchQueue:queueCopy error:error])
      {
        v18 = 0;
        goto LABEL_16;
      }

      matching = [(AHTDeviceMatchingNotification *)self matching];
      notification = 0;
      port = [(AHTDeviceNotification *)v13 port];
      type = [(AHTDeviceMatchingNotification *)self type];
      LODWORD(matching) = IOServiceAddMatchingNotification(port, [type UTF8String], matching, sub_1718, self, &notification);

      if (!matching)
      {
        [(AHTDeviceMatchingNotification *)self setAction:actionCopy];
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

    v18 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v17 error:error];
LABEL_16:

    goto LABEL_11;
  }

  v11 = 3758097109;
LABEL_10:
  v18 = [NSError ioErrorWithDomain:@"AHTHIDSupport" code:v11 error:error];
LABEL_11:

  return v18;
}

- (BOOL)stop:(id *)stop
{
  deviceNotification = [(AHTDeviceMatchingNotification *)self deviceNotification];

  if (deviceNotification)
  {
    IOObjectRelease([(AHTDeviceMatchingNotification *)self iterator]);
    [(AHTDeviceMatchingNotification *)self setIterator:0];
    [(AHTDeviceMatchingNotification *)self setDeviceNotification:0];
    [(AHTDeviceMatchingNotification *)self setAction:0];
    return 1;
  }

  else
  {

    return [NSError ioErrorWithDomain:@"AHTHIDSupport" code:3758097111 error:stop];
  }
}

@end