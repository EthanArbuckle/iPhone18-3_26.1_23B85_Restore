@interface RTContactsManager
+ (id)addressDictionaryFromMapItem:(id)a3;
+ (id)addressLabelTypeToLabel:(unint64_t)a3;
+ (id)addressLabelTypeToString:(unint64_t)a3;
+ (id)formattedPostalAddressesForContact:(id)a3;
+ (unint64_t)labelStringToAddressLabelType:(id)a3;
- (BOOL)removeAddressOfContact:(id)a3 withAddressIdentifier:(id)a4 error:(id *)a5;
- (BOOL)removeAddressOfMeCardWithAddressIdentifier:(id)a3 error:(id *)a4;
- (BOOL)updateAddressLabelTypeOfContact:(id)a3 withAddressIdentifier:(id)a4 toAddressLabelType:(unint64_t)a5 error:(id *)a6;
- (BOOL)updateAddressLabelTypeOfMeCardWithAddressIdentifier:(id)a3 toAddressLabelType:(unint64_t)a4 error:(id *)a5;
- (BOOL)updateAddressOfContact:(id)a3 withAddressIdentifier:(id)a4 toAddressFromMapItem:(id)a5 error:(id *)a6;
- (BOOL)updateAddressOfMeCardWithAddressIdentifier:(id)a3 toAddressFromMapItem:(id)a4 error:(id *)a5;
- (RTContactsManager)initWithDataProtectionManager:(id)a3 mapServiceManager:(id)a4 distanceCalculator:(id)a5;
- (id)_contactColumnKeysToFetch;
- (id)_favoriteEntries;
- (id)_getEmailAddressStringsUsingCNContactEmailAddresses:(id)a3;
- (id)_getMeCardWithError:(id *)a3;
- (id)_getPhoneNumberStringsUsingCNContactPhoneNumbers:(id)a3;
- (id)_getPostalAddressesUsingCNContactPostalAddresses:(id)a3;
- (id)_getRTContactFromCNContact:(id)a3;
- (id)_queryContactsForGivenName:(id)a3 error:(id *)a4;
- (id)addAddressToContact:(id)a3 addressLabelType:(unint64_t)a4 addressFromMapItem:(id)a5 error:(id *)a6;
- (id)addAddressToMeCardWithAddressLabelType:(unint64_t)a3 addressFromMapItem:(id)a4 error:(id *)a5;
- (id)addressIdentifierOfContact:(id)a3 withAddressFromMapItem:(id)a4 error:(id *)a5;
- (id)addressIdentifierOfMeCardWithAddressFromMapItem:(id)a3 error:(id *)a4;
- (void)__donateAddressFromMapItem:(id)a3 addressLabelType:(unint64_t)a4 donationStore:(id)a5 handler:(id)a6;
- (void)_donateAddressFromMapItem:(id)a3 addressLabelType:(unint64_t)a4 handler:(id)a5;
- (void)_fetchContactsFromEmailOrPhoneNumberString:(id)a3 handler:(id)a4;
- (void)_fetchContactsUsingContactIdentifiers:(id)a3 handler:(id)a4;
- (void)_fetchFavoriteContactsWithHandler:(id)a3;
- (void)_fetchFavoriteHandlesWithHandler:(id)a3;
- (void)_fetchMeCardWithHandler:(id)a3;
- (void)_fetchRelationshipContactsFromMeCardWithHandler:(id)a3;
- (void)_onContactStoreNotification:(id)a3;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)donateAddressFromMapItem:(id)a3 addressLabelType:(unint64_t)a4 handler:(id)a5;
- (void)fetchContactsFromEmailOrPhoneNumberString:(id)a3 handler:(id)a4;
- (void)fetchContactsUsingContactIdentifiers:(id)a3 handler:(id)a4;
- (void)fetchFavoriteContactsWithHandler:(id)a3;
- (void)fetchFavoriteHandlesWithHandler:(id)a3;
- (void)fetchFormattedPostalAddressesFromMeCard:(id)a3;
- (void)fetchMeCardWithHandler:(id)a3;
- (void)fetchRelationshipContactsFromMeCardWithHandler:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onContactStoreNotification:(id)a3;
- (void)onDataProtectionNotification:(id)a3;
- (void)setMeCard:(id)a3;
@end

@implementation RTContactsManager

+ (unint64_t)labelStringToAddressLabelType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CBD8E8]])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD8E0]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD940]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBD930]])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RTContactsManager)initWithDataProtectionManager:(id)a3 mapServiceManager:(id)a4 distanceCalculator:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_12:
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTContactsManager initWithDataProtectionManager:mapServiceManager:distanceCalculator:]";
      v22 = 1024;
      v23 = 143;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapServiceManager (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[RTContactsManager initWithDataProtectionManager:mapServiceManager:distanceCalculator:]";
    v22 = 1024;
    v23 = 142;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dataProtectionManager (in %s:%d)", buf, 0x12u);
  }

  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v11)
  {
LABEL_4:
    v12 = 0;
    if (v9 && v10)
    {
      v19.receiver = self;
      v19.super_class = RTContactsManager;
      v13 = [(RTNotifier *)&v19 init];
      p_isa = &v13->super.super.super.isa;
      if (v13)
      {
        objc_storeStrong(&v13->_dataProtectionManager, a3);
        objc_storeStrong(p_isa + 6, a4);
        objc_storeStrong(p_isa + 7, a5);
        [p_isa setup];
      }

      self = p_isa;
      v12 = self;
    }

    goto LABEL_18;
  }

LABEL_15:
  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[RTContactsManager initWithDataProtectionManager:mapServiceManager:distanceCalculator:]";
    v22 = 1024;
    v23 = 144;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator (in %s:%d)", buf, 0x12u);
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (void)_setup
{
  v3 = [(RTContactsManager *)self dataProtectionManager];
  v4 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  [v3 addObserver:self selector:sel_onDataProtectionNotification_ name:v4];

  [(RTContactsManager *)self setAvailable:0];
}

- (void)_shutdownWithHandler:(id)a3
{
  v7 = a3;
  v4 = [(RTContactsManager *)self dataProtectionManager];
  [v4 removeObserver:self];

  [(RTContactsManager *)self setAvailable:0];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
    v6 = v7;
  }
}

- (id)_contactColumnKeysToFetch
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBD058];
  v7[0] = *MEMORY[0x277CBD000];
  v7[1] = v2;
  v3 = *MEMORY[0x277CBD0C8];
  v7[2] = *MEMORY[0x277CBCFF8];
  v7[3] = v3;
  v4 = *MEMORY[0x277CBCFC0];
  v7[4] = *MEMORY[0x277CBD098];
  v7[5] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];

  return v5;
}

- (id)_getMeCardWithError:(id *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(RTContactsManager *)self _contactColumnKeysToFetch];
    v13 = 0;
    v7 = [v5 _crossPlatformUnifiedMeContactWithKeysToFetch:v6 error:&v13];
    v8 = v13;

    if (a3)
    {
      v9 = v8;
      *a3 = v8;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (a3)
  {
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Unable to create a contact store to get the 'Me' card.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v8];
    v10 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *a3;
      *buf = 138412290;
      v15 = v12;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)setMeCard:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  meCard = self->_meCard;
  if (meCard != v5 && ([(CNContact *)meCard isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_meCard, a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(CNContact *)self->_meCard _rt_toString];
        v9 = [(CNContact *)self->_meCard postalAddresses];
        v11 = 138412546;
        v12 = v8;
        v13 = 2048;
        v14 = [v9 count];
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "set meCard, %@, postal addresses, %lu", &v11, 0x16u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = [(CNContact *)self->_meCard postalAddresses];
      [v10 enumerateObjectsUsingBlock:&__block_literal_global_102];
    }
  }
}

