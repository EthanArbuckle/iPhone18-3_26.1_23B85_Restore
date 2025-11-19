@interface INStorageSummaryResponse
- (INStorageSummaryResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
- (id)_parseSpecifierInfo:(id)a3;
- (id)_parseSubscriptionInfo:(id)a3;
- (id)_parseTip:(id)a3;
- (id)_parseTipAction:(id)a3;
- (id)_parseTipActionLink:(id)a3;
- (id)_parseTipCriteria:(id)a3;
- (id)_parseTipIcon:(id)a3;
- (id)_parseTips:(id)a3;
- (id)_parseUsageByMedia:(id)a3;
- (id)_parseiCloudPlusFeature:(id)a3;
- (void)_parseResponseDict;
@end

@implementation INStorageSummaryResponse

- (INStorageSummaryResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v9.receiver = self;
  v9.super_class = INStorageSummaryResponse;
  v4 = [(INStorageSummaryResponse *)&v9 initWithHTTPResponse:a3 data:a4 bodyIsPlist:0];
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR___AAResponse__httpResponse;
    if ([*&v4->AAResponse_opaque[OBJC_IVAR___AAResponse__httpResponse] statusCode] == 200)
    {
      [(INStorageSummaryResponse *)v5 _parseResponseDict];
    }

    else
    {
      v7 = _INLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000353BC(&v5->AAResponse_opaque[v6]);
      }
    }
  }

  return v5;
}

- (void)_parseResponseDict
{
  v3 = objc_alloc_init(ICQCloudStorageSummary);
  cloudStorageSummary = self->_cloudStorageSummary;
  self->_cloudStorageSummary = v3;

  v5 = OBJC_IVAR___AAResponse__responseDictionary;
  v41 = [*&self->AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary] objectForKeyedSubscript:@"displayLabel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setDisplayLabel:v41];
  }

  v6 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"manageStorageInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"manageStorageURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [NSURL URLWithString:v7];
      [(ICQCloudStorageSummary *)self->_cloudStorageSummary setManageStorageURL:v8];
    }

    v9 = [v6 objectForKeyedSubscript:@"manageStorageLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQCloudStorageSummary *)self->_cloudStorageSummary setManageStorageTitle:v9];
    }

    v10 = [v6 objectForKeyedSubscript:@"manageStorageAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      v12 = [v10 objectForKeyedSubscript:@"title"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ICQCloudStorageSummary *)self->_cloudStorageSummary setManageStorageActionButtonText:v12];
      }

      v6 = v11;
    }
  }

  v13 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"usageByMedia"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(INStorageSummaryResponse *)self _parseUsageByMedia:v13];
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setMediaStorage:v14];
  }

  v15 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"totalStorage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setTotalStorage:v15];
  }

  v16 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"usedStorage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setUsedStorage:v16];
  }

  v17 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"freeStorage"];
  objc_opt_class();
  v40 = v17;
  if (objc_opt_isKindOfClass())
  {
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setFreeStorage:v17];
  }

  v38 = v16;
  v18 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"commerceStorageQuota"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setCommerceStorage:v18];
  }

  v37 = v18;
  v39 = v15;
  v19 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"subscriptionInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [(INStorageSummaryResponse *)self _parseSubscriptionInfo:v19];
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setSubscriptionInfo:v20];
  }

  v21 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"tips"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [(INStorageSummaryResponse *)self _parseTips:v21];
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setTips:v22];
  }

  v23 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"manageStoragePage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [[ICQManageStoragePageInfo alloc] initFromDictionary:v23];
    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setManageStoragePage:v24];
  }

  v25 = [*&self->AAResponse_opaque[v5] objectForKeyedSubscript:@"iCloudDetailsPageInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v13;
    v26 = v6;
    v27 = objc_alloc_init(ICQiCloudDetailsPageInfo);
    v28 = [v25 objectForKeyedSubscript:@"actionURL"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v30 = [v25 objectForKeyedSubscript:@"actionURL"];
      v31 = [NSURL URLWithString:v30];
    }

    else
    {
      v32 = [v25 objectForKeyedSubscript:@"actionURL"];
      objc_opt_class();
      v33 = objc_opt_isKindOfClass();

      if (v33)
      {
        v31 = [v25 objectForKeyedSubscript:@"actionURL"];
      }

      else
      {
        v31 = 0;
      }
    }

    [v27 setActionURL:{v31, v35}];
    v34 = [v25 objectForKeyedSubscript:@"actionType"];
    [v27 setActionType:v34];

    [(ICQCloudStorageSummary *)self->_cloudStorageSummary setICloudDetailsPageInfo:v27];
    v6 = v26;
    v13 = v36;
  }
}

