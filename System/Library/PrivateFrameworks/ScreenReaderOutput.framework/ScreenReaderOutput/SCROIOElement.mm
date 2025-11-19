@interface SCROIOElement
- (BOOL)isEqual:(id)a3;
- (SCROIOElement)initWithIOObject:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SCROIOElement

- (SCROIOElement)initWithIOObject:(unsigned int)a3
{
  v6.receiver = self;
  v6.super_class = SCROIOElement;
  v4 = [(SCROIOElement *)&v6 init];
  if (v4)
  {
    if (a3)
    {
      IOObjectRetain(a3);
      v4->_ioObject = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCROIOElement;
  if ([(SCROIOElement *)&v9 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 ioObject];
      ioObject = self->_ioObject;
      v5 = (ioObject | v6) == 0;
      if (ioObject && v6)
      {
        v5 = IOObjectIsEqualTo(ioObject, v6) != 0;
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