void PKSetRegionFeatureOverride(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_ui())
  {
    _PKSetGlobalValueForKey(v1, @"PKRegionFeatureOverrideKey");
  }
}

uint64_t PKBypassImmoTokenCountCheck()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKBypassImmoTokenCountCheckKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKForceSignDataApplicationStateForegroundRunningCheck()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForceSignDataApplicationStateForegroundRunningCheckKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKHidePlaceholderImageIniMessage()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKIncludePlaceholderImageIniMessageKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKMerchantTokensDemoModeEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMerchantTokensDemoModeEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKMerchantTokensPagedDemoEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMerchantTokensPagedDemoEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKMerchantTokensAMPTransactionDemoEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMerchantTokensAMPTransactionDemoEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKMerchantTokensCashDemoEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMerchantTokensCashDemoEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKSetMerchantTokenUpcomingPaymentNotificationsEnabled(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKMerchantTokenUpcomingPaymentNotificationsEnabled", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKNearbyPeerPaymentEncryptionOIDValue()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKNearbyPeerPaymentEncryptionOIDValueKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t PKMerchantTokensForceMerchantIconsEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMerchantTokensForceMerchantIconsEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKMerchantTokensUseAltIcon()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMerchantTokensUseAltIconKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetMerchantTokensUseAltIcon(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  _PKSetGlobalValueForKey(v1, @"PKMerchantTokensUseAltIconKey");
}

BOOL PKVirtualCardFakeVirtualCardsEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKVirtualCardFakeVirtualCardsEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
}

BOOL PKVirtualCardFakeCredentialsEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKVirtualCardFakeCredentialsEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
}

id PKVirtualCardFakeCashVPANBalance()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKVirtualCardFakeCashVPANBalance", *MEMORY[0x1E695E890]);

  return v0;
}

BOOL PKVirtualCardFakeCredentialsWithDelayEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKVirtualCardFakeCredentialsWithDelayEnabled", *MEMORY[0x1E695E890], 0) != 0;
}

uint64_t PKFPANCredentialProvisioningConsented()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKSafariCredentialProvisioningConsented", @"com.apple.Wallet", &keyExistsAndHasValidFormat);
  v1 = 1;
  if (!AppBooleanValue)
  {
    v1 = 2;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

BOOL PKFPANInitialEligibilityPerformed()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKFPANInitialEligibilityCheckPerformedKey", *MEMORY[0x1E695E890], 0) != 0;
}

void PKSetFPANInitialEligibilityPerformed(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  _PKSetGlobalValueForKey(v1, @"PKFPANInitialEligibilityCheckPerformedKey");
}

void PKSetFPANCredentialImportConsented(int a1)
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v2 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"PKSafariCredentialProvisioningConsented", *v2, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Wallet.preferenceschanged", 0, 0, 1u);
}

void PKClearFPANCredentialImportConsented()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  CFPreferencesSetAppValue(@"PKSafariCredentialProvisioningConsented", 0, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Wallet.preferenceschanged", 0, 0, 1u);
}

BOOL PKFPANCredentialProvisioningRequestConsentNotified()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKSafariCredentialProvisioningRequestConsentNotified", @"com.apple.Wallet", 0) != 0;
}

void PKSetFPANCredentialImportRequestConsentNotified(int a1)
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v2 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"PKSafariCredentialProvisioningRequestConsentNotified", *v2, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Wallet.preferenceschanged", 0, 0, 1u);
}

uint64_t PKAppleBalanceDemoAccountEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKAppleBalanceDemoAccountEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKAppleBalanceBackgroundProvisionDisabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKAppleBalanceBackgroundProvisionDisabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKAppleBalanceNativeTopUpEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKAppleBalanceNativeTopUpEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKAppleBalanceInStoreSignatureVerificationDisabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKAppleBalanceInStoreSignatureVerificationDisabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentOffersForceFeatureSupport()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPaymentOffersForceFeatureSupportKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetPaymentOffersForceFeatureSupport(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  _PKSetGlobalValueForKey(v1, @"PKPaymentOffersForceFeatureSupportKey");
}

BOOL PKSavingsDemoAccountEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKSavingsDemoAccountEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
}

CFIndex PKSavingsGraphOverrideCurrentType()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppIntegerValue(@"PKSavingsGraphOverrideKey", @"com.apple.stockholm", 0);
}

void PKSetSavingsGraphOverrideType(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  CFPreferencesSetAppValue(@"PKSavingsGraphOverrideKey", v1, @"com.apple.stockholm");
  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

CFIndex PKLastSelectedAccountGraphRange()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"PKSelectedAccountGraphRangeKey", @"com.apple.Wallet", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 4;
  }

  return result;
}

void PKSetLastSelectedAccountGraphRange(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  CFPreferencesSetAppValue(@"PKSelectedAccountGraphRangeKey", v1, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKSavingsBusinessChatIdentifierOverride()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKSavingsBusinessChatIdentifierOverrideKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void PKSetSavingsBusinessChatIdentifierOverride(void *a1)
{
  v4 = a1;
  if (os_variant_has_internal_ui())
  {
    if ([v4 length])
    {
      v1 = v4;
    }

    else
    {
      v1 = 0;
    }

    v2 = v1;

    _PKSetGlobalValueForKey(v2, @"PKSavingsBusinessChatIdentifierOverrideKey");
    v3 = v2;
  }

  else
  {
    v3 = v4;
  }
}

unint64_t PKDemoRewardsRedemptionType()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = CFPreferencesGetAppIntegerValue(@"PKDemoRewardsDestinationKey", @"com.apple.stockholm", 0);
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

void PKSetDemoRewardsRedemptionType(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  CFPreferencesSetAppValue(@"PKDemoRewardsDestinationKey", v1, @"com.apple.stockholm");
  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

BOOL PKExperimentationOverrideEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKExperimentationOverrideKey", *MEMORY[0x1E695E890], 0) != 0;
}

id PKLastGeneratedStoreDemoTransactionsDate()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKLastGeneratedStoreDemoTransactionsDate", *MEMORY[0x1E695E890]);

  return v0;
}

uint64_t PKProvisioningForceAccessStyle()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKProvisioningForceAccessStyle", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKShouldSuppressPeerPaymentBalanceReminder()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShouldSuppressPeerPaymentBalanceReminderKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetShouldSuppressPeerPaymentBalanceReminder(int a1)
{
  if (os_variant_has_internal_ui())
  {
    if (a1)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;
    _PKSetGlobalValueForKey(v2, @"PKShouldSuppressPeerPaymentBalanceReminderKey");
  }
}

void PKSetOverrideDeviceName(void *a1)
{
  v4 = a1;
  if (os_variant_has_internal_ui())
  {
    if ([v4 length])
    {
      v1 = v4;
    }

    else
    {
      v1 = 0;
    }

    v2 = v1;

    _PKSetGlobalValueForKey(v2, @"PKOverrideDeviceNameKey");
    v3 = v2;
  }

  else
  {
    v3 = v4;
  }
}

uint64_t PKForceNewInstallmentDashboardModule()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKForceNewInstallmentDashboardModuleKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetForceNewInstallmentDashboardModule(int a1)
{
  if (os_variant_has_internal_ui())
  {
    if (a1)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;
    _PKSetGlobalValueForKey(v2, @"PKForceNewInstallmentDashboardModuleKey");
  }
}

uint64_t PKForceNewInstallmentBillPaymentScreen()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKForceNewInstallmentBillPaymentScreenKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetForceNewInstallmentBillPaymentScreen(int a1)
{
  if (os_variant_has_internal_ui())
  {
    if (a1)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;
    _PKSetGlobalValueForKey(v2, @"PKForceNewInstallmentBillPaymentScreenKey");
  }
}

id PKForceAccountDueDateNumberDaysFromNow()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKSetForceAccountDueDateNumberDaysFromNowKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void PKSetForceAccountDueDateNumberDaysFromNow(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_ui())
  {
    _PKSetGlobalValueForKey(v1, @"PKSetForceAccountDueDateNumberDaysFromNowKey");
  }
}

void PKSetNumberInstallmentDemoPayments(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_ui())
  {
    _PKSetGlobalValueForKey(v1, @"PKNumberInstallmentDemoPaymentsKey");
  }
}

id PKNumberInstallmentDemoPayments()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKNumberInstallmentDemoPaymentsKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void PKSetDoubleClickAllowed(uint64_t a1)
{
  if (PKRunningInPassd())
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    _PKSetGlobalValueForKey(v2, @"PKDoubleClickAllowed");
  }

  else
  {
    v2 = +[PKPaymentService paymentService];
    [v2 setDoubleClickAllowed:a1];
  }
}

void PKSetHasSeenApplePayEducation(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PKHasSeenApplePayEducationKey", v1, @"com.apple.stockholm");
  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

BOOL PKHandoffPaymentsDisabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKHandoffPaymentsDisabled", *MEMORY[0x1E695E890], 0) != 0;
}

void PKSetHandoffPaymentsDisabled(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  _PKSetGlobalValueForKey(v1, @"PKHandoffPaymentsDisabled");
}

uint64_t PKSetHidePayLaterOptions(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (a1)
    {
      v3 = @"YES";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Updating the hide pay later option to %@", &v5, 0xCu);
  }

  CFPreferencesSetAppValue(@"PKHidePayLaterOptionsKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.stockholm");
  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t PKSetHideCardBenefitPayLater(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (a1)
    {
      v3 = @"YES";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Updating the hide card benefit pay later option to %@", &v5, 0xCu);
  }

  CFPreferencesSetAppValue(@"PKHideCardBenefitPayLaterKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.stockholm");
  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t PKSetHideCardBenefitRewards(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (a1)
    {
      v3 = @"YES";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Updating the hide card benefit rewards option to %@", &v5, 0xCu);
  }

  CFPreferencesSetAppValue(@"PKHideCardBenefitRewardsKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.stockholm");
  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t PKSetHideCardBenefitMerchandisingOffers(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (a1)
    {
      v3 = @"YES";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Updating the hide card benefit merchandising offers option to %@", &v5, 0xCu);
  }

  CFPreferencesSetAppValue(@"PKHideCardBenefitMerchandisingOffersKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.stockholm");
  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t _PKHasSeenPaymentOfferExplanationScreenForKey(const __CFString *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (a1 && v5)
  {
    v8 = CFPreferencesCopyAppValue(a1, @"com.apple.Wallet");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!a3)
      {
        v7 = [v8 containsObject:v6];
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:v6];
        v10 = PKPaymentOffersSessionDetailsContextToString(a3);
        v7 = [v9 containsObject:v10];

        goto LABEL_9;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

void _PKSetHasSeenPaymentOfferExplanationScreenForKey(void *a1, void *a2, int a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v7 || !v8)
  {
    goto LABEL_26;
  }

  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v10 = CFPreferencesCopyAppValue(v7, @"com.apple.Wallet");
  objc_opt_class();
  v11 = 0x1E695D000uLL;
  if (objc_opt_isKindOfClass())
  {
    v25 = a4;
    v26 = a3;
    v27 = v10;
    v28 = v9;
    v12 = v10;
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = PKPaymentOffersSessionDetailsContextToString(0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v33 = v14;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:{1, v25}];
          [v13 setObject:v21 forKeyedSubscript:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v17);
    }

    v10 = v27;
    v9 = v28;
    a3 = v26;
    a4 = v25;
    v11 = 0x1E695D000;
    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v10 mutableCopy];
      if (v13)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = objc_alloc_init(*(v11 + 3984));
LABEL_18:
  v22 = PKPaymentOffersSessionDetailsContextToString(a4);
  v23 = [v13 objectForKeyedSubscript:v9];
  v24 = [v23 mutableCopy];

  if (!v24)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v13 setObject:v24 forKeyedSubscript:{v9, v25}];
  if (a3)
  {
    if (([v24 containsObject:v22] & 1) == 0)
    {
      [v24 addObject:v22];
    }
  }

  else
  {
    [v24 removeObject:v22];
    if (![v24 count])
    {
      [v13 removeObjectForKey:v9];
    }
  }

  CFPreferencesSetAppValue(v7, v13, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");

LABEL_26:
}

void _PKRemoveHasSeenPaymentOfferExplanationScreenForKey(void *a1, void *a2)
{
  key = a1;
  v3 = a2;
  if (key && v3)
  {
    v4 = CFPreferencesCopyAppValue(key, @"com.apple.Wallet");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 mutableCopy];
      [v5 removeObject:v3];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

      v5 = [v4 mutableCopy];
      [v5 removeObjectForKey:v3];
    }

    v6 = [v5 copy];
    CFPreferencesSetAppValue(key, v6, @"com.apple.Wallet");

    CFPreferencesAppSynchronize(@"com.apple.Wallet");
    goto LABEL_8;
  }

LABEL_9:
}

uint64_t PKRemoveAllHasSeenPaymentOfferInstallmentPartnerExplanationScreen()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  CFPreferencesSetAppValue(@"PKHasSeenInstallmentPartnerExplanationScreenKey", 0, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKRemoveAllHasSeenPaymentOfferRewardsExplanationScreen()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  CFPreferencesSetAppValue(@"PKHasSeenRewardsExplanationScreenKey", 0, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKForceHandoffPayment()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKForceHandoffPayment", *MEMORY[0x1E695E890], 0) != 0;
}

BOOL PKOrderManagementDisabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKOrderManagementDisabled", *MEMORY[0x1E695E890], 0) != 0;
}

void PKSetOrderManagementDisabled(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (a1)
    {
      v3 = @"YES";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Changing order management disablement to %@", &v5, 0xCu);
  }

  if (a1)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v4 = 0;
  }

  _PKSetGlobalValueForKey(v4, @"PKOrderManagementDisabled");
}

uint64_t PKSetOrderManagementNotificationsDisabled(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (a1)
    {
      v3 = @"YES";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Changing order management notifications disablement to %@", &v5, 0xCu);
  }

  CFPreferencesSetAppValue(@"PKOrderManagementNotificationsDisabled", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");
  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKIsRegionWhereMarketingTogglesMustBeOffByDefault(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"CA"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"KR"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"DE"];
  }

  return v2;
}

uint64_t PKSetNewFeaturesNotificationsDisabled(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKNewFeaturesNotificationsDisabled", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKOffersNotificationsDisabled()
{
  if (CFPreferencesGetAppBooleanValue(@"PKMarketingTogglesSetByUserKey", @"com.apple.Wallet", 0))
  {
    return CFPreferencesGetAppBooleanValue(@"PKOffersNotificationsDisabled", @"com.apple.Wallet", 0) != 0;
  }

  v1 = PKCurrentRegion();
  MustBeOffByDefault = PKIsRegionWhereMarketingTogglesMustBeOffByDefault(v1);

  return MustBeOffByDefault;
}

uint64_t PKSetOffersNotificationsDisabled(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKMarketingTogglesSetByUserKey", MEMORY[0x1E695E118], @"com.apple.Wallet");
  CFPreferencesSetAppValue(@"PKOffersNotificationsDisabled", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

void PKSetExpiredPassesDisabledByUser(uint64_t a1)
{
  v1 = a1;
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v7 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1AD337000, &v5->super, OS_LOG_TYPE_DEFAULT, "Error writing expired passes settings to keychain: %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [[PKKeychainItemWrapper alloc] initWithIdentifier:@"PKExpiredPassesDisabledKeychainKey" accessGroup:@"com.apple.passd" serviceName:@"com.apple.passd.expired-passes" type:1 invisible:0];
    [(PKKeychainItemWrapper *)v5 setLabel:@"com.apple.passd.expired-passes"];
    [(PKKeychainItemWrapper *)v5 setObject:v3 forKey:*MEMORY[0x1E697B3C0]];
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = v1;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Wrote expired passes settings to keychain with value PKExpiredPassesDisabledByUser: %ld", buf, 0xCu);
    }
  }
}

id PKFakeCardholderName()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKFakeCardholderNameKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id PKFakeTransactionMerchant()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKFakeTransactionMerchantKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id PKFakeTransactionLocality()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKFakeTransactionLocalityKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id PKFakeTransactionAdministrativeArea()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKFakeTransactionAdministrativeAreaKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id PKFakeTransactionCurrencyCode()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKFakeTransactionCurrencyCodeKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id PKFakeTransactionAmount()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKFakeTransactionAmountKey", *MEMORY[0x1E695E890]);
    if (v0)
    {
      v1 = [MEMORY[0x1E696AB90] decimalNumberWithString:v0];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id PKFieldValueAddedServiceModeOverride()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKFieldValueAddedServiceModeOverrideKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void PKDisableAutomaticRegistration(uint64_t a1)
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PKWalletShouldAutomaticallyRegisterKey", v2, @"com.apple.stockholm");
  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

BOOL PKAutomaticRegistrationDisabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKWalletShouldAutomaticallyRegisterKey", @"com.apple.stockholm", 0) != 0;
}

void PKDisableCloudKitEnvironmentChangeHandling(uint64_t a1)
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PKDisableCloudKitEnvironmentChangeHandlingKey", v2, @"com.apple.stockholm");
  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

BOOL PKIsCloudKitEnvironmentChangeHandlingDisabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKDisableCloudKitEnvironmentChangeHandlingKey", @"com.apple.stockholm", 0) != 0;
}