- (id)_parseTips:(id)a3
{
  v4 = a3;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100007CB8;
  v14 = &unk_1000553B8;
  v15 = self;
  v5 = objc_opt_new();
  v16 = v5;
  [v4 enumerateObjectsUsingBlock:&v11];
  v6 = [v4 count];
  if (v6 > [v5 count])
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100035454(v4, v5);
    }
  }

  v8 = v16;
  v9 = v5;

  return v5;
}

- (id)_parseTip:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ICQInlineTip);
  v6 = [v4 objectForKeyedSubscript:@"id"];
  [v5 setId:v6];

  v7 = [v4 objectForKeyedSubscript:@"anchor"];
  [v5 setAnchor:v7];

  v8 = [v4 objectForKeyedSubscript:@"arrowConfiguration"];
  [v5 setArrowConfiguration:v8];

  v9 = [v4 objectForKeyedSubscript:@"title"];
  [v5 setTitle:v9];

  v10 = [v4 objectForKeyedSubscript:@"subTitle"];
  [v5 setSubTitle:v10];

  v11 = [v4 objectForKeyedSubscript:@"button"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_10000810C;
    v27 = &unk_1000553B8;
    v12 = objc_opt_new();
    v28 = v12;
    v29 = self;
    [v11 enumerateObjectsUsingBlock:&v24];
    v13 = [v11 count];
    if (v13 > [v12 count])
    {
      v14 = _INLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100035580(v11, v12);
      }
    }

    [v5 setActions:v12];
  }

  v15 = [v4 objectForKeyedSubscript:@"criteria"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(INStorageSummaryResponse *)self _parseTipCriteria:v15];
    [v5 setCriteria:v16];
  }

  v17 = [v4 objectForKeyedSubscript:@"icon"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [(INStorageSummaryResponse *)self _parseTipIcon:v17];
    [v5 setIcon:v18];
  }

  v19 = [v4 objectForKeyedSubscript:@"dismissURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [NSURL URLWithString:v19];
    [v5 setDismissURL:v20];
  }

  v21 = [v4 objectForKeyedSubscript:@"displayURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [NSURL URLWithString:v21];
    [v5 setDisplayURL:v22];
  }

  return v5;
}

- (id)_parseTipAction:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ICQInlineTipAction);
  v6 = [v4 objectForKeyedSubscript:@"text"];
  [v5 setButtonTitle:v6];

  v7 = [v4 objectForKeyedSubscript:@"action"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v4 objectForKeyedSubscript:@"action"];
    [v5 setActionName:v9];
  }

  v10 = [v4 objectForKeyedSubscript:@"url"];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:@"url"];
    v13 = [NSURL URLWithString:v12];
    [v5 setActionURL:v13];
  }

  v14 = [(INStorageSummaryResponse *)self _parseTipActionLink:v4];
  [v5 setLink:v14];

  v15 = [v5 actionName];
  if (v15)
  {
  }

  else
  {
    v16 = [v5 actionURL];

    if (!v16)
    {
      v17 = _INLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000356AC(v5);
      }
    }
  }

  return v5;
}

- (id)_parseTipActionLink:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"actionParameters"];
  v5 = [v3 objectForKeyedSubscript:@"text"];
  v6 = [v3 objectForKeyedSubscript:@"action"];
  v7 = [v3 objectForKeyedSubscript:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v4 objectForKeyedSubscript:@"purchaseAttribution"];
      v10 = [v4 objectForKeyedSubscript:@"route"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setObject:v9 forKeyedSubscript:@"purchaseAttribution"];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setObject:v10 forKeyedSubscript:@"route"];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setObject:v7 forKeyedSubscript:@"openURL"];
    }

    v11 = [[ICQLink alloc] initWithText:v5 action:_ICQActionForString() parameters:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_parseTipCriteria:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICQTipCriteria);
  v5 = [v3 objectForKeyedSubscript:@"minimumDeviceStorageInBytes"];
  [v4 setMinimumRange:v5];

  v6 = [v3 objectForKeyedSubscript:@"maximumDeviceStorageInBytes"];
  [v4 setMaximumRange:v6];

  v7 = [v3 objectForKeyedSubscript:@"url"];
  v8 = [NSURL URLWithString:v7];
  [v4 setCriteriaURL:v8];

  v9 = [v3 objectForKeyedSubscript:@"excludeApps"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008758;
    v13[3] = &unk_1000553E0;
    v14 = objc_alloc_init(NSMutableArray);
    v10 = v14;
    [v9 enumerateObjectsUsingBlock:v13];
    v11 = [v10 copy];
    [v4 setExcludeApps:v11];
  }

  return v4;
}

