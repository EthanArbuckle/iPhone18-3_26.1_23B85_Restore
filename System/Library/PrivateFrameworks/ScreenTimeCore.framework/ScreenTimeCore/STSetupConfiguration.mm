@interface STSetupConfiguration
+ (BOOL)_isContactManagementStateValid:(int64_t)valid pairedWithUserHasContacts:(BOOL)contacts;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSetupConfiguration:(id)configuration;
- (NSSet)availableContactManagementStates;
- (NSSet)availableScreenTimeStates;
- (STSetupConfiguration)configurationWithUpdatedContactManagementState:(int64_t)state error:(id *)error;
- (STSetupConfiguration)configurationWithUpdatedPasscode:(id)passcode;
- (STSetupConfiguration)configurationWithUpdatedScreenTimeState:(int64_t)state error:(id *)error;
- (STSetupConfiguration)initWithCoder:(id)coder;
- (id)_descriptionForContactManagementStates:(id)states;
- (id)_descriptionForScreenTimeStates:(id)states;
- (id)_initWithUser:(id)user screenTimeState:(int64_t)state passcode:(id)passcode contactManagementState:(int64_t)managementState userHasContacts:(BOOL)contacts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSetupConfiguration

- (id)_initWithUser:(id)user screenTimeState:(int64_t)state passcode:(id)passcode contactManagementState:(int64_t)managementState userHasContacts:(BOOL)contacts
{
  v19.receiver = self;
  v19.super_class = STSetupConfiguration;
  passcodeCopy = passcode;
  userCopy = user;
  v13 = [(STSetupConfiguration *)&v19 init];
  v14 = [userCopy copy];

  associatedUser = v13->_associatedUser;
  v13->_associatedUser = v14;

  v13->_screenTimeState = state;
  v16 = [passcodeCopy copy];

  passcode = v13->_passcode;
  v13->_passcode = v16;

  v13->_contactManagementState = managementState;
  v13->_userHasContacts = contacts;
  return v13;
}

+ (BOOL)_isContactManagementStateValid:(int64_t)valid pairedWithUserHasContacts:(BOOL)contacts
{
  v4 = valid == 1 && contacts;
  if (valid == 2)
  {
    v4 = 1;
  }

  return !valid || v4;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  associatedUser = [(STSetupConfiguration *)self associatedUser];
  screenTimeState = [(STSetupConfiguration *)self screenTimeState];
  v7 = screenTimeState;
  if (screenTimeState >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull STGetDescriptionForSetupConfigurationScreenTimeState(STSetupConfigurationScreenTimeState)"];
    [currentHandler handleFailureInFunction:v9 file:@"STSetupConfiguration.h" lineNumber:32 description:{@"Unexpected Screen Time state %ld", v7}];
  }

  else
  {
    v2 = off_1E7CE7CC8[screenTimeState];
  }

  availableScreenTimeStates = [(STSetupConfiguration *)self availableScreenTimeStates];
  v11 = [(STSetupConfiguration *)self _descriptionForScreenTimeStates:availableScreenTimeStates];
  passcode = [(STSetupConfiguration *)self passcode];
  contactManagementState = [(STSetupConfiguration *)self contactManagementState];
  v14 = contactManagementState;
  if (contactManagementState >= 3)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull STGetDescriptionForSetupConfigurationContactManagementState(STSetupConfigurationContactManagementState)"];
    [(__CFString *)currentHandler2 handleFailureInFunction:v16 file:@"STSetupConfiguration.h" lineNumber:53 description:@"Unexpected contact management state %ld", v14];
  }

  else
  {
    currentHandler2 = off_1E7CE7CE0[contactManagementState];
  }

  availableContactManagementStates = [(STSetupConfiguration *)self availableContactManagementStates];
  v18 = [(STSetupConfiguration *)self _descriptionForContactManagementStates:availableContactManagementStates];
  v19 = [v21 stringWithFormat:@"<%@: { User: %@, ScreenTimeState: %@, AvailableScreenTimeStates: %@, Passcode: %d, ContactManagementState: %@, AvailableContactManagementStates: %@>", v4, associatedUser, v2, v11, passcode != 0, currentHandler2, v18];

  return v19;
}