uint64_t PKHideAddCardInOsloChooseCardsScreen()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKHideAddCardInOsloChooseCardsScreenKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetPeerPaymentServiceOverrideURL(void *a1)
{
  value = a1;
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    CFPreferencesSetAppValue(@"PKPeerPaymentServiceURL", value, *MEMORY[0x1E695E890]);
  }
}

id PKPeerPaymentServiceForceTermsURL()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  if (os_variant_has_internal_ui())
  {
    v0 = CFPreferencesCopyAppValue(@"PKPeerPaymentForceTermsURL", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  if ([v0 length])
  {
    v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t PKEnableMerchantReprocessingLogging()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKEnableMerchantReprocessingLogging", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

id PKApplyServiceOverrideURL()
{
  if (os_variant_has_internal_ui())
  {
    v0 = CFPreferencesCopyAppValue(@"PKApplyServiceOverrideURL", *MEMORY[0x1E695E890]);
    if (v0)
    {
      v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PKSetApplyServiceOverrideURL(void *a1)
{
  value = a1;
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    CFPreferencesSetAppValue(@"PKApplyServiceOverrideURL", value, *MEMORY[0x1E695E890]);
  }
}

id PKAccountServiceOverrideURL()
{
  if (os_variant_has_internal_ui())
  {
    v0 = CFPreferencesCopyAppValue(@"PKAccountServiceOverrideURL", *MEMORY[0x1E695E890]);
    if (v0)
    {
      v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PKSetAccountServiceOverrideURL(void *a1)
{
  value = a1;
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    CFPreferencesSetAppValue(@"PKAccountServiceOverrideURL", value, *MEMORY[0x1E695E890]);
  }
}

id PKDiscoveryManifestOverrideURL()
{
  if (os_variant_has_internal_ui())
  {
    v0 = CFPreferencesCopyAppValue(@"PKDiscoveryManifestOverrideURL", *MEMORY[0x1E695E890]);
    if (v0)
    {
      v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PKSetDiscoveryManifestOverrideURL(void *a1)
{
  v2 = a1;
  if (os_variant_has_internal_ui())
  {
    if ([v2 length])
    {
      v1 = v2;
    }

    else
    {

      v1 = 0;
    }

    v2 = v1;
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
      v1 = v2;
    }

    CFPreferencesSetAppValue(@"PKDiscoveryManifestOverrideURL", v1, *MEMORY[0x1E695E890]);
  }
}

uint64_t PKIsUserPropertyOverrideEnabled()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    v1 = CFPreferencesCopyAppValue(@"PKIsUserPropertyOverrideEnabledKey", *MEMORY[0x1E695E890]);
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t PKIsAPNSDevelopmentEnvironmentEnabled()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    v1 = CFPreferencesCopyAppValue(@"PKIsAPNSDevelopmentEnvironmentEnabled", @"com.apple.stockholm");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

id PKCIPInputFile()
{
  if (os_variant_has_internal_ui())
  {
    v0 = CFPreferencesCopyAppValue(@"PKCIPInputFile", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void PKSetCIPInputFile(void *a1)
{
  value = a1;
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    CFPreferencesSetAppValue(@"PKCIPInputFile", value, *MEMORY[0x1E695E890]);
  }
}

uint64_t PKCIPSaveImages()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKCIPSaveImages", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetCIPSaveImages(int a1)
{
  if (os_variant_has_internal_ui())
  {
    v2 = MEMORY[0x1E695E118];
    if (!a1)
    {
      v2 = 0;
    }

    v3 = _InstallGlobalPreferencesObserverIfNecessary_onceToken;
    v4 = v2;
    v6 = v4;
    if (v3 == -1)
    {
      v5 = v4;
    }

    else
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
      v5 = v6;
    }

    CFPreferencesSetAppValue(@"PKCIPSaveImages", v5, *MEMORY[0x1E695E890]);
  }
}

void PKPeerPaymentSetGroupDisclosureWarningSeen(int a1)
{
  if (os_variant_has_internal_ui())
  {
    v2 = MEMORY[0x1E695E118];
    if (!a1)
    {
      v2 = 0;
    }

    v3 = _InstallGlobalPreferencesObserverIfNecessary_onceToken;
    v4 = v2;
    v6 = v4;
    if (v3 == -1)
    {
      v5 = v4;
    }

    else
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
      v5 = v6;
    }

    CFPreferencesSetAppValue(@"PKPeerPaymentGroupDisclosureWarning", v5, *MEMORY[0x1E695E890]);
  }
}

uint64_t PKDisableSURFBubbleMotion()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKDisableSURFBubbleMotion", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKEnableSURFLiveBubbleDebugMode()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKEnableSURFLiveBubbleDebugMode", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPeerPaymentSkipFamilySharingVersionCheck()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPeerPaymentSkipFamilySharingVersionCheck", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPeerPaymentDisableRecurringDateRestrictions()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPeerPaymentDisableRecurringDateRestrictionsKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPeerPaymentDisableInvalidQuoteEnforcement()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPeerPaymentDisableInvalidQuoteEnforcementKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPeerPaymentAllowUploadIDVImageFromWalletTest()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPeerPaymentAllowUploadIDVImageFromWalletTestKey", @"com.apple.Wallet", 0) != 0;
  }

  return result;
}

uint64_t PKPeerPaymentHighResIDVImage()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPeerPaymentHighResIDVImage", @"com.apple.Wallet", 0) != 0;
  }

  return result;
}

double PKPeerPaymentGroupRequestExpirationOverride()
{
  v0 = 0.0;
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v1 = CFPreferencesCopyAppValue(@"PKPeerPaymentGroupRequestExpirationOverrideKey", @"com.apple.Wallet");
    v2 = v1;
    if (v1)
    {
      v0 = [v1 integerValue] * -60.0;
    }
  }

  return v0;
}

void PKSetCloudSyncingToggleDidUpgrade(int a1)
{
  v1 = MEMORY[0x1E695E118];
  if (!a1)
  {
    v1 = 0;
  }

  v2 = _InstallGlobalPreferencesObserverIfNecessary_onceToken;
  v3 = v1;
  v5 = v3;
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    v4 = v5;
  }

  CFPreferencesSetAppValue(@"PKCloudSyncingToggleDidUpgradeKey", v4, @"com.apple.Wallet");
}

uint64_t PKForceCloudStoreInitializationFailure()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKForceCloudStoreInitializationFailureKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKForceCloudStoreRecordDownloadFailure()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKForceCloudStoreRecordDownloadFailureKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKForceURLSessionRemoteAssetDownloadTaskFailure()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKForceURLSessionRemoteAssetDownloadTaskFailureKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKAllowPassUpdatesWithMissingRequiredRemoteAssets()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKAllowPassUpdatesWithMissingRequiredRemoteAssetsKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKSetDisableContainerChangeEvents(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKDisableContainerChangeEventsKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKUserCanResetApplePayManateeView()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKUserCanResetApplePayManateeViewKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

BOOL PKUserHasDisabledPeerPayment()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKUserHasDisabledPeerPaymentKey", *MEMORY[0x1E695E890], 0) != 0;
}

void PKSetUserHasDisabledPeerPayment(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  _PKSetGlobalValueForKey(v1, @"PKUserHasDisabledPeerPaymentKey");
}

uint64_t PKBroadwayDisableDynamicCardBlur()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKBroadwayDisableDynamicCardBlurKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKBroadwayAllowOverpaymentViaKeypadKey()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKBroadwayAllowOverpaymentViaKeypadKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetPaymentSetupProductState(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_ui())
  {
    _PKSetGlobalValueForKey(v1, @"PKPaymentSetupProductStateOverrideKey");
  }
}

id PKGetPaymentSetupProductState()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKPaymentSetupProductStateOverrideKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t PKDiscoveryForceIgnoreCEOCards()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKDiscoveryForceIgnoreCEOCards", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKToggleDiscoveryForceIgnoreCEOCards()
{
  if (os_variant_has_internal_ui())
  {
    v0 = [MEMORY[0x1E696AD98] numberWithBool:PKDiscoveryForceIgnoreCEOCards() ^ 1];
    _PKSetGlobalValueForKey(v0, @"PKDiscoveryForceIgnoreCEOCards");
  }
}

BOOL PKDiscoveryShouldProcessLocaleChange()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKDiscoveryShouldProcessLocaleChangeKey", @"com.apple.Wallet", 0) != 0;
}

void PKSetDiscoveryShouldProcessLocaleChange(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  CFPreferencesSetAppValue(@"PKDiscoveryShouldProcessLocaleChangeKey", v1, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKSearchDetailedLoggingEnabledInWallet()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSearchDetailedLoggingEnabledInWalletKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKSearchAllowLiveProductFetch()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSearchAllowLiveProductFetch", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

id PKSearchSelectedItemTitles()
{
  v0 = CFPreferencesCopyAppValue(@"PKSearchSelectedItemTitles", @"com.apple.Wallet");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v0 = 0;
  }

  return v0;
}

uint64_t PKSearchSetSelectedItemTitles(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"PKSearchSelectedItemTitles", value, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

CFIndex PKBroadwaySummaryType()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PKBroadwaySummaryTypeKey", @"com.apple.stockholm", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    return AppIntegerValue;
  }

  v1 = CFPreferencesGetAppBooleanValue(@"PKBroadwayUseMonthlySummaryKey", @"com.apple.stockholm", 0) != 0;
  PKSetBroadwaySummaryType(v1);
  return v1;
}

void PKSetBroadwaySummaryType(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  CFPreferencesSetAppValue(@"PKBroadwaySummaryTypeKey", v1, @"com.apple.stockholm");
  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t PKPKBroadwayBypassIDSOSCheck()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKBroadwayBypassIDSOSCheckKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKEnforceUpgradedPasscodePolicyForAllRegions()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKEnforceUpgradedPasscodePolicyForAllRegions", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKUsePasscodeUpgradeFlow()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKUsePasscodeUpgradeFlowKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

BOOL PKBarcodePassWelcomeCardDismissed()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKDiscoveryDismissBarcodeWelcomeCardKey", @"com.apple.stockholm", 0) != 0;
}

void PKSetBarcodePassWelcomeCardDismissed(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PKDiscoveryDismissBarcodeWelcomeCardKey", v1, @"com.apple.stockholm");
  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t PKTransitDumpStates()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKTransitDumpStates", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

id PKNumericSuggestionLastInputForPassSerialNumber(void *a1)
{
  v1 = a1;
  v2 = _PKNumericSuggestionLastInput();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _PKNumericSuggestionLastInput()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKNumericSuggestionLastInputKey", *MEMORY[0x1E695E890]);
  if (v0)
  {
    _PKSetGlobalValueForKey(0, @"PKNumericSuggestionLastInputKey");
  }

  v1 = CFPreferencesCopyAppValue(@"PKNumericSuggestionLastInputKey", @"com.apple.Wallet");

  return v1;
}

void PKSetNumericSuggestionLastInputWithPassSerialNumber(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = _PKNumericSuggestionLastInput();
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  if (v3)
  {
    [v5 setObject:v6 forKey:v3];
    CFPreferencesSetAppValue(@"PKNumericSuggestionLastInputKey", v5, @"com.apple.Wallet");
    CFPreferencesAppSynchronize(@"com.apple.Wallet");
  }
}

id PKLocalBrokerURL(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    v4 = @"https://smp-device-qa.apple.com:1443/broker";
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = 138412290;
    v9 = @"https://smp-device-qa.apple.com:1443/broker";
    v5 = "*** Using hardcoded QA broker URL ***: %@";
  }

  else
  {
    v4 = @"https://smp-device.apple.com/broker";
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = 138412290;
    v9 = @"https://smp-device.apple.com/broker";
    v5 = "*** Using hardcoded PROD broker URL ***: %@";
  }

  _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
LABEL_7:

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v6;
}

uint64_t PKFutureEnabled()
{
  if (qword_1ED6D1B50 != -1)
  {
    dispatch_once(&qword_1ED6D1B50, &__block_literal_global_122);
  }

  return _MergedGlobals_231;
}

uint64_t __PKFutureEnabled_block_invoke()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    result = CFPreferencesGetAppBooleanValue(@"PKFutureEnabled", @"com.apple.stockholm", 0);
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_231 = v1;
  return result;
}

uint64_t PKReaderModeDebugUIEnabled()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallStockholmPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
    }

    return CFPreferencesGetAppBooleanValue(@"PKReaderModeDebugUI", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKProvisioningSecurityEnhancementsDisableDeviceScore()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    if (_InstallStockholmPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
    }

    return CFPreferencesGetAppBooleanValue(@"PKProvisioningSecurityEnhancementsDisableDeviceScore", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKForcePeerPaymentDeviceScoreVersion()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPeerPaymentForceDeviceScoreVersionKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKGetPeerPaymentDeviceScoreVersion()
{
  v0 = CFPreferencesCopyAppValue(@"PKPeerPaymentDeviceScoreVersionKey", *MEMORY[0x1E695E890]);
  v1 = [v0 integerValue];

  return v1;
}

void PKAddCustomHeader(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  if (os_variant_allows_internal_security_policies() && [v9 length] && objc_msgSend(v3, "length"))
  {
    v4 = PKGetCustomHeaders();
    v5 = v4;
    if (v4)
    {
      v6 = [v4 mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = v6;
    [v6 setObject:v3 forKey:v9];
    v8 = [v7 copy];
    _PKSetGlobalValueForKey(v8, @"PKCustomHeadersKey");
  }
}

void PKRemoveCustomHeader(void *a1)
{
  v4 = a1;
  if (os_variant_allows_internal_security_policies() && [v4 length])
  {
    v1 = PKGetCustomHeaders();
    v2 = [v1 mutableCopy];
    [v2 removeObjectForKey:v4];
    v3 = [v2 copy];
    _PKSetGlobalValueForKey(v3, @"PKCustomHeadersKey");
  }
}

id PKTrustedServiceManagerURL()
{
  if (_InstallStockholmPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
  }

  v0 = CFPreferencesCopyAppValue(@"TrustedServiceManagerURL", @"com.apple.stockholm");
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id PKPaymentServicesURL()
{
  if (_InstallStockholmPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
  }

  v0 = CFPreferencesCopyAppValue(@"PaymentServicesURL", @"com.apple.stockholm");
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void _PKSetEnvironmentValueForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_InstallStockholmPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
  }

  CFPreferencesSetAppValue(v4, v3, @"com.apple.stockholm");
  if (!CFPreferencesSynchronize(@"com.apple.stockholm", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]))
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error: Could not synchronize stockholm domain", v7, 2u);
    }
  }

  _CFPreferencesSetBackupDisabled();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.stockholm.preferenceschanged", 0, 0, 1u);
}

id PKPassDetailsLastSelectedSegment()
{
  if (_InstallStockholmPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
  }

  v0 = CFPreferencesCopyAppValue(@"PKPassDetailsLastSelectedSegmentKey", @"com.apple.stockholm");

  return v0;
}

void PKSetNFRemoteAdminV2Enabled(int a1)
{
  if (_InstallStockholmPreferencesObserverIfNecessary_onceToken == -1)
  {
    if (a1)
    {
LABEL_3:
      v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
LABEL_6:
  v3 = v2;
  _PKSetEnvironmentValueForKey(v2, @"RemoteAdminV2");
}

uint64_t PKMaxPaymentCards()
{
  v0 = CFPreferencesCopyAppValue(@"MaxPaymentCards", @"com.apple.stockholm");
  v1 = v0;
  if (v0)
  {
    v2 = [v0 unsignedIntegerValue];
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Error: Unable to fetch max payment cards", v5, 2u);
    }

    v2 = 0;
  }

  return v2;
}

void PKSetMaxPaymentCards(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
    _PKSetEnvironmentValueForKey(v2, @"MaxPaymentCards");
  }

  else
  {

    _PKSetEnvironmentValueForKey(0, @"MaxPaymentCards");
  }
}

id PKStockholmEnvironmentDisplayName()
{
  if (_InstallStockholmPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
  }

  v0 = CFPreferencesCopyAppValue(@"EnvironmentDisplayName", @"com.apple.stockholm");

  return v0;
}

id PKStockholmEnvironmentName()
{
  if (_InstallStockholmPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallStockholmPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1140);
  }

  v0 = CFPreferencesCopyAppValue(@"EnvironmentName", @"com.apple.stockholm");

  return v0;
}

