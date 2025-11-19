@interface SFAirDropAction
+ (id)testActionWithTitle:(id)a3 actionHandler:(id)a4;
- (BOOL)isEqual:(id)a3;
- (SFAirDropAction)initWithCoder:(id)a3;
- (SFAirDropAction)initWithTransferIdentifier:(id)a3 actionIdentifier:(id)a4 title:(id)a5 singleItemTitle:(id)a6 type:(int64_t)a7;
- (SFAirDropAction)initWithTransferIdentifier:(id)a3 actionIdentifier:(id)a4 title:(id)a5 singleItemTitle:(id)a6 type:(int64_t)a7 handler:(id)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)triggerAction;
@end

@implementation SFAirDropAction

- (SFAirDropAction)initWithTransferIdentifier:(id)a3 actionIdentifier:(id)a4 title:(id)a5 singleItemTitle:(id)a6 type:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v27.receiver = self;
  v27.super_class = SFAirDropAction;
  v16 = [(SFAirDropAction *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a7;
    v18 = [v12 copy];
    transferIdentifier = v17->_transferIdentifier;
    v17->_transferIdentifier = v18;

    v20 = [v13 copy];
    actionIdentifier = v17->_actionIdentifier;
    v17->_actionIdentifier = v20;

    v22 = [v14 copy];
    localizedTitle = v17->_localizedTitle;
    v17->_localizedTitle = v22;

    v24 = [v15 copy];
    singleItemLocalizedTitle = v17->_singleItemLocalizedTitle;
    v17->_singleItemLocalizedTitle = v24;

    *&v17->_minRequiredTransferState = xmmword_1A998F010;
    *&v17->_requiresUnlockedUI = 257;
  }

  return v17;
}

- (SFAirDropAction)initWithTransferIdentifier:(id)a3 actionIdentifier:(id)a4 title:(id)a5 singleItemTitle:(id)a6 type:(int64_t)a7 handler:(id)a8
{
  v14 = a8;
  v15 = [(SFAirDropAction *)self initWithTransferIdentifier:a3 actionIdentifier:a4 title:a5 singleItemTitle:a6 type:a7];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__SFAirDropAction_initWithTransferIdentifier_actionIdentifier_title_singleItemTitle_type_handler___block_invoke;
  v18[3] = &unk_1E788CFA8;
  v19 = v14;
  v16 = v14;
  [(SFAirDropAction *)v15 setActionHandler:v18];

  return v15;
}

- (SFAirDropAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFAirDropAction *)self initWithTransferIdentifier:&stru_1F1D30528 actionIdentifier:&stru_1F1D30528 title:&stru_1F1D30528 singleItemTitle:&stru_1F1D30528 type:1];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
    v7 = [v6 copy];
    transferIdentifier = v5->_transferIdentifier;
    v5->_transferIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    v10 = [v9 copy];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    v13 = [v12 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"singleItemLocalizedTitle"];
    v16 = [v15 copy];
    singleItemLocalizedTitle = v5->_singleItemLocalizedTitle;
    v5->_singleItemLocalizedTitle = v16;

    v5->_minRequiredTransferState = [v4 decodeIntegerForKey:@"minRequiredTransferState"];
    v5->_maxTransferState = [v4 decodeIntegerForKey:@"maxTransferState"];
    v5->_requiresUnlockedUI = [v4 decodeBoolForKey:@"requiresUnlockedUI"];
    v5->_shouldUpdateUserResponse = [v4 decodeBoolForKey:@"shouldUpdateUserResponse"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  transferIdentifier = self->_transferIdentifier;
  v5 = a3;
  [v5 encodeObject:transferIdentifier forKey:@"transferIdentifier"];
  [v5 encodeObject:self->_actionIdentifier forKey:@"actionIdentifier"];
  [v5 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_singleItemLocalizedTitle forKey:@"singleItemLocalizedTitle"];
  [v5 encodeInteger:self->_minRequiredTransferState forKey:@"minRequiredTransferState"];
  [v5 encodeInteger:self->_maxTransferState forKey:@"maxTransferState"];
  [v5 encodeBool:self->_requiresUnlockedUI forKey:@"requiresUnlockedUI"];
  [v5 encodeBool:self->_shouldUpdateUserResponse forKey:@"shouldUpdateUserResponse"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (id)description
{
  objc_opt_class();
  NSAppendPrintF();
  v18 = 0;
  transferIdentifier = self->_transferIdentifier;
  NSAppendPrintF();
  v3 = v18;

  actionIdentifier = self->_actionIdentifier;
  NSAppendPrintF();
  v4 = v3;

  localizedTitle = self->_localizedTitle;
  NSAppendPrintF();
  v5 = v4;

  singleItemLocalizedTitle = self->_singleItemLocalizedTitle;
  NSAppendPrintF();
  v6 = v5;

  v7 = SFAirDropTransferStateToString(self->_minRequiredTransferState);
  v17 = SFAirDropTransferStateToString(self->_maxTransferState);
  NSAppendPrintF();
  v8 = v6;

  self->_requiresUnlockedUI;
  NSAppendPrintF();
  v9 = v8;

  self->_shouldUpdateUserResponse;
  NSAppendPrintF();
  v10 = v9;

  NSAppendPrintF();
  v11 = v10;

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SFAirDropAction *)self transferIdentifier];
  v4 = [v3 hash];
  v5 = [(SFAirDropAction *)self actionIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SFAirDropAction *)self transferIdentifier];
    v7 = [v5 transferIdentifier];
    if ([v6 isEqual:v7])
    {
      v8 = [(SFAirDropAction *)self actionIdentifier];
      v9 = [v5 actionIdentifier];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)triggerAction
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SFAirDropAction.m" lineNumber:117 description:@"Cannot trigger action on action not associated with a Transfer"];
}

+ (id)testActionWithTitle:(id)a3 actionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [SFAirDropAction alloc];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [v10 UUIDString];
  v12 = [(SFAirDropAction *)v7 initWithTransferIdentifier:v9 actionIdentifier:v11 title:v6 singleItemTitle:v6 type:1];

  [(SFAirDropAction *)v12 setActionHandler:v5];

  return v12;
}

@end