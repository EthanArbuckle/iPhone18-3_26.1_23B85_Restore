@interface _SAUIElementViewControllerSnapshotAssertion
- (_SAUIElementViewControllerSnapshotAssertion)initWithElement:(id)element snapshotReason:(id)reason;
- (id)_descriptionConstituents;
@end

@implementation _SAUIElementViewControllerSnapshotAssertion

- (_SAUIElementViewControllerSnapshotAssertion)initWithElement:(id)element snapshotReason:(id)reason
{
  elementCopy = element;
  reasonCopy = reason;
  v18.receiver = self;
  v18.super_class = _SAUIElementViewControllerSnapshotAssertion;
  v8 = [(SAAssertion *)&v18 init];
  if (v8)
  {
    clientIdentifier = [elementCopy clientIdentifier];
    v10 = [clientIdentifier copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v10;

    elementIdentifier = [elementCopy elementIdentifier];
    v13 = [elementIdentifier copy];
    elementIdentifier = v8->_elementIdentifier;
    v8->_elementIdentifier = v13;

    v15 = [reasonCopy copy];
    snapshotReason = v8->_snapshotReason;
    v8->_snapshotReason = v15;
  }

  return v8;
}

- (id)_descriptionConstituents
{
  v11[3] = *MEMORY[0x277D85DE8];
  clientIdentifier = self->_clientIdentifier;
  v10[0] = @"associatedClientID";
  v10[1] = @"associatedElementID";
  elementIdentifier = self->_elementIdentifier;
  v11[0] = clientIdentifier;
  v11[1] = elementIdentifier;
  v10[2] = @"snapshotReason";
  v11[2] = self->_snapshotReason;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9.receiver = self;
  v9.super_class = _SAUIElementViewControllerSnapshotAssertion;
  _descriptionConstituents = [(SAAssertion *)&v9 _descriptionConstituents];
  v7 = [_descriptionConstituents arrayByAddingObject:v5];

  return v7;
}

@end