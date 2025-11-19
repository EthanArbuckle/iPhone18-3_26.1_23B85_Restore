@interface STSetupConfiguration
+ (BOOL)_isContactManagementStateValid:(int64_t)a3 pairedWithUserHasContacts:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSetupConfiguration:(id)a3;
- (NSSet)availableContactManagementStates;
- (NSSet)availableScreenTimeStates;
- (STSetupConfiguration)configurationWithUpdatedContactManagementState:(int64_t)a3 error:(id *)a4;
- (STSetupConfiguration)configurationWithUpdatedPasscode:(id)a3;
- (STSetupConfiguration)configurationWithUpdatedScreenTimeState:(int64_t)a3 error:(id *)a4;
- (STSetupConfiguration)initWithCoder:(id)a3;
- (id)_descriptionForContactManagementStates:(id)a3;
- (id)_descriptionForScreenTimeStates:(id)a3;
- (id)_initWithUser:(id)a3 screenTimeState:(int64_t)a4 passcode:(id)a5 contactManagementState:(int64_t)a6 userHasContacts:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSetupConfiguration

- (id)_initWithUser:(id)a3 screenTimeState:(int64_t)a4 passcode:(id)a5 contactManagementState:(int64_t)a6 userHasContacts:(BOOL)a7
{
  v19.receiver = self;
  v19.super_class = STSetupConfiguration;
  v11 = a5;
  v12 = a3;
  v13 = [(STSetupConfiguration *)&v19 init];
  v14 = [v12 copy];

  associatedUser = v13->_associatedUser;
  v13->_associatedUser = v14;

  v13->_screenTimeState = a4;
  v16 = [v11 copy];

  passcode = v13->_passcode;
  v13->_passcode = v16;

  v13->_contactManagementState = a6;
  v13->_userHasContacts = a7;
  return v13;
}

+ (BOOL)_isContactManagementStateValid:(int64_t)a3 pairedWithUserHasContacts:(BOOL)a4
{
  v4 = a3 == 1 && a4;
  if (a3 == 2)
  {
    v4 = 1;
  }

  return !a3 || v4;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STSetupConfiguration *)self associatedUser];
  v6 = [(STSetupConfiguration *)self screenTimeState];
  v7 = v6;
  if (v6 >= 3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull STGetDescriptionForSetupConfigurationScreenTimeState(STSetupConfigurationScreenTimeState)"];
    [v8 handleFailureInFunction:v9 file:@"STSetupConfiguration.h" lineNumber:32 description:{@"Unexpected Screen Time state %ld", v7}];
  }

  else
  {
    v2 = off_1E7CE7CC8[v6];
  }

  v10 = [(STSetupConfiguration *)self availableScreenTimeStates];
  v11 = [(STSetupConfiguration *)self _descriptionForScreenTimeStates:v10];
  v12 = [(STSetupConfiguration *)self passcode];
  v13 = [(STSetupConfiguration *)self contactManagementState];
  v14 = v13;
  if (v13 >= 3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull STGetDescriptionForSetupConfigurationContactManagementState(STSetupConfigurationContactManagementState)"];
    [(__CFString *)v15 handleFailureInFunction:v16 file:@"STSetupConfiguration.h" lineNumber:53 description:@"Unexpected contact management state %ld", v14];
  }

  else
  {
    v15 = off_1E7CE7CE0[v13];
  }

  v17 = [(STSetupConfiguration *)self availableContactManagementStates];
  v18 = [(STSetupConfiguration *)self _descriptionForContactManagementStates:v17];
  v19 = [v21 stringWithFormat:@"<%@: { User: %@, ScreenTimeState: %@, AvailableScreenTimeStates: %@, Passcode: %d, ContactManagementState: %@, AvailableContactManagementStates: %@>", v4, v5, v2, v11, v12 != 0, v15, v18];

  return v19;
}

