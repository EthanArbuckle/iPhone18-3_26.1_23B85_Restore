@interface _SCRCStackQueueEnumerator
- (_SCRCStackQueueEnumerator)initWithListMember:(id)member;
- (id)nextObject;
@end

@implementation _SCRCStackQueueEnumerator

- (_SCRCStackQueueEnumerator)initWithListMember:(id)member
{
  memberCopy = member;
  v9.receiver = self;
  v9.super_class = _SCRCStackQueueEnumerator;
  v6 = [(_SCRCStackQueueEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentListMemeber, member);
  }

  return v7;
}

- (id)nextObject
{
  currentListMemeber = self->_currentListMemeber;
  if (currentListMemeber)
  {
    object = [(_SCRCStackNode *)currentListMemeber object];
    next = [(_SCRCStackNode *)self->_currentListMemeber next];
    v6 = self->_currentListMemeber;
    self->_currentListMemeber = next;
  }

  else
  {
    object = 0;
  }

  return object;
}

@end