void __31__RTContactsManager_setMeCard___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a3 + 1;
      v7 = MEMORY[0x277CBDB20];
      v8 = [v4 label];
      v9 = [v7 localizedStringForLabel:v8];
      v10 = [v4 value];
      v11 = [v10 _rt_toString];
      v12 = 134218499;
      v13 = v6;
      v14 = 2117;
      v15 = v9;
      v16 = 2117;
      v17 = v11;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%lu, label, %{sensitive}@, address, %{sensitive}@", &v12, 0x20u);
    }
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(RTNotifier *)self getNumberOfObservers:v8]== 1)
  {
    v9 = +[(RTNotification *)RTContactsManagerContactStoreDidChangeNotification];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = v11;
      v13 = MEMORY[0x277CBD140];
LABEL_6:
      [v11 addObserver:self selector:sel_onContactStoreNotification_ name:*v13 object:0];

      goto LABEL_7;
    }

    v14 = +[(RTNotification *)RTContactsManagerContactStoreMeContactDidChangeNotification];
    v15 = [v8 isEqualToString:v14];

    if (v15)
    {
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = v11;
      v13 = MEMORY[0x277CBD148];
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = NSStringFromSelector(a2);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = 138412802;
        v21 = v17;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@, observer, %@", &v20, 0x20u);
      }
    }
  }

LABEL_7:
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (![(RTNotifier *)self getNumberOfObservers:v8])
  {
    v9 = +[(RTNotification *)RTContactsManagerContactStoreDidChangeNotification];
    v10 = [v8 isEqualToString:v9];

    if (v10 || (+[RTNotification notificationName](RTContactsManagerContactStoreMeContactDidChangeNotification, "notificationName"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v8 isEqualToString:v11], v11, v12))
    {
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 removeObserver:self name:*MEMORY[0x277CBD140] object:0];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = NSStringFromSelector(a2);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = 138412802;
        v19 = v15;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@, observer, %@", &v18, 0x20u);
      }
    }
  }
}

- (void)onContactStoreNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__RTContactsManager_onContactStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onContactStoreNotification:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v8 = [v5 name];
      *buf = 138412546;
      v32 = v7;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", buf, 0x16u);
    }
  }

  v9 = [v5 name];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBD140]];

  if (v10)
  {
    v11 = objc_opt_new();
    [(RTNotifier *)self postNotification:v11];

    v30 = 0;
    v12 = [(RTContactsManager *)self _getMeCardWithError:&v30];
    v13 = v30;
    if (v13)
    {
      goto LABEL_7;
    }

    v25 = [(RTContactsManager *)self meCard];
    v26 = v25;
    if (v25 == v12)
    {
    }

    else
    {
      v27 = [(RTContactsManager *)self meCard];
      v28 = [v27 isEqual:v12];

      if (!v28)
      {
        goto LABEL_21;
      }
    }

LABEL_7:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v12 _rt_toString];
        *buf = 138412546;
        v32 = v15;
        v33 = 2112;
        v34 = v13;
LABEL_27:
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "no change to meCard, %@, error, %@", buf, 0x16u);

        goto LABEL_28;
      }

      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v16 = [v5 name];
  v17 = [v16 isEqualToString:*MEMORY[0x277CBD148]];

  if (v17)
  {
    v29 = 0;
    v12 = [(RTContactsManager *)self _getMeCardWithError:&v29];
    v18 = v29;
    v13 = v18;
    if (!v18 || [v18 code]== 200)
    {
      v19 = [(RTContactsManager *)self meCard];
      v20 = v19;
      if (v19 == v12)
      {
      }

      else
      {
        v21 = [(RTContactsManager *)self meCard];
        v22 = [v21 isEqual:v12];

        if (!v22)
        {
LABEL_21:
          [(RTContactsManager *)self setMeCard:v12];
          v14 = objc_opt_new();
          [(RTNotifier *)self postNotification:v14];
          goto LABEL_28;
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v12 _rt_toString];
        *buf = 138412546;
        v32 = v15;
        v33 = 2112;
        v34 = v13;
        goto LABEL_27;
      }

LABEL_28:
    }

LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v23 = NSStringFromSelector(a2);
      v24 = [v5 name];
      *buf = 138412546;
      v32 = v23;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (void)_fetchMeCardWithHandler:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if ([(RTContactsManager *)self available])
    {
      v17 = 0;
      v6 = [(RTContactsManager *)self _getMeCardWithError:&v17];
      v7 = v17;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = NSStringFromSelector(a2);
          v10 = [v6 _rt_toString];
          *buf = 138412802;
          v19 = v9;
          v20 = 2112;
          v21 = v10;
          v22 = 2112;
          v23 = v7;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, meCard, %@, error, %@", buf, 0x20u);
        }
      }

      [(RTContactsManager *)self setMeCard:v6];

      v11 = [(RTContactsManager *)self meCard];

      if (v11)
      {
        v12 = [(RTContactsManager *)self meCard];
        v13 = [(RTContactsManager *)self _getRTContactFromCNContact:v12];
      }

      else
      {
        v13 = 0;
      }

      v5[2](v5, v13, 0);
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v24 = *MEMORY[0x277CCA450];
      v25[0] = @"resource temporarily unavailable.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v16 = [v14 errorWithDomain:v15 code:5 userInfo:v13];
      (v5)[2](v5, 0, v16);
    }
  }
}

- (void)onDataProtectionNotification:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTContactsManager_onDataProtectionNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = v5;
  v10 = self;
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void __50__RTContactsManager_onDataProtectionNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  v4 = [v2 isEqualToString:v3];

  if (v4 && [*(a1 + 32) unlockedSinceBoot])
  {
    [*(a1 + 40) setAvailable:1];
    v5 = *(a1 + 40);
    v11 = 0;
    v6 = [v5 _getMeCardWithError:&v11];
    v7 = v11;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(*(a1 + 48));
        v10 = [v6 _rt_toString];
        *buf = 138412802;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, RTDataProtectionManagerNotificationUnlockedSinceBoot, meCard, %@, error, %@", buf, 0x20u);
      }
    }

    [*(a1 + 40) setMeCard:v6];
  }
}

- (void)fetchMeCardWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTContactsManager_fetchMeCardWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)__donateAddressFromMapItem:(id)a3 addressLabelType:(unint64_t)a4 donationStore:(id)a5 handler:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "[RTContactsManager __donateAddressFromMapItem:addressLabelType:donationStore:handler:]";
      v45 = 1024;
      v46 = 447;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v12)
      {
        goto LABEL_21;
      }

      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277D01448];
      v41 = *MEMORY[0x277CCA450];
      v42 = @"requires a map item.";
      v28 = MEMORY[0x277CBEAC0];
      v29 = &v42;
      v30 = &v41;
LABEL_19:
      v13 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:1];
      v21 = [v26 errorWithDomain:v27 code:7 userInfo:v13];
      v12[2](v12, 0, v21);
      goto LABEL_20;
    }
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "[RTContactsManager __donateAddressFromMapItem:addressLabelType:donationStore:handler:]";
    v45 = 1024;
    v46 = 448;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: donationStore (in %s:%d)", buf, 0x12u);
  }

  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (![(RTContactsManager *)self labelTypeValidForDonation:a4])
  {
    if (!v12)
    {
      goto LABEL_21;
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v39 = *MEMORY[0x277CCA450];
    v40 = @"donation is only supported for label type home, work, or school.";
    v28 = MEMORY[0x277CBEAC0];
    v29 = &v40;
    v30 = &v39;
    goto LABEL_19;
  }

  if (v11)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = objc_alloc(MEMORY[0x277CFBCC0]);
    v15 = [MEMORY[0x277CCAA00] defaultsDomain];
    v16 = [objc_opt_class() labelTypeToString:a4];
    v17 = [v13 dateByAddingTimeInterval:259200.0];
    v31 = [v14 initWithBundleIdentifier:v15 donationIdentifier:v16 donationDate:v13 expirationDate:v17];

    v18 = objc_alloc(MEMORY[0x277D011B0]);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 initWithUseBackgroundTraits:1 analyticsIdentifier:v20];

    v22 = [(RTContactsManager *)self mapServiceManager];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __87__RTContactsManager___donateAddressFromMapItem_addressLabelType_donationStore_handler___block_invoke;
    v32[3] = &unk_2788CEF98;
    v35 = v12;
    v36 = a4;
    v33 = v31;
    v34 = v11;
    v23 = v31;
    [v22 fetchPostalAddressForMapItem:v10 options:v21 handler:v32];

