@interface PKAppleCardUtilities
- (PKAppleCardUtilities)init;
- (id)_activeAccountUserWithAltDSID:(id)d;
- (id)_contactKeysToFetch;
- (id)_pendingSentInvitationWithAltDSID:(id)d;
- (void)_fetchDataIfNecessaryWithCompletion:(id)completion;
- (void)accountChanged:(id)changed;
- (void)accountRemoved:(id)removed;
- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)appleCardAccessLevelForAltDSID:(id)d completion:(id)completion;
- (void)appleCardAccountStateWithCompletion:(id)completion;
- (void)appleCardIsSharedWithWithAltDSID:(id)d completion:(id)completion;
- (void)appleCardTransactionLimitForAltDSID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)didUpdateFamilyMembers:(id)members;
- (void)featureApplicationAdded:(id)added;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationRemoved:(id)removed;
- (void)hasAppleCardWithCompletion:(id)completion;
- (void)hasSentPendingAppleCardInvitationToUserWithAltDSID:(id)d completion:(id)completion;
- (void)presentAppleCardSharingDetailsForAltDSID:(id)d viewController:(id)controller hideUserDetailHeader:(BOOL)header completion:(id)completion;
- (void)presentAppleCardUserInvitationFlowWithViewController:(id)controller completion:(id)completion;
@end

@implementation PKAppleCardUtilities

- (PKAppleCardUtilities)init
{
  v9.receiver = self;
  v9.super_class = PKAppleCardUtilities;
  v2 = [(PKAppleCardUtilities *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v3->_paymentService;
    v3->_paymentService = paymentService;

    [(PKPaymentService *)v3->_paymentService registerObserver:v3];
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v3->_accountService;
    v3->_accountService = mEMORY[0x1E69B8400];

    [(PKAccountService *)v3->_accountService registerObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKAppleCardUtilities;
  [(PKAppleCardUtilities *)&v3 dealloc];
}

- (void)hasAppleCardWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Checking if the current user has apple card", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__PKAppleCardUtilities_hasAppleCardWithCompletion___block_invoke;
    v6[3] = &unk_1E8010DD0;
    v6[4] = self;
    v7 = completionCopy;
    [(PKAppleCardUtilities *)self _fetchDataIfNecessaryWithCompletion:v6];
  }
}

void __51__PKAppleCardUtilities_hasAppleCardWithCompletion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(a1 + 32);
  v6 = v3;
  os_unfair_lock_unlock(v5 + 2);
  if (!v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v13 = 0;
    v9 = "User doesnt have an apple card account";
    v10 = &v13;
LABEL_10:
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_11;
  }

  v7 = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    *buf = 0;
    v9 = "User doesnt have apple card pass provisioned";
    v10 = buf;
    goto LABEL_10;
  }

  if (v8)
  {
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Current user has apple card", v11, 2u);
  }

LABEL_11:

  (*(*(a1 + 40) + 16))();
}

- (void)appleCardAccountStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Checking the current user's apple card account state", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKAppleCardUtilities_appleCardAccountStateWithCompletion___block_invoke;
    v6[3] = &unk_1E8010DD0;
    v6[4] = self;
    v7 = completionCopy;
    [(PKAppleCardUtilities *)self _fetchDataIfNecessaryWithCompletion:v6];
  }
}

void __60__PKAppleCardUtilities_appleCardAccountStateWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 32);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (v2)
  {
    v3 = [v2 state] - 1;
    if (v3 > 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = qword_1BE114B50[v3];
    }

    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Current user's apple card account is in state: %@", &v7, 0xCu);
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "User doesnt have an apple card account", &v7, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)appleCardAccessLevelForAltDSID:(id)d completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Checking apple card access level of user %@", buf, 0xCu);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PKAppleCardUtilities_appleCardAccessLevelForAltDSID_completion___block_invoke;
    v9[3] = &unk_1E8012300;
    v9[4] = self;
    v10 = dCopy;
    v11 = completionCopy;
    [(PKAppleCardUtilities *)self _fetchDataIfNecessaryWithCompletion:v9];
  }
}