- (id)_descriptionForScreenTimeStates:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) integerValue];
        if (v10 >= 3)
        {
          v14 = v10;
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull STGetDescriptionForSetupConfigurationScreenTimeState(STSetupConfigurationScreenTimeState)"];
          [v15 handleFailureInFunction:v16 file:@"STSetupConfiguration.h" lineNumber:32 description:{@"Unexpected Screen Time state %ld", v14}];

          __break(1u);
          return result;
        }

        [v4 addObject:off_1E7CE7CC8[v10]];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_descriptionForContactManagementStates:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) integerValue];
        if (v10 >= 3)
        {
          v14 = v10;
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull STGetDescriptionForSetupConfigurationContactManagementState(STSetupConfigurationContactManagementState)"];
          [v15 handleFailureInFunction:v16 file:@"STSetupConfiguration.h" lineNumber:53 description:{@"Unexpected contact management state %ld", v14}];

          __break(1u);
          return result;
        }

        [v4 addObject:off_1E7CE7CE0[v10]];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSSet)availableScreenTimeStates
{
  v4 = [(STSetupConfiguration *)self screenTimeState];
  if (v4 == 2)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = &unk_1F3059B70;
    goto LABEL_7;
  }

  v5 = v4;
  if (v4 == 1)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = &unk_1F3059B58;
LABEL_7:
    v6 = [v7 setWithObject:v8];
    goto LABEL_9;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"STSetupConfiguration.m" lineNumber:111 description:{@"Unexpected Screen Time state %ld", v5}];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F3059B58, &unk_1F3059B70, 0}];
  }

LABEL_9:

  return v6;
}

- (NSSet)availableContactManagementStates
{
  v4 = [(STSetupConfiguration *)self contactManagementState];
  if (v4 == 2 || (v5 = v4, v4 == 1))
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = &unk_1F3059B88;
LABEL_7:
    v9 = [v7 setWithObject:v8];
    goto LABEL_9;
  }

  if (!v4)
  {
    v6 = [(STSetupConfiguration *)self userHasContacts];
    v7 = MEMORY[0x1E695DFD8];
    if (v6)
    {
      v8 = &unk_1F3059B70;
    }

    else
    {
      v8 = &unk_1F3059B58;
    }

    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"STSetupConfiguration.m" lineNumber:128 description:{@"Unexpected contact management state %ld", v5}];

LABEL_9:

  return v9;
}

- (STSetupConfiguration)configurationWithUpdatedScreenTimeState:(int64_t)a3 error:(id *)a4
{
  v7 = [(STSetupConfiguration *)self availableScreenTimeStates];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [STSetupConfiguration alloc];
    v11 = [(STSetupConfiguration *)self associatedUser];
    v12 = [(STSetupConfiguration *)self passcode];
    v13 = [(STSetupConfiguration *)v10 _initWithUser:v11 screenTimeState:a3 passcode:v12 contactManagementState:[(STSetupConfiguration *)self contactManagementState] userHasContacts:[(STSetupConfiguration *)self userHasContacts]];
  }

  else
  {
    v13 = 0;
    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:42 userInfo:0];
    }
  }

  return v13;
}

- (STSetupConfiguration)configurationWithUpdatedContactManagementState:(int64_t)a3 error:(id *)a4
{
  v7 = [(STSetupConfiguration *)self availableContactManagementStates];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [STSetupConfiguration alloc];
    v11 = [(STSetupConfiguration *)self associatedUser];
    v12 = [(STSetupConfiguration *)self screenTimeState];
    v13 = [(STSetupConfiguration *)self passcode];
    v14 = [(STSetupConfiguration *)v10 _initWithUser:v11 screenTimeState:v12 passcode:v13 contactManagementState:a3 userHasContacts:[(STSetupConfiguration *)self userHasContacts]];
  }

  else
  {
    v14 = 0;
    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:43 userInfo:0];
    }
  }

  return v14;
}