LABEL_20:
    goto LABEL_21;
  }

  if (v12)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v37 = *MEMORY[0x277CCA450];
    v38 = @"donation requires a valid donation store.";
    v28 = MEMORY[0x277CBEAC0];
    v29 = &v38;
    v30 = &v37;
    goto LABEL_19;
  }

LABEL_21:
}

void __87__RTContactsManager___donateAddressFromMapItem_addressLabelType_donationStore_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBDB78] _rt_labelStringWithAddressLabelType:*(a1 + 56)];
    v9 = [MEMORY[0x277CFBCD0] donationValueWithPostalAddress:v5 style:1 label:v8 origin:*(a1 + 32)];
    v10 = *(a1 + 40);
    v15[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__RTContactsManager___donateAddressFromMapItem_addressLabelType_donationStore_handler___block_invoke_2;
    v12[3] = &unk_2788C51C8;
    v14 = *(a1 + 48);
    v13 = v5;
    [v10 donateMeCardValues:v11 completionHandler:v12];
  }
}

void __87__RTContactsManager___donateAddressFromMapItem_addressLabelType_donationStore_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138739971;
      v7 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "error from contacts donating place, %{sensitive}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 32), v3);
  }
}

- (void)_donateAddressFromMapItem:(id)a3 addressLabelType:(unint64_t)a4 handler:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[RTContactsManager _donateAddressFromMapItem:addressLabelType:handler:]";
      v14 = 1024;
      v15 = 520;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem (in %s:%d)", &v12, 0x12u);
    }
  }

  v11 = objc_opt_new();
  [(RTContactsManager *)self __donateAddressFromMapItem:v8 addressLabelType:a4 donationStore:v11 handler:v9];
}

- (void)donateAddressFromMapItem:(id)a3 addressLabelType:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__RTContactsManager_donateAddressFromMapItem_addressLabelType_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

+ (id)addressLabelTypeToLabel:(unint64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_2788CF080 + a3);
  }

  return v4;
}

+ (id)addressLabelTypeToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CF0A0[a3];
  }
}

+ (id)addressDictionaryFromMapItem:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 address];
  v7 = [v6 mergedThoroughfare];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CBD980]];

  v8 = [v4 address];
  v9 = [v8 subLocality];
  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CBD990]];

  v10 = [v4 address];
  v11 = [v10 locality];
  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277CBD948]];

  v12 = [v4 address];
  v13 = [v12 subAdministrativeArea];
  [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277CBD988]];

  v14 = [v4 address];
  v15 = [v14 administrativeArea];
  [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x277CBD978]];

  v16 = [v4 address];
  v17 = [v16 postalCode];
  [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277CBD968]];

  v18 = [v4 address];
  v19 = [v18 country];
  [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x277CBD950]];

  v20 = [v4 address];

  v21 = [v20 countryCode];
  [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x277CBD958]];

  return v5;
}

- (BOOL)removeAddressOfContact:(id)a3 withAddressIdentifier:(id)a4 error:(id *)a5
{
  v51[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = [MEMORY[0x277CBEB18] array];
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v11 = [v7 postalAddresses];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__RTContactsManager_removeAddressOfContact_withAddressIdentifier_error___block_invoke;
      v32[3] = &unk_2788CEFC0;
      v12 = v9;
      v33 = v12;
      v35 = &v36;
      v13 = v10;
      v34 = v13;
      [v11 enumerateObjectsUsingBlock:v32];

      if (*(v37 + 24) == 1)
      {
        v14 = [v7 mutableCopy];
        [v14 setPostalAddresses:v13];
        v15 = objc_opt_new();
        [v15 updateContact:v14];
        v16 = objc_opt_new();
        v31 = 0;
        v17 = [v16 executeSaveRequest:v15 error:&v31];
        v18 = v31;
        v19 = v18;
        if (a5)
        {
          v20 = v18;
          *a5 = v19;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v21 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [v14 _rt_toString];
            v23 = @"NO";
            *buf = 138413058;
            v41 = v22;
            if (v17)
            {
              v23 = @"YES";
            }

            v42 = 2112;
            v43 = v12;
            v44 = 2112;
            v45 = v23;
            v46 = 2112;
            v47 = v19;
            v24 = v22;
            _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "removed addess of contact, %@, with address identifier, %@, success, %@, error, %@", buf, 0x2Au);
          }
        }
      }

      else
      {
        LOBYTE(v17) = 1;
      }

      _Block_object_dispose(&v36, 8);
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = @"cannot remove address of contact. address identifier required";
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a5)
    {
      v29 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v49 = @"cannot remove address of contact. address identifier required";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v27 = [v29 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v13];
      goto LABEL_25;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = @"cannot remove address of contact. contact required";
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a5)
    {
      v26 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA450];
      v51[0] = @"cannot remove address of contact. contact required";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      v27 = [v26 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v13];
LABEL_25:
      LOBYTE(v17) = 0;
      *a5 = v27;
LABEL_29:

      goto LABEL_30;
    }
  }

  LOBYTE(v17) = 0;
LABEL_30:

  return v17;
}

void __72__RTContactsManager_removeAddressOfContact_withAddressIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (BOOL)removeAddressOfMeCardWithAddressIdentifier:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RTContactsManager *)self meCard];

  if (v7)
  {
    v8 = [(RTContactsManager *)self meCard];
    LOBYTE(a4) = [(RTContactsManager *)self removeAddressOfContact:v8 withAddressIdentifier:v6 error:a4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = @"cannot remove address. meCard required";
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a4)
    {
      v10 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14 = @"cannot remove address. meCard required";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a4 = [v10 errorWithDomain:@"RTContactsManagerErrorDomain" code:1 userInfo:v11];

      LOBYTE(a4) = 0;
    }
  }

  return a4;
}

- (id)addressIdentifierOfMeCardWithAddressFromMapItem:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RTContactsManager *)self meCard];

  if (v7)
  {
    v8 = [(RTContactsManager *)self meCard];
    v9 = [(RTContactsManager *)self addressIdentifierOfContact:v8 withAddressFromMapItem:v6 error:a4];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [v6 address];
    v12 = [v10 stringWithFormat:@"cannot get address identifier, %@. no meCard", v11];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a4)
    {
      v14 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA450];
      v18 = v12;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *a4 = [v14 errorWithDomain:@"RTContactsManagerErrorDomain" code:1 userInfo:v15];
    }

    v9 = 0;
  }

  return v9;
}

- (id)addressIdentifierOfContact:(id)a3 withAddressFromMapItem:(id)a4 error:(id *)a5
{
  v72 = a5;
  v119[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v73 = v6;
  v85 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        LODWORD(v110) = 138412290;
        *(&v110 + 4) = @"cannot get address identifier. contact required";
        _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@", &v110, 0xCu);
      }
    }

    if (v72)
    {
      v47 = MEMORY[0x277CCA9B8];
      v117 = *MEMORY[0x277CCA450];
      v118 = @"cannot get address identifier. contact required";
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v49 = [v47 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v48];
LABEL_43:
      v10 = 0;
      *v72 = v49;
LABEL_73:

      goto LABEL_74;
    }