- (id)_descriptionForScreenTimeStates:(id)states
{
  v22 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = statesCopy;
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

        integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
        if (integerValue >= 3)
        {
          v14 = integerValue;
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull STGetDescriptionForSetupConfigurationScreenTimeState(STSetupConfigurationScreenTimeState)"];
          [currentHandler handleFailureInFunction:v16 file:@"STSetupConfiguration.h" lineNumber:32 description:{@"Unexpected Screen Time state %ld", v14}];

          __break(1u);
          return result;
        }

        [v4 addObject:off_1E7CE7CC8[integerValue]];
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

- (id)_descriptionForContactManagementStates:(id)states
{
  v22 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = statesCopy;
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

        integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
        if (integerValue >= 3)
        {
          v14 = integerValue;
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull STGetDescriptionForSetupConfigurationContactManagementState(STSetupConfigurationContactManagementState)"];
          [currentHandler handleFailureInFunction:v16 file:@"STSetupConfiguration.h" lineNumber:53 description:{@"Unexpected contact management state %ld", v14}];

          __break(1u);
          return result;
        }

        [v4 addObject:off_1E7CE7CE0[integerValue]];
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
  screenTimeState = [(STSetupConfiguration *)self screenTimeState];
  if (screenTimeState == 2)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = &unk_1F3059B70;
    goto LABEL_7;
  }

  v5 = screenTimeState;
  if (screenTimeState == 1)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = &unk_1F3059B58;
LABEL_7:
    v6 = [v7 setWithObject:v8];
    goto LABEL_9;
  }

  if (screenTimeState)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"STSetupConfiguration.m" lineNumber:111 description:{@"Unexpected Screen Time state %ld", v5}];
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
  contactManagementState = [(STSetupConfiguration *)self contactManagementState];
  if (contactManagementState == 2 || (v5 = contactManagementState, contactManagementState == 1))
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = &unk_1F3059B88;
LABEL_7:
    v9 = [v7 setWithObject:v8];
    goto LABEL_9;
  }

  if (!contactManagementState)
  {
    userHasContacts = [(STSetupConfiguration *)self userHasContacts];
    v7 = MEMORY[0x1E695DFD8];
    if (userHasContacts)
    {
      v8 = &unk_1F3059B70;
    }

    else
    {
      v8 = &unk_1F3059B58;
    }

    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STSetupConfiguration.m" lineNumber:128 description:{@"Unexpected contact management state %ld", v5}];

LABEL_9:

  return v9;
}

- (STSetupConfiguration)configurationWithUpdatedScreenTimeState:(int64_t)state error:(id *)error
{
  availableScreenTimeStates = [(STSetupConfiguration *)self availableScreenTimeStates];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v9 = [availableScreenTimeStates containsObject:v8];

  if (v9)
  {
    v10 = [STSetupConfiguration alloc];
    associatedUser = [(STSetupConfiguration *)self associatedUser];
    passcode = [(STSetupConfiguration *)self passcode];
    v13 = [(STSetupConfiguration *)v10 _initWithUser:associatedUser screenTimeState:state passcode:passcode contactManagementState:[(STSetupConfiguration *)self contactManagementState] userHasContacts:[(STSetupConfiguration *)self userHasContacts]];
  }

  else
  {
    v13 = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:42 userInfo:0];
    }
  }

  return v13;
}

- (STSetupConfiguration)configurationWithUpdatedContactManagementState:(int64_t)state error:(id *)error
{
  availableContactManagementStates = [(STSetupConfiguration *)self availableContactManagementStates];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v9 = [availableContactManagementStates containsObject:v8];

  if (v9)
  {
    v10 = [STSetupConfiguration alloc];
    associatedUser = [(STSetupConfiguration *)self associatedUser];
    screenTimeState = [(STSetupConfiguration *)self screenTimeState];
    passcode = [(STSetupConfiguration *)self passcode];
    v14 = [(STSetupConfiguration *)v10 _initWithUser:associatedUser screenTimeState:screenTimeState passcode:passcode contactManagementState:state userHasContacts:[(STSetupConfiguration *)self userHasContacts]];
  }

  else
  {
    v14 = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:43 userInfo:0];
    }
  }

  return v14;
}