void __66__PKAppleCardUtilities_appleCardAccessLevelForAltDSID_completion___block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1[4] + 8));
  v2 = *(a1[4] + 32);
  v3 = *(a1[4] + 48);
  os_unfair_lock_unlock((a1[4] + 8));
  v4 = [v3 accountUserWithAltDSID:a1[5]];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[5];
    v20 = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Apple Card account user for altDSID %@ is %@", &v20, 0x16u);
  }

  v7 = [v4 accessLevel];
  if (!v7)
  {
LABEL_5:
    v8 = PKCurrentUserAltDSID();
    v9 = a1[5];
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      if (!v10 || !v11)
      {

        v7 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v13 = [v10 isEqualToString:v11];

      if (!v13)
      {
        v7 = 0;
        goto LABEL_15;
      }
    }

    v7 = [v2 accessLevel];
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[5];
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "altDSID %@ is the current Apple Card user", &v20, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a1[5];
    v17 = PKAccountAccessLevelToString();
    v20 = 138412546;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Apple Card access level for %@ is %@", &v20, 0x16u);
  }

  v18 = 1;
  if (v7 == 2)
  {
    v18 = 2;
  }

  if (v7)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  (*(a1[6] + 16))(a1[6], v19);
}

- (void)appleCardIsSharedWithWithAltDSID:(id)d completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Checking apple card is being shared with altDSID %@.", buf, 0xCu);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PKAppleCardUtilities_appleCardIsSharedWithWithAltDSID_completion___block_invoke;
    v9[3] = &unk_1E8012300;
    v9[4] = self;
    v10 = dCopy;
    v11 = completionCopy;
    [(PKAppleCardUtilities *)self _fetchDataIfNecessaryWithCompletion:v9];
  }
}

void __68__PKAppleCardUtilities_appleCardIsSharedWithWithAltDSID_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 32);
  v3 = *(*(a1 + 32) + 48);
  v4 = *(*(a1 + 32) + 56);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (!v2)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = *(a1 + 40);
    v18 = 138412290;
    v19 = v13;
    v14 = "Cannot check if apple card is being shared with %@ since there is no account.";
LABEL_13:
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, v14, &v18, 0xCu);
    goto LABEL_14;
  }

  if (!v4)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = *(a1 + 40);
    v18 = 138412290;
    v19 = v15;
    v14 = "Cannot check if apple card is being shared with %@ since there is no pass.";
    goto LABEL_13;
  }

  v5 = [v3 accountUsers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [*(a1 + 32) _activeAccountUserWithAltDSID:*(a1 + 40)];
    v8 = PKLogFacilityTypeGetObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = *(a1 + 40);
        v18 = 138412290;
        v19 = v10;
        v11 = "Apple card is being shared with altDSID %@.";
LABEL_17:
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, v11, &v18, 0xCu);
      }
    }

    else if (v9)
    {
      v17 = *(a1 + 40);
      v18 = 138412290;
      v19 = v17;
      v11 = "Apple card is not being shared with altDSID %@.";
      goto LABEL_17;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v7 != 0);
    goto LABEL_19;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v18 = 138412290;
    v19 = v16;
    v14 = "Cannot check if apple card is being shared with %@ since there are no account users.";
    goto LABEL_13;
  }

LABEL_14:

  (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
LABEL_19:
}

- (void)hasSentPendingAppleCardInvitationToUserWithAltDSID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (dCopy && completionCopy)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = dCopy;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Checking if pending sent invitation exists with altDSID %@", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86__PKAppleCardUtilities_hasSentPendingAppleCardInvitationToUserWithAltDSID_completion___block_invoke;
    v10[3] = &unk_1E8012300;
    v10[4] = self;
    v11 = dCopy;
    v12 = v8;
    [(PKAppleCardUtilities *)self _fetchDataIfNecessaryWithCompletion:v10];
  }
}

void __86__PKAppleCardUtilities_hasSentPendingAppleCardInvitationToUserWithAltDSID_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 32);
  v3 = *(*(a1 + 32) + 64);
  v4 = *(*(a1 + 32) + 56);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (!v2)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v11 = *(a1 + 40);
    v16 = 138412290;
    v17 = v11;
    v12 = "Cannot check for pending apple card invitations with %@ since there is no account.";
