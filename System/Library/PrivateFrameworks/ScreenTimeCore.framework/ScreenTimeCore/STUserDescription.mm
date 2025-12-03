@interface STUserDescription
+ (id)currentUser;
+ (void)currentUserWithCompletion:(id)completion;
- (STUserDescription)initWithGivenName:(id)name familyName:(id)familyName userDSID:(id)d userAltDSID:(id)iD;
@end

@implementation STUserDescription

- (STUserDescription)initWithGivenName:(id)name familyName:(id)familyName userDSID:(id)d userAltDSID:(id)iD
{
  nameCopy = name;
  familyNameCopy = familyName;
  dCopy = d;
  iDCopy = iD;
  v24.receiver = self;
  v24.super_class = STUserDescription;
  v14 = [(STUserDescription *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    givenName = v14->_givenName;
    v14->_givenName = v15;

    v17 = [familyNameCopy copy];
    familyName = v14->_familyName;
    v14->_familyName = v17;

    v19 = [dCopy copy];
    userDSID = v14->_userDSID;
    v14->_userDSID = v19;

    v21 = [iDCopy copy];
    userAltDSID = v14->_userAltDSID;
    v14->_userAltDSID = v21;
  }

  return v14;
}

+ (id)currentUser
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount;
  if (!aa_primaryAppleAccount)
  {
    v12 = +[STLog utility];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_INFO, "No Apple Account", &v16, 2u);
    }

    aa_firstName = 0;
    aa_lastName = 0;
    aa_altDSID = 0;
    goto LABEL_9;
  }

  aa_firstName = [aa_primaryAppleAccount aa_firstName];
  aa_lastName = [v4 aa_lastName];
  v7 = MEMORY[0x1E696AD98];
  aa_personID = [v4 aa_personID];
  v9 = [v7 numberWithLongLong:{objc_msgSend(aa_personID, "longLongValue")}];

  aa_altDSID = [v4 aa_altDSID];
  v11 = +[STLog utility];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v16 = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = aa_firstName;
    v20 = 2112;
    v21 = aa_lastName;
    _os_log_impl(&dword_1B831F000, v11, OS_LOG_TYPE_INFO, "Account DSID %@: %@ %@", &v16, 0x20u);
  }

  if (!v9)
  {
LABEL_9:
    v9 = &unk_1F3059BA0;
  }

  v13 = [[STUserDescription alloc] initWithGivenName:aa_firstName familyName:aa_lastName userDSID:v9 userAltDSID:aa_altDSID];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (void)currentUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__STUserDescription_currentUserWithCompletion___block_invoke;
  v6[3] = &unk_1E7CE7F48;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 aa_primaryAppleAccountWithCompletion:v6];
}

void __47__STUserDescription_currentUserWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v14 = +[STLog utility];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_INFO, "No Apple Account", &v17, 2u);
    }

    v7 = 0;
    v8 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  v7 = [v5 aa_firstName];
  v8 = [v5 aa_lastName];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v5 aa_personID];
  v11 = [v9 numberWithLongLong:{objc_msgSend(v10, "longLongValue")}];

  v12 = [v5 aa_altDSID];
  v13 = +[STLog utility];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 138412802;
    v18 = v11;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1B831F000, v13, OS_LOG_TYPE_INFO, "Account DSID %@: %@ %@", &v17, 0x20u);
  }

  if (!v11)
  {
LABEL_9:
    v11 = &unk_1F3059BA0;
  }

  v15 = [[STUserDescription alloc] initWithGivenName:v7 familyName:v8 userDSID:v11 userAltDSID:v12];
  (*(*(a1 + 32) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

@end