void PKSetReaderModeDebugUIEnabled(char a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
    _PKSetEnvironmentValueForKey(v2, @"PKReaderModeDebugUI");
  }

  else
  {

    _PKSetEnvironmentValueForKey(0, @"PKReaderModeDebugUI");
  }
}

uint64_t PKStockholmEnvironmentIsLikelyProduction()
{
  v0 = PKStockholmEnvironmentName();
  v1 = [v0 lowercaseString];

  v2 = PKStockholmEnvironmentDisplayName();
  v3 = [v2 lowercaseString];

  if ([v1 containsString:@"cert"] & 1) != 0 || (objc_msgSend(v1, "containsString:", @"qa"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 containsString:@"sandbox"] ^ 1;
  }

  return v4;
}

id PKStockholmBrokerURL()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"BrokerURL", @"com.apple.stockholm");
  if ([v0 length])
  {
    v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id PKOverrideInAppPaymentServicesURL()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKOverrideInAppPaymentServicesURL", @"com.apple.stockholm");
  if ([v0 length])
  {
    v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id PKOverridePaymentOffersServiceURL()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKOverridePaymentOffersServiceURLKey", @"com.apple.stockholm");
  if ([v0 length])
  {
    v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id PKProductsURL()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKProductsURLKey", @"com.apple.stockholm");
  if ([v0 length])
  {
    v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t PKSetLastProductCacheUpdateTimestamp(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"PKLastProductCacheUpdateTimestampKey", value, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKGetLastProductCacheUpdateTimestamp()
{
  v0 = CFPreferencesCopyAppValue(@"PKLastProductCacheUpdateTimestampKey", @"com.apple.Wallet");

  return v0;
}

id PKMerchantServicesURL()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"MerchantServicesURL", @"com.apple.stockholm");
  if ([(__CFString *)v0 length])
  {
    v1 = v0;
  }

  else
  {
    v1 = @"https://smp-device.apple.com/merchantservices";
  }

  v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];

  return v2;
}

id PKHeroWatchSizeOverride()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKHeroWatchSizeOverrideKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void PKSetHeroWatchSizeOverride(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_ui())
  {
    _PKSetGlobalValueForKey(v1, @"PKHeroWatchSizeOverrideKey");
  }
}

uint64_t PKContainerEnvironmentForContainerName(void *a1)
{
  v1 = a1;
  if (!os_variant_has_internal_ui())
  {
    goto LABEL_11;
  }

  v2 = PKCurrentCloudStoreApplePayContainerName();
  v3 = [v1 isEqualToString:v2];

  if (!v3)
  {
    if ([v1 isEqualToString:@"com.apple.passes"])
    {
      v4 = PKPassContainerEnvironment();
      goto LABEL_10;
    }

    if ([v1 isEqualToString:@"com.apple.passes.sync"])
    {
      v4 = PKPassSyncContainerEnvironment();
      goto LABEL_10;
    }

    if ([v1 isEqualToString:@"com.apple.passes.sync.secure"])
    {
      v4 = PKPassSyncSecureContainerEnvironment();
      goto LABEL_10;
    }

LABEL_11:
    v5 = 1;
    goto LABEL_12;
  }

  v4 = PKApplePayContainerEnvironment();
LABEL_10:
  v5 = v4;
LABEL_12:

  return v5;
}

id PKCurrentCloudStoreApplePayContainerName()
{
  if (!os_variant_has_internal_ui())
  {
    goto LABEL_6;
  }

  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKUseApplePayPrototypeContainerKey", *MEMORY[0x1E695E890]);
  v1 = [v0 BOOLValue];

  if (v1)
  {
    v2 = &PKCloudStoreApplePayPrototypeContainerName;
  }

  else
  {
LABEL_6:
    v2 = &PKCloudStoreApplePayContainerName;
  }

  v3 = *v2;

  return v3;
}

uint64_t PKApplePayContainerEnvironment()
{
  v0 = CFPreferencesCopyAppValue(@"PKApplePayContainerEnvironmentKey", @"com.apple.Wallet.public");
  v1 = [v0 integerValue];
  if ((v1 - 1) >= 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

uint64_t PKPassContainerEnvironment()
{
  v0 = CFPreferencesCopyAppValue(@"PKPassContainerEnvironmentKey", @"com.apple.Wallet.public");
  v1 = [v0 integerValue];
  if ((v1 - 1) >= 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

uint64_t PKPassSyncContainerEnvironment()
{
  v0 = CFPreferencesCopyAppValue(@"PKPassSyncContainerEnvironmentKey", @"com.apple.Wallet.public");
  v1 = [v0 integerValue];
  if ((v1 - 1) >= 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

uint64_t PKPassSyncSecureContainerEnvironment()
{
  v0 = CFPreferencesCopyAppValue(@"PKPassSyncSecureContainerEnvironmentKey", @"com.apple.Wallet.public");
  v1 = [v0 integerValue];
  if ((v1 - 1) >= 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void PKSetContainerEnvironmentForContainerName(void *a1, uint64_t a2)
{
  v8 = a1;
  if (os_variant_has_internal_ui())
  {
    v3 = PKCurrentCloudStoreApplePayContainerName();
    v4 = [v8 isEqualToString:v3];

    if (v4)
    {
      v5 = @"PKApplePayContainerEnvironmentKey";
    }

    else if ([v8 isEqualToString:@"com.apple.passes"])
    {
      v5 = @"PKPassContainerEnvironmentKey";
    }

    else if ([v8 isEqualToString:@"com.apple.passes.sync"])
    {
      v5 = @"PKPassSyncContainerEnvironmentKey";
    }

    else
    {
      v5 = [v8 isEqualToString:@"com.apple.passes.sync.secure"] ? @"PKPassSyncSecureContainerEnvironmentKey" : 0;
    }

    if ([(__CFString *)v5 length])
    {
      if ((a2 - 1) > 1)
      {
        v6 = &unk_1F23B5090;
      }

      else
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      }

      CFPreferencesSetAppValue(v5, v6, @"com.apple.Wallet.public");
      CFPreferencesAppSynchronize(@"com.apple.Wallet.public");
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Wallet.public.preferenceschanged", 0, 0, 1u);
    }
  }
}

void PKSetFieldValueAddedServiceModeOverride(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_ui())
  {
    _PKSetGlobalValueForKey(v1, @"PKFieldValueAddedServiceModeOverrideKey");
  }
}

id PKKeychainVersion()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKKeychainVersionKey", *MEMORY[0x1E695E890]);

  return v0;
}

void PKSetSecureElementAvailableFlags(uint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
    v2 = *MEMORY[0x1E695E890];
    v3 = *MEMORY[0x1E695E8B8];
    v4 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(@"PKSecureElementAvailableFlagsByHostSome", v5, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(v2, v3, v4);
  }
}

uint64_t PKSecureElementAvailableFlags()
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  v0 = CFPreferencesCopyValue(@"PKSecureElementAvailableFlagsByHostSome", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v1 = [v0 unsignedIntegerValue];

  return v1;
}

uint64_t PKDisplaysTestBarcodeCredential()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKDisplaysTestBarcodeCredentialKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetDisplaysTestBarcodeCredential(uint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    _PKSetGlobalValueForKey(v2, @"PKDisplaysTestBarcodeCredentialKey");
  }
}

uint64_t PKShowBarcodeForScreenshotAndBroadcasting()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShowBarcodeForScreenshotAndBroadcastingKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetShowBarcodeForScreenshotAndBroadcasting(uint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    _PKSetGlobalValueForKey(v2, @"PKShowBarcodeForScreenshotAndBroadcastingKey");
  }
}

id PKClientHTTPHeaderOSPartOverride()
{
  if (os_variant_has_internal_ui())
  {
    v0 = _PKGlobalStringValueForKey(@"PKClientHTTPHeaderOSPartOverride");
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void *_PKGlobalStringValueForKey(void *a1)
{
  v1 = _InstallGlobalPreferencesObserverIfNecessary_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v3 = CFPreferencesCopyAppValue(v2, *MEMORY[0x1E695E890]);

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

id PKDeviceInformationOverrideProductType()
{
  if (os_variant_has_internal_ui())
  {
    v0 = _PKGlobalStringValueForKey(@"PKDeviceInformationOverrideProductTypeKey");
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void PKSetDeviceInformationOverrideProductType(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_ui())
  {
    _PKSetGlobalValueForKey(v1, @"PKDeviceInformationOverrideProductTypeKey");
  }
}

id PKClientHTTPHeaderHardwarePlatformOverride()
{
  if (os_variant_has_internal_ui())
  {
    v0 = _PKGlobalStringValueForKey(@"PKClientHTTPHeaderHardwarePlatformOverride");
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id PKPartnerIdentifierOverride()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKPartnerIdentifierOverrideKey", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

CFIndex PKCredentialPairingPincodeLengthOverride()
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = *MEMORY[0x1E695E890];

  return CFPreferencesGetAppIntegerValue(@"PKCredentialPairingPincodeLengthOverrideKey", v0, 0);
}

uint64_t PKPinCodeViewKeyboardOverride()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPinCodeViewKeyboardOverrideKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

id PKLastBackedUpDefaultPaymentPassSerialNumber()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKLastBackedUpDefaultPaymentPassSerialNumberKey", @"com.apple.Wallet");

  return v0;
}

uint64_t PKSetLastBackedUpDefaultPaymentPassSerialNumber(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"PKLastBackedUpDefaultPaymentPassSerialNumberKey", value, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKLastBackupPassbookWasDeleted()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKLastBackupPassbookWasDeletedKey", @"com.apple.Wallet", 0) != 0;
}

void PKSetLastBackupPassbookWasDeleted(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  CFPreferencesSetAppValue(@"PKLastBackupPassbookWasDeletedKey", v1, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKPerformEagerTransitNotificationChecks()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKPerformEagerTransitNotificationChecksKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetPerformEagerTransitNotificationChecks(int a1)
{
  if (os_variant_has_internal_ui())
  {
    if (a1)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;
    _PKSetGlobalValueForKey(v2, @"PKPerformEagerTransitNotificationChecksKey");
  }
}

uint64_t PKForceEnableTransitServiceCheckIn()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKForceEnableTransitServiceCheckInKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKForceDefaultEmbeddedMarketStrings()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForceDefaultEmbeddedMarketStringsKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKIgnoreOpenLoopExpressUpgradeLimits()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKIgnoreOpenLoopExpressUpgradeLimitsKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

id PKOverrideMarketGeoExpressUpgradePromotionDuration()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  if (os_variant_has_internal_ui())
  {
    v0 = CFPreferencesCopyAppValue(@"PKOverrideMarketGeoExpressUpgradePromotionDurationKey", *MEMORY[0x1E695E890]);
    v1 = v0;
    if (v0 && [v0 length])
    {
      v2 = MEMORY[0x1E696AD98];
      [v1 doubleValue];
      v3 = [v2 numberWithDouble:?];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKOverrideMarketGeoExpressUpgradeHideDisableExpressModeAction()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  if (os_variant_has_internal_ui())
  {
    v0 = CFPreferencesCopyAppValue(@"PKOverrideMarketGeoExpressUpgradeHideDisableExpressModeActionKey", *MEMORY[0x1E695E890]);
    v1 = v0;
    if (v0 && [v0 length])
    {
      v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "integerValue")}];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKAllowExpressRenotifyNotificationDefaultStrings()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKAllowExpressRenotifyNotificationDefaultStringsKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

id PKOverrideMarketGeoRenotifyDCICampaignIdentifier()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  if (!os_variant_has_internal_ui())
  {
    goto LABEL_7;
  }

  v0 = CFPreferencesCopyAppValue(@"PKOverrideMarketGeoRenotifyDCICampaignIdentifierKey", *MEMORY[0x1E695E890]);
  v1 = v0;
  if (!v0 || ![v0 length])
  {

LABEL_7:
    v1 = 0;
  }

  return v1;
}

id PKOverrideMarketGeoExpressOpenLoopNotificationIdentifier()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  if (!os_variant_has_internal_ui())
  {
    goto LABEL_7;
  }

  v0 = CFPreferencesCopyAppValue(@"PKOverrideMarketGeoExpressOpenLoopNotificationIdentifierKey", *MEMORY[0x1E695E890]);
  v1 = v0;
  if (!v0 || ![v0 length])
  {

LABEL_7:
    v1 = 0;
  }

  return v1;
}

void PKSetHasPromptedNotificationAuthorizationForContentType(unint64_t a1, uint64_t a2)
{
  v4 = _PKHasPromptedNotificationAuthorizationForContentTypeDictionary();
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = v7;

  v8 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v9 = PKNotificationContentTypeToString(a1);
  [v11 setObject:v8 forKeyedSubscript:v9];

  v10 = [v11 copy];
  CFPreferencesSetAppValue(@"PKHasPromptedNotificationAuthorizationForContentTypeKey", v10, @"com.apple.stockholm");

  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t PKIncrementNotificationAuthorizationPromptCount()
{
  v0 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{CFPreferencesGetAppIntegerValue(@"PKNotificationAuthorizationPromptCountKey", @"com.apple.stockholm", 0) + 1}];
  CFPreferencesSetAppValue(@"PKNotificationAuthorizationPromptCountKey", v0, @"com.apple.stockholm");

  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t PKSetNotificationAuthorizationPromptCount(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKNotificationAuthorizationPromptCountKey", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1], @"com.apple.stockholm");

  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

id PKLastViewedFrontOfCardDate()
{
  v0 = CFPreferencesCopyAppValue(@"PKLastViewedFrontOfCardDateKey", @"com.apple.Wallet");

  return v0;
}

id PKLastReviewPromptDate()
{
  v0 = CFPreferencesCopyAppValue(@"PKLastReviewPromptDateKey", @"com.apple.Wallet");

  return v0;
}

BOOL PKCardShouldShowVPANReissuedMessage(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKCardShowVPANReissuedMessageKey", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

void PKCardSetShouldShowVPANReissuedMessage(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKCardShowVPANReissuedMessageKey", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKCardAltDSIDForVPANReissuedMessage()
{
  v0 = CFPreferencesCopyAppValue(@"PKCardAltDSIDForVPANReissuedMessageKey", @"com.apple.Wallet");

  return v0;
}

uint64_t PKCardSetAltDSIDForVPANReissuedMessage(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"PKCardAltDSIDForVPANReissuedMessageKey", value, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKAccountServiceIsNewAccountWithAccountIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"isNewAccount", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

void PKSetAccountServiceIsNewAccountWithAccountIdentifier(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  value = [v3 numberWithBool:a2];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"isNewAccount", v4];

  CFPreferencesSetAppValue(v5, value, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKFundingSourceIdsMigratedToSavings(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKFundingSourceIdsMigratedToSavingsKey", a1];
  v2 = CFPreferencesCopyAppValue(v1, @"com.apple.Wallet");

  return v2;
}

void PKSetFundingSourceIdsMigratedToSavings(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%@-%@", @"PKFundingSourceIdsMigratedToSavingsKey", a1];
  CFPreferencesSetAppValue(v5, v4, @"com.apple.Wallet");

  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKSetCheckedForSavingsPresence(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKCheckedForSavingsPresenceKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKSavingsLastInterstitialAuthDate(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsLastInterstitialAuthDateKey", a1];
  v2 = CFPreferencesCopyAppValue(v1, @"com.apple.Wallet");

  return v2;
}

void PKSavingsSetLastInterstitialAuthDate(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [v3 stringWithFormat:@"%@-%@", @"PKSavingsLastInterstitialAuthDateKey", a2];
  CFPreferencesSetAppValue(v5, v4, @"com.apple.Wallet");

  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKSetAccountServiceTransferPrefersBank(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKAccountServiceTransferPrefersBankKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKLastBankAccountIdentifierForAccountTransfer(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKLastBankAccountIdentifierForAccountTransferKey", a1];
  v2 = CFPreferencesCopyAppValue(v1, @"com.apple.Wallet");

  return v2;
}

void PKSetLastBankAccountIdentifierForAccountTransfer(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%@-%@", @"PKLastBankAccountIdentifierForAccountTransferKey", a1];
  CFPreferencesSetAppValue(v5, v4, @"com.apple.Wallet");

  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKPaymentSheetExpressProvisioningWebFlow()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentSheetExpressProvisioningWebFlowKey", @"com.apple.Wallet", 0) != 0;
  }

  return result;
}

uint64_t PKPaymentSheetShowExpressProvisioning(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    LODWORD(result) = PKPaymentSheetExpressProvisioningWebFlow();
    if (a1)
    {
      return result;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void PKExpressEducationSetHasSeenMessage(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PKExpressEducationHasSeenMessageKey", v1, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKExpressEducationHasDismissedMessage()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKExpressEducationHasDismissedMessageKey", @"com.apple.Wallet", &keyExistsAndHasValidFormat);
  v1 = 1;
  if (!AppBooleanValue)
  {
    v1 = 2;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void PKExpressEducationSetHasDismissedMessage(void *a1)
{
  v1 = PKTriStateToStorageBool(a1);
  CFPreferencesSetAppValue(@"PKExpressEducationHasDismissedMessageKey", v1, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKTriStateToStorageBool(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AD98] numberWithInt:a1 == 1];
    v1 = vars8;
  }

  return a1;
}

unint64_t PKIncrementPreArmTransactionOnExpressPassCount()
{
  result = CFPreferencesGetAppIntegerValue(@"PKPreArmTransactionOnExpressPassCountKey", @"com.apple.Wallet", 0);
  if (result <= 2)
  {
    CFPreferencesSetAppValue(@"PKPreArmTransactionOnExpressPassCountKey", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:result + 1], @"com.apple.Wallet");

    return CFPreferencesAppSynchronize(@"com.apple.Wallet");
  }

  return result;
}

uint64_t PKSetPreArmTransactionOnExpressPassCount(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKPreArmTransactionOnExpressPassCountKey", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKSavingsSetHasDismissedEducationInterestMessage(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKSavingsHasDismissedEducationInterestMessageKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKSavingsHasDismissedAddBeneficiaryMessage(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsHasDismissedAddBeneficiaryMessageKey", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

void PKSavingsSetHasDismissedAddBeneficiaryMessage(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsHasDismissedAddBeneficiaryMessageKey", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKSavingsHasDismissedClosedAccountMessage()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKAccountHasDismissedClosedAccountMessageKey", @"com.apple.Wallet", &keyExistsAndHasValidFormat);
  v1 = 1;
  if (!AppBooleanValue)
  {
    v1 = 2;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void PKSavingsSetHasDismissedClosedAccountMessage(void *a1)
{
  v1 = PKTriStateToStorageBool(a1);
  CFPreferencesSetAppValue(@"PKAccountHasDismissedClosedAccountMessageKey", v1, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKSavingsHasDismissedPendingApplicationMessage()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKAccountHasDismissedPendingApplicationMessageKey", @"com.apple.Wallet", &keyExistsAndHasValidFormat);
  v1 = 1;
  if (!AppBooleanValue)
  {
    v1 = 2;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void PKSavingsSetHasDismissedPendingApplicationMessage(void *a1)
{
  v1 = PKTriStateToStorageBool(a1);
  CFPreferencesSetAppValue(@"PKAccountHasDismissedPendingApplicationMessageKey", v1, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKSavingsPreviousAPYForUpdateMessage()
{
  v0 = CFPreferencesCopyAppValue(@"PKSavingsPreviousAPYForUpdateMessageKey", @"com.apple.stockholm");
  v1 = v0;
  if (v0)
  {
    v2 = PKPercentageStorageIntegerToDecimal([v0 integerValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PKSavingsSetPreviousAPYForUpdateMessage(void *a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInteger:PKPercentageDecimalToStorageInteger(a1)];
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  CFPreferencesSetAppValue(@"PKSavingsPreviousAPYForUpdateMessageKey", v1, @"com.apple.stockholm");
}

uint64_t PKSavingsSetHideCashTransferMessage(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKSavingsHideCashTransferMessageKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKSavingsSetHasDismissedFixRewardsMessage(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKSavingsHasDismissedFixRewardsMessageKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.stockholm");

  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

uint64_t PKSavingsHasDismissedFDICMessage(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsHasDismissedFDICMessage", v1];
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(v2, @"com.apple.Wallet", &keyExistsAndHasValidFormat))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!keyExistsAndHasValidFormat)
  {
    v7 = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKSavingsHasDismissedFDICMessage", @"com.apple.stockholm", &v7);
    if (v7)
    {
      if (AppBooleanValue)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      PKSavingsSetHasDismissedFDICMessage(v1, AppBooleanValue != 0);
      CFPreferencesSetAppValue(@"PKSavingsHasDismissedFDICMessage", 0, @"com.apple.stockholm");
      CFPreferencesAppSynchronize(@"com.apple.stockholm");
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void PKSavingsSetHasDismissedFDICMessage(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsHasDismissedFDICMessage", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKSavingsHasDismissedAppleCardBankVerificationMessage(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsHasDismissedAppleCardBankVerificationMessageKey", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

void PKSetSavingsHasDismissedAppleCardBankVerificationMessage(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsHasDismissedAppleCardBankVerificationMessageKey", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKSavingsHasDismissedBankVerificationExpirationMessage(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsHasDismissedBankVerificationExpirationMessageKey", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

void PKSetSavingsHasDismissedBankVerificationExpirationMessage(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKSavingsHasDismissedBankVerificationExpirationMessageKey", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKAppleCardPhysicalCardExpiringSoonMessagingStartDate(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKAppleCardPhysicalCardExpiringSoonMessagingStartDateKey", a1, a2];
    v2 = CFPreferencesCopyAppValue(v3, @"com.apple.Wallet");
  }

  return v2;
}

void PKAppleCardSetPhysicalCardExpiringSoonMessagingStartDate(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@-%@-%@", @"PKAppleCardPhysicalCardExpiringSoonMessagingStartDateKey", a1, a2];
  CFPreferencesSetAppValue(v7, v6, @"com.apple.Wallet");

  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKAppleCardPhysicalCardExpiredMessagingStartDate(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKAppleCardPhysicalCardExpiredMessagingStartDateKey", a1, a2];
    v2 = CFPreferencesCopyAppValue(v3, @"com.apple.Wallet");
  }

  return v2;
}

void PKAppleCardSetPhysicalCardExpiredMessagingStartDate(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@-%@-%@", @"PKAppleCardPhysicalCardExpiredMessagingStartDateKey", a1, a2];
  CFPreferencesSetAppValue(v7, v6, @"com.apple.Wallet");

  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

void PKAppleCardSetHasDismissedPhysicalCardExpiringSoonMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKAppleCardHasDismissedPhysicalCardExpiringSoonMessageKey", a1, a2];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a3], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKAppleCardHasDismissedPhysicalCardExpiringSoonMessage(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKAppleCardHasDismissedPhysicalCardExpiringSoonMessageKey", a1, a2];
  v3 = CFPreferencesGetAppBooleanValue(v2, @"com.apple.Wallet", 0) != 0;

  return v3;
}

void PKAppleCardSetHasDismissedPhysicalCardExpiredMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKAppleCardHasDismissedPhysicalCardExpiredMessage", a1, a2];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a3], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKAppleCardHasDismissedPhysicalCardExpiredMessage(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKAppleCardHasDismissedPhysicalCardExpiredMessage", a1, a2];
  v3 = CFPreferencesGetAppBooleanValue(v2, @"com.apple.Wallet", 0) != 0;

  return v3;
}

uint64_t PKAppleCardSetDismissedBroadwayDiscoverabilityMessage(uint64_t a1)
{
  CFPreferencesSetAppValue(@"DismissedBroadwayDiscoverability", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

void PKAppleCardSetHasDismissedPhysicalCardExpiredCardNumbersMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKAppleCardHasDismissedPhysicalCardExpiredCardNumbersMessage", a1, a2];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a3], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKAppleCardHasDismissedPhysicalCardExpiredCardNumbersMessage(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKAppleCardHasDismissedPhysicalCardExpiredCardNumbersMessage", a1, a2];
  v3 = CFPreferencesGetAppBooleanValue(v2, @"com.apple.Wallet", 0) != 0;

  return v3;
}

void PKAppleCardSetShouldShowVPANUpdatedMessage(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKAppleCardShowVirtualCardExpiredMessage", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKAppleCardShouldShowVPANUpdatedMessage(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKAppleCardShowVirtualCardExpiredMessage", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

id PKAppleCardGetAcceptedInvitationIdentifiersToDisplay()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKAppleCardAcceptedInvitationIdentifiersToDisplayKey", @"com.apple.Wallet");

  return v0;
}

uint64_t PKAppleCardSetAcceptedInvitationIdentifiersToDisplay(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"PKAppleCardAcceptedInvitationIdentifiersToDisplayKey", value, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKPeerPaymentRecurringPaymentHasDismissedMessageForMessageIdentifier(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = CFPreferencesCopyAppValue(@"PKPeerPaymentRecurringPaymentDismissedMessageIdentifiersKey", @"com.apple.Wallet");
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEqualToString:{v1, v7}])
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void PKPeerPaymentRecurringPaymentAddDismissedMessageForMessageIdentifier(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"PKPeerPaymentRecurringPaymentDismissedMessageIdentifiersKey", @"com.apple.Wallet");
  v3 = v2;
  if (v2)
  {
    v4 = [v2 arrayByAddingObject:v1];
  }

  else
  {
    v6[0] = v1;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  v5 = v4;
  CFPreferencesSetAppValue(@"PKPeerPaymentRecurringPaymentDismissedMessageIdentifiersKey", v4, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKPeerPaymentRecurringPaymentRemoveAllDismissedMessageIdentifiers()
{
  CFPreferencesSetAppValue(@"PKPeerPaymentRecurringPaymentDismissedMessageIdentifiersKey", 0, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKAppleCardSetAutopayPromptPresented(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKAutopayPromptPresented", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKCreditWebPortalOverrideURL()
{
  if (os_variant_has_internal_ui())
  {
    v0 = CFPreferencesCopyAppValue(@"PKCreditPortalWebOverrideURL", *MEMORY[0x1E695E890]);
    if (v0)
    {
      v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PKSetCreditWebPortalOverrideURL(void *a1)
{
  value = a1;
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    CFPreferencesSetAppValue(@"PKCreditPortalWebOverrideURL", value, *MEMORY[0x1E695E890]);
  }
}

id PKLastDeviceEventDateForAccountIdentifier(void *a1, unint64_t a2)
{
  v2 = PKKeyForDeviceEventReportWithAccountIdentifier(a1, a2);
  v3 = CFPreferencesCopyAppValue(v2, @"com.apple.stockholm");

  return v3;
}

id PKKeyForDeviceEventReportWithAccountIdentifier(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = PKAccountDeviceEventToString(a2);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"PKLastFraudEventReportDateKey", v4, v3];

  return v5;
}

void PKSetLastDeviceEventDateForAccountIdentifier(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PKKeyForDeviceEventReportWithAccountIdentifier(a1, a2);
  CFPreferencesSetAppValue(v6, v5, @"com.apple.stockholm");

  CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

BOOL PKHasDisabledAPYUpdateNotificationsForAccountIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKDisabledAPYUpdateNotificationsKey", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

void PKSetHasDisabledAPYUpdateNotificationsForAccountIdentifier(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKDisabledAPYUpdateNotificationsKey", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKHasDisabledInterestPaidNotificationsForAccountIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKDisabledInterestPaidNotificationsKey", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

void PKSetHasDisabledInterestPaidNotificationsForAccountIdentifier(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKDisabledInterestPaidNotificationsKey", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKHasDisabledTransactionsNotificationsForAccountIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKDisabledTransactionsNotificationsKey", a1];
  v2 = CFPreferencesGetAppBooleanValue(v1, @"com.apple.Wallet", 0) != 0;

  return v2;
}

void PKSetHasDisabledTransactionsNotificationsForAccountIdentifier(uint64_t a1, uint64_t a2)
{
  key = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKDisabledTransactionsNotificationsKey", a1];
  CFPreferencesSetAppValue(key, [MEMORY[0x1E696AD98] numberWithBool:a2], @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKSharingForceSilentAuth()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceSilentAuthKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKCarKeySharingForceWatchInviteRejection()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKCarKeySharingForceWatchInviteRejectionKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKShowLocalPassShares()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShowLocalPassSharesKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingUsePredefinedCapabilitySets()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingUsePredefinedCapabilitySetsKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingAllowAdvancedCapabilitySelection()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingAllowAdvancedCapabilitySelectionKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

void PKSetSharingRelayServerOverrideURL(void *a1)
{
  v2 = a1;
  if ([v2 length])
  {
    v1 = v2;
  }

  else
  {

    v1 = 0;
  }

  v3 = v1;
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    v1 = v3;
  }

  CFPreferencesSetAppValue(@"PKSharingRelayServerOverrideURLKey", v1, @"com.apple.stockholm");
}

id PKSharingRelayServerOverrideURL()
{
  v0 = CFPreferencesCopyAppValue(@"PKSharingRelayServerOverrideURLKey", @"com.apple.stockholm");
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] URLWithString:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

BOOL PKSharingUseIMessageExtension()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  if (!os_variant_has_internal_ui())
  {
    return 1;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKSharingUseIMessageExtensionKey", @"com.apple.stockholm", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppBooleanValue == 0;
  }

  else
  {
    v1 = 0;
  }

  return !v1;
}

BOOL PKSharingUseCommonIMessageExtensionPayloadFormat()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKSharingUseCommonIMessageExtensionPayloadFormatKey", @"com.apple.stockholm", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppBooleanValue == 0;
  }

  else
  {
    v1 = 0;
  }

  return !v1;
}

uint64_t PKSharingCarKeyActivationOptionForceVEP()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingCarKeyActivationOptionForceVEPKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingCarKeyActivationOptionForceOSP()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingCarKeyActivationOptionForceOSPKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingCarKeyActivationOptionForcePinCode()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingCarKeyActivationOptionForcePinCodeKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingCarKeyActivationOptionForcePhysicalKey()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingCarKeyActivationOptionForcePhysicalKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingDisableStatefulPushNotifications()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingDisableStatefulPushNotificationsKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingCarKeySkipSecondaryInvitation()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingCarKeySkipSecondaryInvitationKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

id PKSharingRelayServerEnvironmentOverride()
{
  v0 = CFPreferencesCopyAppValue(@"PKSharingRelayServerEnvironmentOverrideKey", @"com.apple.stockholm");

  return v0;
}

uint64_t PKSharingSimulateCrossPlatformShare()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingSimulateCrossPlatformShareKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingUseThirdPartyPushTopic()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingUseThirdPartyPushTopicKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceErrorAfterKMLStartSharingAcceptance()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceErrorAfterKMLStartSharingAcceptanceKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceErrorAfterKMLReturnsPPIDRequest()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceErrorAfterKMLReturnsPPIDRequestKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceErrorAfterBrokerReturnsVehicleManufacturerResponse()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceErrorAfterBrokerReturnsVehicleManufacturerResponseKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceEmptyVehicleManufacturerResponse()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceEmptyVehicleManufacturerResponseKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceErrorAfterKMLAcceptShare()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceErrorAfterKMLAcceptShareKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceErrorAfterKMLReturnsPreTrackRequest()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceErrorAfterKMLReturnsPreTrackRequestKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceErrorAfterBrokerReturnsPreTrackRegisterCredentialResponse()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceErrorAfterBrokerReturnsRegisterCredentialResponseKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceErrorAfterBrokerReturnsTrackRegisterCredentialResponse()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceErrorAfterBrokerReturnsTrackRegisterCredentialResponseKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceNilVehicleDataInPreTrackRequest()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceNilVehicleDataInPreTrackRequestKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceNilShareDataInPreTrackRequest()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceNilShareDataInPreTrackRequestKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingForceNilPassURLInPreTrackResponse()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingForceNilPassURLInPreTrackResponseKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

uint64_t PKSharingDelayAttestation()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSharingDelayAttestationKey", @"com.apple.stockholm", 0) != 0;
  }

  return result;
}

id PKPeerPaymentRecurringPaymentRecentMemoIcons()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyAppValue(@"PKPeerPaymentRecurringPaymentRecentMemoIconsKey", @"com.apple.stockholm");
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412290;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:{0, v14}];
        v10 = [v8 objectAtIndexedSubscript:1];
        v11 = objc_alloc_init(PKPeerPaymentRecurringPaymentMemo);
        [(PKPeerPaymentRecurringPaymentMemo *)v11 setEmoji:v9];
        v15 = 0;
        if (PKSemanticColorFromString(v10, &v15))
        {
          [(PKPeerPaymentRecurringPaymentMemo *)v11 setColor:v15];
        }

        else
        {
          v12 = PKLogFacilityTypeGetObject(0xCuLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v21 = v10;
            _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Failed to read color '%@'", buf, 0xCu);
          }
        }

        [v1 addObject:v11];
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  return v1;
}

void PKPeerPaymentAddRecurringPaymentRecentMemoIcon(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"PKPeerPaymentRecurringPaymentRecentMemoIconsKey", @"com.apple.stockholm");
  v3 = [v1 emoji];
  v4 = PKSemanticColorToString([v1 color]);
  if (v4)
  {
    v21 = v1;
    v5 = __PKPeerPaymentAddRecurringPaymentRecentMemoIcon_block_invoke(v3, v4);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = v4;
    v19 = v3;
    v28[0] = v3;
    v28[1] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v6 addObject:v7];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = v2;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v23;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = [v14 objectAtIndexedSubscript:0];
        v16 = [v14 objectAtIndexedSubscript:1];
        if (__PKPeerPaymentAddRecurringPaymentRecentMemoIcon_block_invoke(v15, v16) != v5)
        {
          v26[0] = v15;
          v26[1] = v16;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
          [v6 addObject:v17];
        }

        if (v11 == 19)
        {
          break;
        }

        ++v13;
        ++v11;
        if (v10 == v13)
        {
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    CFPreferencesSetAppValue(@"PKPeerPaymentRecurringPaymentRecentMemoIconsKey", v6, @"com.apple.stockholm");
    CFPreferencesAppSynchronize(@"com.apple.stockholm");
    v2 = v20;
    v1 = v21;
    v4 = v18;
    v3 = v19;
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = [v1 color];
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Unable to find a color matching %li", buf, 0xCu);
    }
  }
}

uint64_t __PKPeerPaymentAddRecurringPaymentRecentMemoIcon_block_invoke(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v9[1] = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 arrayWithObjects:v9 count:2];

  v7 = PKCombinedHash(17, v6);
  return v7;
}

void PKPeerPaymentRemoveRecurringPaymentRecentMemoIcon(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"PKPeerPaymentRecurringPaymentRecentMemoIconsKey", @"com.apple.stockholm");
  v3 = PKSemanticColorToString([v1 color]);
  if (v3)
  {
    v4 = [v1 emoji];
    v5 = __PKPeerPaymentRemoveRecurringPaymentRecentMemoIcon_block_invoke(v4, v4, v3);

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __PKPeerPaymentRemoveRecurringPaymentRecentMemoIcon_block_invoke_1104;
    v8[3] = &unk_1E79D83E0;
    v9 = &__block_literal_global_1103_0;
    v10 = v5;
    v6 = [v2 pk_objectsPassingTest:v8];
    CFPreferencesSetAppValue(@"PKPeerPaymentRecurringPaymentRecentMemoIconsKey", v6, @"com.apple.stockholm");
    CFPreferencesAppSynchronize(@"com.apple.stockholm");

    v7 = v9;
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = [v1 color];
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Unable to find a color matching %li", buf, 0xCu);
    }
  }
}

uint64_t __PKPeerPaymentRemoveRecurringPaymentRecentMemoIcon_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = a2;
  v7 = [v4 arrayWithObjects:v10 count:2];

  v8 = PKCombinedHash(17, v7);
  return v8;
}

BOOL __PKPeerPaymentRemoveRecurringPaymentRecentMemoIcon_block_invoke_1104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = (*(*(a1 + 32) + 16))() != *(a1 + 40);
  return v6;
}

uint64_t PKPeerPaymentRemoveAllRecurringPaymentRecentMemoIcons()
{
  CFPreferencesSetAppValue(@"PKPeerPaymentRecurringPaymentRecentMemoIconsKey", 0, @"com.apple.stockholm");

  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

id PKPeerPaymentRecurringPaymentsLastUpdated()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKPeerPaymentRecurringPaymentsLastUpdatedKey", *MEMORY[0x1E695E890]);
  if (v0)
  {
    CFPreferencesSetAppValue(@"PKPeerPaymentRecurringPaymentsLastUpdatedKey", v0, @"com.apple.Wallet");
    CFPreferencesAppSynchronize(@"com.apple.Wallet");
    _PKSetGlobalValueForKey(0, @"PKPeerPaymentRecurringPaymentsLastUpdatedKey");
  }

  v1 = CFPreferencesCopyAppValue(@"PKPeerPaymentRecurringPaymentsLastUpdatedKey", @"com.apple.Wallet");

  return v1;
}

void PKPeerPaymentRecurringPaymentsSetLastUpdated(void *a1)
{
  value = a1;
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v1 = CFPreferencesCopyAppValue(@"PKPeerPaymentRecurringPaymentsLastUpdatedKey", *MEMORY[0x1E695E890]);
  if (v1)
  {
    _PKSetGlobalValueForKey(0, @"PKPeerPaymentRecurringPaymentsLastUpdatedKey");
  }

  CFPreferencesSetAppValue(@"PKPeerPaymentRecurringPaymentsLastUpdatedKey", value, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKPeerPaymentRecurringPaymentSetHasShownEducationMessage(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKPeerPaymentRecurringPaymentHasShownEducationMessageKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

uint64_t PKRemoteNetworkPaymentDisableEntitlementCheck()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKRemoteNetworkPaymentEntitlementCheckDisabled", @"com.apple.Wallet", 0) != 0;
  }

  return result;
}

void PKSetRemoteNetworkPaymentWebsocketURL(void *a1)
{
  v1 = a1;
  v3 = v1;
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    v1 = v3;
  }

  if ([v1 length])
  {
    v2 = v3;
  }

  else
  {

    v2 = 0;
  }

  v4 = v2;
  CFPreferencesSetAppValue(@"PKRemoteNetworkPaymentWebsocketURL", v2, @"com.apple.Wallet");
}

id PKRemoteNetworkPaymentWebsocketURL(int a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v4 = CFPreferencesCopyAppValue(@"PKRemoteNetworkPaymentWebsocketURL", @"com.apple.Wallet");
  if (os_variant_has_internal_ui() && [(__CFString *)v4 length])
  {
    v5 = PKLogFacilityTypeGetObject(0x31uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Preferences: Using overriden Websocket URL: %@", &v14, 0xCu);
    }

    v6 = MEMORY[0x1E695DFF8];
    v7 = v4;
LABEL_16:
    v9 = [v6 URLWithString:v7];
    goto LABEL_17;
  }

  if (v3)
  {
    v8 = PKLogFacilityTypeGetObject(0x31uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Preferences: Using config provided Websocket URL: %@", &v14, 0xCu);
    }

    v9 = [(__CFString *)v3 copy];
LABEL_17:
    v11 = v9;
    if (v9)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (a1)
  {
    v10 = PKLogFacilityTypeGetObject(0x31uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = @"wss://paymentrelayservice-device-qa1.apay.apple.com/web-pay/device";
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Preferences: Using hardcoded QA Websocket URL: %@", &v14, 0xCu);
    }

    v6 = MEMORY[0x1E695DFF8];
    v7 = @"wss://paymentrelayservice-device-qa1.apay.apple.com/web-pay/device";
    goto LABEL_16;
  }

LABEL_18:
  v12 = PKLogFacilityTypeGetObject(0x31uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = @"wss://paymentrelayservice-wpc-device.apple.com/web-pay/device";
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Preferences: Using hardcoded Production Websocket URL: %@", &v14, 0xCu);
  }

  v11 = [MEMORY[0x1E695DFF8] URLWithString:@"wss://paymentrelayservice-wpc-device.apple.com/web-pay/device"];
LABEL_21:

  return v11;
}

uint64_t PKRemoteNetworkPaymentSkipAuthenticationHeader()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKRemoteNetworkPaymentSkipAuthenticationHeader", @"com.apple.Wallet", 0) != 0;
  }

  return result;
}

void PKSetRemoteNetworkPaymentLoadingViewDelay(void *a1)
{
  v1 = _InstallGlobalPreferencesObserverIfNecessary_onceToken;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    v3 = v4;
  }

  CFPreferencesSetAppValue(@"PKRemoteNetworkPaymentLoadingViewDelay", v3, @"com.apple.Wallet");
}

id PKRemoteNetworkPaymentLoadingViewDelay()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKRemoteNetworkPaymentLoadingViewDelay", @"com.apple.Wallet");

  return v0;
}

void PKSetRemoteNetworkPaymentLoadingViewHold(void *a1)
{
  v1 = _InstallGlobalPreferencesObserverIfNecessary_onceToken;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    v3 = v4;
  }

  CFPreferencesSetAppValue(@"PKRemoteNetworkPaymentLoadingViewHold", v3, @"com.apple.Wallet");
}

id PKRemoteNetworkPaymentLoadingViewHold()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKRemoteNetworkPaymentLoadingViewHold", @"com.apple.Wallet");

  return v0;
}

uint64_t PKHomeKitSimulatedLockCompatibilityMode()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKHomeKitSimulatedLockCompatibilityModeKey", @"com.apple.Wallet", 0) != 0;
  }

  return result;
}

uint64_t PKSetBankCredentialMigrated(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PKBankCredentialMigratedKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

BOOL PKiCloudSignoutShouldDeleteLocalData()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKiCloudSignoutShouldDeleteLocalDataKey", @"com.apple.Wallet", 0) != 0;
}

void PKSetiCloudSignoutShouldDeleteLocalData(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];

  CFPreferencesSetAppValue(@"PKiCloudSignoutShouldDeleteLocalDataKey", v1, @"com.apple.Wallet");
}

BOOL PKNeedsLostModeExitAuth()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKNeedsLostModeExitAuthKey", @"com.apple.stockholm", 0) != 0;
}

uint64_t PKSetNeedsLostModeExitAuth(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = @"NO";
    if (a1)
    {
      v3 = @"YES";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "PKSetNeedsLostModeExitAuth: %@", &v5, 0xCu);
  }

  CFPreferencesSetAppValue(@"PKNeedsLostModeExitAuthKey", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.stockholm");
  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

id PKOverrideApplePayUserEducationDemoSimulationMethod()
{
  v0 = CFPreferencesCopyAppValue(@"PKApplePayUserEducationDemoSimulationMethodKey", @"com.apple.Wallet");

  return v0;
}

uint64_t PKSetOverrideApplePayUserEducationDemoSimulationMethod(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"PKApplePayUserEducationDemoSimulationMethodKey", value, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

id PKApplePayUserEducationDemoLastCompletedDate()
{
  v0 = CFPreferencesCopyAppValue(@"PKApplePayUserEducationDemoLastCompletedDateKey", @"com.apple.Wallet");

  return v0;
}

uint64_t PKSetApplePayUserEducationDemoLastCompletedDate(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"PKApplePayUserEducationDemoLastCompletedDateKey", value, @"com.apple.Wallet");

  return CFPreferencesAppSynchronize(@"com.apple.Wallet");
}

void _StockholmPrefsChangedHandler()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.stockholm.preferenceschanged" object:0];
}

void _GlobalPreferencesChangedHandler()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PKPreferencesDidChangeNotification" object:0];
}

void _ManagedConfigProfilesChangedHandler()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PKPreferencesDidChangeNotification" object:0];
}

void sub_1AD842224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8424A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKSubcredentialSharingInvitationSensitiveURL(void *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v2 setScheme:@"sms-private"];
  [v2 setPath:@"open"];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:@"service" value:@"iMessage"];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"appBundleID" value:@"com.apple.SubcredentialUIService.SubcredentialInvitationMessagesExtension"];
  [v3 addObject:v5];

  if (v1)
  {
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0];
    v7 = [v6 hexEncoding];
    v15 = @"SharingRequest";
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:0 error:0];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
    v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"appPayload" value:v10];
    [v3 addObject:v11];
  }

  v12 = [v3 copy];
  [v2 setQueryItems:v12];

  v13 = [v2 URL];

  return v13;
}

id PKCreatePersonalVehicleIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [a1 pairedReaderIdentifier];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = [v4 aaAlternateDSID];
      v9 = [v7 initWithFormat:@"%@:%@", v8, v6];

      v10 = [v9 dataUsingEncoding:4];
      v11 = [v10 SHA256Hash];
      v5 = [v11 base64EncodedStringWithOptions:0];
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Unable to generate personal vehicle identifier because required credential identifier is missing", buf, 2u);
      }

      v5 = 0;
    }
  }

  return v5;
}

uint64_t PKAddIdentityDocumentTypeFrom(unint64_t a1)
{
  if (a1 > 5)
  {
    return 1;
  }

  else
  {
    return qword_1ADB9A960[a1];
  }
}

uint64_t PKAddIdentityDocumentType_InternalFrom(uint64_t a1)
{
  v1 = 1;
  if (a1 != 2)
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t PKAddIdentityDocumentTypeFromInternal(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1ADB9A990[a1 - 1];
  }
}

id initkACCProperties_Endpoint_NFC_DisplayP3Rgb()
{
  if (qword_1EB5A0008 != -1)
  {
    dispatch_once(&qword_1EB5A0008, &__block_literal_global_124);
  }

  v0 = dlsym(qword_1EB5A0000, "kACCProperties_Endpoint_NFC_DisplayP3Rgb");
  objc_storeStrong(&qword_1EB59FFF0, *v0);
  _MergedGlobals_174 = kACCProperties_Endpoint_NFC_DisplayP3RgbFunction;
  v1 = qword_1EB59FFF0;

  return v1;
}

void *__LoadCoreAccessories_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreAccessories.framework/CoreAccessories", 2);
  qword_1EB5A0000 = result;
  return result;
}

id initkACCProperties_Endpoint_NFC_DisplayP3RgbSecondary()
{
  if (qword_1EB5A0008 != -1)
  {
    dispatch_once(&qword_1EB5A0008, &__block_literal_global_124);
  }

  v0 = dlsym(qword_1EB5A0000, "kACCProperties_Endpoint_NFC_DisplayP3RgbSecondary");
  objc_storeStrong(&qword_1EB59FFF8, *v0);
  off_1ED6D10D8 = kACCProperties_Endpoint_NFC_DisplayP3RgbSecondaryFunction;
  v1 = qword_1EB59FFF8;

  return v1;
}

id initkACCProperties_Endpoint_NFC_Type()
{
  if (qword_1EB5A0008 != -1)
  {
    dispatch_once(&qword_1EB5A0008, &__block_literal_global_124);
  }

  v0 = dlsym(qword_1EB5A0000, "kACCProperties_Endpoint_NFC_Type");
  objc_storeStrong(&_MergedGlobals_1_4, *v0);
  off_1ED6D10E0 = kACCProperties_Endpoint_NFC_TypeFunction;
  v1 = _MergedGlobals_1_4;

  return v1;
}

id PDInAppPaymentServiceInterface()
{
  if (qword_1ED6D1B70 != -1)
  {
    dispatch_once(&qword_1ED6D1B70, &__block_literal_global_125);
  }

  v1 = _MergedGlobals_233;

  return v1;
}

void __PDInAppPaymentServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247C9C8];
  v1 = _MergedGlobals_233;
  _MergedGlobals_233 = v0;

  v2 = _MergedGlobals_233;
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_cardDataForMerchantIdentifier_countryCode_completion_ argumentIndex:0 ofReply:1];

  v4 = _MergedGlobals_233;
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_validatePayLaterMerchandisingConfiguration_type_completion_ argumentIndex:0 ofReply:0];
}

