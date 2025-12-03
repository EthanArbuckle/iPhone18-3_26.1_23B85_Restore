@interface PKBusinessChatInvitationContext
- (PKBusinessChatInvitationContext)initWithBusinessChatIdentifier:(id)identifier account:(id)account invitation:(id)invitation pendingInvitations:(id)invitations featureApplications:(id)applications;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatInvitationContext

- (PKBusinessChatInvitationContext)initWithBusinessChatIdentifier:(id)identifier account:(id)account invitation:(id)invitation pendingInvitations:(id)invitations featureApplications:(id)applications
{
  identifierCopy = identifier;
  accountCopy = account;
  invitationCopy = invitation;
  invitationsCopy = invitations;
  applicationsCopy = applications;
  v25.receiver = self;
  v25.super_class = PKBusinessChatInvitationContext;
  v17 = [(PKBusinessChatInvitationContext *)&v25 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    businessChatIdentifier = v17->_businessChatIdentifier;
    v17->_businessChatIdentifier = v18;

    objc_storeStrong(&v17->_account, account);
    objc_storeStrong(&v17->_invitation, invitation);
    v20 = [invitationsCopy pk_objectsPassingTest:&__block_literal_global_29];
    pendingInvitations = v17->_pendingInvitations;
    v17->_pendingInvitations = v20;

    v22 = [applicationsCopy pk_objectsPassingTest:&__block_literal_global_691];
    featureApplications = v17->_featureApplications;
    v17->_featureApplications = v22;
  }

  return v17;
}

- (id)intentParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"wallet_invite_contactsupport" forKeyedSubscript:@"targetDialog"];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [v3 setObject:accountIdentifier forKeyedSubscript:@"accountID"];

  invitationDetails = [(PKFeatureApplication *)self->_invitation invitationDetails];
  accountUserAccessLevel = [invitationDetails accountUserAccessLevel];
  v7 = @"participant";
  if (accountUserAccessLevel != 2)
  {
    v7 = 0;
  }

  if (accountUserAccessLevel == 1)
  {
    v8 = @"owner";
  }

  else
  {
    v8 = v7;
  }

  [v3 setObject:v8 forKeyedSubscript:@"accountRole"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_featureApplications, "count")}];
  stringValue = [v9 stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"pendingApplicationCount"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_pendingInvitations, "count")}];
  stringValue2 = [v11 stringValue];
  [v3 setObject:stringValue2 forKeyedSubscript:@"pendingInvitationCount"];

  v13 = [(NSArray *)self->_pendingInvitations pk_objectsPassingTest:&__block_literal_global_696];
  v14 = [v13 count];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  stringValue3 = [v15 stringValue];
  [v3 setObject:stringValue3 forKeyedSubscript:@"pendingOwnerInvitationCount"];

  v17 = [(NSArray *)self->_pendingInvitations pk_objectsPassingTest:&__block_literal_global_698];
  v18 = [v17 count];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
  stringValue4 = [v19 stringValue];
  [v3 setObject:stringValue4 forKeyedSubscript:@"pendingParticipantInvitationCount"];

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