@interface ICQDaemonOfferCriteria
- (BOOL)isSatisfiedByConditions:(id)conditions;
- (ICQDaemonOfferCriteria)initWithServerDictionary:(id)dictionary;
@end

@implementation ICQDaemonOfferCriteria

- (BOOL)isSatisfiedByConditions:(id)conditions
{
  conditionsCopy = conditions;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  serverDict = self->_serverDict;
  objc_opt_class();
  objc_opt_isKindOfClass();
  v6 = self->_serverDict;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__ICQDaemonOfferCriteria_isSatisfiedByConditions___block_invoke;
  v9[3] = &unk_27A652DD8;
  v11 = &v12;
  v7 = conditionsCopy;
  v10 = v7;
  [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v9];
  LOBYTE(v6) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __50__ICQDaemonOfferCriteria_isSatisfiedByConditions___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 24) != 1)
  {
    LOBYTE(v12) = 0;
    goto LABEL_19;
  }

  v10 = *(a1 + 32);
  if ([v7 isEqualToString:@"deviceStorageAlmostFull"])
  {
    v11 = [v10 isDeviceStorageAlmostFull];
    goto LABEL_7;
  }

  if (![v7 isEqualToString:@"iCPLEnabled"])
  {
    if ([v7 isEqualToString:@"optimizeEnabled"])
    {
      if (_ICQDoesCriterionValueEqualBOOL(v8, [v10 isPhotosOptimizeEnabled]))
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (([v7 isEqualToString:@"minPhotoLibraryInBytes"] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", @"maxPhotoLibraryInBytes"))
    {
      if ([v7 isEqualToString:@"backupRestoreComplete"])
      {
        LOBYTE(v12) = _ICQDoesCriterionValueEqualBOOL(v8, [v10 isBackupRestoreComplete]);
        goto LABEL_18;
      }

      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v7;
        v13 = "unexpected criterion key %@";
        v14 = v12;
        v15 = 12;
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = _ICQGetLogSystem();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v25 = 138412546;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      v13 = "criterion: %@: %@ not convertible to long long";
      goto LABEL_15;
    }

    v17 = [v10 photosLibrarySize];
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      v12 = _ICQGetLogSystem();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      LOWORD(v25) = 0;
      v13 = "criterion: photos library size unknown";
      v14 = v12;
      v15 = 2;
      goto LABEL_16;
    }

    v19 = [v8 longLongValue];
    v20 = [v10 photosLibrarySize];
    v21 = [v20 longLongValue];

    LODWORD(v20) = [v7 isEqualToString:@"minPhotoLibraryInBytes"];
    v22 = _ICQGetLogSystem();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      LOBYTE(v12) = v21 >= v19;
      if (v23)
      {
        v24 = @"<";
        v25 = 138544130;
        v26 = v7;
        if (v21 >= v19)
        {
          v24 = @">=";
        }

LABEL_42:
        v27 = 2048;
        v28 = v21;
        v29 = 2114;
        v30 = v24;
        v31 = 2048;
        v32 = v19;
        _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, "criterion: %{public}@: %lld %{public}@ %lld", &v25, 0x2Au);
      }
    }

    else
    {
      LODWORD(v12) = v21 <= v19;
      if (v23)
      {
        v24 = @">";
        v25 = 138544130;
        v26 = v7;
        if (v21 <= v19)
        {
          v24 = @"<=";
        }

        goto LABEL_42;
      }
    }

    goto LABEL_18;
  }

  v11 = [v10 isPhotosCloudEnabled];
LABEL_7:
  if (_ICQDoesCriterionValueEqualBOOL(v8, v11))
  {
LABEL_8:
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138543618;
      v26 = v7;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "criterion: %{public}@ matches %{public}@", &v25, 0x16u);
    }

    LOBYTE(v12) = 1;
    goto LABEL_18;
  }

LABEL_13:
  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543618;
    v26 = v7;
    v27 = 2114;
    v28 = v8;
    v13 = "criterion: %{public}@ doesn't match %{public}@";
LABEL_15:
    v14 = v12;
    v15 = 22;
LABEL_16:
    _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, v13, &v25, v15);
  }

LABEL_17:

  LOBYTE(v12) = 0;
LABEL_18:

  v9 = *(*(a1 + 40) + 8);
LABEL_19:
  *(v9 + 24) = v12;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (ICQDaemonOfferCriteria)initWithServerDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ICQDaemonOfferCriteria;
  v5 = [(ICQDaemonOfferCriteria *)&v14 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [dictionaryCopy copy];
    }

    else
    {
      v7 = _ICQGetLogSystem();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (dictionaryCopy)
      {
        if (v8)
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "criteria: expected NSDictionary, got %@", buf, 0xCu);
        }

        v15 = @"fail";
        v16 = &stru_288431E38;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "criteria: missing, substituting empty criteria (always succeeds)", buf, 2u);
        }

        v6 = MEMORY[0x277CBEC10];
      }
    }

    serverDict = v5->_serverDict;
    v5->_serverDict = v6;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

@end