id PKInAppPaymentServiceInterface()
{
  if (qword_1ED6D1B80 != -1)
  {
    dispatch_once(&qword_1ED6D1B80, &__block_literal_global_95);
  }

  v1 = qword_1ED6D1B78;

  return v1;
}

void __PKInAppPaymentServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CA28];
  v1 = qword_1ED6D1B78;
  qword_1ED6D1B78 = v0;
}

__CFString *PKAccountHoldTypeToString(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"floatHold";
  }

  else
  {
    return off_1E79D85E8[a1];
  }
}

uint64_t PKProtobufAutomaticReloadPaymentSummaryItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PKProtobufCustomPrecisionAmount);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufCustomPrecisionAmountReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PKProtobufNSDecimalNumber);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PKProtobufNSDecimalNumberReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

Class initMKMapService()
{
  if (qword_1EB5B7D80 != -1)
  {
    dispatch_once(&qword_1EB5B7D80, &__block_literal_global_127);
  }

  result = objc_getClass("MKMapService");
  _MergedGlobals_3_0 = result;
  getMKMapServiceClass[0] = MKMapServiceFunction;
  return result;
}

void *__LoadMapKit_block_invoke_2()
{
  result = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2);
  LoadMapKit_frameworkLibrary_2 = result;
  return result;
}