- (STSetupConfiguration)configurationWithUpdatedPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = [STSetupConfiguration alloc];
  associatedUser = [(STSetupConfiguration *)self associatedUser];
  v7 = [(STSetupConfiguration *)v5 _initWithUser:associatedUser screenTimeState:[(STSetupConfiguration *)self screenTimeState] passcode:passcodeCopy contactManagementState:[(STSetupConfiguration *)self contactManagementState] userHasContacts:[(STSetupConfiguration *)self userHasContacts]];

  return v7;
}

- (STSetupConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedUser"];
  v6 = [coderCopy decodeIntegerForKey:@"screenTimeState"];
  if (![STSetupConfiguration _isScreenTimeStateValid:v6])
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:42 userInfo:0];
    [coderCopy failWithError:v7];
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
  v8 = [coderCopy decodeIntegerForKey:@"contactManagementState"];
  v9 = [coderCopy decodeBoolForKey:@"userHasContacts"];
  if (![STSetupConfiguration _isContactManagementStateValid:v8 pairedWithUserHasContacts:v9])
  {
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:43 userInfo:0];
    [coderCopy failWithError:v11];

    goto LABEL_6;
  }

  self = [(STSetupConfiguration *)self _initWithUser:v5 screenTimeState:v6 passcode:v7 contactManagementState:v8 userHasContacts:v9];
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  associatedUser = self->_associatedUser;
  coderCopy = coder;
  [coderCopy encodeObject:associatedUser forKey:@"associatedUser"];
  [coderCopy encodeInteger:self->_screenTimeState forKey:@"screenTimeState"];
  [coderCopy encodeObject:self->_passcode forKey:@"passcode"];
  [coderCopy encodeInteger:self->_contactManagementState forKey:@"contactManagementState"];
  [coderCopy encodeBool:self->_userHasContacts forKey:@"userHasContacts"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  associatedUser = self->_associatedUser;
  screenTimeState = self->_screenTimeState;
  passcode = self->_passcode;
  contactManagementState = self->_contactManagementState;
  userHasContacts = self->_userHasContacts;

  return [v4 _initWithUser:associatedUser screenTimeState:screenTimeState passcode:passcode contactManagementState:contactManagementState userHasContacts:userHasContacts];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STSetupConfiguration *)self isEqualToSetupConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSetupConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy != self)
  {
    associatedUser = [(STSetupConfiguration *)self associatedUser];
    associatedUser2 = [(STSetupConfiguration *)configurationCopy associatedUser];
    if (![associatedUser isEqualToUserID:associatedUser2] || (v9 = -[STSetupConfiguration screenTimeState](self, "screenTimeState"), v9 != -[STSetupConfiguration screenTimeState](configurationCopy, "screenTimeState")))
    {
      LOBYTE(v12) = 0;
LABEL_15:

      goto LABEL_16;
    }

    passcode = [(STSetupConfiguration *)self passcode];
    passcode2 = [(STSetupConfiguration *)configurationCopy passcode];
    if (passcode == passcode2 || (-[STSetupConfiguration passcode](self, "passcode"), v3 = objc_claimAutoreleasedReturnValue(), -[STSetupConfiguration passcode](configurationCopy, "passcode"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToOpaquePasscode:v4]))
    {
      contactManagementState = [(STSetupConfiguration *)self contactManagementState];
      if (contactManagementState == [(STSetupConfiguration *)configurationCopy contactManagementState])
      {
        userHasContacts = [(STSetupConfiguration *)self userHasContacts];
        v12 = userHasContacts ^ [(STSetupConfiguration *)configurationCopy userHasContacts]^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      if (passcode == passcode2)
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
  associatedUser = [(STSetupConfiguration *)self associatedUser];
  v4 = [associatedUser hash];
  v5 = [(STSetupConfiguration *)self screenTimeState]^ v4;
  passcode = [(STSetupConfiguration *)self passcode];
  v7 = [passcode hash];
  v8 = v5 ^ v7 ^ [(STSetupConfiguration *)self contactManagementState];
  userHasContacts = [(STSetupConfiguration *)self userHasContacts];

  return v8 ^ userHasContacts;
}

@end