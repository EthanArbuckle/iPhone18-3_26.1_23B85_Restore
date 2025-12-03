@interface WBSCreditCardDataController
+ (BOOL)hasCreditCardData;
- (BOOL)_shouldReplaceExistingCard:(id)card withImportedCard:(id)importedCard;
- (BOOL)authenticationRequiredForVirtualCard:(id)card;
- (BOOL)hasUsedNonVirtualCard;
- (BOOL)isCreditCardDataSaved:(id)saved;
- (BOOL)isVirtualCard:(id)card previouslyFilledVirtualCardNumbers:(id)numbers;
- (BOOL)shouldAddCardWithNumber:(id)number;
- (BOOL)shouldNeverSaveCardWithNumber:(id)number;
- (BOOL)shouldOfferVirtualCards;
- (BOOL)test_shouldReplaceExistingCard:(id)card withImportedCard:(id)importedCard;
- (NSArray)creditCardData;
- (WBSCreditCardDataController)init;
- (id)_cardDataFromCardDescriptors:(id)descriptors;
- (id)_creditCardData;
- (id)_deduplicatedVirtualCardDataArray:(id)array andCreditCardDataArray:(id)dataArray;
- (id)_neverSavedCreditCardSuffixFromCard:(id)card;
- (id)_neverSavedCreditCardSuffixFromCardNumber:(id)number;
- (id)_uniqueCardNameForCardName:(id)name;
- (id)_virtualCardDataFromPKVirtualCards:(id)cards;
- (id)cachedArtworkForCardNumber:(id)number withSize:(CGSize)size;
- (id)defaultNameForCardOfType:(unint64_t)type cardholderName:(id)name;
- (id)existingCardWithNumber:(id)number;
- (id)fieldsToObscureWhenFillingCreditCard:(id)card formMetadata:(id)metadata;
- (id)fieldsToObscureWhenFillingSingleCreditCardData:(id)data formFieldValues:(id)values;
- (id)savableCreditCardDataInForm:(id)form;
- (id)urlToListOfCardsInWallet;
- (void)_canSaveCardData:(id)data completionHandler:(id)handler;
- (void)_creditCardDataDidChange;
- (void)_exportCreditCardDataToFileWithURL:(id)l completionHandler:(id)handler;
- (void)_getCreditCardDataFromWalletMatchingCardData:(id)data withCompletionHandler:(id)handler;
- (void)_getCreditCardDataWithAllowedTypes:(id)types completionHandler:(id)handler;
- (void)_removeNeverSaveCreditCardData:(id)data;
- (void)addArtworkToCache:(id)cache forCardNumber:(id)number withSize:(CGSize)size;
- (void)canSaveCardData:(id)data lastFilledCardData:(id)cardData completionHandler:(id)handler;
- (void)clearCreditCardData;
- (void)exportCreditCardDataToFileWithURL:(id)l completionHandler:(id)handler;
- (void)getCardDetailsForVirtualCards:(id)cards externalizedContext:(id)context blockToUpdateCardDetails:(id)details;
- (void)getCreditCardDataToFill:(id)fill host:(id)host externalizedContext:(id)context completionHandler:(id)handler;
- (void)getCreditCardDataWithCompletionHandler:(id)handler;
- (void)getVirtualCardCredentialsWithExternalizedContext:(id)context shouldIncludeVPANCards:(BOOL)cards completionHandler:(id)handler;
- (void)getVirtualCardsWithCompletionHandler:(id)handler;
- (void)importCreditCardDataWithCardNumber:(id)number cardName:(id)name cardholderName:(id)cardholderName cardExpirationMonth:(id)month cardExpirationYear:(id)year lastUsedDate:(id)date;
- (void)isVirtualCard:(id)card previouslyFilledVirtualCardNumbers:(id)numbers completion:(id)completion;
- (void)markCreditCardDataAsMostRecentlyUsed:(id)used;
- (void)neverSaveCVVForCreditCardData:(id)data;
- (void)neverSaveCreditCardData:(id)data;
- (void)numberOfCreditCardsToBeExportedWithCompletionHandler:(id)handler;
- (void)processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext:(id)context blockToUpdateCardDetails:(id)details;
- (void)removeCreditCardData:(id)data;
- (void)replaceCreditCardData:(id)data withCard:(id)card;
- (void)saveCreditCardData:(id)data completionHandler:(id)handler;
- (void)saveCreditCardDataIfAllowed:(id)allowed;
- (void)sendCardholderNameEnteredInFormToWalletIfNecessary:(id)necessary lastFilledVirtualCardData:(id)data;
- (void)setHasUsedNonVirtualCard;
- (void)tellWalletThatExistingCardWasFilledInForm:(id)form previouslyFilledVirtualCardNumbers:(id)numbers;
- (void)tellWalletThatNewCardWasSaved:(id)saved;
- (void)updateCreditCardDataCreditCardData:(id)data;
@end

@implementation WBSCreditCardDataController

- (WBSCreditCardDataController)init
{
  v32.receiver = self;
  v32.super_class = WBSCreditCardDataController;
  v2 = [(WBSCreditCardDataController *)&v32 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.SafariShared.WBSCreditCardDataController", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    creditCardDataKeychainReferences = v2->_creditCardDataKeychainReferences;
    v2->_creditCardDataKeychainReferences = strongToStrongObjectsMapTable;

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v9 = getPKAutoFillCardManagerClass(void)::softClass;
    v41 = getPKAutoFillCardManagerClass(void)::softClass;
    if (!getPKAutoFillCardManagerClass(void)::softClass)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = ___ZL29getPKAutoFillCardManagerClassv_block_invoke;
      v36 = &unk_1E7FC4A50;
      v37 = &v38;
      PassKitCoreLibraryCore(v8);
      Class = objc_getClass("PKAutoFillCardManager");
      *(v37[1] + 24) = Class;
      getPKAutoFillCardManagerClass(void)::softClass = *(v37[1] + 24);
      v9 = v39[3];
    }

    v11 = v9;
    _Block_object_dispose(&v38, 8);
    v12 = objc_alloc_init(v9);
    autoFillCardManager = v2->_autoFillCardManager;
    v2->_autoFillCardManager = v12;

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v15 = getPKVirtualCardManagerClass(void)::softClass;
    v41 = getPKVirtualCardManagerClass(void)::softClass;
    if (!getPKVirtualCardManagerClass(void)::softClass)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = ___ZL28getPKVirtualCardManagerClassv_block_invoke;
      v36 = &unk_1E7FC4A50;
      v37 = &v38;
      PassKitCoreLibraryCore(v14);
      v16 = objc_getClass("PKVirtualCardManager");
      *(v37[1] + 24) = v16;
      getPKVirtualCardManagerClass(void)::softClass = *(v37[1] + 24);
      v15 = v39[3];
    }

    v17 = v15;
    _Block_object_dispose(&v38, 8);
    v18 = objc_alloc_init(v15);
    virtualCardManager = v2->_virtualCardManager;
    v2->_virtualCardManager = v18;

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v21 = getPKSafariCardNotificationManagerClass(void)::softClass;
    v41 = getPKSafariCardNotificationManagerClass(void)::softClass;
    if (!getPKSafariCardNotificationManagerClass(void)::softClass)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = ___ZL39getPKSafariCardNotificationManagerClassv_block_invoke;
      v36 = &unk_1E7FC4A50;
      v37 = &v38;
      PassKitCoreLibraryCore(v20);
      v22 = objc_getClass("PKSafariCardNotificationManager");
      *(v37[1] + 24) = v22;
      getPKSafariCardNotificationManagerClass(void)::softClass = *(v37[1] + 24);
      v21 = v39[3];
    }

    v23 = v21;
    _Block_object_dispose(&v38, 8);
    v24 = objc_alloc_init(v21);
    virtualCardNotificationManager = v2->_virtualCardNotificationManager;
    v2->_virtualCardNotificationManager = v24;

    array = [MEMORY[0x1E695DF70] array];
    queueOfVirtualCardsToFetchDetailsFor = v2->_queueOfVirtualCardsToFetchDetailsFor;
    v2->_queueOfVirtualCardsToFetchDetailsFor = array;

    v28 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    artworkCache = v2->_artworkCache;
    v2->_artworkCache = v28;

    v30 = v2;
  }

  return v2;
}

+ (BOOL)hasCreditCardData
{
  v12[5] = *MEMORY[0x1E69E9840];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([safari_browserDefaults BOOLForKey:@"WBSDebugIgnoreCardsFromKeychain"])
  {
    v3 = 0;
  }

  else
  {
    v4 = *MEMORY[0x1E697AEB0];
    v11[0] = *MEMORY[0x1E697ABD0];
    v11[1] = v4;
    v12[0] = @"com.apple.safari.credit-cards";
    v12[1] = MEMORY[0x1E695E118];
    v5 = *MEMORY[0x1E697B008];
    v6 = *MEMORY[0x1E697AE88];
    v11[2] = *MEMORY[0x1E697AFF8];
    v11[3] = v6;
    v12[2] = v5;
    v12[3] = @"SafariCreditCardEntries";
    v11[4] = *MEMORY[0x1E697B260];
    v12[4] = *MEMORY[0x1E697B270];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
    v8 = SecItemCopyMatching(v7, 0);
    v3 = v8 == 0;
    if (v8 != -25300)
    {
      if (v8)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          +[WBSCreditCardDataController hasCreditCardData];
        }
      }
    }
  }

  return v3;
}