Class initMKLocalSearchRequest_0()
{
  if (qword_1EB5B7D80 != -1)
  {
    dispatch_once(&qword_1EB5B7D80, &__block_literal_global_127);
  }

  result = objc_getClass("MKLocalSearchRequest");
  qword_1EB5B7D88 = result;
  _MergedGlobals_175 = MKLocalSearchRequestFunction_0;
  return result;
}

Class initMKLocalSearch_0()
{
  if (qword_1EB5B7D80 != -1)
  {
    dispatch_once(&qword_1EB5B7D80, &__block_literal_global_127);
  }

  result = objc_getClass("MKLocalSearch");
  qword_1EB5B7D90 = result;
  off_1ED6D10F0 = MKLocalSearchFunction_0;
  return result;
}

Class initMKWalletMerchantStylingInfo_0()
{
  if (qword_1EB5B7D80 != -1)
  {
    dispatch_once(&qword_1EB5B7D80, &__block_literal_global_127);
  }

  result = objc_getClass("MKWalletMerchantStylingInfo");
  qword_1EB5B7D98 = result;
  getMKWalletMerchantStylingInfoClass_0[0] = MKWalletMerchantStylingInfoFunction_0;
  return result;
}

uint64_t PKAccountEntityOrderingContextFromString(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    goto LABEL_16;
  }

  if (a2 == 2)
  {
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    goto LABEL_16;
  }

  v5 = v3;
  if (v5 != @"carousel")
  {
    v6 = v5;
    if (!v5)
    {
      goto LABEL_15;
    }

    v7 = [@"carousel" isEqualToString:v5];

    if (v7)
    {
      goto LABEL_7;
    }

    v9 = v6;
    if (v9 == @"detailList" || (v10 = v9, v11 = [@"detailList" isEqualToString:v9], v10, (v11 & 1) != 0))
    {
      v8 = 2;
      goto LABEL_17;
    }

LABEL_11:
    v12 = v4;
    if (v12 == @"rewardsHubList")
    {
LABEL_14:
      v8 = 100;
      goto LABEL_17;
    }

    v13 = v12;
    if (v12)
    {
      v14 = [@"rewardsHubList" isEqualToString:v12];

      if (v14)
      {
        goto LABEL_14;
      }

LABEL_16:
      v8 = 0;
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_7:
  v8 = 1;
LABEL_17:

  return v8;
}

uint64_t PKPassVerificationMethodTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"one_time_pin")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_23:
    v4 = 0;
    goto LABEL_24;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"one_time_pin"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"phone_call" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"phone_call"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_24;
    }

    v8 = v6;
    if (v8 == @"issuer_app" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"issuer_app"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_24;
    }

    v11 = v9;
    if (v11 == @"app_clip" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"app_clip"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_24;
    }

    v14 = v12;
    if (v14 == @"url" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"url"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_24;
    }

    v17 = v15;
    if (v17 == @"card_tap" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"card_tap"], v18, (v19 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_24;
    }

    v20 = v18;
    if (v20 == @"fields" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"fields"], v21, v22))
    {
      v4 = 7;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_4:
  v4 = 1;
LABEL_24:

  return v4;
}

