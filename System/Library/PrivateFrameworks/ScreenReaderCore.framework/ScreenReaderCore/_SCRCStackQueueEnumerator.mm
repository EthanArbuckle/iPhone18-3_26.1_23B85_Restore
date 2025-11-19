@interface _SCRCStackQueueEnumerator
- (_SCRCStackQueueEnumerator)initWithListMember:(id)a3;
- (id)nextObject;
@end

@implementation _SCRCStackQueueEnumerator

- (_SCRCStackQueueEnumerator)initWithListMember:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SCRCStackQueueEnumerator;
  v6 = [(_SCRCStackQueueEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentListMemeber, a3);
  }

  return v7;
}

- (id)nextObject
{
  currentListMemeber = self->_currentListMemeber;
  if (currentListMemeber)
  {
    v4 = [(_SCRCStackNode *)currentListMemeber object];
    v5 = [(_SCRCStackNode *)self->_currentListMemeber next];
    v6 = self->_currentListMemeber;
    self->_currentListMemeber = v5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end