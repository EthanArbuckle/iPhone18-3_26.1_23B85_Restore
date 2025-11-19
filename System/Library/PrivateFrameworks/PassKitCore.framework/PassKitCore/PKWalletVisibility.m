@interface PKWalletVisibility
+ (BOOL)isWalletRestricted;
+ (BOOL)isWalletVisible;
+ (id)setOfActiveRestrictionUUIDs;
+ (void)updateWalletVisibility;
@end

@implementation PKWalletVisibility

+ (BOOL)isWalletVisible
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (PKCurrentPassbookState() == 1)
  {
    v2 = dispatch_semaphore_create(0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__PKWalletVisibility_isWalletVisible__block_invoke;
    v6[3] = &unk_1E79DC3F8;
    v7 = v2;
    v8 = &v9;
    v3 = v2;
    _GetPrimaryAppleAccountAttributes(1, v6);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  }

  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

+ (void)updateWalletVisibility
{
  if (PKPassbookIsSupported())
  {
    v2 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Updating Wallet visibility restriction...", v3, 2u);
    }

    _GetPrimaryAppleAccountAttributes(0, &__block_literal_global_167);
  }
}

void __44__PKWalletVisibility_updateWalletVisibility__block_invoke(uint64_t a1, int a2, char a3)
{
  v3 = 0;
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && (a3 & 1) == 0)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *MEMORY[0x1E69ADDE8];
    *buf = @"com.apple.Passbook";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    [v3 MCSetUnionRestriction:v4 values:v5];
  }

  v6 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Restricted";
    if (!v3)
    {
      v7 = @"Unrestricted";
    }

    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Wallet visibility: %{public}@", buf, 0xCu);
  }

  if (qword_1ED6D1F40 != -1)
  {
    dispatch_once(&qword_1ED6D1F40, &__block_literal_global_47);
  }

  v8 = qword_1ED6D1F48;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PKWalletVisibility_updateWalletVisibility__block_invoke_2;
  block[3] = &unk_1E79C4E28;
  v11 = v3;
  v9 = v3;
  dispatch_async(v8, block);
}

void __44__PKWalletVisibility_updateWalletVisibility__block_invoke_44()
{
  v0 = dispatch_queue_create("com.apple.passkitcore.wallet.visibility.restriction", 0);
  v1 = qword_1ED6D1F48;
  qword_1ED6D1F48 = v0;
}

void __44__PKWalletVisibility_updateWalletVisibility__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = *(a1 + 32);
  v6 = 0;
  [v2 applyRestrictionDictionary:v3 clientType:@"com.apple.Passbook" clientUUID:@"com.apple.Passbook" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Wallet visibility: failed to apply restrictions with error %@", buf, 0xCu);
    }
  }
}

+ (BOOL)isWalletRestricted
{
  v2 = [MEMORY[0x1E69ADFC8] sharedManager];
  v3 = [v2 unionValuesForFeature:*MEMORY[0x1E69ADDE8]];

  LOBYTE(v2) = [v3 containsObject:@"com.apple.Passbook"];
  return v2;
}

+ (id)setOfActiveRestrictionUUIDs
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__58;
  v18 = __Block_byref_object_dispose__58;
  v19 = [MEMORY[0x1E695DFA8] set];
  v2 = dispatch_semaphore_create(0);
  if (PKPassbookIsSupported())
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __49__PKWalletVisibility_setOfActiveRestrictionUUIDs__block_invoke;
    v11 = &unk_1E79DC3F8;
    v13 = &v14;
    v3 = v2;
    v12 = v3;
    _GetPrimaryAppleAccountAttributes(1, &v8);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  }

  [v15[5] addObject:{@"com.apple.passbook.upgradedpasscoderestriction", v8, v9, v10, v11}];
  [v15[5] addObject:@"com.apple.passbook.allowwhenlocked"];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v15[5];
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Wallet visibility: returning active restrictions: %@", buf, 0xCu);
  }

  v6 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v6;
}

intptr_t __49__PKWalletVisibility_setOfActiveRestrictionUUIDs__block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2 && (a3 & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:@"com.apple.Passbook"];
    [*(*(*(a1 + 40) + 8) + 40) addObject:@"com.apple.Passbook"];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

@end