__CFString *PKPassVerificationMethodTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D8830[a1 - 1];
  }
}

uint64_t PKPassVerificationOneTimePinChannelFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"sms")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"sms"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"email" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"email"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKPassVerificationPhoneCallDirectionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"inbound")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"inbound"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"outbound" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"outbound"], v6, v7))
    {
      v4 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 2;
LABEL_9:

  return v4;
}

uint64_t PKPassVerificationURLStrategyFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"directToIssuer")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_10:
    v4 = 1;
    goto LABEL_11;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"directToIssuer"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"payloadProxiedByApple" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"payloadProxiedByApple"], v6, (v7 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_11;
    }

    v8 = v6;
    if (v8 != @"universalLink")
    {
      v9 = v8;
      v10 = [(__CFString *)v8 isEqualToString:@"universalLink"];

      if (!v10)
      {
        v4 = 0;
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_4:
  v4 = 2;
LABEL_11:

  return v4;
}

id PKSearchServiceDaemonInterface()
{
  if (qword_1ED6D1B90 != -1)
  {
    dispatch_once(&qword_1ED6D1B90, &__block_literal_global_129);
  }

  v0 = _MergedGlobals_234;
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_transactionsMissingRegionsWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = _MergedGlobals_234;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  [v4 setClasses:v8 forSelector:sel_transactionsMissingRegionsWithCompletion_ argumentIndex:1 ofReply:1];

  v9 = _MergedGlobals_234;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v9 setClasses:v12 forSelector:sel_regionsWithCompletion_ argumentIndex:0 ofReply:1];

  v13 = _MergedGlobals_234;
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [v13 setClasses:v16 forSelector:sel_indexedTransactionsWithCompletion_ argumentIndex:0 ofReply:1];

  v17 = _MergedGlobals_234;
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v17 setClasses:v20 forSelector:sel_indexedPassesWithCompletion_ argumentIndex:0 ofReply:1];

  v21 = _MergedGlobals_234;

  return v21;
}

void __PKSearchServiceDaemonInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CA88];
  v1 = _MergedGlobals_234;
  _MergedGlobals_234 = v0;
}

id PKSearchServiceClientInterface()
{
  if (qword_1ED6D1BA0 != -1)
  {
    dispatch_once(&qword_1ED6D1BA0, &__block_literal_global_96);
  }

  v1 = qword_1ED6D1B98;

  return v1;
}

void __PKSearchServiceClientInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F24375F0];
  v1 = qword_1ED6D1B98;
  qword_1ED6D1B98 = v0;
}

__CFString *PKPaymentWebServiceRegistrationTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79D89B8[a1];
  }
}

void sub_1AD85E6C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1AD85ED44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55)
{
  objc_destroyWeak((v55 + 56));
  objc_destroyWeak(&a55);
  _Block_object_dispose((v56 - 208), 8);
  _Block_object_dispose((v56 - 160), 8);
  objc_destroyWeak((v56 - 112));
  _Unwind_Resume(a1);
}

void sub_1AD85FE80(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1AD86304C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1AD8663B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8673D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD867B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufPaymentTokenReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v16 = objc_alloc_init(PKProtobufPaymentMethod);
            objc_storeStrong((a1 + 32), v16);
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !PKProtobufPaymentMethodReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_38;
          case 2:
            v14 = PBReaderReadString();
            v15 = 8;
LABEL_37:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;
LABEL_38:

            goto LABEL_39;
          case 3:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_37;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_37;
        }

        if (v13 == 7)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_37;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_37;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadData();
          v15 = 24;
          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PKBundleIdentifierForPID(uint64_t a1)
{
  v1 = MEMORY[0x1E69C75D0];
  v2 = [MEMORY[0x1E69C75E0] identifierWithPid:a1];
  v3 = [v1 handleForIdentifier:v2 error:0];

  if (v3)
  {
    v4 = [v3 bundle];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __PKPassRelevancyBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Foundation"];
  v1 = [v0 bundleURL];
  v2 = [v1 URLByDeletingLastPathComponent];
  v6 = [v2 URLByDeletingLastPathComponent];

  v3 = [v6 URLByAppendingPathComponent:@"LocationBundles/PassbookRelevancy.bundle" isDirectory:1];
  v4 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v3];
  v5 = qword_1ED6D1BE8;
  qword_1ED6D1BE8 = v4;
}

id PKMerchantLookupBundle()
{
  if (qword_1ED6D1C00 != -1)
  {
    dispatch_once(&qword_1ED6D1C00, &__block_literal_global_28);
  }

  v1 = qword_1ED6D1BF8;

  return v1;
}

void __PKMerchantLookupBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Foundation"];
  v1 = [v0 bundleURL];
  v2 = [v1 URLByDeletingLastPathComponent];
  v6 = [v2 URLByDeletingLastPathComponent];

  v3 = [v6 URLByAppendingPathComponent:@"LocationBundles/PassbookMerchantLookup.bundle" isDirectory:1];
  v4 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v3];
  v5 = qword_1ED6D1BF8;
  qword_1ED6D1BF8 = v4;
}

id PKRTCReportingBundle()
{
  if (qword_1ED6D1C10 != -1)
  {
    dispatch_once(&qword_1ED6D1C10, &__block_literal_global_33);
  }

  v1 = qword_1ED6D1C08;

  return v1;
}

void __PKRTCReportingBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Foundation"];
  v1 = [v0 bundleURL];
  v2 = [v1 URLByDeletingLastPathComponent];
  v6 = [v2 URLByDeletingLastPathComponent];

  v3 = [v6 URLByAppendingPathComponent:@"PrivateFrameworks/RTCReporting.framework" isDirectory:1];
  v4 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v3];
  v5 = qword_1ED6D1C08;
  qword_1ED6D1C08 = v4;
}

BOOL PKPaymentOfferInstallmentAssessmentOfferTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1 == @"standard" || v1 == 0;
  v8 = 0;
  if (!v3)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"standard"];

    if ((v4 & 1) == 0)
    {
      v5 = v2;
      if (v5 == @"noAmount" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"noAmount"], v6, v7))
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

__CFString *PKPaymentOfferInstallmentAssessmentOfferTypeToString(uint64_t a1)
{
  v1 = @"noAmount";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"standard";
  }
}

uint64_t PKProtobufPaymentCancellationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Class initSFSafariCreditCardStore()
{
  if (qword_1ED6D1C20 != -1)
  {
    dispatch_once(&qword_1ED6D1C20, &__block_literal_global_135);
  }

  result = objc_getClass("SFSafariCreditCardStore");
  _MergedGlobals_236 = result;
  getSFSafariCreditCardStoreClass[0] = SFSafariCreditCardStoreFunction;
  return result;
}

void *__LoadSafariFoundation_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/SafariFoundation.framework/SafariFoundation", 2);
  LoadSafariFoundation_frameworkLibrary_0 = result;
  return result;
}

uint64_t PKTransactionAuthenticationPINFormatFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"complex")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_7:

    v4 = 1;
    goto LABEL_8;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"complex"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 != @"sixDigits")
    {
      [(__CFString *)v5 isEqualToString:@"sixDigits"];
    }

    goto LABEL_7;
  }

LABEL_4:
  v4 = 2;
LABEL_8:

  return v4;
}

__CFString *PKTransactionAuthenticationPINFormatToString(uint64_t a1)
{
  v1 = @"complex";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"sixDigits";
  }

  else
  {
    return v1;
  }
}

id PKTransactionAuthenticationMechanismToStrings(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"PaymentPINInput"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"TransactionDetailsSignature"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"UserConfirmation"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"ApplicationRedirect"];
  }

LABEL_6:
  v4 = [v3 copy];

  return v4;
}

uint64_t PKTransactionAuthenticationMechanismFromStrings(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PKTransactionAuthenticationMechanismFromStrings_block_invoke;
  v4[3] = &unk_1E79D93E0;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1AD873CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PKTransactionAuthenticationMechanismFromStrings_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == @"PaymentPINInput")
  {
    v6 = 1;
LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) |= v6;
    goto LABEL_14;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v16 = v3;
  v5 = [@"PaymentPINInput" isEqualToString:v3];

  if (v5)
  {
    v6 = 1;
LABEL_12:
    v4 = v16;
    goto LABEL_13;
  }

  v7 = v16;
  if (v7 == @"TransactionDetailsSignature" || (v8 = v7, v9 = [@"TransactionDetailsSignature" isEqualToString:v7], v8, (v9 & 1) != 0))
  {
    v6 = 2;
    goto LABEL_12;
  }

  v10 = v8;
  if (v10 == @"UserConfirmation" || (v11 = v10, v12 = [@"UserConfirmation" isEqualToString:v10], v11, (v12 & 1) != 0))
  {
    v6 = 4;
    goto LABEL_12;
  }

  v13 = v11;
  if (v13 == @"ApplicationRedirect")
  {
    v6 = 8;
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [@"ApplicationRedirect" isEqualToString:v13];

  v4 = v16;
  if (v15)
  {
    v6 = 8;
    goto LABEL_13;
  }

LABEL_14:
}

BOOL PKTransactionAuthenticationMechanismIsValid(unint64_t a1)
{
  if ((a1 & 8) != 0)
  {
    return (a1 & 0xFFFFFFFFFFFFFFF7) == 0;
  }

  else
  {
    return ((a1 >> 2) & 1) + (a1 & 1) < 2;
  }
}

uint64_t PKTransactionAuthenticationFailureFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"PINIncorrect")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"PINIncorrect"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"PINMaximumTriesExceeded" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"PINMaximumTriesExceeded"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

__CFString *PKTransactionAuthenticationFailureToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79D9400[a1];
  }
}

uint64_t PKProtobufPaymentInstrumentReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v63) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v63 & 0x7F) << v5;
      if ((v63 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_98;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_98;
      case 3u:
        v15 = objc_alloc_init(PKProtobufPaymentApplication);
        [a1 addPaymentApplications:v15];
        v63 = 0;
        v64 = 0;
        if (!PBReaderPlaceMark() || !PKProtobufPaymentApplicationReadFrom(v15, a2))
        {
          goto LABEL_123;
        }

        goto LABEL_40;
      case 4u:
        *(a1 + 148) |= 1u;
        v63 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v60 = [a2 data];
          [v60 getBytes:&v63 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v63;
        goto LABEL_121;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_98;
      case 6u:
        v13 = PBReaderReadData();
        v14 = 80;
        goto LABEL_98;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 128;
        goto LABEL_98;
      case 8u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addAssociatedWebDomains:v15];
        }

        goto LABEL_41;
      case 9u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 148) |= 0x40u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v63 & 0x7F) << v51;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            LOBYTE(v44) = 0;
            goto LABEL_117;
          }
        }

        v44 = (v53 != 0) & ~[a2 hasError];
LABEL_117:
        v59 = 146;
        goto LABEL_118;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_98;
      case 0xBu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 148) |= 0x20u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v63 & 0x7F) << v45;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            LOBYTE(v44) = 0;
            goto LABEL_115;
          }
        }

        v44 = (v47 != 0) & ~[a2 hasError];
LABEL_115:
        v59 = 145;
        goto LABEL_118;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 112;
        goto LABEL_98;
      case 0xDu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 148) |= 2u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v63 & 0x7F) << v16;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_102:
        *(a1 + 16) = -(v22 & 1) ^ (v22 >> 1);
        goto LABEL_121;
      case 0xEu:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 148) |= 8u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v63 & 0x7F) << v32;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_110;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v34;
        }

LABEL_110:
        v58 = 120;
        goto LABEL_111;
      case 0xFu:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_98;
      case 0x10u:
        v15 = objc_alloc_init(PKProtobufCustomPrecisionAmount);
        objc_storeStrong((a1 + 48), v15);
        v63 = 0;
        v64 = 0;
        if (PBReaderPlaceMark() && PKProtobufCustomPrecisionAmountReadFrom(v15, a2))
        {
          goto LABEL_40;
        }

        goto LABEL_123;
      case 0x11u:
        v15 = objc_alloc_init(PKProtobufNSDecimalNumber);
        objc_storeStrong((a1 + 56), v15);
        v63 = 0;
        v64 = 0;
        if (PBReaderPlaceMark() && PKProtobufNSDecimalNumberReadFrom(v15, a2))
        {
LABEL_40:
          PBReaderRecallMark();
LABEL_41:

LABEL_121:
          v61 = [a2 position];
          if (v61 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_123:

        return 0;
      case 0x12u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 148) |= 4u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v63 & 0x7F) << v25;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_106;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

LABEL_106:
        v58 = 24;
