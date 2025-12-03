@interface _UIDragDestinationControllerDropProposalState
- (BOOL)_hasDropActionTarget;
- (_UIDragDestinationControllerDropProposalState)init;
- (id)description;
- (id)effectiveIndexPath;
@end

@implementation _UIDragDestinationControllerDropProposalState

- (id)effectiveIndexPath
{
  if (self)
  {
    selfCopy = self;
    if ([self _hasDropActionTarget])
    {
      self = selfCopy[3];
    }

    else
    {
      self = 0;
    }

    v1 = vars8;
  }

  return self;
}

- (_UIDragDestinationControllerDropProposalState)init
{
  v8.receiver = self;
  v8.super_class = _UIDragDestinationControllerDropProposalState;
  v2 = [(_UIDragDestinationControllerDropProposalState *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_didDrop = 0;
    indexPath = v2->_indexPath;
    v2->_indexPath = 0;

    v5 = [[UICollectionViewDropProposal alloc] initWithDropOperation:0 intent:0];
    proposal = v3->_proposal;
    v3->_proposal = v5;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    indexPath = self->_indexPath;
  }

  else
  {
    indexPath = 0;
  }

  v7 = indexPath;
  v8 = __UICVIndexPathDescription(v7);
  if (self)
  {
    v9 = self->_proposal;
    didDrop = self->_didDrop;
  }

  else
  {
    v9 = 0;
    didDrop = 0;
  }

  effectiveIndexPath = [(_UIDragDestinationControllerDropProposalState *)&self->super.isa effectiveIndexPath];
  v12 = __UICVIndexPathDescription(effectiveIndexPath);
  v13 = [v3 stringWithFormat:@"<%@: indexPath = %@ proposal = %@; didDrop = %d; effectiveIndexPath = %@>", v5, v8, v9, didDrop, v12];;

  return v13;
}

- (BOOL)_hasDropActionTarget
{
  if (self)
  {
    proposal = self->_proposal;
  }

  else
  {
    proposal = 0;
  }

  v4 = proposal;
  if ([(UICollectionViewDropProposal *)v4 intent]== UICollectionViewDropIntentInsertAtDestinationIndexPath)
  {
  }

  else
  {
    if (self)
    {
      v5 = self->_proposal;
    }

    else
    {
      v5 = 0;
    }

    intent = [(UICollectionViewDropProposal *)v5 intent];

    if (intent != 2)
    {
      return 0;
    }
  }

  if (self)
  {
    indexPath = self->_indexPath;
  }

  else
  {
    indexPath = 0;
  }

  return indexPath != 0;
}

@end