- (id)_creditCardData
{
  v32[7] = *MEMORY[0x1E69E9840];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([safari_browserDefaults BOOLForKey:@"WBSDebugIgnoreCardsFromKeychain"])
  {
    array = MEMORY[0x1E695E0F0];
    goto LABEL_21;
  }

  v2 = *MEMORY[0x1E697AEB0];
  v31[0] = *MEMORY[0x1E697ABD0];
  v31[1] = v2;
  v32[0] = @"com.apple.safari.credit-cards";
  v32[1] = MEMORY[0x1E695E118];
  v3 = *MEMORY[0x1E697B008];
  v4 = *MEMORY[0x1E697AE88];
  v31[2] = *MEMORY[0x1E697AFF8];
  v31[3] = v4;
  v32[2] = v3;
  v32[3] = @"SafariCreditCardEntries";
  v5 = *MEMORY[0x1E697B268];
  v6 = *MEMORY[0x1E697B320];
  v31[4] = *MEMORY[0x1E697B260];
  v31[5] = v6;
  v32[4] = v5;
  v32[5] = MEMORY[0x1E695E118];
  v31[6] = *MEMORY[0x1E697B318];
  v32[6] = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:7];
  v21 = result = 0;
  v7 = SecItemCopyMatching(v21, &result);
  if (v7 != -25300)
  {
    if (!v7)
    {
      v8 = result;
      array = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        v11 = *v26;
        v12 = *MEMORY[0x1E697B3C8];
        v13 = *MEMORY[0x1E697B3C0];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v16 = [v15 objectForKeyedSubscript:v12];
            v17 = [v15 objectForKeyedSubscript:v13];
            if (v17)
            {
              v18 = [[WBSCreditCardData alloc] initWithKeychainRepresentation:v17];
              if (v18)
              {
                [(NSMapTable *)self->_creditCardDataKeychainReferences setObject:v16 forKey:v18];
                [array addObject:v18];
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v10);
      }

      [(WBSCreditCardDataController *)self _sortCreditCardDataArray:array];
      goto LABEL_20;
    }

    v19 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[WBSCreditCardDataController hasCreditCardData];
    }
  }

  array = MEMORY[0x1E695E0F0];
LABEL_20:

LABEL_21:

  return array;
}

uint64_t __71__WBSCreditCardDataController_creditCardComparatorForSortingInSettings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 cardName];
  v7 = [v5 cardName];
  v8 = [v6 caseInsensitiveCompare:v7];

  if (!v8)
  {
    v9 = [v4 cardholderName];
    v10 = [v5 cardholderName];
    v8 = [v9 caseInsensitiveCompare:v10];

    if (!v8)
    {
      v11 = [v4 cardNumber];
      WBSCreditCardTypeFromNumber();
      v12 = WBSCreditCardTypeLocalizedName();

      v13 = [v5 cardNumber];
      WBSCreditCardTypeFromNumber();
      v14 = WBSCreditCardTypeLocalizedName();

      v8 = [v12 compare:v14];
      if (!v8)
      {
        v15 = [v4 cardNumber];
        v16 = [v5 cardNumber];
        v8 = [v15 compare:v16];
      }
    }
  }

  return v8;
}

uint64_t __56__WBSCreditCardDataController__sortCreditCardDataArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isCardBalanceZeroOrNegative];
  if (v6 == [v5 isCardBalanceZeroOrNegative])
  {
    v8 = [v4 lastUsedDate];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x1E695DF00] distantPast];
    }

    v11 = v10;

    v12 = [v5 lastUsedDate];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x1E695DF00] distantPast];
    }

    v15 = v14;

    v7 = [v15 compare:v11];
  }

  else if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)_deduplicatedVirtualCardDataArray:(id)array andCreditCardDataArray:(id)dataArray
{
  v35 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  dataArrayCopy = dataArray;
  v24 = arrayCopy;
  if ([arrayCopy count])
  {
    if ([dataArrayCopy count])
    {
      v21 = [arrayCopy mutableCopy];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = dataArrayCopy;
      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v6)
      {
        v23 = *v30;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v29 + 1) + 8 * i);
            cardNumber = [v8 cardNumber];
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v10 = v24;
            v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v11)
            {
              v12 = *v26;
              while (2)
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v26 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  virtualCard = [*(*(&v25 + 1) + 8 * j) virtualCard];
                  v15 = [virtualCard isEqualToSafariEntryWithPrimaryAccountNumber:cardNumber expirationDate:0];

                  if (v15)
                  {

                    goto LABEL_18;
                  }
                }

                v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

            [v21 addObject:v8];
LABEL_18:
          }

          v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v6);
      }

      v16 = v24;
      v17 = v21;
      v18 = obj;
    }

    else
    {
      v16 = 0;
      v18 = dataArrayCopy;
      v17 = arrayCopy;
    }

    dataArrayCopy = v17;
  }

  else
  {
    v18 = 0;
    v16 = arrayCopy;
  }

  return dataArrayCopy;
}

- (NSArray)creditCardData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__WBSCreditCardDataController_creditCardData__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__WBSCreditCardDataController_creditCardData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _creditCardData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)authenticationRequiredForVirtualCard:(id)card
{
  cardCopy = card;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    cardDescriptor = [cardCopy cardDescriptor];
    requiresAuthorization = [cardDescriptor requiresAuthorization];
  }

  else
  {
    cardDescriptor = [cardCopy virtualCard];
    requiresAuthorization = [cardDescriptor requiresAuthentication];
  }

  v6 = requiresAuthorization;

  return v6;
}

- (id)urlToListOfCardsInWallet
{
  if (objc_opt_respondsToSelector())
  {
    urlToListOfCards = [(PKAutoFillCardManager *)self->_autoFillCardManager urlToListOfCards];
  }

  else
  {
    urlToListOfCards = 0;
  }

  return urlToListOfCards;
}

- (id)_cardDataFromCardDescriptors:(id)descriptors
{
  v3 = [descriptors safari_mapObjectsUsingBlock:&__block_literal_global_41];

  return v3;
}

WBSCreditCardData *__60__WBSCreditCardDataController__cardDataFromCardDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSCreditCardData alloc] initWithCreditCardDescriptor:v2];

  return v3;
}

- (BOOL)shouldOfferVirtualCards
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults BOOLForKey:@"WBSDebugIgnoreCardsFromWallet"];

  return v3 ^ 1;
}

- (id)_virtualCardDataFromPKVirtualCards:(id)cards
{
  v4 = [cards safari_mapObjectsUsingBlock:&__block_literal_global_44];
  v5 = [v4 mutableCopy];

  [(WBSCreditCardDataController *)self _sortCreditCardDataArray:v5];

  return v5;
}

WBSCreditCardData *__66__WBSCreditCardDataController__virtualCardDataFromPKVirtualCards___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSCreditCardData alloc] initWithVirtualCard:v2];

  return v3;
}

- (void)_getCreditCardDataFromWalletMatchingCardData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  autoFillCardManager = self->_autoFillCardManager;
  creditCardFieldsToRequest = [(WBSCreditCardDataController *)self creditCardFieldsToRequest];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F3A9ABF8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7FC4BA0;
  v13[4] = self;
  objc_copyWeak(&v16, &location);
  v11 = handlerCopy;
  v15 = v11;
  v12 = dataCopy;
  v14 = v12;
  [(PKAutoFillCardManager *)autoFillCardManager activeFPANCardsWithOptions:creditCardFieldsToRequest allowedCardTypes:v10 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7FB7020;
  objc_copyWeak(&v10, (a1 + 56));
  v9 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
}

