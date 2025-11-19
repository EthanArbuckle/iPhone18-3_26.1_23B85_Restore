@interface PKPeerPaymentFamilyMemberRowModel
+ (id)sortedPeerPaymentFamilyMemberRowModelsForFamilyMembers:(id)a3 peerPaymentAccount:(id)a4;
- (NSString)detailText;
- (PKPeerPaymentFamilyMemberRowModel)initWithFamilyMember:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)state;
@end

@implementation PKPeerPaymentFamilyMemberRowModel

+ (id)sortedPeerPaymentFamilyMemberRowModelsForFamilyMembers:(id)a3 peerPaymentAccount:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (([v13 isMe] & 1) == 0 && (objc_msgSend(v13, "isOrganizer") & 1) == 0)
        {
          v14 = [v13 altDSID];
          v15 = [v6 peerPaymentAccountWithAltDSID:v14];
          v16 = [v6 accountInvitationWithAltDSID:v14];
          if (v16 | v15 || [v13 memberType] == 2 || objc_msgSend(v13, "memberType") == 1)
          {
            v17 = [[PKPeerPaymentFamilyMemberRowModel alloc] initWithFamilyMember:v13];
            [(PKPeerPaymentFamilyMemberRowModel *)v17 setAccount:v15];
            [(PKPeerPaymentFamilyMemberRowModel *)v17 setInvitation:v16];
            [v7 addObject:v17];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [v7 sortUsingSelector:sel_compare_];
  v18 = [v7 copy];

  return v18;
}

- (PKPeerPaymentFamilyMemberRowModel)initWithFamilyMember:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentFamilyMemberRowModel;
  v6 = [(PKPeerPaymentFamilyMemberRowModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyMember, a3);
  }

  return v7;
}

- (unint64_t)state
{
  account = self->_account;
  if (account)
  {
    if ([(PKPeerPaymentAccount *)account isParticipantAccountLockedByOwner])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (self->_invitation)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentFamilyMemberRowModel *)self state];
  v6 = [v4 state];
  if (v5 > 4)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = qword_1BE115878[v5];
  }

  if (v6 > 4)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = qword_1BE115878[v6];
  }

  if (v7 == v8)
  {
    v9 = [(PKFamilyMember *)self->_familyMember labelName];
    v10 = [v4 familyMember];
    v11 = [v10 labelName];
    v12 = [v9 compare:v11];
  }

  else if (v7 < v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (NSString)detailText
{
  v2 = [(PKPeerPaymentFamilyMemberRowModel *)self state]- 1;
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = PKLocalizedPaymentString(&off_1E801AB08[v2]->isa);
  }

  return v3;
}

@end