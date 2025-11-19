@interface PKAccountUserFamilyMemberRowModel
+ (id)sortedAccountUserFamilyMemberRowModelsForFamilyMemberCollection:(id)a3 account:(id)a4 accountUserCollection:(id)a5 invitations:(id)a6;
- (NSString)detailText;
- (NSString)titleText;
- (PKAccountUserFamilyMemberRowModel)initWithFamilyMember:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation PKAccountUserFamilyMemberRowModel

+ (id)sortedAccountUserFamilyMemberRowModelsForFamilyMemberCollection:(id)a3 account:(id)a4 accountUserCollection:(id)a5 invitations:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v32 = a6;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = v9;
  v11 = [v9 accountUsers];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        v17 = [v16 altDSID];
        v18 = [v8 familyMemberForAltDSID:v17];
        [v16 accountState];
        if (([v16 isCurrentUser] & 1) == 0 && (PKAccountStateIsTerminal() & 1) == 0 && (objc_msgSend(v10, "containsObject:", v17) & 1) == 0)
        {
          v19 = [[PKAccountUserFamilyMemberRowModel alloc] initWithFamilyMember:v18];
          [(PKAccountUserFamilyMemberRowModel *)v19 setAccountUser:v16];
          [(PKAccountUserFamilyMemberRowModel *)v19 setAccountUserCollection:v33];
          [v34 addObject:v19];
          [v10 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v32;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        v26 = [v25 invitationDetails];
        v27 = [v26 accountUserAltDSID];

        v28 = [v8 familyMemberForAltDSID:v27];
        if (([v10 containsObject:v27] & 1) == 0)
        {
          v29 = [[PKAccountUserFamilyMemberRowModel alloc] initWithFamilyMember:v28];
          [(PKAccountUserFamilyMemberRowModel *)v29 setInvitation:v25];
          [v34 addObject:v29];
          [v10 addObject:v27];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v22);
  }

  [v34 sortUsingSelector:sel_compare_];
  v30 = [v34 copy];

  return v30;
}

- (PKAccountUserFamilyMemberRowModel)initWithFamilyMember:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKAccountUserFamilyMemberRowModel;
  v6 = [(PKAccountUserFamilyMemberRowModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyMember, a3);
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = PKAccountUserFamilyRowPriorityFromRow(self);
  v6 = PKAccountUserFamilyRowPriorityFromRow(v4);
  if (v5 == v6)
  {
    v7 = [(PKFamilyMember *)self->_familyMember labelName];
    v8 = [v4 familyMember];
    v9 = [v8 labelName];
    v10 = [v7 compare:v9];
  }

  else if (v5 < v6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (NSString)titleText
{
  v3 = [(PKAccountUser *)self->_accountUser nameComponents];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PKFeatureApplication *)self->_invitation invitationDetails];
    v5 = [v6 accountUserNameComponents];
  }

  v7 = [MEMORY[0x1E69B8740] contactForFamilyMember:self->_familyMember nameComponents:v5 imageData:0];
  v8 = [v7 pkFullName];

  return v8;
}

- (NSString)detailText
{
  accountUser = self->_accountUser;
  if (accountUser)
  {
    v4 = [(PKAccountUser *)accountUser accessLevel];
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        invitation = 0;
        goto LABEL_11;
      }

      [(PKAccountUserCollection *)self->_accountUserCollection isCoOwner];
    }
  }

  else
  {
    invitation = self->_invitation;
    if (!invitation)
    {
      goto LABEL_11;
    }

    if ([invitation applicationState] == 5)
    {
      [(PKFeatureApplication *)self->_invitation applicationStateReason];
    }
  }

  invitation = PKLocalizedFeatureString();
LABEL_11:

  return invitation;
}

@end