@interface SCROIOElement
- (BOOL)isEqual:(id)equal;
- (SCROIOElement)initWithIOObject:(unsigned int)object;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SCROIOElement

- (SCROIOElement)initWithIOObject:(unsigned int)object
{
  v6.receiver = self;
  v6.super_class = SCROIOElement;
  v4 = [(SCROIOElement *)&v6 init];
  if (v4)
  {
    if (object)
    {
      IOObjectRetain(object);
      v4->_ioObject = object;
    }

    v4->_identifier = atomic_fetch_add_explicit(_currentIdentifier_1, 1u, memory_order_relaxed);
  }

  return v4;
}

- (void)dealloc
{
  ioObject = self->_ioObject;
  if (ioObject)
  {
    IOObjectRelease(ioObject);
  }

  v4.receiver = self;
  v4.super_class = SCROIOElement;
  [(SCROIOElement *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    ioObject = self->_ioObject;
    if (ioObject)
    {
      IOObjectRetain(ioObject);
      v4[2] = self->_ioObject;
      v4[3] = self->_identifier;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = SCROIOElement;
  if ([(SCROIOElement *)&v9 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ioObject = [equalCopy ioObject];
      ioObject = self->_ioObject;
      v5 = (ioObject | ioObject) == 0;
      if (ioObject && ioObject)
      {
        v5 = IOObjectIsEqualTo(ioObject, ioObject) != 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end