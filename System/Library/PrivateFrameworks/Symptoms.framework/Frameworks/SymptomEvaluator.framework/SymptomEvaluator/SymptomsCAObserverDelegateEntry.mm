@interface SymptomsCAObserverDelegateEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDelegate:(id)a3;
- (id)description;
@end

@implementation SymptomsCAObserverDelegateEntry

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SymptomsCAObserverDelegateEntry %p: delegate %@, queue %@, %lu events>", self, self->_delegate, self->_queue, -[NSMutableSet count](self->_events, "count")];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SymptomsCAObserverDelegateEntry *)self delegate];
      v6 = [(SymptomsCAObserverDelegateEntry *)v4 delegate];
      v7 = v5 == v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)matchesDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SymptomsCAObserverDelegateEntry *)self delegate];
  v6 = v4 | v5;

  if (v6)
  {
    v8 = [(SymptomsCAObserverDelegateEntry *)self delegate];
    v7 = v8 == v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end