void __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_2(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [a1[4] count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Number of active credit cards is %lu", &buf, 0xCu);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_47;
    v15[3] = &unk_1E7FC4B00;
    v5 = a1[4];
    v16 = a1[5];
    v6 = [v5 safari_filterObjectsUsingBlock:v15];
    v7 = [WeakRetained _cardDataFromCardDescriptors:v6];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__8;
    v20 = __Block_byref_object_dispose__8;
    v21 = 0;
    v8 = WeakRetained[2];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_2_49;
    v12[3] = &unk_1E7FC4B50;
    v12[4] = WeakRetained;
    v13 = a1[5];
    p_buf = &buf;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_53;
    v9[3] = &unk_1E7FC4B78;
    v10 = a1[6];
    v11 = &buf;
    [v7 safari_enumerateAsynchronouslyOnQueue:v8 enumerationBlock:v12 completionBlock:v9];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

uint64_t __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = [a2 displayableLastFour];
  v4 = [*(a1 + 32) cardNumber];
  v5 = WBSLastDigitsOfCreditCardNumber();
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_2_49(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Fetching credential for credit card", buf, 2u);
  }

  v9 = *(*(a1 + 32) + 24);
  v10 = [v6 cardDescriptor];
  v11 = [*(a1 + 32) creditCardFieldsToRequest];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_50;
  v16[3] = &unk_1E7FC4B28;
  v12 = v7;
  v19 = v12;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v17 = v13;
  v20 = v14;
  v15 = v6;
  v18 = v15;
  [v9 credentialForFPANCard:v10 authorization:0 options:v11 merchantHost:0 completion:v16];
}

void __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_50_cold_1();
    }
  }

  else
  {
    v8 = [v5 primaryAccountNumber];
    v9 = [*(a1 + 32) cardNumber];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [[WBSCreditCardData alloc] initWithCreditCardCredential:v5 creditCard:*(a1 + 40)];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_getCreditCardDataWithAllowedTypes:(id)types completionHandler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  autoFillCardManager = self->_autoFillCardManager;
  creditCardFieldsToRequest = [(WBSCreditCardDataController *)self creditCardFieldsToRequest];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__WBSCreditCardDataController__getCreditCardDataWithAllowedTypes_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC4BC8;
  objc_copyWeak(&v13, &location);
  v10 = handlerCopy;
  v12 = v10;
  [(PKAutoFillCardManager *)autoFillCardManager activeFPANCardsWithOptions:creditCardFieldsToRequest allowedCardTypes:typesCopy completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __84__WBSCreditCardDataController__getCreditCardDataWithAllowedTypes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = [v3 count];
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Number of active credit cards is %lu", &v7, 0xCu);
    }

    v6 = [WeakRetained _cardDataFromCardDescriptors:v3];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getCreditCardDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3A9B150];
    if (![(WBSCreditCardDataController *)self shouldOfferVirtualCards])
    {
      v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3A9B168];

      v5 = v6;
    }

    [(WBSCreditCardDataController *)self _getCreditCardDataWithAllowedTypes:v5 completionHandler:handlerCopy];
  }

  else if ([(WBSCreditCardDataController *)self shouldOfferVirtualCards])
  {
    objc_initWeak(&location, self);
    v7 = qos_class_self();
    virtualCardManager = self->_virtualCardManager;
    virtualCardFieldsToRequest = [(WBSCreditCardDataController *)self virtualCardFieldsToRequest];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__WBSCreditCardDataController_getCreditCardDataWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E7FC4BF0;
    objc_copyWeak(&v16, &location);
    v15 = handlerCopy;
    v17 = v7;
    [(PKVirtualCardManager *)virtualCardManager activeVirtualCardsWithOptions:virtualCardFieldsToRequest completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    internalQueue = self->_internalQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__WBSCreditCardDataController_getCreditCardDataWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E7FB6BC0;
    v12[4] = self;
    v13 = handlerCopy;
    v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12);
    dispatch_async(internalQueue, v11);
  }
}

void __70__WBSCreditCardDataController_getCreditCardDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v13 = [v3 count];
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Number of active virtual cards is %lu", buf, 0xCu);
    }

    v6 = WeakRetained[2];
    v7 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__WBSCreditCardDataController_getCreditCardDataWithCompletionHandler___block_invoke_64;
    block[3] = &unk_1E7FB7CC0;
    block[4] = WeakRetained;
    v10 = v3;
    v11 = *(a1 + 32);
    v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, block);
    dispatch_async(v6, v8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __70__WBSCreditCardDataController_getCreditCardDataWithCompletionHandler___block_invoke_64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  v8 = [v2 _virtualCardDataFromPKVirtualCards:v3];

  v4 = *(a1 + 32);
  v5 = [v4 _creditCardData];
  v6 = [v4 _deduplicatedVirtualCardDataArray:v8 andCreditCardDataArray:v5];

  if ([*(a1 + 32) hasUsedNonVirtualCard])
  {
    v7 = [v6 mutableCopy];
    [*(a1 + 32) _sortCreditCardDataArray:v7];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __70__WBSCreditCardDataController_getCreditCardDataWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _creditCardData];
  (*(v1 + 16))(v1);
}

- (void)getVirtualCardsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled] & 1) == 0)
  {
    if ([(WBSCreditCardDataController *)self shouldOfferVirtualCards])
    {
      objc_initWeak(location, self);
      virtualCardManager = self->_virtualCardManager;
      virtualCardFieldsToRequest = [(WBSCreditCardDataController *)self virtualCardFieldsToRequest];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __68__WBSCreditCardDataController_getVirtualCardsWithCompletionHandler___block_invoke;
      v8[3] = &unk_1E7FC4C18;
      objc_copyWeak(&v10, location);
      v9 = handlerCopy;
      [(PKVirtualCardManager *)virtualCardManager activeVirtualCardsWithOptions:virtualCardFieldsToRequest completion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }

    else
    {
      v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Should not offer virtual cards", location, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

void __68__WBSCreditCardDataController_getVirtualCardsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Number of active virtual cards is %lu", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [v3 allObjects];
  v7 = [WeakRetained _virtualCardDataFromPKVirtualCards:v6];

  (*(*(a1 + 32) + 16))();
}

- (void)processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext:(id)context blockToUpdateCardDetails:(id)details
{
  contextCopy = context;
  detailsCopy = details;
  if (([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled] & 1) == 0)
  {
    firstObject = [(NSMutableArray *)self->_queueOfVirtualCardsToFetchDetailsFor firstObject];
    [(NSMutableArray *)self->_queueOfVirtualCardsToFetchDetailsFor removeObjectAtIndex:0];
    virtualCardManager = self->_virtualCardManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke;
    v11[3] = &unk_1E7FC4C68;
    v15 = detailsCopy;
    v10 = firstObject;
    v12 = v10;
    selfCopy = self;
    v14 = contextCopy;
    [(PKVirtualCardManager *)virtualCardManager credentialsForVirtualCard:v10 authorization:v14 options:3 merchantHost:0 completion:v11];
  }
}

void __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke_2;
  v19[3] = &unk_1E7FC4C68;
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 40);
  v14 = v8;
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v20 = v14;
  v21 = v9;
  v10 = MEMORY[0x1BFB13CE0](v19);
  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [v11 BOOLForKey:@"WBSDebugSimulateSlowFetchOfWalletCardDetails"];

  if (v12)
  {
    v13 = dispatch_time(0, 1250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke_67;
    block[3] = &unk_1E7FB7B08;
    v18 = v10;
    v16 = v5;
    v17 = v6;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (v10)[2](v10, v5, v6);
  }
}

void __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke_3;
  block[3] = &unk_1E7FC4C40;
  v14 = v6;
  v15 = v5;
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 40);
  v12 = v8;
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v16 = v12;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

_BYTE *__123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke_3_cold_1();
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v3 = [[WBSCreditCardData alloc] initWithVirtualCardCredentials:*(a1 + 40) virtualCard:*(a1 + 48)];
    if (v3)
    {
      (*(*(a1 + 72) + 16))();
    }
  }

  v4 = [*(*(a1 + 56) + 48) count];
  result = *(a1 + 56);
  if (v4)
  {
    return [result processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext:*(a1 + 64) blockToUpdateCardDetails:*(a1 + 72)];
  }

  result[64] = 0;
  return result;
}

