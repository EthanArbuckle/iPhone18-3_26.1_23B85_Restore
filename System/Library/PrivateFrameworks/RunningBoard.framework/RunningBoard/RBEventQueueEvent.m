@interface RBEventQueueEvent
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation RBEventQueueEvent

- (int64_t)compare:(id)a3
{
  eventTime = self->_eventTime;
  v4 = *(a3 + 2);
  if (eventTime < v4)
  {
    return -1;
  }

  else
  {
    return eventTime > v4;
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| context:%@ eventTime:%.2f>", v4, self->_context, *&self->_eventTime];

  return v5;
}

@end