- (STSetupConfiguration)configurationWithUpdatedPasscode:(id)a3
{
  v4 = a3;
  v5 = [STSetupConfiguration alloc];
  v6 = [(STSetupConfiguration *)self associatedUser];
  v7 = [(STSetupConfiguration *)v5 _initWithUser:v6 screenTimeState:[(STSetupConfiguration *)self screenTimeState] passcode:v4 contactManagementState:[(STSetupConfiguration *)self contactManagementState] userHasContacts:[(STSetupConfiguration *)self userHasContacts]];

  return v7;
}

- (STSetupConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedUser"];
  v6 = [v4 decodeIntegerForKey:@"screenTimeState"];
  if (![STSetupConfiguration _isScreenTimeStateValid:v6])
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:42 userInfo:0];
    [v4 failWithError:v7];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
  v8 = [v4 decodeIntegerForKey:@"contactManagementState"];
  v9 = [v4 decodeBoolForKey:@"userHasContacts"];
  if (![STSetupConfiguration _isContactManagementStateValid:v8 pairedWithUserHasContacts:v9])
  {
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:43 userInfo:0];
    [v4 failWithError:v11];

    goto LABEL_6;
  }

  self = [(STSetupConfiguration *)self _initWithUser:v5 screenTimeState:v6 passcode:v7 contactManagementState:v8 userHasContacts:v9];
  v10 = self;
LABEL_7:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  associatedUser = self->_associatedUser;
  v5 = a3;
  [v5 encodeObject:associatedUser forKey:@"associatedUser"];
  [v5 encodeInteger:self->_screenTimeState forKey:@"screenTimeState"];
  [v5 encodeObject:self->_passcode forKey:@"passcode"];
  [v5 encodeInteger:self->_contactManagementState forKey:@"contactManagementState"];
  [v5 encodeBool:self->_userHasContacts forKey:@"userHasContacts"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  associatedUser = self->_associatedUser;
  screenTimeState = self->_screenTimeState;
  passcode = self->_passcode;
  contactManagementState = self->_contactManagementState;
  userHasContacts = self->_userHasContacts;

  return [v4 _initWithUser:associatedUser screenTimeState:screenTimeState passcode:passcode contactManagementState:contactManagementState userHasContacts:userHasContacts];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STSetupConfiguration *)self isEqualToSetupConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToSetupConfiguration:(id)a3
{
  v6 = a3;
  if (v6 != self)
  {
    v7 = [(STSetupConfiguration *)self associatedUser];
    v8 = [(STSetupConfiguration *)v6 associatedUser];
    if (![v7 isEqualToUserID:v8] || (v9 = -[STSetupConfiguration screenTimeState](self, "screenTimeState"), v9 != -[STSetupConfiguration screenTimeState](v6, "screenTimeState")))
    {
      LOBYTE(v12) = 0;
LABEL_15:

      goto LABEL_16;
    }

    v10 = [(STSetupConfiguration *)self passcode];
    v11 = [(STSetupConfiguration *)v6 passcode];
    if (v10 == v11 || (-[STSetupConfiguration passcode](self, "passcode"), v3 = objc_claimAutoreleasedReturnValue(), -[STSetupConfiguration passcode](v6, "passcode"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToOpaquePasscode:v4]))
    {
      v13 = [(STSetupConfiguration *)self contactManagementState];
      if (v13 == [(STSetupConfiguration *)v6 contactManagementState])
      {
        v14 = [(STSetupConfiguration *)self userHasContacts];
        v12 = v14 ^ [(STSetupConfiguration *)v6 userHasContacts]^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      if (v10 == v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }

LABEL_14:
    goto LABEL_15;
  }

  LOBYTE(v12) = 1;
LABEL_16:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(STSetupConfiguration *)self associatedUser];
  v4 = [v3 hash];
  v5 = [(STSetupConfiguration *)self screenTimeState]^ v4;
  v6 = [(STSetupConfiguration *)self passcode];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(STSetupConfiguration *)self contactManagementState];
  v9 = [(STSetupConfiguration *)self userHasContacts];

  return v8 ^ v9;
}

@end