- (void)getVirtualCardCredentialsWithExternalizedContext:(id)context shouldIncludeVPANCards:(BOOL)cards completionHandler:(id)handler
{
  handlerCopy = handler;
  if (([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled] & 1) == 0)
  {
    if ([(WBSCreditCardDataController *)self shouldOfferVirtualCards])
    {
      objc_initWeak(&location, self);
      virtualCardManager = self->_virtualCardManager;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __121__WBSCreditCardDataController_getVirtualCardCredentialsWithExternalizedContext_shouldIncludeVPANCards_completionHandler___block_invoke;
      v9[3] = &unk_1E7FC4CB0;
      objc_copyWeak(&v11, &location);
      v10 = handlerCopy;
      cardsCopy = cards;
      [(PKVirtualCardManager *)virtualCardManager activeVirtualCardsWithOptions:1 completion:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

void __121__WBSCreditCardDataController_getVirtualCardCredentialsWithExternalizedContext_shouldIncludeVPANCards_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = v3;
  if (WeakRetained)
  {
    v5 = [v3 allObjects];
    if ((*(a1 + 48) & 1) == 0)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Filtering out VPAN enabled cards from Safari UI because Touch ID is not available", buf, 2u);
      }

      v7 = [v5 safari_filterObjectsUsingBlock:&__block_literal_global_71];

      v5 = v7;
    }

    if ([v5 count])
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = [[WBSCreditCardData alloc] initWithVirtualCard:*(*(&v15 + 1) + 8 * i)];
            [v8 addObject:v13];
          }

          v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v10);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getCardDetailsForVirtualCards:(id)cards externalizedContext:(id)context blockToUpdateCardDetails:(id)details
{
  cardsCopy = cards;
  contextCopy = context;
  detailsCopy = details;
  if (([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled] & 1) == 0)
  {
    [(NSMutableArray *)self->_queueOfVirtualCardsToFetchDetailsFor addObjectsFromArray:cardsCopy];
    if (!self->_isQueueOfVirtualCardsToFetchDetailsForBeingProcessed)
    {
      self->_isQueueOfVirtualCardsToFetchDetailsForBeingProcessed = 1;
      [(WBSCreditCardDataController *)self processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext:contextCopy blockToUpdateCardDetails:detailsCopy];
    }
  }
}

- (void)getCreditCardDataToFill:(id)fill host:(id)host externalizedContext:(id)context completionHandler:(id)handler
{
  fillCopy = fill;
  hostCopy = host;
  contextCopy = context;
  handlerCopy = handler;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    cardDescriptor = [fillCopy cardDescriptor];
    if (!cardDescriptor)
    {
      handlerCopy[2](handlerCopy, fillCopy);
      goto LABEL_12;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke;
    v31[3] = &unk_1E7FC4CD8;
    v33 = handlerCopy;
    v15 = fillCopy;
    v32 = v15;
    v16 = MEMORY[0x1BFB13CE0](v31);
    v17 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v17, OS_LOG_TYPE_INFO, "Fetching credential for credit card", buf, 2u);
    }

    autoFillCardManager = self->_autoFillCardManager;
    cardDescriptor2 = [v15 cardDescriptor];
    [(PKAutoFillCardManager *)autoFillCardManager credentialForFPANCard:cardDescriptor2 authorization:contextCopy options:[(WBSCreditCardDataController *)self creditCardFieldsToRequest] merchantHost:hostCopy completion:v16];
    v20 = &v33;
    v21 = &v32;
  }

  else
  {
    virtualCard = [fillCopy virtualCard];
    if (!virtualCard)
    {
      handlerCopy[2](handlerCopy, fillCopy);
      goto LABEL_13;
    }

    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke_73;
    v27 = &unk_1E7FC4D00;
    v29 = handlerCopy;
    cardDescriptor = virtualCard;
    v28 = cardDescriptor;
    v16 = MEMORY[0x1BFB13CE0](&v24);
    v23 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v23, OS_LOG_TYPE_INFO, "Fetching credentials for virtual card", buf, 2u);
    }

    [(PKVirtualCardManager *)self->_virtualCardManager credentialsForVirtualCard:cardDescriptor authorization:contextCopy options:[(WBSCreditCardDataController *)self virtualCardFieldsToRequest:v24] merchantHost:hostCopy completion:v16];
    v20 = &v29;
    v21 = &v28;
  }

LABEL_12:
  virtualCard = cardDescriptor;
LABEL_13:
}

void __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7FC4CD8;
  v17 = *(a1 + 40);
  v16 = *(a1 + 32);
  v7 = MEMORY[0x1BFB13CE0](v15);
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 BOOLForKey:@"WBSDebugSimulateSlowFetchOfWalletCardDetails"];

  if (v9)
  {
    v10 = dispatch_time(0, 1250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke_72;
    block[3] = &unk_1E7FB7B08;
    v14 = v7;
    v12 = v5;
    v13 = v6;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (v7)[2](v7, v5, v6);
  }
}

void __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_50_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [[WBSCreditCardData alloc] initWithCreditCardCredential:v5 creditCard:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

void __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke_2_74;
  v15[3] = &unk_1E7FC4D00;
  v17 = *(a1 + 40);
  v16 = *(a1 + 32);
  v7 = MEMORY[0x1BFB13CE0](v15);
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 BOOLForKey:@"WBSDebugSimulateSlowFetchOfWalletCardDetails"];

  if (v9)
  {
    v10 = dispatch_time(0, 1250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke_75;
    block[3] = &unk_1E7FB7B08;
    v14 = v7;
    v12 = v5;
    v13 = v6;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (v7)[2](v7, v5, v6);
  }
}

void __98__WBSCreditCardDataController_getCreditCardDataToFill_host_externalizedContext_completionHandler___block_invoke_2_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke_3_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [[WBSCreditCardData alloc] initWithVirtualCardCredentials:v5 virtualCard:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)shouldNeverSaveCardWithNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy length] >= 4)
  {
    v6 = [(WBSCreditCardDataController *)self _neverSavedCreditCardSuffixFromCardNumber:numberCopy];
    v5 = WBSKeychainItemExists();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)existingCardWithNumber:(id)number
{
  v18 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  creditCardData = [(WBSCreditCardDataController *)self creditCardData];
  v6 = [creditCardData countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(creditCardData);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        cardNumber = [v9 cardNumber];
        v11 = [cardNumber isEqualToString:numberCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [creditCardData countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)shouldAddCardWithNumber:(id)number
{
  numberCopy = number;
  if ([(WBSCreditCardDataController *)self shouldNeverSaveCardWithNumber:numberCopy])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(WBSCreditCardDataController *)self existingCardWithNumber:numberCopy];
    v5 = v6 == 0;
  }

  return v5;
}

- (id)_uniqueCardNameForCardName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  creditCardData = [(WBSCreditCardDataController *)self creditCardData];
  v7 = [v5 initWithCapacity:{objc_msgSend(creditCardData, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  creditCardData2 = [(WBSCreditCardDataController *)self creditCardData];
  v9 = [creditCardData2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(creditCardData2);
        }

        cardName = [*(*(&v21 + 1) + 8 * i) cardName];
        [v7 addObject:cardName];
      }

      v9 = [creditCardData2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  if ([v7 containsObject:nameCopy])
  {
    v13 = 2;
    do
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = _WBSLocalizedString();
      v16 = [v14 localizedStringWithFormat:v15, nameCopy, v13];

      v17 = [v7 containsObject:v16];
      v18 = v17;
      if (v17)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      v13 = (v13 + 1);
    }

    while ((v18 & 1) != 0);
  }

  else
  {
    v16 = nameCopy;
  }

  return v16;
}

- (id)defaultNameForCardOfType:(unint64_t)type cardholderName:(id)name
{
  nameCopy = name;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    v6 = 0;
  }

  else
  {
    if ([nameCopy length])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = _WBSLocalizedString();
      v9 = WBSCreditCardTypeLocalizedNameForGeneratingCardNames();
      v10 = [v7 localizedStringWithFormat:v8, nameCopy, v9];
    }

    else
    {
      v10 = WBSCreditCardTypeLocalizedNameForGeneratingCardNames();
    }

    v6 = [(WBSCreditCardDataController *)self _uniqueCardNameForCardName:v10];
  }

  return v6;
}

- (id)cachedArtworkForCardNumber:(id)number withSize:(CGSize)size
{
  artworkCache = self->_artworkCache;
  v5 = artworkCacheKeyForCardNumberAndSize(number, size);
  v6 = [(NSCache *)artworkCache objectForKey:v5];

  return v6;
}

- (void)addArtworkToCache:(id)cache forCardNumber:(id)number withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  cacheCopy = cache;
  artworkCache = self->_artworkCache;
  v13.width = width;
  v13.height = height;
  v10 = artworkCacheKeyForCardNumberAndSize(number, v13);
  [(NSCache *)artworkCache setObject:cacheCopy forKey:v10];
}

