@interface ICQQuotaInfoResponse
- (BOOL)hasPurchasedMoreStorage;
- (ICQQuotaInfoResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (NSString)availableStorageText;
- (NSString)totalStorageText;
- (id)_sizeStringFromBytes:(id)a3;
- (id)storageFooter:(BOOL)a3;
- (unint64_t)availableStorage;
- (unint64_t)totalStorage;
- (unint64_t)usedStorage;
@end

@implementation ICQQuotaInfoResponse

- (ICQQuotaInfoResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = ICQQuotaInfoResponse;
  v4 = [(AAResponse *)&v53 initWithHTTPResponse:a3 data:a4];
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277CEC888];
    v7 = [*(&v4->super.super.isa + v6) objectForKey:@"entry_points"];
    urls = v5->_urls;
    v5->_urls = v7;

    if (v5->_urls)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = v5->_urls;
        v5->_urls = 0;
      }
    }

    v10 = [*(&v5->super.super.isa + v6) objectForKey:@"storage_data"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:@"basicAccount"];
        v5->_basicAccount = [v11 BOOLValue];

        v12 = [v10 objectForKey:@"quota_info_in_bytes"];
        quotaInfoDict = v5->_quotaInfoDict;
        v5->_quotaInfoDict = v12;

        if (v5->_quotaInfoDict)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = v5->_quotaInfoDict;
            v5->_quotaInfoDict = 0;
          }
        }

        v15 = [v10 objectForKey:@"storage_info_in_bytes"];
        storageInfo = v5->_storageInfo;
        v5->_storageInfo = v15;

        if (v5->_storageInfo)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = v5->_storageInfo;
            v5->_storageInfo = 0;
          }
        }

        v18 = [v10 objectForKey:@"account_status_info"];
        accountStatus = v5->_accountStatus;
        v5->_accountStatus = v18;

        if (v5->_accountStatus)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = v5->_accountStatus;
            v5->_accountStatus = 0;
          }
        }
      }
    }

    v21 = objc_opt_new();
    [v21 setTotalStorage:{-[ICQQuotaInfoResponse totalStorage](v5, "totalStorage")}];
    [v21 setUsedStorage:{-[ICQQuotaInfoResponse usedStorage](v5, "usedStorage")}];
    v47 = v21;
    objc_storeStrong(&v5->_quotaInfo, v21);
    v22 = [*(&v5->super.super.isa + v6) objectForKey:@"storage_usage_by_media"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v10;
      v46 = v5;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v44 = v22;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v50;
        v27 = @"media_key";
        v28 = 0x277CCA000uLL;
        v29 = &unk_28847A158;
        do
        {
          v30 = 0;
          v48 = v25;
          do
          {
            if (*v50 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v31 = *(*(&v49 + 1) + 8 * v30);
            v32 = [v31 objectForKeyedSubscript:v27];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [v29 objectForKeyedSubscript:v32];
              if (v33)
              {
                v34 = [v31 objectForKeyedSubscript:@"usage_in_bytes"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = v26;
                  v36 = v27;
                  v37 = v28;
                  v38 = v23;
                  v39 = v29;
                  v40 = [v34 unsignedLongLongValue];
                  v41 = [v33 integerValue];
                  v42 = v40;
                  v29 = v39;
                  v23 = v38;
                  v28 = v37;
                  v27 = v36;
                  v26 = v35;
                  v25 = v48;
                  [v47 setStorageInUse:v42 forMediaKind:v41];
                }
              }
            }

            ++v30;
          }

          while (v25 != v30);
          v25 = [v23 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v25);
      }

      v10 = v45;
      v5 = v46;
      v22 = v44;
    }
  }

  return v5;
}

- (unint64_t)totalStorage
{
  v2 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"total_quota"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedLongLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)totalStorageText
{
  if (self->_basicAccount)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DATA_MAIL" value:&stru_28844FC60 table:@"CloudGroup"];
    v6 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"data_quota"];
    v7 = [(ICQQuotaInfoResponse *)self _sizeStringFromBytes:v6];
    v8 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"mail_quota"];
    v9 = [(ICQQuotaInfoResponse *)self _sizeStringFromBytes:v8];
    v10 = [v3 stringWithFormat:v5, v7, v9];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[ICQQuotaInfoResponse totalStorage](self, "totalStorage")}];
    v10 = [(ICQQuotaInfoResponse *)self _sizeStringFromBytes:v4];
  }

  return v10;
}

