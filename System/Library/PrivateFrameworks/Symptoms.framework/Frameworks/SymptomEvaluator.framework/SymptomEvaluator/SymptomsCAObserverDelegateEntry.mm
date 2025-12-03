@interface SymptomsCAObserverDelegateEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDelegate:(id)delegate;
- (id)description;
@end

@implementation SymptomsCAObserverDelegateEntry

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SymptomsCAObserverDelegateEntry %p: delegate %@, queue %@, %lu events>", self, self->_delegate, self->_queue, -[NSMutableSet count](self->_events, "count")];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [(SymptomsCAObserverDelegateEntry *)self delegate];
      delegate2 = [(SymptomsCAObserverDelegateEntry *)equalCopy delegate];
      v7 = delegate == delegate2;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)matchesDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(SymptomsCAObserverDelegateEntry *)self delegate];
  v6 = delegateCopy | delegate;

  if (v6)
  {
    delegate2 = [(SymptomsCAObserverDelegateEntry *)self delegate];
    v7 = delegate2 == delegateCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end