LABEL_44:
    v10 = 0;
    goto LABEL_74;
  }

  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v50 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        LODWORD(v110) = 138412290;
        *(&v110 + 4) = @"cannot get address identifier. mapItem required";
        _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@", &v110, 0xCu);
      }
    }

    if (v72)
    {
      v51 = MEMORY[0x277CCA9B8];
      v115 = *MEMORY[0x277CCA450];
      v116 = @"cannot get address identifier. mapItem required";
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v49 = [v51 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v48];
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v8 = [v7 extendedAttributes];
  v9 = [v8 addressIdentifier];

  if (!v9)
  {
    goto LABEL_14;
  }

  *&v110 = 0;
  *(&v110 + 1) = &v110;
  v111 = 0x2020000000;
  LOBYTE(v112) = 0;
  v10 = [v6 postalAddresses];
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __77__RTContactsManager_addressIdentifierOfContact_withAddressFromMapItem_error___block_invoke;
  v100[3] = &unk_2788CEFE8;
  v11 = v85;
  v101 = v11;
  v102 = &v110;
  [v10 enumerateObjectsUsingBlock:v100];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (*(*(&v110 + 1) + 24))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "addressIdentifier from mapItem's client attributes is still a valid handle to an address, %@", buf, 0xCu);
    }
  }

  v13 = *(*(&v110 + 1) + 24);
  if (v13 == 1)
  {
    v14 = [v11 extendedAttributes];
    v10 = [v14 addressIdentifier];
  }

  _Block_object_dispose(&v110, 8);
  if ((v13 & 1) == 0)
  {
LABEL_14:
    v82 = objc_opt_new();
    *&v110 = 0;
    *(&v110 + 1) = &v110;
    v111 = 0x3032000000;
    v112 = __Block_byref_object_copy__124;
    v113 = __Block_byref_object_dispose__124;
    v114 = 0;
    v81 = dispatch_semaphore_create(0);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v15 = [v6 postalAddresses];
    v16 = [v15 countByEnumeratingWithState:&v96 objects:v109 count:16];
    obj = v15;
    if (v16)
    {
      v77 = v16;
      v17 = 0;
      v80 = *v97;
      v75 = *MEMORY[0x277D01448];
      v76 = *MEMORY[0x277CCA450];
LABEL_16:
      v18 = 0;
      v83 = v17;
      while (1)
      {
        if (*v97 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v96 + 1) + 8 * v18);
        v20 = objc_alloc(MEMORY[0x277D011B0]);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v20 initWithUseBackgroundTraits:1 analyticsIdentifier:v22];

        mapServiceManager = self->_mapServiceManager;
        v25 = [v19 value];
        v26 = [v25 dictionaryRepresentation];
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __77__RTContactsManager_addressIdentifierOfContact_withAddressFromMapItem_error___block_invoke_114;
        v92[3] = &unk_2788C9568;
        v95 = &v110;
        v93 = v82;
        v27 = v81;
        v94 = v27;
        [(RTMapServiceManager *)mapServiceManager fetchMapItemsFromAddressDictionary:v26 options:v23 handler:v92];

        v28 = v27;
        v29 = [MEMORY[0x277CBEAA8] now];
        v30 = dispatch_time(0, 3600000000000);
        if (!dispatch_semaphore_wait(v28, v30))
        {
          goto LABEL_24;
        }

        v31 = [MEMORY[0x277CBEAA8] now];
        [v31 timeIntervalSinceDate:v29];
        v33 = v32;
        v34 = objc_opt_new();
        v35 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_269];
        v36 = [MEMORY[0x277CCACC8] callStackSymbols];
        v37 = [v36 filteredArrayUsingPredicate:v35];
        v38 = [v37 firstObject];

        [v34 submitToCoreAnalytics:v38 type:1 duration:v33];
        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v39, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v40 = MEMORY[0x277CCA9B8];
        v119[0] = v76;
        *buf = @"semaphore wait timeout";
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v119 count:1];
        v42 = [v40 errorWithDomain:v75 code:15 userInfo:v41];

        if (v42)
        {
          v43 = v42;

          v44 = 0;
        }

        else
        {
LABEL_24:
          v44 = 1;
          v42 = v83;
        }

        v17 = v42;
        if ((v44 & 1) == 0)
        {
          objc_storeStrong((*(&v110 + 1) + 40), v42);
        }

        v45 = *(*(&v110 + 1) + 40) == 0;

        if (!v45)
        {
          break;
        }

        ++v18;
        v83 = v17;
        if (v77 == v18)
        {
          v77 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
          if (v77)
          {
            goto LABEL_16;
          }

          break;
        }
      }
    }

    else
    {
      v17 = 0;
    }

    v78 = v17;

    v52 = *(*(&v110 + 1) + 40);
    if (v52)
    {
      v48 = 0;
      if (*v72)
      {
        *v72 = v52;
      }

LABEL_72:

      _Block_object_dispose(&v110, 8);
      v10 = v48;
      goto LABEL_73;
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v53 = v82;
    v54 = [v53 countByEnumeratingWithState:&v88 objects:v108 count:16];
    if (!v54)
    {
      v84 = 0;
      goto LABEL_71;
    }

    v84 = 0;
    v55 = *v89;
    v56 = INFINITY;
LABEL_51:
    v57 = 0;
    while (1)
    {
      if (*v89 != v55)
      {
        objc_enumerationMutation(v53);
      }

      v58 = *(*(&v88 + 1) + 8 * v57);
      distanceCalculator = self->_distanceCalculator;
      v60 = [v85 location];
      v61 = [v58 location];
      v87 = 0;
      [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v60 toLocation:v61 error:&v87];
      v63 = v62;
      v64 = v87;

      if (v64)
      {
        break;
      }

      if (v63 < 200.0 && v63 < v56)
      {
        v65 = [v58 extendedAttributes];
        v70 = [v65 addressIdentifier];

        v56 = v63;
        v84 = v70;
LABEL_65:

        goto LABEL_66;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v65 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v67 = [v58 extendedAttributes];
          v79 = [v67 addressIdentifier];
          v68 = [v58 address];
          v69 = [v85 address];
          *buf = 138412803;
          *&buf[4] = v79;
          v104 = 2112;
          v105 = v68;
          v106 = 2117;
          v107 = v69;
          _os_log_debug_impl(&dword_2304B3000, v65, OS_LOG_TYPE_DEBUG, "contact's address identifier, %@, address, %@, too far from address of mapItem, %{sensitive}@", buf, 0x20u);
        }

        goto LABEL_65;
      }

LABEL_66:

      if (v54 == ++v57)
      {
        v54 = [v53 countByEnumeratingWithState:&v88 objects:v108 count:16];
        if (!v54)
        {
LABEL_71:

          v48 = v84;
          goto LABEL_72;
        }

        goto LABEL_51;
      }
    }

    v65 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740227;
      *&buf[4] = v85;
      v104 = 2112;
      v105 = v64;
      _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "error determining distance for map item, %{sensitive}@, error, %@", buf, 0x16u);
    }

    goto LABEL_65;
  }

LABEL_74:

  return v10;
}

void __77__RTContactsManager_addressIdentifierOfContact_withAddressFromMapItem_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [*(a1 + 32) extendedAttributes];
  v8 = [v7 addressIdentifier];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __77__RTContactsManager_addressIdentifierOfContact_withAddressFromMapItem_error___block_invoke_114(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v7 = obj;
  v6 = a2;
  [*(a1 + 32) addObjectsFromArray:v6];

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)addAddressToContact:(id)a3 addressLabelType:(unint64_t)a4 addressFromMapItem:(id)a5 error:(id *)a6
{
  v62[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v41 = v10;
      v12 = [objc_opt_class() addressDictionaryFromMapItem:v10];
      v13 = [objc_opt_class() addressLabelTypeToLabel:a4];
      v14 = [MEMORY[0x277CBDB78] postalAddressWithDictionaryRepresentation:v12];
      v42 = v9;
      v15 = [v9 mutableCopy];
      v16 = [MEMORY[0x277CBEB18] array];
      v40 = v13;
      v43 = v14;
      v17 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v13 value:v14];
      [v16 addObject:v17];
      v18 = [v15 postalAddresses];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __83__RTContactsManager_addAddressToContact_addressLabelType_addressFromMapItem_error___block_invoke;
      v45[3] = &unk_2788CF010;
      v19 = v16;
      v46 = v19;
      [v18 enumerateObjectsUsingBlock:v45];

      [v15 setPostalAddresses:v19];
      v20 = objc_opt_new();
      [v20 updateContact:v15];
      v21 = objc_opt_new();
      v44 = 0;
      v39 = [v21 executeSaveRequest:v20 error:&v44];
      v22 = v44;
      v23 = v22;
      if (a6)
      {
        v24 = v22;
        *a6 = v23;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v36 = [v17 identifier];
          v37 = [v15 _rt_toString];
          v26 = [objc_opt_class() addressLabelTypeToString:a4];
          v38 = v26;
          *buf = 138413570;
          v27 = @"NO";
          v48 = v36;
          v49 = 2112;
          if (v39)
          {
            v27 = @"YES";
          }

          v50 = v37;
          v51 = 2112;
          v52 = v26;
          v53 = 2112;
          v54 = v43;
          v55 = 2112;
          v56 = v27;
          v57 = 2112;
          v58 = v23;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "add address with identifier, %@, to contact, %@, address label type, %@, address, %@, success, %@, error, %@", buf, 0x3Eu);
        }
      }

      v28 = [v17 identifier];

      v11 = v41;
      v9 = v42;
      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = @"cannot add address. mapItem required";
        _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a6)
    {
      v30 = MEMORY[0x277CCA9B8];
      v59 = *MEMORY[0x277CCA450];
      v60 = @"cannot add address. mapItem required";
      v31 = MEMORY[0x277CBEAC0];
      v32 = &v60;
      v33 = &v59;
      goto LABEL_24;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = @"cannot add address. contact required";
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a6)
    {
      v30 = MEMORY[0x277CCA9B8];
      v61 = *MEMORY[0x277CCA450];
      v62[0] = @"cannot add address. contact required";
      v31 = MEMORY[0x277CBEAC0];
      v32 = v62;
      v33 = &v61;
LABEL_24:
      v12 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
      [v30 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v12];
      *a6 = v28 = 0;
LABEL_25:

      goto LABEL_27;
    }
  }

  v28 = 0;