LABEL_13:
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, v12, &v16, 0xCu);
    goto LABEL_14;
  }

  if (!v4)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = *(a1 + 40);
    v16 = 138412290;
    v17 = v13;
    v12 = "Cannot check for pending apple card invitations with %@ since there is no pass.";
    goto LABEL_13;
  }

  if ([v3 count])
  {
    v5 = [*(a1 + 32) _pendingSentInvitationWithAltDSID:*(a1 + 40)];
    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = *(a1 + 40);
        v16 = 138412290;
        v17 = v8;
        v9 = "Apple card has a sent pending invitation with altDSID %@.";
LABEL_17:
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, v9, &v16, 0xCu);
      }
    }

    else if (v7)
    {
      v15 = *(a1 + 40);
      v16 = 138412290;
      v17 = v15;
      v9 = "Apple card has no sent pending invitation with altDSID %@.";
      goto LABEL_17;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v5 != 0);
    goto LABEL_19;
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v16 = 138412290;
    v17 = v14;
    v12 = "Cannot check for pending apple card invitations with %@ since there are no sent invitations.";
    goto LABEL_13;
  }

LABEL_14:

  (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
LABEL_19:
}

- (void)appleCardTransactionLimitForAltDSID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    if (dCopy)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = dCopy;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Checking transaction limit for apple card user with altDSID %@", buf, 0xCu);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __71__PKAppleCardUtilities_appleCardTransactionLimitForAltDSID_completion___block_invoke;
      v10[3] = &unk_1E8012300;
      v10[4] = self;
      v11 = dCopy;
      v12 = v8;
      [(PKAppleCardUtilities *)self _fetchDataIfNecessaryWithCompletion:v10];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __71__PKAppleCardUtilities_appleCardTransactionLimitForAltDSID_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _activeAccountUserWithAltDSID:*(a1 + 40)];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v3 = *(*(a1 + 32) + 32);
  v4 = *(*(a1 + 32) + 48);
  v5 = *(*(a1 + 32) + 56);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (!v3)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v15 = *(a1 + 40);
    v21 = 138412290;
    v22 = v15;
    v16 = "Cannot get transaction limit for %@ since there is no account.";
LABEL_22:
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, v16, &v21, 0xCu);
    goto LABEL_23;
  }

  if (!v5)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v17 = *(a1 + 40);
    v21 = 138412290;
    v22 = v17;
    v16 = "Cannot get transaction limit for %@ since there is no pass.";
    goto LABEL_22;
  }

  v6 = [v4 accountUsers];
  v7 = [v6 count];

  if (!v7)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v18 = *(a1 + 40);
    v21 = 138412290;
    v22 = v18;
    v16 = "Cannot get transaction limit for %@ since there is no account users.";
    goto LABEL_22;
  }

  if (!v2)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      v21 = 138412290;
      v22 = v20;
      v16 = "Cannot get transaction limit for %@ since there is no account account with that altDSID.";
      goto LABEL_22;
    }

LABEL_23:

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
    goto LABEL_24;
  }

  v8 = [v2 preferences];
  v9 = [v3 creditDetails];
  v10 = [v9 currencyCode];

  v11 = [v8 transactionSpendLimitAmount];
  if ([v8 transactionSpendLimitEnabled] && v11 && v10)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v21 = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Apple Card transaction limit for %@ is %@.", &v21, 0x16u);
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Apple Card transaction limit is not enabled for %@.", &v21, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_24:
}

