@interface RSNodeInput
- (RSNodeConnection)connection;
- (RSNodeInputProducer)producer;
@end

@implementation RSNodeInput

- (RSNodeConnection)connection
{
  v3 = objc_msgSend_producer(self, a2, v2);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RSNodeInputProducer)producer
{
  WeakRetained = objc_loadWeakRetained(&self->_producer);

  return WeakRetained;
}

@end