LABEL_27:

  return v28;
}

- (id)addAddressToMeCardWithAddressLabelType:(unint64_t)a3 addressFromMapItem:(id)a4 error:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(RTContactsManager *)self meCard];

  if (v9)
  {
    v10 = [(RTContactsManager *)self meCard];
    a5 = [(RTContactsManager *)self addAddressToContact:v10 addressLabelType:a3 addressFromMapItem:v8 error:a5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = @"cannot add address. meCard required";
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a5)
    {
      v12 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16 = @"cannot add address. meCard required";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a5 = [v12 errorWithDomain:@"RTContactsManagerErrorDomain" code:1 userInfo:v13];

      a5 = 0;
    }
  }

  return a5;
}

- (BOOL)updateAddressOfContact:(id)a3 withAddressIdentifier:(id)a4 toAddressFromMapItem:(id)a5 error:(id *)a6
{
  v70[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v10)
    {
      if (v11)
      {
        v40 = v11;
        v13 = [objc_opt_class() addressDictionaryFromMapItem:v11];
        v47 = 0;
        v48 = &v47;
        v49 = 0x3032000000;
        v50 = __Block_byref_object_copy__124;
        v51 = __Block_byref_object_dispose__124;
        v52 = 0;
        v14 = [MEMORY[0x277CBDB78] postalAddressWithDictionaryRepresentation:v13];
        v15 = [v9 mutableCopy];
        v16 = [MEMORY[0x277CBEB18] array];
        v17 = [v15 postalAddresses];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __93__RTContactsManager_updateAddressOfContact_withAddressIdentifier_toAddressFromMapItem_error___block_invoke;
        v42[3] = &unk_2788CF038;
        v37 = v10;
        v43 = v37;
        v46 = &v47;
        v18 = v16;
        v44 = v18;
        v39 = v14;
        v45 = v39;
        [v17 enumerateObjectsUsingBlock:v42];

        [v15 setPostalAddresses:v18];
        v19 = objc_opt_new();
        [v19 updateContact:v15];
        v20 = objc_opt_new();
        v41 = 0;
        v21 = [v20 executeSaveRequest:v19 error:&v41];
        v22 = v41;
        v23 = v22;
        if (a6)
        {
          v24 = v22;
          *a6 = v23;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [v15 _rt_toString];
            v27 = v48[5];
            v28 = @"NO";
            *buf = 138413570;
            if (v21)
            {
              v28 = @"YES";
            }

            v54 = v26;
            v55 = 2112;
            v56 = v37;
            v57 = 2112;
            v58 = v27;
            v59 = 2112;
            v60 = v39;
            v61 = 2112;
            v62 = v28;
            v63 = 2112;
            v64 = v23;
            v38 = v26;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "updated address of contact, %@, with address identifier, %@, from address, %@, to address, %@, success, %@, error, %@", buf, 0x3Eu);
          }
        }

        _Block_object_dispose(&v47, 8);
        goto LABEL_32;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v34 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = @"cannot update address. mapItem required";
          _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      if (a6)
      {
        v40 = 0;
        v35 = MEMORY[0x277CCA9B8];
        v65 = *MEMORY[0x277CCA450];
        v66 = @"cannot update address. mapItem required";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v31 = [v35 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v13];
        goto LABEL_31;
      }

LABEL_33:
      LOBYTE(v21) = 0;
      goto LABEL_34;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = @"cannot update address. address identifier required";
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (!a6)
    {
      goto LABEL_33;
    }

    v40 = v12;
    v33 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v68 = @"cannot update address. address identifier required";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v31 = [v33 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v13];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = @"cannot update address. contact required";
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (!a6)
    {
      goto LABEL_33;
    }

    v40 = v12;
    v30 = MEMORY[0x277CCA9B8];
    v69 = *MEMORY[0x277CCA450];
    v70[0] = @"cannot update address. contact required";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    v31 = [v30 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v13];
  }

LABEL_31:
  LOBYTE(v21) = 0;
  *a6 = v31;
LABEL_32:

  v12 = v40;
LABEL_34:

  return v21;
}

void __93__RTContactsManager_updateAddressOfContact_withAddressIdentifier_toAddressFromMapItem_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = [v10 value];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 40);
    v9 = [v10 labeledValueBySettingValue:*(a1 + 48)];
    [v8 addObject:v9];
  }

  else
  {
    [*(a1 + 40) addObject:v10];
  }
}

- (BOOL)updateAddressOfMeCardWithAddressIdentifier:(id)a3 toAddressFromMapItem:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(RTContactsManager *)self meCard];

  if (v10)
  {
    v11 = [(RTContactsManager *)self meCard];
    LOBYTE(a5) = [(RTContactsManager *)self updateAddressOfContact:v11 withAddressIdentifier:v8 toAddressFromMapItem:v9 error:a5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = @"cannot set address label type. meCard required";
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA450];
      v17 = @"cannot set address label type. meCard required";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      *a5 = [v13 errorWithDomain:@"RTContactsManagerErrorDomain" code:1 userInfo:v14];

      LOBYTE(a5) = 0;
    }
  }

  return a5;
}

- (BOOL)updateAddressLabelTypeOfContact:(id)a3 withAddressIdentifier:(id)a4 toAddressLabelType:(unint64_t)a5 error:(id *)a6
{
  v63[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v35 = v10;
      v12 = [v9 mutableCopy];
      v13 = [MEMORY[0x277CBEB18] array];
      v42 = 0;
      v43 = &v42;
      v44 = 0x3032000000;
      v45 = __Block_byref_object_copy__124;
      v46 = __Block_byref_object_dispose__124;
      v47 = 0;
      v14 = [objc_opt_class() addressLabelTypeToLabel:a5];
      v15 = [(__CFString *)v12 postalAddresses];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __100__RTContactsManager_updateAddressLabelTypeOfContact_withAddressIdentifier_toAddressLabelType_error___block_invoke;
      v37[3] = &unk_2788CF038;
      v16 = v35;
      v38 = v16;
      v41 = &v42;
      v17 = v13;
      v39 = v17;
      v18 = v14;
      v40 = v18;
      [v15 enumerateObjectsUsingBlock:v37];

      [(__CFString *)v12 setPostalAddresses:v17];
      v19 = objc_opt_new();
      [v19 updateContact:v12];
      v20 = objc_opt_new();
      v36 = 0;
      v21 = [v20 executeSaveRequest:v19 error:&v36];
      v22 = v36;
      v23 = v22;
      if (a6)
      {
        v24 = v22;
        *a6 = v23;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = v43[5];
          v27 = @"NO";
          *buf = 138413570;
          if (v21)
          {
            v27 = @"YES";
          }

          v49 = v12;
          v50 = 2112;
          v51 = v16;
          v52 = 2112;
          v53 = v26;
          v54 = 2112;
          v55 = v18;
          v56 = 2112;
          v57 = v27;
          v58 = 2112;
          v59 = v23;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "updated address label type of contact, %@, with address identifier, %@, from address label type, %@, to address label type, %@, success, %@, error, %@", buf, 0x3Eu);
        }
      }

      _Block_object_dispose(&v42, 8);
      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = @"cannot update address label type. address identifier required";
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      v11 = 0;
    }

    if (a6)
    {
      v35 = v11;
      v33 = MEMORY[0x277CCA9B8];
      v60 = *MEMORY[0x277CCA450];
      v61 = @"cannot update address label type. address identifier required";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v31 = [v33 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v12];
      goto LABEL_24;
    }