- (unint64_t)usedStorage
{
  v2 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"total_used"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedLongLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)availableStorage
{
  v2 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"total_available"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (NSString)availableStorageText
{
  if (self->_basicAccount)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DATA_MAIL" value:&stru_28844FC60 table:@"CloudGroup"];
    v6 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"data_available"];
    v7 = [(ICQQuotaInfoResponse *)self _sizeStringFromBytes:v6];
    v8 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"mail_available"];
    v9 = [(ICQQuotaInfoResponse *)self _sizeStringFromBytes:v8];
    v10 = [v3 stringWithFormat:v5, v7, v9];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[ICQQuotaInfoResponse availableStorage](self, "availableStorage")}];
    v10 = [(ICQQuotaInfoResponse *)self _sizeStringFromBytes:v4];
  }

  return v10;
}

- (id)storageFooter:(BOOL)a3
{
  if (!self->_basicAccount)
  {
    p_otherToolbarItems = &self->_otherToolbarItems;
    otherToolbarItems = self->_otherToolbarItems;
    if (otherToolbarItems)
    {
      goto LABEL_11;
    }

    v18 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"total_used"];
    [v18 floatValue];
    v20 = v19;
    v9 = @"total_quota";
    v21 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"total_quota"];
    [v21 floatValue];
    v12 = (v20 / v22);

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"AVAILABLE_OF_ON_CASTLE" value:&stru_28844FC60 table:@"CloudGroup"];
    quotaInfoDict = self->_quotaInfoDict;
    v17 = @"total_available";
    goto LABEL_7;
  }

  if (a3)
  {
    p_otherToolbarItems = &self->_otherToolbarItems;
    otherToolbarItems = self->_otherToolbarItems;
    if (otherToolbarItems)
    {
      goto LABEL_11;
    }

    v6 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"data_used"];
    [v6 floatValue];
    v8 = v7;
    v9 = @"data_quota";
    v10 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"data_quota"];
    [v10 floatValue];
    v12 = (v8 / v11);

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"AVAILABLE_OF_ON_CASTLE" value:&stru_28844FC60 table:@"CloudGroup"];
    quotaInfoDict = self->_quotaInfoDict;
    v17 = @"data_available";
LABEL_7:
    v23 = [(NSDictionary *)quotaInfoDict objectForKey:v17];
    [v23 floatValue];
    v24 = CPFSSizeStrings();
    v25 = [(NSDictionary *)self->_quotaInfoDict objectForKey:v9];
    [v25 floatValue];
    v26 = CPFSSizeStrings();
    v27 = [v13 stringWithFormat:v15, v24, v26];

    v28 = objc_alloc(MEMORY[0x277CBEA60]);
    v29 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v30 = [ICQCloudStorageMeteredBarButtonView barButtonItemWithString:v27 andPercentUsed:v12];
    v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    v32 = [v28 initWithObjects:{v29, v30, v31, 0}];
    v33 = *p_otherToolbarItems;
    *p_otherToolbarItems = v32;
    goto LABEL_10;
  }

  p_otherToolbarItems = &self->_topToolbarItems;
  otherToolbarItems = self->_topToolbarItems;
  if (otherToolbarItems)
  {
    goto LABEL_11;
  }

  v34 = MEMORY[0x277CCACA8];
  v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = [v35 localizedStringForKey:@"AVAILABLE_OF" value:&stru_28844FC60 table:@"CloudGroup"];
  v37 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"data_available"];
  [v37 floatValue];
  v38 = CPFSSizeStrings();
  v39 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"data_quota"];
  [v39 floatValue];
  v40 = CPFSSizeStrings();
  v52 = [v34 stringWithFormat:v36, v38, v40];

  v41 = MEMORY[0x277CCACA8];
  v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v43 = [v42 localizedStringForKey:@"AVAILABLE_OF" value:&stru_28844FC60 table:@"CloudGroup"];
  v44 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"mail_available"];
  [v44 floatValue];
  v45 = CPFSSizeStrings();
  v46 = [(NSDictionary *)self->_quotaInfoDict objectForKey:@"mail_quota"];
  [v46 floatValue];
  v47 = CPFSSizeStrings();
  v29 = [v41 stringWithFormat:v43, v45, v47];

  v27 = v52;
  v48 = objc_alloc(MEMORY[0x277CBEA60]);
  v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v31 = [ICQCloudStorageDataAndMailBarButtonView barButtonItemWithData:v52 andMail:v29];
  v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v49 = [v48 initWithObjects:{v30, v31, v33, 0}];
  v50 = *p_otherToolbarItems;
  *p_otherToolbarItems = v49;

LABEL_10:
  otherToolbarItems = *p_otherToolbarItems;
LABEL_11:

  return otherToolbarItems;
}

- (BOOL)hasPurchasedMoreStorage
{
  v2 = [(NSDictionary *)self->_storageInfo objectForKey:@"commerce_storage_in_bytes"];
  v3 = [v2 unsignedLongLongValue] != 0;

  return v3;
}

- (id)_sizeStringFromBytes:(id)a3
{
  v3 = MEMORY[0x277CCA8E8];
  v4 = [a3 longLongValue];

  return [v3 stringFromByteCount:v4 countStyle:3];
}

@end