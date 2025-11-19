@interface PKBusinessChatInvitationContext
- (PKBusinessChatInvitationContext)initWithBusinessChatIdentifier:(id)a3 account:(id)a4 invitation:(id)a5 pendingInvitations:(id)a6 featureApplications:(id)a7;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatInvitationContext

- (PKBusinessChatInvitationContext)initWithBusinessChatIdentifier:(id)a3 account:(id)a4 invitation:(id)a5 pendingInvitations:(id)a6 featureApplications:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = PKBusinessChatInvitationContext;
  v17 = [(PKBusinessChatInvitationContext *)&v25 init];
  if (v17)
  {
    v18 = [v12 copy];
    businessChatIdentifier = v17->_businessChatIdentifier;
    v17->_businessChatIdentifier = v18;

    objc_storeStrong(&v17->_account, a4);
    objc_storeStrong(&v17->_invitation, a5);
    v20 = [v15 pk_objectsPassingTest:&__block_literal_global_29];
    pendingInvitations = v17->_pendingInvitations;
    v17->_pendingInvitations = v20;

    v22 = [v16 pk_objectsPassingTest:&__block_literal_global_691];
    featureApplications = v17->_featureApplications;
    v17->_featureApplications = v22;
  }

  return v17;
}

- (id)intentParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"wallet_invite_contactsupport" forKeyedSubscript:@"targetDialog"];
  v4 = [(PKAccount *)self->_account accountIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"accountID"];

  v5 = [(PKFeatureApplication *)self->_invitation invitationDetails];
  v6 = [v5 accountUserAccessLevel];
  v7 = @"participant";
  if (v6 != 2)
  {
    v7 = 0;
  }

  if (v6 == 1)
  {
    v8 = @"owner";
  }

  else
  {
    v8 = v7;
  }

  [v3 setObject:v8 forKeyedSubscript:@"accountRole"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_featureApplications, "count")}];
  v10 = [v9 stringValue];
  [v3 setObject:v10 forKeyedSubscript:@"pendingApplicationCount"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_pendingInvitations, "count")}];
  v12 = [v11 stringValue];
  [v3 setObject:v12 forKeyedSubscript:@"pendingInvitationCount"];

  v13 = [(NSArray *)self->_pendingInvitations pk_objectsPassingTest:&__block_literal_global_696];
  v14 = [v13 count];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  v16 = [v15 stringValue];
  [v3 setObject:v16 forKeyedSubscript:@"pendingOwnerInvitationCount"];

  v17 = [(NSArray *)self->_pendingInvitations pk_objectsPassingTest:&__block_literal_global_698];
  v18 = [v17 count];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
  v20 = [v19 stringValue];
  [v3 setObject:v20 forKeyedSubscript:@"pendingParticipantInvitationCount"];

  v21 = [v3 copy];

  return v21;
}

BOOL __51__PKBusinessChatInvitationContext_intentParameters__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 invitationDetails];
  v3 = [v2 accountUserAccessLevel] == 1;

  return v3;
}

BOOL __51__PKBusinessChatInvitationContext_intentParameters__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 invitationDetails];
  v3 = [v2 accountUserAccessLevel] == 2;

  return v3;
}

- (id)groupParameters
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"domain";
  v4[1] = @"origin";
  v5[0] = @"apple_pay";
  v5[1] = @"Wallet";
  v4[2] = @"page";
  v5[2] = @"wallet::invite::contactsupport";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end