LABEL_26:
    LOBYTE(v21) = 0;
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = v11;
    v29 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = @"cannot update address label type. contact required";
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v11 = v28;
  }

  if (!a6)
  {
    goto LABEL_26;
  }

  v35 = v11;
  v30 = MEMORY[0x277CCA9B8];
  v62 = *MEMORY[0x277CCA450];
  v63[0] = @"cannot update address label type. contact required";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  v31 = [v30 errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v12];
LABEL_24:
  LOBYTE(v21) = 0;
  *a6 = v31;
LABEL_25:

  v11 = v35;
LABEL_27:

  return v21;
}

void __100__RTContactsManager_updateAddressLabelTypeOfContact_withAddressIdentifier_toAddressLabelType_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = [v10 label];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 40);
    v9 = [v10 labeledValueBySettingLabel:*(a1 + 48)];
    [v8 addObject:v9];
  }

  else
  {
    [*(a1 + 40) addObject:v10];
  }
}

- (BOOL)updateAddressLabelTypeOfMeCardWithAddressIdentifier:(id)a3 toAddressLabelType:(unint64_t)a4 error:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(RTContactsManager *)self meCard];

  if (v9)
  {
    v10 = [(RTContactsManager *)self meCard];
    LOBYTE(a5) = [(RTContactsManager *)self updateAddressLabelTypeOfContact:v10 withAddressIdentifier:v8 toAddressLabelType:a4 error:a5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = @"cannot update address label type. meCard required";
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a5)
    {
      v12 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16 = @"cannot update address label type. meCard required";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a5 = [v12 errorWithDomain:@"RTContactsManagerErrorDomain" code:1 userInfo:v13];

      LOBYTE(a5) = 0;
    }
  }

  return a5;
}

- (void)fetchFormattedPostalAddressesFromMeCard:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTContactsManager fetchFormattedPostalAddressesFromMeCard:]";
      v12 = 1024;
      v13 = 1133;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__RTContactsManager_fetchFormattedPostalAddressesFromMeCard___block_invoke;
  v8[3] = &unk_2788C4938;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __61__RTContactsManager_fetchFormattedPostalAddressesFromMeCard___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 _getMeCardWithError:&v6];
  v4 = v6;
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [objc_opt_class() formattedPostalAddressesForContact:v3];
    (*(*(a1 + 40) + 16))();
  }
}

+ (id)formattedPostalAddressesForContact:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v34 = a1;
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v6 = [v4 postalAddresses];
    v35 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = v4;
    obj = [v4 postalAddresses];
    v7 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = v7;
    v9 = *v40;
    v10 = *MEMORY[0x277CBD8E0];
    v37 = *MEMORY[0x277CBD940];
    v11 = 0x277CCA000uLL;
    v33 = *MEMORY[0x277CBD8E0];
    while (1)
    {
      v12 = 0;
      v36 = v8;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        v14 = [v13 label];
        if ([v14 isEqualToString:v10])
        {
        }

        else
        {
          v15 = [v13 label];
          v16 = [v15 isEqualToString:v37];

          if (!v16)
          {
            goto LABEL_16;
          }
        }

        v17 = MEMORY[0x277CBDB80];
        v18 = [v13 value];
        v19 = [v17 stringFromPostalAddress:v18 style:0];

        if (v19)
        {
          v20 = *(v11 + 2992);
          v21 = [v13 label];
          v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v34, "labelStringToAddressLabelType:", v21)}];
          v23 = [v35 objectForKey:v22];

          if (v23)
          {
            [v23 addObject:v19];
          }

          else
          {
            v24 = objc_alloc(MEMORY[0x277CBEB18]);
            v25 = [v32 postalAddresses];
            v26 = [v24 initWithCapacity:{objc_msgSend(v25, "count")}];

            [v26 addObject:v19];
            v27 = *(v11 + 2992);
            v28 = [v13 label];
            v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v34, "labelStringToAddressLabelType:", v28)}];
            [v35 setObject:v26 forKey:v29];
          }

          v10 = v33;
          v8 = v36;
          v11 = 0x277CCA000;
        }

LABEL_16:
        ++v12;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (!v8)
      {
LABEL_18:

        v4 = v32;
        v30 = v35;
        goto LABEL_20;
      }
    }
  }

  v30 = 0;
LABEL_20:

  return v30;
}

- (void)fetchContactsFromEmailOrPhoneNumberString:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
LABEL_3:
      v9 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__RTContactsManager_fetchContactsFromEmailOrPhoneNumberString_handler___block_invoke;
      block[3] = &unk_2788C4500;
      block[4] = self;
      v13 = v6;
      v14 = v8;
      dispatch_async(v9, block);

      goto LABEL_10;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTContactsManager fetchContactsFromEmailOrPhoneNumberString:handler:]";
      v17 = 1024;
      v18 = 1186;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: emailOrPhoneNumberString (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "[RTContactsManager fetchContactsFromEmailOrPhoneNumberString:handler:]";
    v17 = 1024;
    v18 = 1187;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_10:
}

- (void)_fetchContactsFromEmailOrPhoneNumberString:(id)a3 handler:(id)a4
{
  v72[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      IsEmail = IMStringIsEmail();
      v11 = MEMORY[0x23191AAC0](v7);
      v12 = v11;
      if ((IsEmail & 1) == 0 && (v11 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = NSStringFromSelector(a2);
            *buf = 138412802;
            v62 = v15;
            v63 = 2112;
            v64 = v16;
            v65 = 2112;
            v66 = v7;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, invalid string passed, %@,", buf, 0x20u);
          }
        }

LABEL_12:
        v9[2](v9, 0, 0);
        goto LABEL_47;
      }

      v19 = [(RTContactsManager *)self _contactColumnKeysToFetch];
      v20 = objc_opt_new();
      if (!v20)
      {
        v71 = *MEMORY[0x277CCA450];
        v72[0] = @"Unable to create contacts store to get the 'Me' card.";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v21];
        v24 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v62 = v23;
          _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        (v9)[2](v9, 0, v23);
        goto LABEL_46;
      }

      aSelector = a2;
      v21 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v19];
      if (IsEmail)
      {
        v22 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v7];
        [v21 setPredicate:v22];
      }

      else
      {
        if (!v12)
        {
LABEL_25:
          v59 = 0;
          v26 = [v20 executeFetchRequest:v21 error:&v59];
          v23 = v59;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v53 = v21;
            v27 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = objc_opt_class();
              NSStringFromClass(v28);
              v29 = v51 = v26;
              v30 = NSStringFromSelector(aSelector);
              [v51 value];
              v31 = v49 = v20;
              v32 = [v31 count];
              *buf = 138413315;
              v62 = v29;
              v63 = 2112;
              v64 = v30;
              v65 = 2117;
              v66 = v7;
              v67 = 2048;
              v68 = v32;
              v69 = 2112;
              v70 = v23;
              _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, input string, %{sensitive}@, fetched contacts count, %lu, fetch request error, %@", buf, 0x34u);

              v20 = v49;
              v26 = v51;
            }

            v21 = v53;
          }

          if (v23)
          {
            (v9)[2](v9, 0, v23);
          }

          else
          {
            v47 = v19;
            v54 = v21;
            v50 = v20;
            v33 = objc_opt_new();
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v52 = v26;
            v34 = [v26 value];
            v35 = [v34 countByEnumeratingWithState:&v55 objects:v60 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v56;
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v56 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v55 + 1) + 8 * i);
                  v40 = objc_autoreleasePoolPush();
                  v41 = [(RTContactsManager *)self _getRTContactFromCNContact:v39];
                  if (v41)
                  {
                    [v33 addObject:v41];
                  }

                  objc_autoreleasePoolPop(v40);
                }

                v36 = [v34 countByEnumeratingWithState:&v55 objects:v60 count:16];
              }

              while (v36);
            }

            v20 = v50;
            v21 = v54;
            v23 = 0;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v42 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = objc_opt_class();
                v44 = NSStringFromClass(v43);
                v45 = NSStringFromSelector(aSelector);
                v46 = [v33 count];
                *buf = 138412802;
                v62 = v44;
                v63 = 2112;
                v64 = v45;
                v65 = 2048;
                v66 = v46;
                _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, %@, resultContacts count, %lu", buf, 0x20u);

                v20 = v50;
                v23 = 0;
              }
            }

            (v9)[2](v9, v33, 0);

            v19 = v47;
            v26 = v52;
          }