- (id)savableCreditCardDataInForm:(id)form
{
  v67 = *MEMORY[0x1E69E9840];
  formCopy = form;
  controls = [formCopy controls];
  v4 = [controls count];
  if (!v4)
  {
    v55 = 0;
    v50 = 0;
    value3 = 0;
    goto LABEL_64;
  }

  v52 = v4;
  value3 = 0;
  selfCopy = self;
  v5 = 0;
  v55 = 0;
  v50 = 0;
  v47 = 0;
  v6 = 0;
  integerValue = 0x7FFFFFFFFFFFFFFFLL;
  integerValue2 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v7 = [controls objectAtIndexedSubscript:v6];
    value = [v7 value];
    if ([(__CFString *)value length])
    {
      classification = [v7 classification];
      if (value3 || !WBSIsEqual())
      {
        orderedParts = [v7 orderedParts];
        v10 = [orderedParts count];
        if (v5 || !WBSIsEqual())
        {
          if (integerValue == 0x7FFFFFFFFFFFFFFFLL && v10 == 1 && ([orderedParts firstObject], v17 = objc_claimAutoreleasedReturnValue(), v18 = WBSIsEqual(), v17, v18))
          {
            integerValue = [(__CFString *)value integerValue];
          }

          else if (integerValue2 == 0x7FFFFFFFFFFFFFFFLL && v10 == 1 && ([orderedParts firstObject], v19 = objc_claimAutoreleasedReturnValue(), v20 = WBSIsEqual(), v19, v20))
          {
            integerValue2 = [(__CFString *)value integerValue];
          }

          else if (v55 || !WBSIsEqual() || [orderedParts count] < 2)
          {
            if (!v50)
            {
              if (WBSIsEqual())
              {
                value = value;
                v50 = value;
              }

              else
              {
                v50 = 0;
              }
            }
          }

          else
          {
            value = value;
            v55 = value;
          }
        }

        else
        {
          v48 = [WBSFormDataController continuingFieldsInFormControls:controls startingAtIndex:v6];
          if ([v48 count] >= 2)
          {
            v11 = [MEMORY[0x1E696AD60] stringWithCapacity:16];
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v12 = v48;
            v13 = [v12 countByEnumeratingWithState:&v61 objects:v66 count:16];
            if (v13)
            {
              v14 = *v62;
              while (2)
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v62 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  value2 = [*(*(&v61 + 1) + 8 * i) value];
                  if (![value2 length])
                  {

                    goto LABEL_36;
                  }

                  [v11 appendString:value2];
                }

                v13 = [v12 countByEnumeratingWithState:&v61 objects:v66 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }
            }

LABEL_36:

            v21 = v11;
            v22 = [v12 count];

            v6 = v6 + v22 - 1;
            value = v21;
          }

          v47 = WBSCreditCardTypeFromNumber();
          standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
          v24 = [standardUserDefaults BOOLForKey:@"DebugSkipCreditCardValidation"];

          if (v47)
          {
            v25 = 1;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            v5 = value;
          }

          else
          {
            v5 = 0;
          }
        }
      }

      else
      {
        value = value;
        value3 = value;
      }
    }

    ++v6;
  }

  while (v6 < v52);
  if (!v5)
  {
LABEL_64:
    v36 = 0;
    v37 = 0;
    goto LABEL_76;
  }

  if (value3)
  {
    goto LABEL_67;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v26 = controls;
  v27 = [v26 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (!v27)
  {
LABEL_62:

    goto LABEL_66;
  }

  v28 = *v58;
  v29 = *MEMORY[0x1E69C8AD8];
LABEL_51:
  v30 = 0;
  while (1)
  {
    if (*v58 != v28)
    {
      objc_enumerationMutation(v26);
    }

    v31 = *(*(&v57 + 1) + 8 * v30);
    if (([v31 isTextField] & 1) == 0)
    {
      goto LABEL_60;
    }

    v32 = [WBSFormDataController specifierForControl:v31];
    v33 = v32;
    if (v32)
    {
      property = [v32 property];
      v35 = [property isEqualToString:v29];

      if (v35)
      {
        break;
      }
    }

LABEL_59:

LABEL_60:
    if (v27 == ++v30)
    {
      v27 = [v26 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v27)
      {
        goto LABEL_51;
      }

      goto LABEL_62;
    }
  }

  value3 = [v31 value];
  if (![(__CFString *)value3 length])
  {

    goto LABEL_59;
  }

  if (value3)
  {
    goto LABEL_67;
  }

LABEL_66:
  value3 = &stru_1F3A5E418;
LABEL_67:
  v38 = WBSExpirationDateWithMonthYear();
  if (!v38 && v55)
  {
    v39 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v39 setDateFormat:@"MM/yy"];
    v40 = WBSLocaleForCreditCardExpirationDate();
    [v39 setLocale:v40];

    v38 = [v39 dateFromString:v55];
  }

  v36 = WBSNormalizedCreditCardNumber();

  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    v37 = [[WBSCreditCardData alloc] initWalletCardWithCardNumber:v36 cardholderName:value3 expirationDate:v38 securityCode:v50];
  }

  else if ([(WBSCreditCardDataController *)selfCopy shouldNeverSaveCardWithNumber:v36])
  {
    v37 = 0;
  }

  else
  {
    v41 = [(WBSCreditCardDataController *)selfCopy defaultNameForCardOfType:v47 cardholderName:value3];
    v42 = [[WBSCreditCardData alloc] initWithCardName:v41 number:v36 cardholderName:value3 expirationDate:v38 securityCode:v50];
    date = [MEMORY[0x1E695DF00] date];
    v37 = [(WBSCreditCardData *)v42 creditCardDataByUpdatingLastUsedDate:date];
  }

LABEL_76:

  return v37;
}

- (void)removeCreditCardData:(id)data
{
  dataCopy = data;
  if (([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled] & 1) == 0)
  {
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__WBSCreditCardDataController_removeCreditCardData___block_invoke;
    v6[3] = &unk_1E7FB7F10;
    v6[4] = self;
    v7 = dataCopy;
    dispatch_async(internalQueue, v6);
  }
}

void __52__WBSCreditCardDataController_removeCreditCardData___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v5 = *MEMORY[0x1E697B3C8];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  if (SecItemDelete(v3))
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__WBSCreditCardDataController_removeCreditCardData___block_invoke_cold_1();
    }
  }

  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _creditCardDataDidChange];
}

- (void)replaceCreditCardData:(id)data withCard:(id)card
{
  dataCopy = data;
  cardCopy = card;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSCreditCardDataController_replaceCreditCardData_withCard___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = dataCopy;
  v13 = cardCopy;
  v9 = cardCopy;
  v10 = dataCopy;
  dispatch_async(internalQueue, block);
}

void __62__WBSCreditCardDataController_replaceCreditCardData_withCard___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 48) keychainRepresentationByMigratingExistingKeychainData:*(a1 + 40)];
    v8 = *MEMORY[0x1E697B3C8];
    v9[0] = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = *MEMORY[0x1E697B3C0];
    v7 = v3;
    if (SecItemUpdate(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1]))
    {
      v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __62__WBSCreditCardDataController_replaceCreditCardData_withCard___block_invoke_cold_1();
      }
    }

    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    [*(*(a1 + 32) + 8) setObject:v2 forKey:*(a1 + 48)];
    [*(a1 + 32) _creditCardDataDidChange];
  }
}

- (void)markCreditCardDataAsMostRecentlyUsed:(id)used
{
  usedCopy = used;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    autoFillCardManager = self->_autoFillCardManager;
    cardDescriptor = [usedCopy cardDescriptor];
    cardCredential = [usedCopy cardCredential];
    [(PKAutoFillCardManager *)autoFillCardManager userDidUseCardWithDescriptor:cardDescriptor credential:cardCredential];
  }

  else
  {
    virtualCard = [usedCopy virtualCard];
    cardDescriptor = virtualCard;
    if (virtualCard)
    {
      [virtualCard setLastAutoFilledBySafariWithCompletion:&__block_literal_global_103];
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      cardDescriptor = [usedCopy creditCardDataByUpdatingLastUsedDate:date];

      [(WBSCreditCardDataController *)self replaceCreditCardData:usedCopy withCard:cardDescriptor];
      [(WBSCreditCardDataController *)self setHasUsedNonVirtualCard];
    }
  }

LABEL_8:
}

void __68__WBSCreditCardDataController_markCreditCardDataAsMostRecentlyUsed___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __68__WBSCreditCardDataController_markCreditCardDataAsMostRecentlyUsed___block_invoke_cold_1();
    }
  }
}

- (void)saveCreditCardData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled] && (objc_msgSend(dataCopy, "cardDescriptor"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(dataCopy, "cardCredential"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    autoFillCardManager = self->_autoFillCardManager;
    cardDescriptor = [dataCopy cardDescriptor];
    cardCredential = [dataCopy cardCredential];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__WBSCreditCardDataController_saveCreditCardData_completionHandler___block_invoke;
    v18[3] = &unk_1E7FB7E48;
    v19 = handlerCopy;
    [(PKAutoFillCardManager *)autoFillCardManager insertFPANCardWithDescriptor:cardDescriptor credential:cardCredential completion:v18];
    v13 = &v19;
  }

  else
  {
    internalQueue = self->_internalQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__WBSCreditCardDataController_saveCreditCardData_completionHandler___block_invoke_104;
    v15[3] = &unk_1E7FB7CC0;
    v13 = v16;
    v16[0] = dataCopy;
    v16[1] = self;
    v17 = handlerCopy;
    dispatch_async(internalQueue, v15);
  }
}

void __68__WBSCreditCardDataController_saveCreditCardData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __68__WBSCreditCardDataController_saveCreditCardData_completionHandler___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __68__WBSCreditCardDataController_saveCreditCardData_completionHandler___block_invoke_104(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];

  v4 = [*(a1 + 32) keychainRepresentationForNewCard];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  v7 = [*(a1 + 32) cardName];
  v8 = [v5 localizedStringWithFormat:v6, v7];

  v9 = _WBSLocalizedString();
  WBSSetKeychainPassword();
  v10 = 0;
  if (v10)
  {
    [*(*(a1 + 40) + 8) setObject:v10 forKey:*(a1 + 32)];
  }

  [*(a1 + 40) _removeNeverSaveCreditCardData:*(a1 + 32)];
  [*(a1 + 40) _creditCardDataDidChange];
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

- (void)saveCreditCardDataIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    v5 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__WBSCreditCardDataController_saveCreditCardDataIfAllowed___block_invoke;
    v10[3] = &unk_1E7FC4D28;
    v10[4] = self;
    v11 = allowedCopy;
    [(WBSCreditCardDataController *)self _canSaveCardData:v11 completionHandler:v10];
LABEL_5:

    goto LABEL_6;
  }

  cardNumber = [allowedCopy cardNumber];
  v7 = [(WBSCreditCardDataController *)self shouldAddCardWithNumber:cardNumber];

  if (v7)
  {
    v5 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__WBSCreditCardDataController_saveCreditCardDataIfAllowed___block_invoke_2;
    v8[3] = &unk_1E7FB7F10;
    v8[4] = self;
    v9 = allowedCopy;
    [(WBSCreditCardDataController *)self saveCreditCardData:v9 completionHandler:v8];
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __59__WBSCreditCardDataController_saveCreditCardDataIfAllowed___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) saveCreditCardData:*(result + 40) completionHandler:0];
  }

  return result;
}