- (void)presentAppleCardUserInvitationFlowWithViewController:(id)controller completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  v8 = completionCopy;
  if (controllerCopy)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = controllerCopy;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Presenting apple card add user flow with presenting view controller %@", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__PKAppleCardUtilities_presentAppleCardUserInvitationFlowWithViewController_completion___block_invoke;
    v10[3] = &unk_1E8014918;
    v10[4] = self;
    v12 = v8;
    v11 = controllerCopy;
    [(PKAppleCardUtilities *)self _fetchDataIfNecessaryWithCompletion:v10];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __88__PKAppleCardUtilities_presentAppleCardUserInvitationFlowWithViewController_completion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 32);
  v3 = *(*(a1 + 32) + 48);
  v4 = *(*(a1 + 32) + 56);
  v5 = *(*(a1 + 32) + 40);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (!v2)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v8 = "Cannot present apple card user invite flow since there is no account.";
    goto LABEL_8;
  }

  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__PKAppleCardUtilities_presentAppleCardUserInvitationFlowWithViewController_completion___block_invoke_37;
    v10[3] = &unk_1E8010B50;
    v6 = *(a1 + 40);
    v11 = *(a1 + 48);
    [PKAccountInvitationController presentCreateAccountUserInvitationWithViewController:v6 account:v2 accountUserCollection:v3 familyMemberCollection:v5 context:3 completion:v10];

    goto LABEL_11;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "Cannot present apple card user invite flow since there is no pass.";
LABEL_8:
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
  }

LABEL_9:

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
  }

LABEL_11:
}

uint64_t __88__PKAppleCardUtilities_presentAppleCardUserInvitationFlowWithViewController_completion___block_invoke_37(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)presentAppleCardSharingDetailsForAltDSID:(id)d viewController:(id)controller hideUserDetailHeader:(BOOL)header completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  controllerCopy = controller;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (dCopy && controllerCopy)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = dCopy;
      v21 = 2112;
      v22 = controllerCopy;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Presenting apple card shared user info for altDSID %@ and viewController %@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __112__PKAppleCardUtilities_presentAppleCardSharingDetailsForAltDSID_viewController_hideUserDetailHeader_completion___block_invoke;
    v14[3] = &unk_1E8014940;
    v14[4] = self;
    v15 = dCopy;
    v17 = completionCopy;
    headerCopy = header;
    v16 = controllerCopy;
    [(PKAppleCardUtilities *)self _fetchDataIfNecessaryWithCompletion:v14];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __112__PKAppleCardUtilities_presentAppleCardSharingDetailsForAltDSID_viewController_hideUserDetailHeader_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _activeAccountUserWithAltDSID:*(a1 + 40)];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v3 = *(*(a1 + 32) + 32);
  v4 = *(*(a1 + 32) + 56);
  v5 = *(*(a1 + 32) + 40);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (!v3)
  {
    v17 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v18 = *(a1 + 40);
    *buf = 138412290;
    v25 = v18;
    v19 = "Cannot present apple card sharing details for user %@ since there is no account.";
    goto LABEL_13;
  }

  if (!v4)
  {
    v17 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v20 = *(a1 + 40);
    *buf = 138412290;
    v25 = v20;
    v19 = "Cannot present apple card sharing details for user %@ since there is no pass.";
    goto LABEL_13;
  }

  if (v2)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v7 = objc_alloc(MEMORY[0x1E69B8740]);
    v8 = [*(a1 + 32) _contactKeysToFetch];
    v9 = [v7 initWithContactStore:v6 keysToFetch:v8];

    v10 = [PKContactAvatarManager alloc];
    v11 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v12 = [(PKContactAvatarManager *)v10 initWithContactResolver:v9 paymentDataProvider:v11];

    v13 = [PKAccountUserDetailViewController alloc];
    LOBYTE(v23) = *(a1 + 64);
    v14 = [(PKAccountUserDetailViewController *)v13 initWithPaymentPass:v4 style:1 account:v3 accountUser:v2 familyMemberCollection:v5 avatarManager:v12 contactResolver:v9 hideUserDetailHeader:v23];
    v15 = [*(a1 + 48) navigationController];
    [v15 pushViewController:v14 animated:1];

    v16 = *(a1 + 56);
    if (v16)
    {
      (*(v16 + 16))(v16, 1);
    }

    goto LABEL_16;
  }

  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 40);
    *buf = 138412290;
    v25 = v21;
    v19 = "Cannot present apple card sharing details for user %@ since there is no account user.";
LABEL_13:
    _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
  }

LABEL_14:

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, 0);
  }

LABEL_16:
}