LABEL_46:
          goto LABEL_47;
        }

        v22 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v7];
        v25 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v22];
        [v21 setPredicate:v25];
      }

      goto LABEL_25;
    }
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v62 = "[RTContactsManager _fetchContactsFromEmailOrPhoneNumberString:handler:]";
      v63 = 1024;
      LODWORD(v64) = 1203;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: emailOrPhoneNumberString (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
      goto LABEL_12;
    }
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v62 = "[RTContactsManager _fetchContactsFromEmailOrPhoneNumberString:handler:]";
    v63 = 1024;
    LODWORD(v64) = 1204;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_47:
}

- (void)fetchContactsUsingContactIdentifiers:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTContactsManager fetchContactsUsingContactIdentifiers:handler:]";
      v17 = 1024;
      v18 = 1293;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactIdentifiers (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_9:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTContactsManager fetchContactsUsingContactIdentifiers:handler:]";
      v17 = 1024;
      v18 = 1294;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  if (![v6 count])
  {
LABEL_8:
    v11 = [MEMORY[0x277CBEA60] array];
    (v8)[2](v8, v11, 0);
LABEL_11:

    goto LABEL_12;
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTContactsManager_fetchContactsUsingContactIdentifiers_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  dispatch_async(v9, block);

LABEL_12:
}

- (void)_fetchContactsUsingContactIdentifiers:(id)a3 handler:(id)a4
{
  v61[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      if ([v7 count])
      {
        v10 = objc_opt_new();
        if (v10)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v11 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = objc_opt_class();
              v13 = NSStringFromClass(v12);
              v14 = NSStringFromSelector(a2);
              *buf = 138412802;
              v51 = v13;
              v52 = 2112;
              v53 = v14;
              v54 = 2048;
              v55 = [v7 count];
              _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, contact identifiers count, %lu,", buf, 0x20u);
            }
          }

          v15 = objc_alloc(MEMORY[0x277CBDA70]);
          v16 = [(RTContactsManager *)self _contactColumnKeysToFetch];
          v17 = [v15 initWithKeysToFetch:v16];

          v18 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v7];
          [v17 setPredicate:v18];

          v48 = 0;
          v19 = [v10 executeFetchRequest:v17 error:&v48];
          v20 = v48;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v21 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              v24 = NSStringFromSelector(a2);
              v41 = v20;
              v25 = [v7 count];
              [v19 value];
              v26 = v42 = v17;
              v27 = [v26 count];
              *buf = 138413314;
              v51 = v23;
              v52 = 2112;
              v53 = v24;
              v54 = 2048;
              v55 = v25;
              v20 = v41;
              v56 = 2048;
              v57 = v27;
              v58 = 2112;
              v59 = v41;
              _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, contact identifiers count, %lu, fetched contacts count, %lu, fetch request error, %@", buf, 0x34u);

              v17 = v42;
            }
          }

          if (v20)
          {
            (v9)[2](v9, 0, v20);
          }

          else
          {
            v43 = v17;
            v40 = v7;
            v30 = objc_opt_new();
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v39 = v19;
            v31 = [v19 value];
            v32 = [v31 countByEnumeratingWithState:&v44 objects:v49 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v45;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v45 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = *(*(&v44 + 1) + 8 * i);
                  v37 = objc_autoreleasePoolPush();
                  v38 = [(RTContactsManager *)self _getRTContactFromCNContact:v36];
                  if (v38)
                  {
                    [v30 addObject:v38];
                  }

                  objc_autoreleasePoolPop(v37);
                }

                v33 = [v31 countByEnumeratingWithState:&v44 objects:v49 count:16];
              }

              while (v33);
            }

            (v9)[2](v9, v30, 0);
            v7 = v40;
            v20 = 0;
            v17 = v43;
            v19 = v39;
          }
        }

        else
        {
          v60 = *MEMORY[0x277CCA450];
          v61[0] = @"Unable to create contacts store to get the 'Me' card.";
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
          v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v17];
          v29 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v51 = v20;
            _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          (v9)[2](v9, 0, v20);
        }

        goto LABEL_36;
      }

LABEL_18:
      v10 = [MEMORY[0x277CBEA60] array];
      (v9)[2](v9, v10, 0);
      goto LABEL_36;
    }
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v51 = "[RTContactsManager _fetchContactsUsingContactIdentifiers:handler:]";
      v52 = 1024;
      LODWORD(v53) = 1315;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactIdentifiers (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
      goto LABEL_18;
    }
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v51 = "[RTContactsManager _fetchContactsUsingContactIdentifiers:handler:]";
    v52 = 1024;
    LODWORD(v53) = 1316;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_36:
}

- (void)fetchFavoriteHandlesWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__RTContactsManager_fetchFavoriteHandlesWithHandler___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTContactsManager fetchFavoriteHandlesWithHandler:]";
      v11 = 1024;
      v12 = 1381;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchFavoriteHandlesWithHandler:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    aSelector = a2;
    v6 = [(RTContactsManager *)self _favoriteEntries];
    v7 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 value];

          if (v15)
          {
            v16 = [v13 value];
            [v7 addObject:v16];
          }

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v10);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(aSelector);
        v21 = [v7 count];
        *buf = 138412802;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        v31 = 2048;
        v32 = v21;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, favorite handles count, %lu", buf, 0x20u);
      }
    }

    v5[2](v5, v7, 0);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTContactsManager _fetchFavoriteHandlesWithHandler:]";
      v29 = 1024;
      LODWORD(v30) = 1394;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)fetchFavoriteContactsWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__RTContactsManager_fetchFavoriteContactsWithHandler___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTContactsManager fetchFavoriteContactsWithHandler:]";
      v11 = 1024;
      v12 = 1421;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchFavoriteContactsWithHandler:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [(RTContactsManager *)self _favoriteEntries];
    v7 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 contact];
          if (v15)
          {
            [v7 addObject:v15];
          }

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v10);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        v20 = [v7 count];
        *buf = 138412802;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        v29 = 2048;
        v30 = v20;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, favorite contacts count, %lu", buf, 0x20u);
      }
    }

    v5[2](v5, v7, 0);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTContactsManager _fetchFavoriteContactsWithHandler:]";
      v27 = 1024;
      LODWORD(v28) = 1435;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (id)_favoriteEntries
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBDAF8] sharedInstance];
  v5 = v4;
  if (!v4)
  {
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"Unable to create favorites store.";
    obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:?];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v19;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v7 = objc_opt_new();
    goto LABEL_16;
  }

  aSelector = a2;
  v27 = v4;
  v6 = [v4 entries];
  v7 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 contactProperty];
        v14 = [v13 contact];

        v15 = [(RTContactsManager *)self _getRTContactFromCNContact:v14];
        v16 = [RTFavoritesEntry alloc];
        v17 = [v12 value];
        v18 = [(RTFavoritesEntry *)v16 initWithContact:v15 value:v17];

        [v7 addObject:v18];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v9);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(aSelector);
      v23 = [v7 count];
      *buf = 138412802;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      v37 = 2048;
      v38 = v23;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, favorite entries count, %lu", buf, 0x20u);
    }

    v5 = v27;
