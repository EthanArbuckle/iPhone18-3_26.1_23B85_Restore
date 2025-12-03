@interface SBSFocusModesHomeScreenSnapshot
- (SBSFocusModesHomeScreenSnapshot)initWithBSXPCCoder:(id)coder;
- (SBSFocusModesHomeScreenSnapshot)initWithListIdentifier:(id)identifier focusModeIdentifier:(id)modeIdentifier machPortSendRight:(id)right;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SBSFocusModesHomeScreenSnapshot

- (SBSFocusModesHomeScreenSnapshot)initWithListIdentifier:(id)identifier focusModeIdentifier:(id)modeIdentifier machPortSendRight:(id)right
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  rightCopy = right;
  v19.receiver = self;
  v19.super_class = SBSFocusModesHomeScreenSnapshot;
  v11 = [(SBSFocusModesHomeScreenSnapshot *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    listIdentifier = v11->_listIdentifier;
    v11->_listIdentifier = v12;

    v14 = [modeIdentifierCopy copy];
    focusModeIdentifier = v11->_focusModeIdentifier;
    v11->_focusModeIdentifier = v14;

    v16 = [rightCopy copy];
    machPortSendRight = v11->_machPortSendRight;
    v11->_machPortSendRight = v16;
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  listIdentifier = self->_listIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:listIdentifier forKey:@"listIdentifier"];
  [coderCopy encodeObject:self->_focusModeIdentifier forKey:@"focusModeIdentifier"];
  [coderCopy encodeObject:self->_machPortSendRight forKey:@"machPortSendRight"];
  [coderCopy encodeBool:self->_wantsListVisible forKey:@"wantsListVisible"];
}

- (SBSFocusModesHomeScreenSnapshot)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"listIdentifier"];
  v6 = [coderCopy decodeStringForKey:@"focusModeIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machPortSendRight"];
  v8 = v7;
  selfCopy = 0;
  if (v5 && v6 && v7)
  {
    v10 = [(SBSFocusModesHomeScreenSnapshot *)self initWithListIdentifier:v5 focusModeIdentifier:v6 machPortSendRight:v7];
    -[SBSFocusModesHomeScreenSnapshot setWantsListVisible:](v10, "setWantsListVisible:", [coderCopy decodeBoolForKey:@"wantsListVisible"]);
    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

@end