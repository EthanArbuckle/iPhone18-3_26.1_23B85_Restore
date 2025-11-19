@interface UIFont(PKPeerPaymentAdditions)
+ (BOOL)pk_loadFontWithFileName:()PKPeerPaymentAdditions extension:;
+ (id)pk_fdicSignageFont;
+ (id)pk_peerPaymentCashFontOfSize:()PKPeerPaymentAdditions;
+ (id)pk_peerPaymentChiseledCashFontOfSize:()PKPeerPaymentAdditions;
+ (id)pk_textCondensedMediumCashFontOfSize:()PKPeerPaymentAdditions;
+ (id)pk_textCondensedRegularCashFontOfSize:()PKPeerPaymentAdditions;
+ (id)pk_textCondensedSemiboldCashFontOfSize:()PKPeerPaymentAdditions;
+ (uint64_t)pk_loadFDICSignageFont;
+ (uint64_t)pk_loadPeerPaymentCashFont;
+ (uint64_t)pk_loadTextCondensedMediumCashFont;
+ (uint64_t)pk_loadTextCondensedRegularCashFont;
+ (uint64_t)pk_loadTextCondensedSemiboldCashFont;
- (id)pk_fixedWidthFont;
@end

@implementation UIFont(PKPeerPaymentAdditions)

+ (uint64_t)pk_loadPeerPaymentCashFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__UIFont_PKPeerPaymentAdditions__pk_loadPeerPaymentCashFont__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pk_loadPeerPaymentCashFont_onceToken != -1)
  {
    dispatch_once(&pk_loadPeerPaymentCashFont_onceToken, block);
  }

  return pk_loadPeerPaymentCashFont_result;
}

+ (BOOL)pk_loadFontWithFileName:()PKPeerPaymentAdditions extension:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&dword_25E0A9000, v7, OS_LOG_TYPE_DEFAULT, "Registering peer payment font: %{public}@.", buf, 0xCu);
  }

  v8 = PKPassKitUIFoundationBundle();
  v9 = [v8 URLForResource:v5 withExtension:v6];

  if (v9)
  {
    error = 0;
    v10 = CTFontManagerRegisterFontsForURL(v9, kCTFontManagerScopeProcess, &error);
    if (!v10)
    {
      v11 = CFErrorCopyDescription(error);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v16 = v5;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_25E0A9000, v7, OS_LOG_TYPE_DEFAULT, "Failed to register font %{public}@ with error %@.", buf, 0x16u);
      }

      if (error)
      {
        CFRelease(error);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (uint64_t)pk_loadFDICSignageFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__UIFont_PKPeerPaymentAdditions__pk_loadFDICSignageFont__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pk_loadFDICSignageFont_onceToken != -1)
  {
    dispatch_once(&pk_loadFDICSignageFont_onceToken, block);
  }

  return pk_loadFDICSignageFont_result;
}