LABEL_111:
        *(a1 + v58) = v31;
        goto LABEL_121;
      case 0x13u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 148) |= 0x10u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v63 & 0x7F) << v38;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            LOBYTE(v44) = 0;
            goto LABEL_113;
          }
        }

        v44 = (v40 != 0) & ~[a2 hasError];
LABEL_113:
        v59 = 144;
LABEL_118:
        *(a1 + v59) = v44;
        goto LABEL_121;
      case 0x14u:
        v13 = PBReaderReadString();
        v14 = 40;
LABEL_98:
        v57 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_121;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_121;
    }
  }
}

__CFString *PKPassTileTypeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79D94C8[a1];
  }
}

uint64_t PKPassTileTypeFromString(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      *a2 = 0;
    }

    goto LABEL_13;
  }

  v5 = v3;
  v6 = v5;
  if (v5 == @"default" || (v7 = [(__CFString *)v5 isEqualToString:@"default"], v6, v7))
  {
    if (a2)
    {
      *a2 = 0;
    }

    v8 = v6;
LABEL_7:

    v9 = v6;
LABEL_8:

    v10 = v6;
LABEL_9:

    v11 = v6;
LABEL_10:

LABEL_13:
    v12 = 1;
    goto LABEL_14;
  }

  v14 = v6;
  if (v14 == @"vehicleFunction" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"vehicleFunction"], v15, v16))
  {
    if (a2)
    {
      *a2 = 1;
    }

    goto LABEL_7;
  }

  v17 = v15;
  if (v17 == @"horizontalFlowGroup" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"horizontalFlowGroup"], v18, v19))
  {
    if (a2)
    {
      *a2 = 2;
    }

    goto LABEL_8;
  }

  v20 = v18;
  if (v20 == @"verticalFlowGroup" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"verticalFlowGroup"], v21, v22))
  {
    if (a2)
    {
      *a2 = 3;
    }

    goto LABEL_9;
  }

  v23 = v21;
  if (v23 == @"paymentOfferSelector" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"paymentOfferSelector"], v24, v25))
  {
    if (a2)
    {
      *a2 = 4;
    }

    goto LABEL_10;
  }

  v12 = 0;
  if (a2)
  {
    *a2 = 0;
  }

LABEL_14:

  return v12;
}

__CFString *PKPassTileGroupStyleToString(uint64_t a1)
{
  v1 = @"dashboard";
  if (a1 == 1)
  {
    v1 = @"action";
  }

  if (a1 == 2)
  {
    return @"table";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPassTileGroupStyleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"action" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"action"], v2, v2, (v3 & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    v5 = v2;
    v6 = v5;
    v4 = 2 * (v5 == @"table");
    if (v5 != @"table" && v2)
    {
      if ([(__CFString *)v5 isEqualToString:@"table"])
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

__CFString *PKPassTileStyleToString(uint64_t a1)
{
  v1 = @"compact";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"default";
  }
}

uint64_t PKPassTileStyleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = v3;
    if (v3 == @"default" || (v5 = [(__CFString *)v3 isEqualToString:@"default"], v4, v5))
    {

      v6 = v4;
    }

    else
    {

      v8 = v4;
      if (v8 == @"compact" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"compact"], v9, v10))
      {
        v7 = 1;
        goto LABEL_10;
      }
    }

    v7 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

__CFString *PKPassTileHeightClassToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79D9460[a1 - 1];
  }
}

uint64_t PKPassTileHeightClassFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"twoLine" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"twoLine"], v2, v2, (v3 & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    v5 = v2;
    if (v5 == @"threeLine" || (v6 = v5, v2) && (v7 = [(__CFString *)v5 isEqualToString:@"threeLine"], v6, v6, (v7 & 1) != 0))
    {
      v4 = 2;
    }

    else
    {
      v8 = v6;
      if (v8 == @"dynamic" || v2 && (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"dynamic"], v9, v9, (v10 & 1) != 0))
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

__CFString *PKPassTileContextToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79D94A0[a1 - 1];
  }
}

uint64_t PKPassTileContextFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"dashboard" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"dashboard"], v2, v2, (v3 & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    v5 = v2;
    if (v5 == @"dashboardDetails" || (v6 = v5, v2) && (v7 = [(__CFString *)v5 isEqualToString:@"dashboardDetails"], v6, v6, (v7 & 1) != 0))
    {
      v4 = 2;
    }

    else
    {
      v8 = v6;
      if (v8 == @"additionalInfoFields" || (v9 = v8, v2) && (v10 = [(__CFString *)v8 isEqualToString:@"additionalInfoFields"], v9, v9, (v10 & 1) != 0))
      {
        v4 = 3;
      }

      else
      {
        v11 = v9;
        if (v11 == @"upcomingPassInformation" || (v12 = v11, v2) && (v13 = [(__CFString *)v11 isEqualToString:@"upcomingPassInformation"], v12, v12, (v13 & 1) != 0))
        {
          v4 = 4;
        }

        else
        {
          v14 = v12;
          if (v14 == @"upcomingPassInformationDetails" || v2 && (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"upcomingPassInformationDetails"], v15, v15, (v16 & 1) != 0))
          {
            v4 = 5;
          }

          else
          {
            v4 = 0;
          }
        }
      }
    }
  }

  return v4;
}

id PKTransactionReleasedDataVerificationTypeToLocalizedTitle(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"VERIFICATION_TYPE_AGE";
  }

  else
  {
    v1 = @"VERIFICATION_TYPE_IDENTITY";
  }

  v2 = PKLocalizedIdentityString(&v1->isa, 0);

  return v2;
}

uint64_t PKProtobufPaymentHostUpdateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v16 = objc_alloc_init(PKProtobufShippingMethod);
          objc_storeStrong((a1 + 32), v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !PKProtobufShippingMethodReadFrom(v16, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(PKProtobufPaymentMethod);
          objc_storeStrong((a1 + 8), v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !PKProtobufPaymentMethodReadFrom(v16, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_29;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 24;
LABEL_29:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKAccountTransferEligibilityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"approved")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [@"approved" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"fccStepUpRequired" || (v6 = v5, v7 = [@"fccStepUpRequired" isEqualToString:v5], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

__CFString *PKAccountTransferEligibilityToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E79D95D8 + a1);
  }
}

uint64_t PKGreenTeaLogger()
{
  if (qword_1ED6D1C40 != -1)
  {
    dispatch_once(&qword_1ED6D1C40, &__block_literal_global_76);
  }

  return qword_1ED6D1C38;
}

uint64_t __PKGreenTeaLogger_block_invoke()
{
  result = ct_green_tea_logger_create();
  qword_1ED6D1C38 = result;
  return result;
}

void PKSetDiagnosticsEnabled(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E695E890];
  v5 = *MEMORY[0x1E695E898];
  v6 = CFPreferencesCopyValue(@"PKLogNotificationServiceResponsesKey", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  if (!v6 || a2 && (v11 = v6, v7 = [v6 BOOLValue] == a1, v6 = v11, !v7))
  {
    v12 = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    CFPreferencesSetValue(@"PKLogNotificationServiceResponsesKey", v8, v4, @"mobile", v5);

    CFPreferencesSynchronize(v4, @"mobile", v5);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.passbook.globalprefschanged", 0, 0, 1u);
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.AppSupport.loggingDefaultsChanged", 0, 0, 0);
    if (a1)
    {
      v10 = "\n Logging Enabled ";
    }

    else
    {
      v10 = "\n Logging Disabled ";
    }

    puts(v10);
    v6 = v12;
  }
}

void __PKDeveloperLoggingEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  _MergedGlobals_237[0] = [v0 BOOLForKey:@"PKDeveloperLogging"];
}

uint64_t PKWriteBadPass(void *a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v8 setDateFormat:@"yyyy'-'MM'-'dd'_'HH'-'mm'-'ss'-'SSS"];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v8 stringFromDate:v9];

  v11 = [v10 stringByAppendingString:@"_"];
  v12 = [v11 stringByAppendingString:v5];
  v13 = [v12 stringByAppendingPathExtension:@"pkpass"];

  v14 = MEMORY[0x1E695DFF8];
  v61 = v7;
  v15 = [v7 stringByAppendingPathComponent:v13];
  v16 = [v14 fileURLWithPath:v15 isDirectory:1];

  v17 = [MEMORY[0x1E696AC08] defaultManager];
  v62 = 0;
  v18 = [v17 copyItemAtURL:v6 toURL:v16 error:&v62];
  v60 = v62;

  v19 = PKLogFacilityTypeGetObject(0);
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v50 = [v6 path];
      v51 = [v16 path];
      *buf = 138543618;
      v64 = v50;
      v65 = 2114;
      v66 = v51;
      _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Unable to copy invalid pass from %{public}@ to %{public}@", buf, 0x16u);
    }

    v29 = v13;

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v64 = v60;
      _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Unable to copy invalid pass: %{public}@", buf, 0xCu);
    }

    v30 = [MEMORY[0x1E696AC08] defaultManager];
    v31 = [v6 path];
    v32 = [v30 fileExistsAtPath:v31];

    v33 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v33)
      {
        v34 = [v6 path];
        v35 = [v6 path];
        v36 = _PKPermissionsForPath(v35);
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v36;
        _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Permissions on %{public}@ are %{public}@", buf, 0x16u);

LABEL_45:
      }
    }

    else if (v33)
    {
      v34 = [v6 path];
      *buf = 138543362;
      v64 = v34;
      _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Attempt to move from path that doesn't exist: %{public}@", buf, 0xCu);
      goto LABEL_45;
    }

    v38 = [MEMORY[0x1E696AC08] defaultManager];
    v39 = [v38 fileExistsAtPath:v61];

    v40 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    v59 = v16;
    v13 = v29;
    if (v39)
    {
      v37 = v60;
      if (v40)
      {
        v41 = _PKPermissionsForPath(v61);
        *buf = 138543618;
        v64 = v61;
        v65 = 2114;
        v66 = v41;
        _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Permissions on %{public}@ are %{public}@", buf, 0x16u);

        v37 = v60;
      }
    }

    else
    {
      v37 = v60;
      if (v40)
      {
        *buf = 138543362;
        v64 = v61;
        _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Attempt to move to path that doesn't exist: %{public}@", buf, 0xCu);
      }
    }

    v23 = [v37 userInfo];
    v27 = [v23 objectForKey:@"NSSourceFilePathErrorKey"];
    v18 = 0;
    if (v27)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        _PKPermissionsForPath(v27);
        v52 = v57 = v23;
        *buf = 138543618;
        v64 = v27;
        v65 = 2114;
        v66 = v52;
        _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Permissions on error source %{public}@ are %{public}@", buf, 0x16u);

        v23 = v57;
      }
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v37;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Skipping purging any passes due to previous failure: %@", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v58 = v10;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v64 = v6;
    v65 = 2112;
    v66 = v16;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Copied invalid pass from %@ to %@", buf, 0x16u);
  }

  v21 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = [v21 contentsOfDirectoryAtPath:v61 error:0];

  v23 = v22;
  v24 = [v22 count];
  has_internal_ui = os_variant_has_internal_ui();
  v26 = 5;
  if (has_internal_ui)
  {
    v26 = 20;
  }

  if (v24 > v26)
  {
    v59 = v16;
    v27 = [v22 sortedArrayUsingSelector:sel_compare_];
    if (os_variant_has_internal_ui())
    {
      v28 = -20;
    }

    else
    {
      v28 = -5;
    }

    if (v28 + v24)
    {
      v56 = v5;
      v53 = v13;
      v54 = v8;
      v55 = v6;
      v42 = 0;
      do
      {
        v43 = [v27 objectAtIndex:v42];
        v44 = MEMORY[0x1E695DFF8];
        v45 = [v61 stringByAppendingPathComponent:v43];
        v46 = [v44 fileURLWithPath:v45 isDirectory:1];

        v47 = [MEMORY[0x1E696AC08] defaultManager];
        [v47 removeItemAtURL:v46 error:0];

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v64 = v61;
          v65 = 2112;
          v66 = v43;
          _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Deleting excess bad pass from %@: %@", buf, 0x16u);
        }

        ++v42;
        if (os_variant_has_internal_ui())
        {
          v48 = -20;
        }

        else
        {
          v48 = -5;
        }
      }

      while (v48 + v24 > v42);
      v6 = v55;
      v5 = v56;
      v13 = v53;
      v8 = v54;
      v10 = v58;
    }

    else
    {
      v10 = v58;
    }

    v18 = v18;
    v37 = v60;
LABEL_42:

    v16 = v59;
    goto LABEL_43;
  }

  v10 = v58;
  v37 = v60;
LABEL_43:

  return v18;
}

__CFString *_PKPermissionsForPath(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  v3 = [v2 attributesOfItemAtPath:v1 error:&v15];
  v4 = v15;

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = [v3 objectForKey:*MEMORY[0x1E696A370]];
    v6 = v8;
    if (v8)
    {
      snprintf(__str, 0x10uLL, "0%03o", [v8 intValue]);
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", __str];
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        v17 = v1;
        _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Unable to fetch permissions attribute of %{public}@", __str, 0xCu);
      }

      v7 = 0;
    }

    v10 = [v3 objectForKey:*MEMORY[0x1E696A3A0]];
    if (v10)
    {
      v11 = &stru_1F227FD28;
      if (v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = &stru_1F227FD28;
      }

      if (v7)
      {
        v11 = @" ";
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@(protection %@)", v12, v11, v10];
      v7 = v13 = v7;
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        v17 = v1;
        _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "Unable to fetch protection attribute of %{public}@", __str, 0xCu);
      }
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *__str = 138543618;
      v17 = v1;
      v18 = 2114;
      v19 = v4;
      _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Unable to fetch permissions or any attributes of %{public}@: %{public}@", __str, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

void PKLegacyStockholmLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

__CFString *PKPassCredentialShareTargetDeviceToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"universal";
  }

  else
  {
    return off_1E79D97C8[a1];
  }
}

uint64_t PKPassCredentialShareTargetDeviceFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"phone")
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (!v1)
  {
    goto LABEL_8;
  }

  v3 = [(__CFString *)v1 caseInsensitiveCompare:@"phone"];

  if (v3)
  {
    v4 = v2;
    if (v4 == @"watch" || (v5 = v4, v6 = [(__CFString *)v4 caseInsensitiveCompare:@"watch"], v5, !v6))
    {
      v3 = 1;
      goto LABEL_11;
    }

    v7 = v5;
    if (v7 != @"universal")
    {
      v8 = v7;
      v9 = [(__CFString *)v7 isEqualToString:@"universal"];

      if ((v9 & 1) == 0)
      {
        v11 = v8;
        if (v11 == @"current" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"current"], v12, (v13 & 1) != 0))
        {
          v3 = 3;
          goto LABEL_11;
        }

        v14 = v12;
        if (v14 == @"localWatch" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"localWatch"], v15, (v16 & 1) != 0))
        {
          v3 = 4;
          goto LABEL_11;
        }

        v17 = v15;
        if (v17 == @"local" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"local"], v18, v19))
        {
          v3 = 5;
          goto LABEL_11;
        }
      }
    }

LABEL_8:
    v3 = 2;
  }

LABEL_11:

  return v3;
}

uint64_t IntegerFromFelicaDateFormat(void *a1)
{
  v1 = a1;
  v2 = [v1 month];
  v3 = ([v1 day] << 16) | (v2 << 24);
  v4 = [v1 year];

  return v3 | v4;
}

__CFString *PKPrivacyEncryptionSchemeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"APPLE-HPKE-v1";
  }

  else
  {
    return off_1E79D9A80[a1];
  }
}

uint64_t PKPrivacyEncryptionSchemeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"APPLE-HPKE-v1")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"APPLE-HPKE-v1"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"EC_v2" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"EC_v2"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"EC_v3" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"EC_v3"], v9, v10))
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 1;
LABEL_12:

  return v4;
}

void PKPersistentBAACertificateAndKey(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    error = 0;
    v8 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC18], 0x40000001uLL, &error);
    if (v8)
    {
      v9 = PKBAAOptionsDictionary(0, 0, 0, v8);
      CFRelease(v8);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__45;
      v20 = __Block_byref_object_dispose__45;
      v21 = 0;
      if (v5)
      {
        v10 = [objc_alloc(MEMORY[0x1E696EE50]) initWithExternalizedContext:v5];
        v11 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v10;

        [v9 setObject:@"kSecUseAuthenticationUIFail" forKeyedSubscript:*MEMORY[0x1E6999F20]];
        [v9 setObject:*(*(&buf + 1) + 40) forKeyedSubscript:*MEMORY[0x1E6999EC8]];
      }

      v13 = v5;
      v14 = v6;
      v15 = v7;
      DeviceIdentityIssueClientCertificateWithCompletion();

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = error;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Error: failed to create access control for BAA cert key: %@", &buf, 0xCu);
      }

      if (error)
      {
        CFRelease(error);
      }
    }
  }
}