- (void)didUpdateFamilyMembers:(id)members
{
  membersCopy = members;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:membersCopy];

  familyMemberCollection = self->_familyMemberCollection;
  self->_familyMemberCollection = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)featureApplicationAdded:(id)added
{
  os_unfair_lock_lock(&self->_lock);
  sentInvitations = self->_sentInvitations;
  self->_sentInvitations = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)featureApplicationChanged:(id)changed
{
  os_unfair_lock_lock(&self->_lock);
  sentInvitations = self->_sentInvitations;
  self->_sentInvitations = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)featureApplicationRemoved:(id)removed
{
  os_unfair_lock_lock(&self->_lock);
  sentInvitations = self->_sentInvitations;
  self->_sentInvitations = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  os_unfair_lock_lock(&self->_lock);
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  accountIdentifier2 = [changedCopy accountIdentifier];
  account = accountIdentifier;
  v7 = accountIdentifier2;
  v8 = v7;
  if (account == v7)
  {

    goto LABEL_10;
  }

  if (account)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {

LABEL_11:
    goto LABEL_12;
  }

  v10 = [(PKAccount *)account isEqualToString:v7];

  if (v10)
  {
LABEL_10:
    v11 = changedCopy;
    account = self->_account;
    self->_account = v11;
    goto LABEL_11;
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)accountRemoved:(id)removed
{
  removedCopy = removed;
  os_unfair_lock_lock(&self->_lock);
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  accountIdentifier2 = [removedCopy accountIdentifier];

  account = accountIdentifier;
  v8 = accountIdentifier2;
  v9 = v8;
  if (account == v8)
  {

    goto LABEL_7;
  }

  if (!account || !v8)
  {

    goto LABEL_9;
  }

  v10 = [(PKAccount *)account isEqualToString:v8];

  if (v10)
  {
LABEL_7:
    account = self->_account;
    self->_account = 0;
LABEL_9:
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  userCollection = [(PKAccount *)self->_account accountIdentifier];
  v8 = identifierCopy;
  v9 = v8;
  if (userCollection == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !userCollection)
  {

    goto LABEL_9;
  }

  v10 = [(PKAccountUserCollection *)userCollection isEqualToString:v8];

  if (v10)
  {
LABEL_7:
    v11 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:changedCopy];
    userCollection = self->_userCollection;
    self->_userCollection = v11;
LABEL_9:
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_activeAccountUserWithAltDSID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PKAccountUserCollection *)self->_userCollection accountUserWithAltDSID:dCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (v5 && ([v5 accountState], (PKAccountStateIsTerminal() & 1) == 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_pendingSentInvitationWithAltDSID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  sentInvitations = self->_sentInvitations;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PKAppleCardUtilities__pendingSentInvitationWithAltDSID___block_invoke;
  v10[3] = &unk_1E8014968;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [(NSArray *)sentInvitations pk_firstObjectPassingTest:v10];
  os_unfair_lock_unlock(&self->_lock);
  if (v7 && ([v7 applicationState], (PKFeatureApplicationStateIsTerminal() & 1) == 0))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __58__PKAppleCardUtilities__pendingSentInvitationWithAltDSID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 invitationDetails];
  v4 = [v3 accountUserAltDSID];
  v5 = v2;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v5 isEqualToString:v6];
    }
  }

  return v9;
}