+ (id)pk_fdicSignageFont
{
  if ([a1 pk_loadFDICSignageFont])
  {
    v1 = [objc_opt_class() fontWithName:@"Source Sans 3" size:12.8];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (id)pk_peerPaymentCashFontOfSize:()PKPeerPaymentAdditions
{
  if ([a1 pk_loadPeerPaymentCashFont])
  {
    v3 = [objc_opt_class() fontWithName:@"SFCash-Plain" size:a2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)pk_peerPaymentChiseledCashFontOfSize:()PKPeerPaymentAdditions
{
  v2 = +[PKPeerPaymentFontHelper chiseledCashFontDescriptor];
  if (v2)
  {
    v3 = [objc_opt_class() fontWithDescriptor:v2 size:a1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (uint64_t)pk_loadTextCondensedRegularCashFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedRegularCashFont__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pk_loadTextCondensedRegularCashFont_onceToken != -1)
  {
    dispatch_once(&pk_loadTextCondensedRegularCashFont_onceToken, block);
  }

  return pk_loadTextCondensedRegularCashFont_result;
}

+ (id)pk_textCondensedRegularCashFontOfSize:()PKPeerPaymentAdditions
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([a1 pk_loadTextCondensedRegularCashFont])
  {
    v3 = *MEMORY[0x277D74340];
    v17[0] = @"SFCashTextCondensed-Regular";
    v4 = *MEMORY[0x277D74338];
    v16[0] = v3;
    v16[1] = v4;
    v5 = *MEMORY[0x277D74388];
    v13[0] = *MEMORY[0x277D74398];
    v13[1] = v5;
    v14[0] = &unk_286FD0F08;
    v14[1] = &unk_286FD0F20;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v15 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v17[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v9 = [MEMORY[0x277D74310] fontDescriptorWithFontAttributes:v8];
    v10 = [objc_opt_class() fontWithDescriptor:v9 size:a2];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (uint64_t)pk_loadTextCondensedSemiboldCashFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedSemiboldCashFont__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pk_loadTextCondensedSemiboldCashFont_onceToken != -1)
  {
    dispatch_once(&pk_loadTextCondensedSemiboldCashFont_onceToken, block);
  }

  return pk_loadTextCondensedSemiboldCashFont_result;
}

+ (id)pk_textCondensedSemiboldCashFontOfSize:()PKPeerPaymentAdditions
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([a1 pk_loadTextCondensedSemiboldCashFont])
  {
    v3 = *MEMORY[0x277D74340];
    v17[0] = @"SFCashTextCondensed-Semibold";
    v4 = *MEMORY[0x277D74338];
    v16[0] = v3;
    v16[1] = v4;
    v5 = *MEMORY[0x277D74388];
    v13[0] = *MEMORY[0x277D74398];
    v13[1] = v5;
    v14[0] = &unk_286FD0F08;
    v14[1] = &unk_286FD0F20;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v15 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v17[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v9 = [MEMORY[0x277D74310] fontDescriptorWithFontAttributes:v8];
    v10 = [objc_opt_class() fontWithDescriptor:v9 size:a2];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (uint64_t)pk_loadTextCondensedMediumCashFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__UIFont_PKPeerPaymentAdditions__pk_loadTextCondensedMediumCashFont__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (pk_loadTextCondensedMediumCashFont_onceToken != -1)
  {
    dispatch_once(&pk_loadTextCondensedMediumCashFont_onceToken, block);
  }

  return pk_loadTextCondensedMediumCashFont_result;
}

+ (id)pk_textCondensedMediumCashFontOfSize:()PKPeerPaymentAdditions
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([a1 pk_loadTextCondensedMediumCashFont])
  {
    v3 = *MEMORY[0x277D74340];
    v17[0] = @"SFCashTextCondensed-Medium";
    v4 = *MEMORY[0x277D74338];
    v16[0] = v3;
    v16[1] = v4;
    v5 = *MEMORY[0x277D74388];
    v13[0] = *MEMORY[0x277D74398];
    v13[1] = v5;
    v14[0] = &unk_286FD0F08;
    v14[1] = &unk_286FD0F20;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v15 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v17[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v9 = [MEMORY[0x277D74310] fontDescriptorWithFontAttributes:v8];
    v10 = [objc_opt_class() fontWithDescriptor:v9 size:a2];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)pk_fixedWidthFont
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D74388];
  v16[0] = *MEMORY[0x277D74398];
  v16[1] = v2;
  v17[0] = &unk_286FD0F38;
  v17[1] = &unk_286FD0F20;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v4 = *MEMORY[0x277D74338];
  v13 = v3;
  v14 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v15 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v7 = [a1 fontDescriptor];
  v8 = [v7 fontDescriptorByAddingAttributes:v6];

  v9 = MEMORY[0x277D74300];
  [v8 pointSize];
  v10 = [v9 fontWithDescriptor:v8 size:?];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end