- (id)_parseTipIcon:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"type"];
  if ([v4 isEqualToString:@"IMAGE"])
  {
    v5 = objc_alloc_init(ICQTipIconURL);
    [v5 setType:v4];
    v6 = [v3 objectForKeyedSubscript:@"urls"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ICQImageURL alloc] initFromDictionary:v6];
      [v5 setImageURL:v7];
    }

    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"SF_SYMBOL"])
  {
    v5 = objc_alloc_init(ICQTipIconSymbol);
    [v5 setType:v4];
    v8 = [v3 objectForKeyedSubscript:@"path"];
    [v5 setPath:v8];

    v9 = [v3 objectForKeyedSubscript:@"color"];
    [v5 setSystemColorName:v9];

    v6 = [v3 objectForKeyedSubscript:@"id"];
    [v5 setId:v6];
LABEL_6:

    goto LABEL_10;
  }

  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100035738();
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)_parseSubscriptionInfo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ICQSubscriptionInfo);
  v6 = [v4 objectForKeyedSubscript:@"isiCloudPlusSubscriber"];
  v7 = [v6 BOOLValue];

  [v5 setICloudPlusSubscriber:v7];
  v8 = [v4 objectForKeyedSubscript:@"specifiers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100008AEC;
    v15 = &unk_1000553B8;
    v16 = objc_alloc_init(NSMutableArray);
    v17 = self;
    v9 = v16;
    [v8 enumerateObjectsUsingBlock:&v12];
    v10 = [v9 copy];
    [v5 setSpecifiersInfo:v10];
  }

  return v5;
}

- (id)_parseSpecifierInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &MKBDeviceUnlockedSinceBoot_ptr;
    if ([v5 isEqualToString:@"ICLOUD_PLUS_CELL"])
    {
      v7 = objc_alloc_init(ICQiCloudPlusSpecifierInfo);
      v8 = [v4 objectForKeyedSubscript:@"featureList"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10000903C;
        v32[3] = &unk_1000553B8;
        v33 = objc_alloc_init(NSMutableArray);
        v34 = self;
        v9 = v33;
        [v8 enumerateObjectsUsingBlock:v32];
        v10 = [v9 copy];
        [v7 setFeatureList:v10];
      }
    }

    else
    {
      v7 = objc_alloc_init(ICQSpecifierInfo);
      [v7 setType:v5];
      v11 = [v4 objectForKeyedSubscript:@"iconURLs"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[ICQImageURL alloc] initFromDictionary:v11];
        [v7 setIconURL:v12];
      }
    }

    v13 = [v4 objectForKeyedSubscript:@"actionURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [NSURL URLWithString:v13];
      if (v14)
      {
        [v7 setActionURL:v14];
      }
    }

    [v7 setType:{v5, v13}];
    v15 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setIdentifier:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setTitle:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"subTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setSubTitle:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v7 actionURL];

      v20 = [ICQLink alloc];
      v21 = v20;
      if (v19)
      {
        v22 = [v7 actionURL];
        v23 = [v21 initWithActionString:v18 url:v22];

        v6 = &MKBDeviceUnlockedSinceBoot_ptr;
      }

      else
      {
        v23 = [v20 initWithActionString:v18];
      }

      [v7 setIcqLink:v23];
    }

    v24 = v6[439];
    v25 = objc_opt_new();
    v26 = [v4 objectForKeyedSubscript:@"actions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000090C0;
      v30[3] = &unk_100055408;
      v31 = v25;
      [v26 enumerateObjectsUsingBlock:v30];
    }

    v27 = _INLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_1000357AC(v25, v27);
    }

    [v7 setActions:v25];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_parseiCloudPlusFeature:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICQiCloudPlusFeature);
  v5 = [v3 objectForKeyedSubscript:@"label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setLabel:v5];
  }

  v6 = [v3 objectForKeyedSubscript:@"subLabel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setSublabel:v6];
  }

  v7 = [v3 objectForKeyedSubscript:@"iconURLs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[ICQImageURL alloc] initFromDictionary:v7];
    [v4 setIconURL:v8];
  }

  return v4;
}

- (id)_parseUsageByMedia:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_opt_new();
        v11 = [v9 objectForKeyedSubscript:@"mediaType"];
        [v10 setMediaType:v11];

        v12 = [v9 objectForKeyedSubscript:@"displayLabel"];
        [v10 setDisplayLabel:v12];

        v13 = [v9 objectForKeyedSubscript:@"storageUsed"];
        [v10 setStorageUsed:v13];

        v14 = [v9 objectForKeyedSubscript:@"displayColor"];
        [v10 setDisplayColor:v14];

        v15 = [v9 objectForKeyedSubscript:@"displayColorDark"];
        [v10 setDisplayColorDark:v15];

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = [v4 copy];

  return v16;
}

@end