- (BOOL)isCreditCardDataSaved:(id)saved
{
  savedCopy = saved;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WBSCreditCardDataController_isCreditCardDataSaved___block_invoke;
  block[3] = &unk_1E7FC4D50;
  v9 = savedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = savedCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __53__WBSCreditCardDataController_isCreditCardDataSaved___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;
}

- (id)_neverSavedCreditCardSuffixFromCard:(id)card
{
  cardNumber = [card cardNumber];
  v5 = [(WBSCreditCardDataController *)self _neverSavedCreditCardSuffixFromCardNumber:cardNumber];

  return v5;
}

- (id)_neverSavedCreditCardSuffixFromCardNumber:(id)number
{
  numberCopy = number;
  v4 = [numberCopy substringFromIndex:{objc_msgSend(numberCopy, "length") - 4}];

  return v4;
}

- (void)_removeNeverSaveCreditCardData:(id)data
{
  dataCopy = data;
  cardNumber = [dataCopy cardNumber];
  v5 = [cardNumber length];

  if (v5 >= 4)
  {
    v6 = [(WBSCreditCardDataController *)self _neverSavedCreditCardSuffixFromCard:dataCopy];
    WBSRemoveKeychainPasswordIfExists();
  }
}

- (void)neverSaveCreditCardData:(id)data
{
  dataCopy = data;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    autoFillCardManager = self->_autoFillCardManager;
    cardDescriptor = [dataCopy cardDescriptor];
    cardCredential = [dataCopy cardCredential];
    [(PKAutoFillCardManager *)autoFillCardManager userRejectedSavingFPANCardWithDescriptor:cardDescriptor credential:cardCredential options:7 permanent:1];
  }

  else
  {
    cardDescriptor = [(WBSCreditCardDataController *)self _neverSavedCreditCardSuffixFromCard:dataCopy];
    cardCredential = _WBSLocalizedString();
    v7 = _WBSLocalizedString();
    data = [MEMORY[0x1E695DEF0] data];
    WBSSetKeychainPassword();
  }
}

- (void)canSaveCardData:(id)data lastFilledCardData:(id)cardData completionHandler:(id)handler
{
  dataCopy = data;
  cardDataCopy = cardData;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__WBSCreditCardDataController_canSaveCardData_lastFilledCardData_completionHandler___block_invoke;
  v14[3] = &unk_1E7FC4DA0;
  v15 = cardDataCopy;
  v16 = dataCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = dataCopy;
  v13 = cardDataCopy;
  [(WBSCreditCardDataController *)self _canSaveCardData:v12 completionHandler:v14];
}

void __84__WBSCreditCardDataController_canSaveCardData_lastFilledCardData_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 && [v4 hasSameCreditCardInformationAs:*(a1 + 40)])
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__WBSCreditCardDataController_canSaveCardData_lastFilledCardData_completionHandler___block_invoke_2;
    v8[3] = &unk_1E7FC4D78;
    v9 = *(a1 + 56);
    v10 = a2;
    [v6 _getCreditCardDataFromWalletMatchingCardData:v7 withCompletionHandler:v8];
  }
}

- (void)_canSaveCardData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  autoFillCardManager = self->_autoFillCardManager;
  cardDescriptor = [dataCopy cardDescriptor];
  cardCredential = [dataCopy cardCredential];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__WBSCreditCardDataController__canSaveCardData_completionHandler___block_invoke;
  v12[3] = &unk_1E7FC4DC8;
  v11 = handlerCopy;
  v13 = v11;
  [(PKAutoFillCardManager *)autoFillCardManager canSaveFPANCardWithDescriptor:cardDescriptor credential:cardCredential completion:v12];
}

void __66__WBSCreditCardDataController__canSaveCardData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 savableFields];
  if ([v4 savableFields] == 7 || (objc_msgSend(v4, "savableFields") & 2) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (([v4 updatableFields] & 2) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
  }
}

- (void)neverSaveCVVForCreditCardData:(id)data
{
  dataCopy = data;
  autoFillCardManager = self->_autoFillCardManager;
  v8 = dataCopy;
  cardDescriptor = [dataCopy cardDescriptor];
  cardCredential = [v8 cardCredential];
  [(PKAutoFillCardManager *)autoFillCardManager userRejectedSavingFPANCardWithDescriptor:cardDescriptor credential:cardCredential options:2 permanent:1];
}

- (void)updateCreditCardDataCreditCardData:(id)data
{
  dataCopy = data;
  cardDescriptor = [dataCopy cardDescriptor];
  cardCredential = [dataCopy cardCredential];
  [(WBSCreditCardDataController *)self _updateCreditCardDataWithDescriptor:cardDescriptor credential:cardCredential];
}

void __78__WBSCreditCardDataController__updateCreditCardDataWithDescriptor_credential___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingError];
      objc_claimAutoreleasedReturnValue();
      __78__WBSCreditCardDataController__updateCreditCardDataWithDescriptor_credential___block_invoke_cold_1();
    }
  }
}

- (void)_creditCardDataDidChange
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.SafariShared.CreditCardAutoFillDataChangedNotification" object:0];
}

- (void)clearCreditCardData
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSCreditCardDataController_clearCreditCardData__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __50__WBSCreditCardDataController_clearCreditCardData__block_invoke(uint64_t a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697AEB0];
  v7[0] = *MEMORY[0x1E697ABD0];
  v7[1] = v2;
  v3 = *MEMORY[0x1E695E4D0];
  v8[0] = @"com.apple.safari.credit-cards";
  v8[1] = v3;
  v4 = *MEMORY[0x1E697AE88];
  v7[2] = *MEMORY[0x1E697AFF8];
  v7[3] = v4;
  v8[2] = *MEMORY[0x1E697B008];
  v8[3] = @"SafariCreditCardEntries";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  if (SecItemDelete(v5))
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__WBSCreditCardDataController_removeCreditCardData___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _creditCardDataDidChange];
}

- (BOOL)hasUsedNonVirtualCard
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"UserHasUsedNonVirtualCardPreference"];

  return v3;
}

- (void)setHasUsedNonVirtualCard
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:@"UserHasUsedNonVirtualCardPreference"];
}

- (BOOL)isVirtualCard:(id)card previouslyFilledVirtualCardNumbers:(id)numbers
{
  v26 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  numbersCopy = numbers;
  if ([(WBSCreditCardDataController *)self shouldOfferVirtualCards])
  {
    cardDescriptor = [cardCopy cardDescriptor];
    if (cardDescriptor)
    {
      cardDescriptor2 = [cardCopy cardDescriptor];
      type = [cardDescriptor2 type];

      if (type == 2)
      {
LABEL_17:
        v18 = 1;
        goto LABEL_18;
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = numbersCopy;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          cardNumber = [cardCopy cardNumber];
          LOBYTE(v15) = [cardNumber isEqualToString:v15];

          if (v15)
          {

            goto LABEL_17;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v17, OS_LOG_TYPE_INFO, "isVirtualCard: not offering virtual cards", buf, 2u);
    }
  }

  v18 = 0;
LABEL_18:

  return v18;
}

- (void)isVirtualCard:(id)card previouslyFilledVirtualCardNumbers:(id)numbers completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  numbersCopy = numbers;
  completionCopy = completion;
  shouldOfferVirtualCards = [(WBSCreditCardDataController *)self shouldOfferVirtualCards];
  if (!shouldOfferVirtualCards)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_INFO, "isVirtualCard: not offering virtual cards", buf, 2u);
    }

    goto LABEL_14;
  }

  virtualCard = [cardCopy virtualCard];

  if (virtualCard)
  {
LABEL_14:
    completionCopy[2](completionCopy, shouldOfferVirtualCards);
    goto LABEL_15;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = numbersCopy;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v14)
  {
    v15 = *v25;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        cardNumber = [cardCopy cardNumber];
        LODWORD(v17) = [cardNumber isEqual:v17];

        if (v17)
        {
          completionCopy[2](completionCopy, 1);
          goto LABEL_17;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  virtualCardManager = self->_virtualCardManager;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__WBSCreditCardDataController_isVirtualCard_previouslyFilledVirtualCardNumbers_completion___block_invoke;
  v21[3] = &unk_1E7FC4DF0;
  v22 = cardCopy;
  v23 = completionCopy;
  [(PKVirtualCardManager *)virtualCardManager activeVirtualCardsWithOptions:1 completion:v21];

  v13 = v22;
LABEL_17:

LABEL_15:
}

void __91__WBSCreditCardDataController_isVirtualCard_previouslyFilledVirtualCardNumbers_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) cardNumber];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * v8) isEqualToSafariEntryWithPrimaryAccountNumber:v4 expirationDate:{0, v13}])
        {
          v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v5 count];
            *buf = 134217984;
            v18 = v12;
            _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "isVirtualCard: compared card against %zu virtual cards and found a match.", buf, 0xCu);
          }

          (*(*(a1 + 40) + 16))();
          goto LABEL_15;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v5 count];
    *buf = 134217984;
    v18 = v10;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "isVirtualCard: compared card against %zu virtual cards but found no match.", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_15:
}

