@interface PKAccountUserFamilyMemberRowModel
+ (id)sortedAccountUserFamilyMemberRowModelsForFamilyMemberCollection:(id)collection account:(id)account accountUserCollection:(id)userCollection invitations:(id)invitations;
- (NSString)detailText;
- (NSString)titleText;
- (PKAccountUserFamilyMemberRowModel)initWithFamilyMember:(id)member;
- (int64_t)compare:(id)compare;
@end

@implementation PKAccountUserFamilyMemberRowModel

+ (id)sortedAccountUserFamilyMemberRowModelsForFamilyMemberCollection:(id)collection account:(id)account accountUserCollection:(id)userCollection invitations:(id)invitations
{
  v45 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  userCollectionCopy = userCollection;
  invitationsCopy = invitations;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = userCollectionCopy;
  accountUsers = [userCollectionCopy accountUsers];
  v12 = [accountUsers countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(accountUsers);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        altDSID = [v16 altDSID];
        v18 = [collectionCopy familyMemberForAltDSID:altDSID];
        [v16 accountState];
        if (([v16 isCurrentUser] & 1) == 0 && (PKAccountStateIsTerminal() & 1) == 0 && (objc_msgSend(v10, "containsObject:", altDSID) & 1) == 0)
        {
          v19 = [[PKAccountUserFamilyMemberRowModel alloc] initWithFamilyMember:v18];
          [(PKAccountUserFamilyMemberRowModel *)v19 setAccountUser:v16];
          [(PKAccountUserFamilyMemberRowModel *)v19 setAccountUserCollection:v33];
          [v34 addObject:v19];
          [v10 addObject:altDSID];
        }
      }

      v13 = [accountUsers countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = invitationsCopy;
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
        invitationDetails = [v25 invitationDetails];
        accountUserAltDSID = [invitationDetails accountUserAltDSID];

        v28 = [collectionCopy familyMemberForAltDSID:accountUserAltDSID];
        if (([v10 containsObject:accountUserAltDSID] & 1) == 0)
        {
          v29 = [[PKAccountUserFamilyMemberRowModel alloc] initWithFamilyMember:v28];
          [(PKAccountUserFamilyMemberRowModel *)v29 setInvitation:v25];
          [v34 addObject:v29];
          [v10 addObject:accountUserAltDSID];
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

- (PKAccountUserFamilyMemberRowModel)initWithFamilyMember:(id)member
{
  memberCopy = member;
  v9.receiver = self;
  v9.super_class = PKAccountUserFamilyMemberRowModel;
  v6 = [(PKAccountUserFamilyMemberRowModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyMember, member);
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = PKAccountUserFamilyRowPriorityFromRow(self);
  v6 = PKAccountUserFamilyRowPriorityFromRow(compareCopy);
  if (v5 == v6)
  {
    labelName = [(PKFamilyMember *)self->_familyMember labelName];
    familyMember = [compareCopy familyMember];
    labelName2 = [familyMember labelName];
    v10 = [labelName compare:labelName2];
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
  nameComponents = [(PKAccountUser *)self->_accountUser nameComponents];
  v4 = nameComponents;
  if (nameComponents)
  {
    accountUserNameComponents = nameComponents;
  }

  else
  {
    invitationDetails = [(PKFeatureApplication *)self->_invitation invitationDetails];
    accountUserNameComponents = [invitationDetails accountUserNameComponents];
  }

  v7 = [MEMORY[0x1E69B8740] contactForFamilyMember:self->_familyMember nameComponents:accountUserNameComponents imageData:0];
  pkFullName = [v7 pkFullName];

  return pkFullName;
}

- (NSString)detailText
{
  accountUser = self->_accountUser;
  if (accountUser)
  {
    accessLevel = [(PKAccountUser *)accountUser accessLevel];
    if (accessLevel != 2)
    {
      if (accessLevel != 1)
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