LABEL_16:

    goto LABEL_18;
  }

  v5 = v27;
LABEL_18:

  return v7;
}

- (void)fetchRelationshipContactsFromMeCardWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__RTContactsManager_fetchRelationshipContactsFromMeCardWithHandler___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTContactsManager fetchRelationshipContactsFromMeCardWithHandler:]";
      v11 = 1024;
      v12 = 1505;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchRelationshipContactsFromMeCardWithHandler:(id)a3
{
  v57[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    if (v7)
    {
      aSelector = a2;
      v8 = [(RTContactsManager *)self _contactColumnKeysToFetch];
      v9 = [v8 arrayByAddingObject:*MEMORY[0x277CBD120]];
      v47 = 0;
      v10 = [v7 _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v47];
      v11 = v47;

      if (v10)
      {
        v34 = v7;
        v35 = v5;
        v33 = v10;
        [v10 contactRelations];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        obj = v46 = 0u;
        v12 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v12)
        {
          v13 = v12;
          v37 = *v44;
          do
          {
            v14 = 0;
            v15 = v11;
            do
            {
              if (*v44 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v16 = [*(*(&v43 + 1) + 8 * v14) value];
              v17 = [v16 name];
              v42 = v15;
              v18 = [(RTContactsManager *)self _queryContactsForGivenName:v17 error:&v42];
              v19 = v42;

              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v20 = v18;
              v21 = [v20 countByEnumeratingWithState:&v38 objects:v54 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v39;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v39 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = [(RTContactsManager *)self _getRTContactFromCNContact:*(*(&v38 + 1) + 8 * i)];
                    [v6 addObject:v25];
                  }

                  v22 = [v20 countByEnumeratingWithState:&v38 objects:v54 count:16];
                }

                while (v22);
              }

              ++v14;
              v15 = v19;
            }

            while (v14 != v13);
            v11 = v19;
            v13 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v13);
        }

        v7 = v34;
        v5 = v35;
        v10 = v33;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = NSStringFromSelector(aSelector);
          v30 = [v6 count];
          *buf = 138412802;
          v49 = v28;
          v50 = 2112;
          v51 = v29;
          v52 = 2048;
          v53 = v30;
          _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, relation contacts count, %lu", buf, 0x20u);
        }
      }

      v5[2](v5, v6, 0);
    }

    else
    {
      v56 = *MEMORY[0x277CCA450];
      v57[0] = @"Unable to create contacts store to get the 'Me' card.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v10];
      v31 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v11;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      (v5)[2](v5, 0, v11);
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "[RTContactsManager _fetchRelationshipContactsFromMeCardWithHandler:]";
      v50 = 1024;
      LODWORD(v51) = 1519;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (id)_queryContactsForGivenName:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = objc_opt_new();
    if (v7)
    {
      v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:v6];
      v9 = [(RTContactsManager *)self _contactColumnKeysToFetch];
      v17 = 0;
      v10 = [v7 unifiedContactsMatchingPredicate:v8 keysToFetch:v9 error:&v17];
      v11 = v17;

      if (a4)
      {
        v12 = v11;
        *a4 = v11;
      }
    }

    else
    {
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"Unable to create contacts store to get the 'Me' card.";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTContactsManagerErrorDomain" code:0 userInfo:v8];
      v14 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (a4)
      {
        v15 = v11;
        *a4 = v11;
      }

      v10 = [MEMORY[0x277CBEA60] array];
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: name", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"name");
    }

    v10 = [MEMORY[0x277CBEA60] array];
  }

  return v10;
}

- (id)_getRTContactFromCNContact:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTNotifier *)self queue];

  if (v5)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTContactsManager _getRTContactFromCNContact:]";
      v26 = 1024;
      v27 = 1593;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", buf, 0x12u);
    }

    if (v4)
    {
LABEL_3:
      if ([v4 isKeyAvailable:*MEMORY[0x277CBD0C8]])
      {
        v6 = [v4 postalAddresses];
        v7 = [(RTContactsManager *)self _getPostalAddressesUsingCNContactPostalAddresses:v6];
      }

      else
      {
        v7 = [MEMORY[0x277CBEA60] array];
      }

      if ([v4 isKeyAvailable:*MEMORY[0x277CBD098]])
      {
        v10 = [v4 phoneNumbers];
        v11 = [(RTContactsManager *)self _getPhoneNumberStringsUsingCNContactPhoneNumbers:v10];
      }

      else
      {
        v11 = [MEMORY[0x277CBEA60] array];
      }

      if ([v4 isKeyAvailable:*MEMORY[0x277CBCFC0]])
      {
        v12 = [v4 emailAddresses];
        v13 = [(RTContactsManager *)self _getEmailAddressStringsUsingCNContactEmailAddresses:v12];
      }

      else
      {
        v13 = [MEMORY[0x277CBEA60] array];
      }

      v14 = [RTContact alloc];
      v23 = [v4 identifier];
      v15 = [v4 givenName];
      v16 = [v4 middleName];
      v17 = [v4 familyName];
      v18 = v7;
      if (!v7)
      {
        v18 = [MEMORY[0x277CBEA60] array];
      }

      v19 = v11;
      if (v11)
      {
        if (v13)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v19 = [MEMORY[0x277CBEA60] array];
        if (v13)
        {
LABEL_22:
          v9 = [(RTContact *)v14 initWithIdentifier:v23 givenName:v15 middleName:v16 familyName:v17 postalAddresses:v18 phoneNumbers:v19 emailAddresses:v13];
          if (v11)
          {
LABEL_24:
            if (!v7)
            {
            }

            goto LABEL_27;
          }

LABEL_23:

          goto LABEL_24;
        }
      }

      [MEMORY[0x277CBEA60] array];
      v21 = v22 = v13;
      v9 = [(RTContact *)v14 initWithIdentifier:v23 givenName:v15 middleName:v16 familyName:v17 postalAddresses:v18 phoneNumbers:v19 emailAddresses:v21];

      v13 = v22;
      if (v11)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "[RTContactsManager _getRTContactFromCNContact:]";
    v26 = 1024;
    v27 = 1594;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contact (in %s:%d)", buf, 0x12u);
  }

  v9 = 0;
LABEL_27:

  return v9;
}

- (id)_getPostalAddressesUsingCNContactPostalAddresses:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 dateByAddingTimeInterval:4838400.0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__RTContactsManager__getPostalAddressesUsingCNContactPostalAddresses___block_invoke;
  v15[3] = &unk_2788CF060;
  v15[4] = self;
  v16 = v7;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  v10 = v8;
  v11 = v7;
  [v5 enumerateObjectsUsingBlock:v15];

  v12 = v18;
  v13 = v9;

  return v9;
}

void __70__RTContactsManager__getPostalAddressesUsingCNContactPostalAddresses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RTContactPostalAddress alloc];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = objc_opt_class();
  v7 = [v3 label];
  v9 = -[RTContactPostalAddress initWithIdentifier:CNPostalAddress:lableType:creationDate:expirationDate:](v4, "initWithIdentifier:CNPostalAddress:lableType:creationDate:expirationDate:", v5, v3, [v6 labelStringToAddressLabelType:v7], *(a1 + 40), *(a1 + 48));

  v8 = v9;
  if (v9)
  {
    [*(a1 + 56) addObject:v9];
    v8 = v9;
  }
}

- (id)_getPhoneNumberStringsUsingCNContactPhoneNumbers:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__RTContactsManager__getPhoneNumberStringsUsingCNContactPhoneNumbers___block_invoke;
  v7[3] = &unk_2788CF010;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __70__RTContactsManager__getPhoneNumberStringsUsingCNContactPhoneNumbers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v5 = [v3 stringValue];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (id)_getEmailAddressStringsUsingCNContactEmailAddresses:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__RTContactsManager__getEmailAddressStringsUsingCNContactEmailAddresses___block_invoke;
  v7[3] = &unk_2788CF010;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

uint64_t __73__RTContactsManager__getEmailAddressStringsUsingCNContactEmailAddresses___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

@end