- (void)_fetchDataIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  objc_initWeak(location, self);
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_account;
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke;
    v24[3] = &unk_1E80149B8;
    objc_copyWeak(&v25, location);
    v24[4] = self;
    [v5 addOperation:v24];
    objc_destroyWeak(&v25);
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = self->_familyMemberCollection;
  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_49;
    v22[3] = &unk_1E80149B8;
    objc_copyWeak(&v23, location);
    v22[4] = self;
    [v5 addOperation:v22];
    objc_destroyWeak(&v23);
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = self->_userCollection;
  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_52;
    v20[3] = &unk_1E80149B8;
    objc_copyWeak(&v21, location);
    v20[4] = self;
    [v5 addOperation:v20];
    objc_destroyWeak(&v21);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = self->_sentInvitations;
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_55;
    v18[3] = &unk_1E80149B8;
    objc_copyWeak(&v19, location);
    v18[4] = self;
    [v5 addOperation:v18];
    objc_destroyWeak(&v19);
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = self->_pass;
  os_unfair_lock_unlock(&self->_lock);
  if (!v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_58;
    v16[3] = &unk_1E80149B8;
    objc_copyWeak(&v17, location);
    v16[4] = self;
    [v5 addOperation:v16];
    objc_destroyWeak(&v17);
  }

  null = [MEMORY[0x1E695DFB0] null];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_63;
  v14[3] = &unk_1E8014A58;
  v12 = completionCopy;
  v15 = v12;
  v13 = [v5 evaluateWithInput:null completion:v14];

  objc_destroyWeak(location);
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2;
    v11[3] = &unk_1E8014990;
    v11[4] = v9;
    v13 = v7;
    v12 = v6;
    [v10 defaultAccountForFeature:2 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKAppleCardUtilities acount: %@", &v6, 0xCu);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  (*(*(a1 + 48) + 16))();
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_49(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_50;
    v11[3] = &unk_1E80149E0;
    v11[4] = v9;
    v13 = v7;
    v12 = v6;
    [v10 familyMembersWithCompletion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_50(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKAppleCardUtilities family members: %@", &v8, 0xCu);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  (*(*(a1 + 48) + 16))();
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_52(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v9 = [*(*(a1 + 32) + 32) accountIdentifier];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_53;
    v12[3] = &unk_1E8014A08;
    v12[4] = v10;
    v14 = v7;
    v13 = v6;
    [v11 accountUsersForAccountWithIdentifier:v9 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_53(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKAppleCardUtilities users: %@", &v8, 0xCu);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  (*(*(a1 + 48) + 16))();
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_55(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v9 = [*(*(a1 + 32) + 32) accountIdentifier];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_56;
    v12[3] = &unk_1E80149E0;
    v12[4] = v10;
    v14 = v7;
    v13 = v6;
    [v11 featureApplicationsForAccountIdentifier:v9 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

uint64_t __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_56(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 2);
  v5 = [v4 pk_objectsPassingTest:&__block_literal_global_49];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(a1 + 32) + 64), v6);

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 64);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKAppleCardUtilities sentInvitations: %@", &v10, 0xCu);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  return (*(*(a1 + 48) + 16))();
}

BOOL __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 applicationType] == 2 && objc_msgSend(v2, "feature") == 2;

  return v3;
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_58(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v9 = [*(*(a1 + 32) + 32) accountIdentifier];
    v10 = [*(*(a1 + 32) + 32) associatedPassUniqueID];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v11 = [MEMORY[0x1E69B8A58] sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_60;
    v13[3] = &unk_1E8014A30;
    v13[4] = *(a1 + 32);
    v14 = v10;
    v16 = v7;
    v15 = v6;
    v12 = v10;
    [v11 paymentPassWithAssociatedAccountIdentifier:v9 completion:v13];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_60(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  os_unfair_lock_lock((a1[4] + 8));
  objc_storeStrong((a1[4] + 56), a2);
  if (!v4)
  {
    v5 = [MEMORY[0x1E69B8A58] sharedInstance];
    v6 = [v5 passWithUniqueID:a1[5]];
    v7 = [v6 paymentPass];
    v8 = a1[4];
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1[4] + 56);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKAppleCardUtilities pass: %@", &v12, 0xCu);
  }

  os_unfair_lock_unlock((a1[4] + 8));
  (*(a1[7] + 16))();
}

void __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_63(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_64;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __60__PKAppleCardUtilities__fetchDataIfNecessaryWithCompletion___block_invoke_2_64(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_contactKeysToFetch
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v11[0] = v2;
  v3 = _MergedGlobals_617();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v11[1] = v5;
  descriptorForRequiredKeys = [off_1EE98A650() descriptorForRequiredKeys];
  v11[2] = descriptorForRequiredKeys;
  descriptorForRequiredKeys2 = [off_1EE98A658() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C208];
  v11[3] = descriptorForRequiredKeys2;
  v11[4] = v8;
  v11[5] = *MEMORY[0x1E695C330];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

@end