void sub_1AD88B274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKBAAOptionsDictionary(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setObject:@"com.apple.passd.virtual.card.credential.key" forKeyedSubscript:*MEMORY[0x1E6999EB8]];
  v9 = MEMORY[0x1E695E118];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6999F30]];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6999EA8]];

  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6999F38]];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6999F18]];

  v12 = objc_alloc(MEMORY[0x1E695DF70]);
  v13 = *MEMORY[0x1E6999EF0];
  v21[0] = *MEMORY[0x1E6999EE0];
  v21[1] = v13;
  v14 = *MEMORY[0x1E6999EF8];
  v21[2] = *MEMORY[0x1E6999EE8];
  v21[3] = v14;
  v21[4] = *MEMORY[0x1E6999ED8];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];
  v16 = [v12 initWithArray:v15];
  v17 = *MEMORY[0x1E6999F00];
  [v8 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6999F00]];

  if (v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = &unk_1F23B5150;
  }

  [v8 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6999F28]];
  if ((a1 & 1) == 0)
  {
    v19 = [v8 objectForKeyedSubscript:v17];
    [v19 addObject:*MEMORY[0x1E6999F08]];
  }

  [v8 setObject:a4 forKeyedSubscript:*MEMORY[0x1E6999E80]];

  return v8;
}

void __PKPersistentBAACertificateAndKey_block_invoke(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "PKPersistentBAACertificateAndKey_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = a2;
    *&buf[22] = 2112;
    v39 = v7;
    LOWORD(v40) = 2112;
    *(&v40 + 2) = v8;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%s with reference key: %@, certificates: %@, error: %@", buf, 0x2Au);
  }

  if (v8)
  {
    if ((mobileactivationErrorHasDomainAndErrorCode() & 1) != 0 || mobileactivationErrorHasDomainAndErrorCode())
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "BAA (UCRT) failed due to missing UCRT, falling back to BAA (SCRT)", buf, 2u);
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __PKPersistentBAACertificateAndKey_block_invoke_61;
      v29[3] = &unk_1E79D9998;
      v28 = *(a1 + 48);
      v12 = v28;
      v30 = v28;
      v13 = v10;
      v14 = v11;
      v15 = v29;
      error = 0;
      v16 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC18], 0x40000001uLL, &error);
      if (v16)
      {
        v17 = PKBAAOptionsDictionary(1, 0, &unk_1F23B5168, v16);
        CFRelease(v16);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v39 = __Block_byref_object_copy__45;
        *&v40 = __Block_byref_object_dispose__45;
        *(&v40 + 1) = 0;
        if (v13)
        {
          v18 = [objc_alloc(MEMORY[0x1E696EE50]) initWithExternalizedContext:v13];
          v19 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v18;

          [v17 setObject:@"kSecUseAuthenticationUIFail" forKeyedSubscript:*MEMORY[0x1E6999F20]];
          [v17 setObject:*(*&buf[8] + 40) forKeyedSubscript:*MEMORY[0x1E6999EC8]];
        }

        v31 = MEMORY[0x1E69E9820];
        v32 = 3221225472;
        v33 = __PKGenerateSCRTFallbackCertificateAndKey_block_invoke;
        v34 = &unk_1E79D9A60;
        v36 = buf;
        v35 = v15;
        DeviceIdentityIssueClientCertificateWithCompletion();

        _Block_object_dispose(buf, 8);
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = error;
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: failed to create access control for BAA (SCRT) cert key: %@", buf, 0xCu);
        }

        if (error)
        {
          CFRelease(error);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v8 description];
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create BAA (UCRT) attestation: %@", buf, 0xCu);
      }

      v25 = *(*(*(a1 + 56) + 8) + 40);
      if (v25)
      {
        [v25 invalidate];
        v26 = *(*(a1 + 56) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = 0;
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v20 = *(*(*(a1 + 56) + 8) + 40);
    if (v20)
    {
      [v20 invalidate];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = 0;
    }

    v23 = PKExtractBAACertificatesData(a2, v7);
    (*(*(a1 + 48) + 16))();
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

void sub_1AD88B9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PKPersistentBAACertificateAndKey_block_invoke_61(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    [v8 invalidate];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  (*(*(a1 + 32) + 16))();
  if (a3)
  {
    CFRelease(a3);
  }
}

id PKExtractBAACertificatesData(__SecKey *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count] == 2)
  {
    v5 = SecKeyCopyPublicKey(a1);
    if (v5)
    {
      v6 = v5;
      error = 0;
      v7 = SecKeyCopyExternalRepresentation(v5, &error);
      v8 = error;
      v9 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Client public key generated by BAA: %@\n error: %@", buf, 0x16u);
      }

      CFRelease(v6);
      if (error)
      {
        CFRelease(error);
      }
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v4 count])
    {
      v11 = 0;
      do
      {
        v12 = [v4 objectAtIndexedSubscript:v11];
        v13 = SecCertificateCopyData(v12);

        [v10 addObject:v13];
        ++v11;
      }

      while (v11 < [v4 count]);
    }

    v14 = [v10 copy];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = a1;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error with BAA reference key: %@ or certificates: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

void PKForceRefreshBAACertificateAndKey(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Force refresh of stored BAA (UCRT) keys and certificates", buf, 2u);
  }

  error = 0;
  v6 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC18], 0x40000001uLL, &error);
  if (v6)
  {
    v7 = v6;
    v8 = PKBAAOptionsDictionary(0, 1, 0, v6);
    CFRelease(v7);
    v9 = v4;
    DeviceIdentityIssueClientCertificateWithCompletion();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = error;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error: failed to create access control for BAA (UCRT) key: %@", buf, 0xCu);
    }

    if (error)
    {
      CFRelease(error);
    }
  }
}

void __PKForceRefreshBAACertificateAndKey_block_invoke(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 description];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create BAA (UCRT) attestation: %@", buf, 0xCu);
    }
  }

  else
  {
    if (a2 && [v7 count] == 2)
    {
      v11 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Successfully forced refresh of stored BAA key and certificates", buf, 2u);
      }

      v12 = SecKeyCopyPublicKey(a2);
      if (v12)
      {
        v13 = v12;
        error = 0;
        v14 = SecKeyCopyExternalRepresentation(v12, &error);
        v15 = error;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = v14;
          v20 = 2112;
          v21 = v15;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Client public key generated by Device Identity: %@\n error: %@", buf, 0x16u);
        }

        CFRelease(v13);
        if (error)
        {
          CFRelease(error);
        }
      }

      v16 = *(a1 + 32);
      if (v16)
      {
        (*(v16 + 16))();
      }

      goto LABEL_19;
    }

    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get reference key or cert", buf, 2u);
    }
  }

  if (a2)
  {
LABEL_19:
    CFRelease(a2);
  }
}

void PKGenerateOneTimeBAACertificate(int a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (!a1)
  {
    v8 = 0;
    goto LABEL_6;
  }

  error = 0;
  v7 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC18], 0x40000001uLL, &error);
  if (v7)
  {
    v8 = v7;
LABEL_6:
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = MEMORY[0x1E695E110];
    [v9 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6999F30]];
    v11 = MEMORY[0x1E695E118];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6999EA8]];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6999F38]];
    [v9 setObject:&unk_1F23B50A8 forKeyedSubscript:*MEMORY[0x1E6999F28]];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6999F18]];
    v12 = *MEMORY[0x1E6999EE0];
    v19[0] = *MEMORY[0x1E6999F08];
    v19[1] = v12;
    v13 = *MEMORY[0x1E6999EE8];
    v19[2] = *MEMORY[0x1E6999EF0];
    v19[3] = v13;
    v19[4] = *MEMORY[0x1E6999EF8];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6999E80]];
      v15 = [v14 arrayByAddingObject:*MEMORY[0x1E6999ED8]];

      v14 = v15;
    }

    [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6999F00]];
    v17 = v6;
    DeviceIdentityIssueClientCertificateWithCompletion();
    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_11;
  }

  v16 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = error;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Error: failed to create access control for BAA cert key: %@", buf, 0xCu);
  }

  if (error)
  {
    CFRelease(error);
  }

LABEL_11:
}

void __PKGenerateOneTimeBAACertificate_block_invoke(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = "PKGenerateOneTimeBAACertificate_block_invoke";
    v14 = 2112;
    v15 = a2;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%s with reference key: %@, certificates: %@, error: %@", &v12, 0x2Au);
  }

  if (!v8)
  {
    v11 = PKExtractBAACertificatesData(a2, v7);
    (*(*(a1 + 32) + 16))();

    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 description];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create BAA attestation: %@", &v12, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  if (a2)
  {
LABEL_7:
    CFRelease(a2);
  }

LABEL_8:
}

void PKSignWithBAACertificatePaymentOfferMerchandisingData(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = __Block_byref_object_copy__45;
    v30[4] = __Block_byref_object_dispose__45;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__45;
    v28[4] = __Block_byref_object_dispose__45;
    v29 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PKSignWithBAACertificatePaymentOfferMerchandisingData_block_invoke;
    aBlock[3] = &unk_1E79D9A10;
    v27 = 0;
    v23 = &v33;
    v24 = v32;
    v22 = v7;
    v25 = v30;
    v26 = v28;
    v9 = _Block_copy(aBlock);
    v10 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697AC18], 0x40000000uLL, v34 + 3);
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v11 setObject:@"com.apple.passd.payment.offers.merchandising.key" forKey:*MEMORY[0x1E6999EB8]];
      [v11 setObject:@"com.apple.passd" forKey:*MEMORY[0x1E6999EB0]];
      [v11 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6999EA8]];
      [v11 setObject:&unk_1F23B50C0 forKey:*MEMORY[0x1E6999ED0]];
      [v11 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6999F18]];
      [v11 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6999F10]];
      [v11 setObject:v10 forKey:*MEMORY[0x1E6999E80]];
      [v11 setObject:@"paymentOfferMerchandising" forKey:*MEMORY[0x1E6999E98]];
      [v11 setObject:&unk_1F23B50D8 forKey:*MEMORY[0x1E6999F28]];
      v12 = *MEMORY[0x1E6999EF8];
      v37[0] = *MEMORY[0x1E6999EF0];
      v37[1] = v12;
      v13 = *MEMORY[0x1E6999EE8];
      v37[2] = *MEMORY[0x1E6999ED8];
      v37[3] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
      [v11 setObject:v14 forKey:*MEMORY[0x1E6999F00]];

      CFRelease(v10);
      v20 = v9;
      v19 = v6;
      DeviceIdentityIssueClientCertificateWithCompletion();

      v15 = v20;
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: failed to create access control for merchandising BAA: %@", v34[3]];
      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v11;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v17 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      v39 = v11;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v15 = [v17 errorWithDomain:@"com.apple.PassKit.decryptionError" code:1 userInfo:v18];

      (*(v9 + 2))(v9, v15);
    }

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&v33, 8);
  }
}

void sub_1AD88CAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

void __PKSignWithBAACertificatePaymentOfferMerchandisingData_block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = *(*(a1[5] + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(*(a1[6] + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[4];
  v7 = [*(*(a1[7] + 8) + 40) copy];
  (*(v6 + 16))(v6, v7, *(*(a1[8] + 8) + 40), v8);
}

void __PKSignWithBAACertificatePaymentOfferMerchandisingData_block_invoke_78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 138412802;
    v44 = v10;
    v45 = 2112;
    v46 = v7;
    v47 = 2112;
    v48 = v8;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Created merchandising BAA reference key: %@, certificates: %@, error: %@", buf, 0x20u);
  }

  if (!v8)
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      if ([v7 count])
      {
        v21 = 0;
        do
        {
          v22 = [v7 objectAtIndexedSubscript:v21];
          v23 = SecCertificateCopyData(v22);

          [*(*(*(a1 + 56) + 8) + 40) addObject:v23];
          ++v21;
        }

        while (v21 < [v7 count]);
      }

      if ([*(*(*(a1 + 56) + 8) + 40) count])
      {
        Signature = SecKeyCreateSignature(*(*(*(a1 + 48) + 8) + 24), *MEMORY[0x1E697B128], *(a1 + 32), (*(*(a1 + 72) + 8) + 24));
        v25 = *(*(a1 + 64) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = Signature;

        if (*(*(*(a1 + 72) + 8) + 24))
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate signature for merchandising request. %@", *(*(*(a1 + 72) + 8) + 24)];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            v44 = v11;
            _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
          }

          v12 = MEMORY[0x1E696ABC0];
          v35 = *MEMORY[0x1E696A578];
          v36 = v11;
          v13 = MEMORY[0x1E695DF20];
          v14 = &v36;
          v15 = &v35;
          goto LABEL_7;
        }

        if (*(*(*(a1 + 64) + 8) + 40))
        {
          (*(*(a1 + 40) + 16))();
          goto LABEL_24;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v44 = @"Unable to generated signature is nil for merchandising request.";
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
        }

        v27 = MEMORY[0x1E696ABC0];
        v33 = *MEMORY[0x1E696A578];
        v34 = @"Unable to generated signature is nil for merchandising request.";
        v28 = MEMORY[0x1E695DF20];
        v29 = &v34;
        v30 = &v33;
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v44 = @"Failed to extract merchandising BAA certificates.";
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
        }

        v27 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v38 = @"Failed to extract merchandising BAA certificates.";
        v28 = MEMORY[0x1E695DF20];
        v29 = &v38;
        v30 = &v37;
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v44 = @"Failed to generate a reference key for merchandising BAA certificates.";
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
      }

      v27 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40 = @"Failed to generate a reference key for merchandising BAA certificates.";
      v28 = MEMORY[0x1E695DF20];
      v29 = &v40;
      v30 = &v39;
    }

    v31 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:1];
    v32 = [v27 errorWithDomain:@"com.apple.PassKit.decryptionError" code:1 userInfo:v31];

    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create merchandising BAA attestation: %@", v8];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v44 = v11;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
  }

  v12 = MEMORY[0x1E696ABC0];
  v41 = *MEMORY[0x1E696A578];
  v42 = v11;
  v13 = MEMORY[0x1E695DF20];
  v14 = &v42;
  v15 = &v41;
LABEL_7:
  v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
  v17 = [v12 errorWithDomain:@"com.apple.PassKit.decryptionError" code:1 userInfo:v16];

  (*(*(a1 + 40) + 16))();
LABEL_24:
}

id PKPaymentEncryptDataWithCertChain(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  cf = 0;
  v8 = PKPaymentCreateAndValidateTrustWithCerts(a2, &cf, a3);
  v9 = 0;
  if (v8)
  {
    v9 = PKEncryptDataToServerWithTrust(v7, cf, a4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

id PKEncryptDataToServerWithTrust(void *a1, __SecTrust *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2)
  {
    v6 = SecCopyEncryptedToServer();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 base64EncodedDataWithOptions:0];
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [0 localizedDescription];
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Error encrypting data: %@", buf, 0xCu);
      }

      v8 = 0;
    }

    if (a3)
    {
      if (SecTrustGetCertificateCount(a2) > 0)
      {
        PKSecTrustGetCertificateAtIndex(a2, 0);
        v10 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
        *a3 = v10;

        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if (a3)
    {
LABEL_12:
      *a3 = 0;
    }
  }

LABEL_13:

  return v8;
}

id PKEncryptDataUsingPrivacyScheme(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = 0;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v8 = MEMORY[0x1E69C86F8];
      goto LABEL_12;
    }

    if (a2 == 2)
    {
      v8 = MEMORY[0x1E69C86F0];
      goto LABEL_12;
    }

LABEL_13:
    v10 = [MEMORY[0x1E69C86E0] sharedManager];
    v14 = 0;
    v9 = [v10 encryptData:v5 scheme:v7 recipientPublicKey:v6 outError:&v14];
    v11 = v14;

    if (v11)
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Data encryption failed with error %@", buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v8 = MEMORY[0x1E69C8700];
LABEL_12:
      v7 = *v8;
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Could not encrypt data, unknown scheme", buf, 2u);
  }

  v9 = 0;
LABEL_18:

  return v9;
}