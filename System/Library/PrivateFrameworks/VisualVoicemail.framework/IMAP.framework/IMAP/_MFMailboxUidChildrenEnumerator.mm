@interface _MFMailboxUidChildrenEnumerator
- (id)_initWithMailbox:(id)mailbox includeHiddenChildren:(BOOL)children;
- (id)nextObject;
- (void)dealloc;
@end

@implementation _MFMailboxUidChildrenEnumerator

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFMailboxUidChildrenEnumerator;
  [(_MFMailboxUidChildrenEnumerator *)&v2 dealloc];
}

- (id)_initWithMailbox:(id)mailbox includeHiddenChildren:(BOOL)children
{
  mailboxCopy = mailbox;
  v11.receiver = self;
  v11.super_class = _MFMailboxUidChildrenEnumerator;
  v7 = [(_MFMailboxUidChildrenEnumerator *)&v11 init];
  if (v7)
  {
    _mutableChildren = [mailboxCopy _mutableChildren];
    mailboxes = v7->_mailboxes;
    v7->_mailboxes = _mutableChildren;

    v7->_includeHidden = children;
  }

  return v7;
}

- (id)nextObject
{
  v3 = [(NSMutableArray *)self->_mailboxes count];
  while (self->_index < v3)
  {
    v4 = [(NSMutableArray *)self->_mailboxes objectAtIndex:?];
    v5 = v4;
    ++self->_index;
    if (self->_includeHidden || [v4 isVisible])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_10;
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

@end