- (void)sendCardholderNameEnteredInFormToWalletIfNecessary:(id)necessary lastFilledVirtualCardData:(id)data
{
  necessaryCopy = necessary;
  dataCopy = data;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    cardDescriptor = [dataCopy cardDescriptor];
    cardCredential = [dataCopy cardCredential];
    if (!cardCredential || !cardDescriptor || [cardDescriptor type] != 2)
    {
      goto LABEL_21;
    }

    billingAddress = [cardCredential billingAddress];
    if (billingAddress)
    {
      v10 = MEMORY[0x1E695CD80];
      billingAddress2 = [cardCredential billingAddress];
      cardholderName4 = [v10 stringFromContact:billingAddress2 style:0];
    }

    else
    {
      cardholderName4 = 0;
    }

    cardholderName = [necessaryCopy cardholderName];
    if (![cardholderName length])
    {
      goto LABEL_19;
    }

    cardholderName2 = [necessaryCopy cardholderName];
    v21 = [cardholderName2 isEqualToString:cardholderName4];

    if ((v21 & 1) == 0)
    {
      cardholderName = [cardCredential mutableCopy];
      cardholderName3 = [necessaryCopy cardholderName];
      [cardholderName setCardholderName:cardholderName3];

      [(WBSCreditCardDataController *)self _updateCreditCardDataWithDescriptor:cardDescriptor credential:cardholderName];
LABEL_19:
    }

LABEL_20:

    goto LABEL_21;
  }

  virtualCard = [dataCopy virtualCard];
  cardDescriptor = virtualCard;
  if (virtualCard && [virtualCard type] == 2)
  {
    billingAddress3 = [cardDescriptor billingAddress];
    if (billingAddress3)
    {
      v15 = MEMORY[0x1E695CD80];
      billingAddress4 = [cardDescriptor billingAddress];
      cardCredential = [v15 stringFromContact:billingAddress4 style:0];
    }

    else
    {
      cardCredential = 0;
    }

    cardholderName4 = [necessaryCopy cardholderName];
    if ([cardholderName4 length])
    {
      cardholderName5 = [necessaryCopy cardholderName];
      v18 = [cardholderName5 isEqualToString:cardCredential];

      if (v18)
      {
LABEL_21:

        goto LABEL_22;
      }

      cardholderName4 = [necessaryCopy cardholderName];
      [cardDescriptor setContactNameEnteredInSafari:cardholderName4 completion:&__block_literal_global_129];
    }

    goto LABEL_20;
  }

LABEL_22:
}

void __108__WBSCreditCardDataController_sendCardholderNameEnteredInFormToWalletIfNecessary_lastFilledVirtualCardData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __108__WBSCreditCardDataController_sendCardholderNameEnteredInFormToWalletIfNecessary_lastFilledVirtualCardData___block_invoke_cold_1();
    }
  }
}

- (void)tellWalletThatExistingCardWasFilledInForm:(id)form previouslyFilledVirtualCardNumbers:(id)numbers
{
  formCopy = form;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__WBSCreditCardDataController_tellWalletThatExistingCardWasFilledInForm_previouslyFilledVirtualCardNumbers___block_invoke;
  v8[3] = &unk_1E7FC4E18;
  v8[4] = self;
  v9 = formCopy;
  v7 = formCopy;
  [(WBSCreditCardDataController *)self isVirtualCard:v7 previouslyFilledVirtualCardNumbers:numbers completion:v8];
}

void __108__WBSCreditCardDataController_tellWalletThatExistingCardWasFilledInForm_previouslyFilledVirtualCardNumbers___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 40);
    v3 = [*(a1 + 40) dictionaryRepresentation];
    [v2 userDidPerformAction:1 withCard:?];
  }
}

- (void)tellWalletThatNewCardWasSaved:(id)saved
{
  virtualCardNotificationManager = self->_virtualCardNotificationManager;
  dictionaryRepresentation = [saved dictionaryRepresentation];
  [(PKSafariCardNotificationManager *)virtualCardNotificationManager userDidPerformAction:0 withCard:?];
}

- (id)fieldsToObscureWhenFillingCreditCard:(id)card formMetadata:(id)metadata
{
  cardCopy = card;
  metadataCopy = metadata;
  if ([cardCopy isVirtualCard])
  {
    controls = [metadataCopy controls];
    v8 = [controls safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_133];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __81__WBSCreditCardDataController_fieldsToObscureWhenFillingCreditCard_formMetadata___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 classification];
  if ((WBSIsEqual() & 1) != 0 || WBSIsEqual())
  {
    v4 = [v2 uniqueID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fieldsToObscureWhenFillingSingleCreditCardData:(id)data formFieldValues:(id)values
{
  dataCopy = data;
  valuesCopy = values;
  if (([dataCopy isVirtualCard] & 1) != 0 && (!objc_msgSend(dataCopy, "type") || objc_msgSend(dataCopy, "type") == 1))
  {
    allKeys = [valuesCopy allKeys];
  }

  else
  {
    allKeys = 0;
  }

  return allKeys;
}

- (void)exportCreditCardDataToFileWithURL:(id)l completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    [(WBSCreditCardDataController *)self _exportCreditCardDataToFileWithURL:lCopy completionHandler:handlerCopy];
  }

  else
  {
    v39 = 0;
    v7 = [objc_alloc(MEMORY[0x1E69C8858]) initWithURL:lCopy error:&v39];
    v8 = v39;
    v25 = v8;
    if (!v7 || v8)
    {
      v29 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [v25 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSCreditCardDataController exportCreditCardDataToFileWithURL:completionHandler:];
      }
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E695DEE8]);
      v29 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v10 = +[WBSCreditCardDataController creditCardDataController];
      obj = [v10 creditCardData];

      v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v11)
      {
        v30 = *v36;
        v33 = v7;
        do
        {
          v12 = 0;
          v31 = v11;
          do
          {
            if (*v36 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v35 + 1) + 8 * v12);
            expirationDate = [v13 expirationDate];
            v15 = expirationDate == 0;

            if (v15)
            {
              v17 = 0;
            }

            else
            {
              expirationDate2 = [v13 expirationDate];
              v17 = [v29 components:12 fromDate:expirationDate2];
            }

            cardNumber = [v13 cardNumber];
            cardName = [v13 cardName];
            cardholderName = [v13 cardholderName];
            month = [v17 month];
            if (month)
            {
              v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "month")}];
              v21 = v32;
            }

            else
            {
              v21 = 0;
            }

            year = [v17 year];
            if (year)
            {
              v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "year")}];
              v23 = v4;
            }

            else
            {
              v23 = 0;
            }

            lastUsedDate = [v13 lastUsedDate];
            [v33 addEntryWithCardNumber:cardNumber cardName:cardName cardholderName:cardholderName cardExpirationMonth:v21 cardExpirationYear:v23 lastUsedDate:lastUsedDate];

            v7 = v33;
            if (year)
            {
            }

            if (month)
            {
            }

            ++v12;
          }

          while (v31 != v12);
          v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v11);
      }

      [v7 finishWithCompletionHandler:handlerCopy];
    }
  }
}

- (void)_exportCreditCardDataToFileWithURL:(id)l completionHandler:(id)handler
{
  v21[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v21[0] = 0;
  v8 = [objc_alloc(MEMORY[0x1E69C8858]) initWithURL:lCopy error:v21];
  v9 = v21[0];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x1E695DEE8]);
    v12 = [v13 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
    {
      v14 = +[WBSCreditCardDataController creditCardDataController];
      v15 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F3A9ABF8];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __84__WBSCreditCardDataController__exportCreditCardDataToFileWithURL_completionHandler___block_invoke;
      v17[3] = &unk_1E7FC4EB0;
      v17[4] = self;
      v16 = v12;
      v18 = v16;
      v19 = v8;
      v20 = handlerCopy;
      [v14 _getCreditCardDataWithAllowedTypes:v15 completionHandler:v17];

      v12 = v16;
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v10 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSCreditCardDataController exportCreditCardDataToFileWithURL:completionHandler:];
    }
  }
}

