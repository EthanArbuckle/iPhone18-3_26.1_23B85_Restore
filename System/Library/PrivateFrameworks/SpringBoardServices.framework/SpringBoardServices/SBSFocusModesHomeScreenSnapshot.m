@interface SBSFocusModesHomeScreenSnapshot
- (SBSFocusModesHomeScreenSnapshot)initWithBSXPCCoder:(id)a3;
- (SBSFocusModesHomeScreenSnapshot)initWithListIdentifier:(id)a3 focusModeIdentifier:(id)a4 machPortSendRight:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBSFocusModesHomeScreenSnapshot

- (SBSFocusModesHomeScreenSnapshot)initWithListIdentifier:(id)a3 focusModeIdentifier:(id)a4 machPortSendRight:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SBSFocusModesHomeScreenSnapshot;
  v11 = [(SBSFocusModesHomeScreenSnapshot *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    listIdentifier = v11->_listIdentifier;
    v11->_listIdentifier = v12;

    v14 = [v9 copy];
    focusModeIdentifier = v11->_focusModeIdentifier;
    v11->_focusModeIdentifier = v14;

    v16 = [v10 copy];
    machPortSendRight = v11->_machPortSendRight;
    v11->_machPortSendRight = v16;
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  listIdentifier = self->_listIdentifier;
  v5 = a3;
  [v5 encodeObject:listIdentifier forKey:@"listIdentifier"];
  [v5 encodeObject:self->_focusModeIdentifier forKey:@"focusModeIdentifier"];
  [v5 encodeObject:self->_machPortSendRight forKey:@"machPortSendRight"];
  [v5 encodeBool:self->_wantsListVisible forKey:@"wantsListVisible"];
}

- (SBSFocusModesHomeScreenSnapshot)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"listIdentifier"];
  v6 = [v4 decodeStringForKey:@"focusModeIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"machPortSendRight"];
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    v10 = [(SBSFocusModesHomeScreenSnapshot *)self initWithListIdentifier:v5 focusModeIdentifier:v6 machPortSendRight:v7];
    -[SBSFocusModesHomeScreenSnapshot setWantsListVisible:](v10, "setWantsListVisible:", [v4 decodeBoolForKey:@"wantsListVisible"]);
    self = v10;
    v9 = self;
  }

  return v9;
}

@end