void __84__WBSCreditCardDataController__exportCreditCardDataToFileWithURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__WBSCreditCardDataController__exportCreditCardDataToFileWithURL_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7FC4E88;
  v10[4] = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__WBSCreditCardDataController__exportCreditCardDataToFileWithURL_completionHandler___block_invoke_4;
  v7[3] = &unk_1E7FB6F08;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [a2 safari_enumerateAsynchronouslyOnQueue:v6 enumerationBlock:v10 completionBlock:v7];
}

void __84__WBSCreditCardDataController__exportCreditCardDataToFileWithURL_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__WBSCreditCardDataController__exportCreditCardDataToFileWithURL_completionHandler___block_invoke_3;
  v9[3] = &unk_1E7FC4E60;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v6;
  v8 = v6;
  [v7 getCreditCardDataToFill:a2 host:0 externalizedContext:0 completionHandler:v9];
}

void __84__WBSCreditCardDataController__exportCreditCardDataToFileWithURL_completionHandler___block_invoke_3(void *a1, void *a2)
{
  v16 = a2;
  v3 = [v16 expirationDate];

  if (v3)
  {
    v4 = a1[4];
    v5 = [v16 expirationDate];
    v6 = [v4 components:12 fromDate:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[5];
  v15 = [v16 cardNumber];
  v8 = [v16 cardName];
  v9 = [v16 cardholderName];
  v10 = [v6 month];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "month")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 year];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "year")}];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v16 lastUsedDate];
  [v7 addEntryWithCardNumber:v15 cardName:v8 cardholderName:v9 cardExpirationMonth:v11 cardExpirationYear:v13 lastUsedDate:v14];

  if (v12)
  {
  }

  if (v10)
  {
  }

  (*(a1[6] + 16))();
}

- (void)numberOfCreditCardsToBeExportedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    autoFillCardManager = self->_autoFillCardManager;
    creditCardFieldsToRequest = [(WBSCreditCardDataController *)self creditCardFieldsToRequest];
    v7 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F3A9ABF8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__WBSCreditCardDataController_numberOfCreditCardsToBeExportedWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E7FC4ED8;
    v11 = handlerCopy;
    [(PKAutoFillCardManager *)autoFillCardManager activeFPANCardsWithOptions:creditCardFieldsToRequest allowedCardTypes:v7 completion:v10];
  }

  else
  {
    v8 = +[WBSCreditCardDataController creditCardDataController];
    creditCardData = [v8 creditCardData];
    (*(handlerCopy + 2))(handlerCopy, [creditCardData count]);
  }
}

void __84__WBSCreditCardDataController_numberOfCreditCardsToBeExportedWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 count]);
}

- (void)importCreditCardDataWithCardNumber:(id)number cardName:(id)name cardholderName:(id)cardholderName cardExpirationMonth:(id)month cardExpirationYear:(id)year lastUsedDate:(id)date
{
  numberCopy = number;
  nameCopy = name;
  cardholderNameCopy = cardholderName;
  monthCopy = month;
  yearCopy = year;
  dateCopy = date;
  v19 = 0;
  if (monthCopy && yearCopy)
  {
    [monthCopy integerValue];
    [yearCopy integerValue];
    v19 = WBSExpirationDateWithMonthYear();
  }

  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    v20 = [[WBSCreditCardData alloc] initWalletCardWithCardNumber:numberCopy cardholderName:nameCopy expirationDate:v19 securityCode:0];
    v21 = v20;
    if (dateCopy)
    {
      v22 = [v20 creditCardDataByUpdatingLastUsedDate:dateCopy];

      v21 = v22;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __142__WBSCreditCardDataController_importCreditCardDataWithCardNumber_cardName_cardholderName_cardExpirationMonth_cardExpirationYear_lastUsedDate___block_invoke;
    v29[3] = &unk_1E7FC4F00;
    v29[4] = self;
    v23 = v21;
    v30 = v23;
    [(WBSCreditCardDataController *)self canSaveCardData:v23 lastFilledCardData:0 completionHandler:v29];
  }

  else
  {
    v24 = [[WBSCreditCardData alloc] initWithCardName:nameCopy number:numberCopy cardholderName:cardholderNameCopy expirationDate:v19];
    v23 = v24;
    if (dateCopy)
    {
      v25 = [(WBSCreditCardData *)v24 creditCardDataByUpdatingLastUsedDate:dateCopy];

      v23 = v25;
    }

    cardNumber = [v23 cardNumber];
    v27 = [(WBSCreditCardDataController *)self existingCardWithNumber:cardNumber];

    if (v27)
    {
      if ([(WBSCreditCardDataController *)self _shouldReplaceExistingCard:v27 withImportedCard:v23])
      {
        [(WBSCreditCardDataController *)self replaceCreditCardData:v27 withCard:v23];
      }
    }

    else
    {
      [(WBSCreditCardDataController *)self saveCreditCardDataIfAllowed:v23];
    }
  }
}

void __142__WBSCreditCardDataController_importCreditCardDataWithCardNumber_cardName_cardholderName_cardExpirationMonth_cardExpirationYear_lastUsedDate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    if (v8)
    {
      v6 = [v8 cardDescriptor];
      v7 = [*(a1 + 40) cardCredential];
      [v5 _updateCreditCardDataWithDescriptor:v6 credential:v7];
    }

    else
    {
      [v5 saveCreditCardData:*(a1 + 40) completionHandler:0];
    }
  }
}

- (BOOL)_shouldReplaceExistingCard:(id)card withImportedCard:(id)importedCard
{
  cardCopy = card;
  importedCardCopy = importedCard;
  if ([cardCopy isEqualToImportedCard:importedCardCopy])
  {
    goto LABEL_15;
  }

  expirationDate = [importedCardCopy expirationDate];
  if (!expirationDate)
  {
    expirationDate2 = [cardCopy expirationDate];
    if (!expirationDate2)
    {
      goto LABEL_12;
    }
  }

  expirationDate3 = [importedCardCopy expirationDate];
  expirationDate4 = [cardCopy expirationDate];
  v11 = [expirationDate3 isEqualToDate:expirationDate4];

  if (expirationDate)
  {

    if (v11)
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_12;
    }
  }

  expirationDate5 = [importedCardCopy expirationDate];
  expirationDate6 = [cardCopy expirationDate];
  v14 = [expirationDate5 compare:expirationDate6];

  expirationDate7 = [importedCardCopy expirationDate];

  v16 = 0;
  if (expirationDate7)
  {
    if (v14 != -1)
    {
      expirationDate8 = [cardCopy expirationDate];

      v16 = 1;
      if (expirationDate8)
      {
        if (v14 != 1)
        {
LABEL_12:
          lastUsedDate = [importedCardCopy lastUsedDate];
          if (lastUsedDate)
          {
            lastUsedDate2 = [cardCopy lastUsedDate];
            if (lastUsedDate2)
            {
              lastUsedDate3 = [importedCardCopy lastUsedDate];
              lastUsedDate4 = [cardCopy lastUsedDate];
              v22 = [lastUsedDate3 compare:lastUsedDate4];

              if (v22 != 1)
              {
                goto LABEL_15;
              }
            }

            else
            {
            }

            v16 = 1;
            goto LABEL_16;
          }

LABEL_15:
          v16 = 0;
        }
      }
    }
  }

LABEL_16:

  return v16;
}

- (BOOL)test_shouldReplaceExistingCard:(id)card withImportedCard:(id)importedCard
{
  cardCopy = card;
  importedCardCopy = importedCard;
  v8 = ([MEMORY[0x1E69C8880] isInternalInstall] & 1) != 0 && -[WBSCreditCardDataController _shouldReplaceExistingCard:withImportedCard:](self, "_shouldReplaceExistingCard:withImportedCard:", cardCopy, importedCardCopy);

  return v8;
}

void __98__WBSCreditCardDataController__getCreditCardDataFromWalletMatchingCardData_withCompletionHandler___block_invoke_50_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to retrieve credential for card with error: %{public}@", v5);
}

void __123__WBSCreditCardDataController_processQueueOfVirtualCardsToFetchDetailsForWithExternalizedContext_blockToUpdateCardDetails___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to retrieve credentials for a virtual card with error: %{public}@", v5);
}

void __68__WBSCreditCardDataController_markCreditCardDataAsMostRecentlyUsed___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update last used date on virtual card %{public}@", v5);
}

void __68__WBSCreditCardDataController_saveCreditCardData_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Wallet failed to save card data with error: %{public}@", v5);
}

void __78__WBSCreditCardDataController__updateCreditCardDataWithDescriptor_credential___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Wallet failed to update card data with error: %{public}@", v5);
}

void __108__WBSCreditCardDataController_sendCardholderNameEnteredInFormToWalletIfNecessary_lastFilledVirtualCardData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Wallet failed to save the cardholder name for a card: %{public}@", v5);
}

- (void)exportCreditCardDataToFileWithURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Error exporting credit cards: %{public}@", v5);
}

@end