@interface Download
- (BOOL)_setAssetsWithExternalAssets:(id)a3 error:(id *)a4;
- (BOOL)_setAssetsWithExternalThinnedAssets:(id)a3 error:(id *)a4;
- (BOOL)_setDatabasePropertiesWithExternalMetadata:(id)a3 error:(id *)a4;
- (BOOL)_setThumbnailImageWithExternalAssets:(id)a3 error:(id *)a4;
- (Download)initWithClientXPCDownload:(id)a3;
- (Download)initWithExternalManifestDictionary:(id)a3;
- (Download)initWithMicroPaymentDownload:(id)a3 clientID:(id)a4;
- (Download)initWithStoreDownload:(id)a3;
- (id)_copyValidAssetsWithExternalAssets:(id)a3 validateVariants:(BOOL)a4;
- (id)_newAssetArrayWithDownloadAssets:(id)a3;
- (id)anyAssetForAssetType:(id)a3;
- (id)assetForAssetIdentifier:(int64_t)a3;
- (id)copyInMemoryStoreDownloadMetadata;
- (id)copyJobActivity;
- (id)copyStoreDownloadMetadata;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)removeAssetsWithAssetType:(id)a3;
- (void)unionNetworkConstraints:(id)a3;
@end

@implementation Download

- (id)copyJobActivity
{
  v3 = objc_alloc_init(ISWeakLinkedClassForString());
  v4 = [(Download *)self valueForProperty:@"store_artist_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 copy];
    [v3 setArtistID:v5];
  }

  v6 = [(Download *)self valueForProperty:@"artist_name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 copy];
    [v3 setArtistName:v7];
  }

  v8 = [(Download *)self valueForProperty:@"bundle_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 copy];
    [v3 setBundleID:v9];
  }

  v10 = [(Download *)self valueForProperty:@"beta_external_version_identifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 copy];
    [v3 setBetaExternalVersionIdentifier:v11];
  }

  v12 = [(Download *)self valueForProperty:@"bundle_version"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 copy];
    [v3 setBundleVersion:v13];
  }

  v14 = [(Download *)self valueForProperty:@"is32BitOnly"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setThirtyTwoBitOnly:{objc_msgSend(v14, "BOOLValue")}];
  }

  v15 = [(Download *)self valueForProperty:@"store_redownload_parameters"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 copy];
    [v3 setBuyParams:v16];
  }

  v17 = [(Download *)self valueForProperty:@"cancel_url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 copy];
    [v3 setCancelDownloadURL:v18];
  }

  v19 = [(Download *)self valueForProperty:@"cancel_if_duplicate"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setCancelIfDuplicate:{objc_msgSend(v19, "BOOLValue")}];
  }

  v20 = [(Download *)self valueForProperty:@"client_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v20 copy];
    [v3 setClientID:v21];
  }

  v22 = [(Download *)self valueForProperty:@"collection_name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v22 copy];
    [v3 setCollectionName:v23];
  }

  v24 = [NSNumber numberWithLongLong:[(Download *)self databaseID]];
  if ([(Download *)self databaseID])
  {
    [v3 setDivertedTrackingID:v24];
  }

  v25 = [(Download *)self valueForProperty:@"is_device_based_vpp"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsDeviceBasedVPP:{objc_msgSend(v25, "BOOLValue")}];
  }

  v26 = [(Download *)self valueForProperty:@"enable_extensions"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v26 copy];
    [v3 setEnableExtensions:v27];
  }

  v28 = [(Download *)self valueForProperty:@"is_explicit"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setExplicitContent:{objc_msgSend(v28, "BOOLValue")}];
  }

  v29 = [(Download *)self valueForProperty:@"is_from_store"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsFromStore:{objc_msgSend(v29, "BOOLValue")}];
  }

  v30 = [(Download *)self valueForProperty:@"is_tv_template"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsTVTemplate:{objc_msgSend(v30, "BOOLValue")}];
  }

  v31 = [(Download *)self valueForProperty:@"genre_name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [v31 copy];
    [v3 setGenre:v32];
  }

  v33 = [(Download *)self valueForProperty:@"store_genre_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [v33 copy];
    [v3 setGenreID:v34];
  }

  v35 = [(Download *)self valueForProperty:@"is_store_queued"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsInQueue:{objc_msgSend(v35, "BOOLValue")}];
  }

  v36 = [(Download *)self valueForProperty:@"is_redownload"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsPurchasedRedownload:{objc_msgSend(v36, "BOOLValue")}];
  }

  v37 = [(Download *)self valueForProperty:@"is_restore"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsRestore:{objc_msgSend(v37, "BOOLValue")}];
  }

  v38 = [(Download *)self valueForProperty:@"store_item_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = [v38 copy];
    [v3 setItemID:v39];
  }

  v40 = [(Download *)self valueForProperty:@"kind"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [v40 copy];
    [v3 setKind:v41];
  }

  v42 = [(Download *)self valueForProperty:@"has_messages_extension"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setHasMessagesExtension:{objc_msgSend(v42, "BOOLValue")}];
  }

  v43 = [(Download *)self valueForProperty:@"launch_prohibited"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setLaunchProhibited:{objc_msgSend(v43, "BOOLValue")}];
  }

  v44 = [(Download *)self valueForProperty:@"messages_artwork_url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = [v44 copy];
    [v3 setMessagesArtworkURL:v45];
  }

  v46 = [(Download *)self valueForProperty:@"order_key"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setExternalOrderKey:v46];
  }

  v47 = [(Download *)self valueForProperty:@"store_purchase_date"];

  if (objc_opt_respondsToSelector())
  {
    [v47 doubleValue];
    v48 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v3 setPurchaseDate:v48];
  }

  v49 = [(Download *)self valueForProperty:@"rating_label"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = [v49 copy];
    [v3 setRatingLabel:v50];
  }

  v51 = [(Download *)self valueForProperty:@"rating_rank"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = [v51 copy];
    [v3 setRatingRank:v52];
  }

  v53 = [(Download *)self valueForProperty:@"release_date"];

  if (objc_opt_respondsToSelector())
  {
    [v53 doubleValue];
    v54 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v3 setReleaseDate:v54];
  }

  v55 = [(Download *)self valueForProperty:@"store_account_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = [v55 copy];
    [v3 setStoreAccountID:v56];
  }

  v57 = [(Download *)self valueForProperty:@"store_account_name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v58 = [v57 copy];
    [v3 setStoreAccountName:v58];
  }

  v59 = [(Download *)self valueForProperty:@"store_front_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = [v59 copy];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_74;
    }

    v60 = [v59 stringValue];
  }

  v61 = v60;
  [v3 setStorefront:v60];

LABEL_74:
  v62 = [(Download *)self valueForProperty:@"store_download_key"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63 = [v62 copy];
    [v3 setStoreDownloadKey:v63];
  }

  v64 = [(Download *)self valueForProperty:@"store_transaction_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = [v64 copy];
    [v3 setStoreTransactionID:v65];
  }

  v66 = [(Download *)self valueForProperty:@"artwork_is_prerendered"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setSoftwareIconNeedsShine:{objc_msgSend(v66, "BOOLValue")}];
  }

  v67 = [(Download *)self valueForProperty:@"store_software_version_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = [v67 copy];
    [v3 setSoftwareVersionExternalIdentifier:v68];
  }

  v69 = [(Download *)self valueForProperty:@"store_cohort"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = [v69 copy];
    [v3 setStoreCohort:v70];
  }

  v71 = [(Download *)self valueForProperty:@"thumbnail_url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v72 = [v71 copy];
    [v3 setThumbnailURL:v72];
  }

  v73 = [(Download *)self valueForProperty:@"title"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = [v73 copy];
    [v3 setTitle:v74];
  }

  v75 = [(Download *)self valueForProperty:@"variant_id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = [v75 copy];
    [v3 setVariantID:v76];
  }

  v77 = [(Download *)self assets];
  v78 = [(Download *)self _newAssetArrayWithDownloadAssets:v77];

  [v3 setAssets:v78];
  v79 = v3;

  return v79;
}

- (id)_newAssetArrayWithDownloadAssets:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) copyJobAsset];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  return v11;
}

- (Download)initWithClientXPCDownload:(id)a3
{
  v28.receiver = self;
  v28.super_class = Download;
  v4 = [(Download *)&v28 init];
  if (v4)
  {
    int64 = xpc_dictionary_get_int64(a3, "0");
    [(Download *)v4 setDatabaseID:int64];
    objc_opt_class();
    v6 = SSXPCDictionaryCopyCFObjectWithClass();
    if (v6)
    {
      v7 = v6;
      v8 = [DownloadEntity copyDatabaseDictionaryToSetClientDictionary:v6];
      v9 = [NSNumber numberWithLongLong:int64];
      [v8 setObject:v9 forKey:SSSQLEntityPropertyPersistentID];
      [(Download *)v4 setValuesWithDictionary:v8];
    }

    objc_opt_class();
    v10 = SSXPCDictionaryCopyCFObjectWithClass();
    if (v10)
    {
      v11 = v10;
      [(Download *)v4 setExternalValuesWithDictionary:v10];
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    value = xpc_dictionary_get_value(a3, "2");
    v13 = value;
    if (value)
    {
      if (xpc_get_type(value) == &_xpc_type_dictionary)
      {
        v14 = objc_alloc_init(NSMutableArray);
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_1001ABC3C;
        applier[3] = &unk_10032B130;
        applier[5] = &v20;
        applier[6] = &v24;
        applier[4] = v14;
        xpc_dictionary_apply(v13, applier);
        v15 = [v14 count];
        LOBYTE(v13) = v15 == v21[3];
        [(Download *)v4 setAssets:v14];

        _Block_object_dispose(&v20, 8);
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    if (!(([(Download *)v4 valueForExternalProperty:SSDownloadExternalPropertyPolicy]!= 0) | v13 & 1))
    {
      if (*(v25 + 24))
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      v4->_downloadPolicy = [[SSDownloadPolicy alloc] initWithDownloadKind:-[Download valueForProperty:](v4 URLBagType:{"valueForProperty:", @"kind", v16}];
      if ([-[Download valueForProperty:](v4 valueForProperty:{@"is_automatic", "integerValue"}] == 2)
      {
        v17 = objc_alloc_init(SSDownloadPolicyRule);
        [v17 addNetworkType:1000];
        [(SSDownloadPolicy *)v4->_downloadPolicy unionPolicyRule:v17];
      }
    }

    _Block_object_dispose(&v24, 8);
  }

  return v4;
}

- (Download)initWithExternalManifestDictionary:(id)a3
{
  v13.receiver = self;
  v13.super_class = Download;
  v4 = [(Download *)&v13 init];
  if (!v4)
  {
    return v4;
  }

  v12 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 objectForKey:@"metadata"];
    v6 = [a3 objectForKey:@"assets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && [(Download *)v4 _setDatabasePropertiesWithExternalMetadata:v5 error:&v12]&& [(Download *)v4 _setAssetsWithExternalAssets:v6 error:&v12])
    {
      v7 = [(Download *)v4 _setThumbnailImageWithExternalAssets:v6 error:&v12];
    }

    else
    {
      v7 = 0;
    }

    v8 = [a3 objectForKey:@"thinned-assets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v7 || ![(Download *)v4 _setAssetsWithExternalThinnedAssets:v8 error:&v12])
      {
        goto LABEL_12;
      }

LABEL_17:
      v4->_downloadPolicy = [[SSDownloadPolicy alloc] initWithDownloadKind:-[Download valueForProperty:](v4 URLBagType:{"valueForProperty:", @"kind", 2}];
      [(Download *)v4 setValue:&__kCFBooleanTrue forProperty:@"download_state.can_cancel"];
      return v4;
    }

    if (v7)
    {
      goto LABEL_17;
    }
  }

LABEL_12:
  if (!v12)
  {
    v12 = [NSError errorWithDomain:SSErrorDomain code:200 userInfo:0];
  }

  ArchivableData = SSCodingCreateArchivableData();
  if (ArchivableData)
  {
    v10 = ArchivableData;
    [(Download *)v4 setValue:ArchivableData forProperty:@"download_state.download_error"];
  }

  return v4;
}

- (Download)initWithStoreDownload:(id)a3
{
  v21.receiver = self;
  v21.super_class = Download;
  v4 = [(Download *)&v21 init];
  if (!v4)
  {
    return v4;
  }

  v5 = [DownloadEntity copyValueDictionaryWithMetadata:a3];
  v6 = [objc_msgSend(v5 objectForKey:{@"is_automatic", "BOOLValue"}];
  if (v6)
  {
    if (![v5 objectForKey:@"cancel_if_duplicate"])
    {
      [v5 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"cancel_if_duplicate"}];
    }

    if (![v5 objectForKey:@"suppress_error_dialogs"])
    {
      [v5 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"suppress_error_dialogs"}];
    }

    if (![v5 objectForKey:@"priority"])
    {
      [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", -1), @"priority"}];
    }
  }

  [a3 kind];
  if (SSDownloadKindIsSoftwareKind())
  {
    v7 = [a3 contentRating];
    if ([v7 ratingLabel])
    {
      [v5 setObject:objc_msgSend(v7 forKey:{"ratingLabel"), @"rating_label"}];
    }

    if ([v7 rank])
    {
      [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(v7, "rank")), @"rating_rank"}];
    }

    if ([a3 is32BitOnly])
    {
      [(Download *)v4 setValue:&__kCFBooleanTrue forProperty:@"is32BitOnly"];
    }
  }

  [(Download *)v4 setValuesWithDictionary:v5];

  -[Download setAssets:](v4, "setAssets:", [a3 assets]);
  v8 = [a3 valueForMetadataKey:SSDownloadMetadataKeyNetworkConstraints];
  v9 = [(Download *)v4 valueForProperty:@"kind"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(SSNetworkConstraints);
    [v10 setSizeLimitsWithStoreConstraintDictionary:v8];
    v4->_downloadPolicy = [[SSDownloadPolicy alloc] initWithNetworkConstraints:v10];

    downloadPolicy = v4->_downloadPolicy;
  }

  else
  {
    downloadPolicy = [[SSDownloadPolicy alloc] initWithDownloadKind:v9 URLBagType:0];
    v4->_downloadPolicy = downloadPolicy;
  }

  v12 = [-[SSDownloadPolicy policyRules](downloadPolicy "policyRules")];
  if (!v12)
  {
    v12 = objc_alloc_init(NSMutableArray);
  }

  v13 = [a3 valueForMetadataKey:SSDownloadMetadataKeyRequiresPluggedIn];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!v6)
    {
      goto LABEL_37;
    }

LABEL_28:
    v15 = objc_alloc_init(SSDownloadPolicyRule);
    [v15 setCellularDataStates:2];
    [v15 setPowerStates:2];
    [v12 addObject:v15];

    goto LABEL_29;
  }

  if (![v13 BOOLValue])
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v14 = objc_alloc_init(SSDownloadPolicyRule);
  [v14 setDownloadSizeLimit:SSDownloadSizeLimitDisabled];
  [v14 setPowerStates:1];
  [v12 addObject:v14];

  if ((v6 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  v16 = objc_alloc_init(SSDownloadPolicyRule);
  [v16 setCellularDataStates:2];
  [v12 addObject:v16];

  if (![(Download *)v4 valueForProperty:@"client_id"])
  {
    if (SSDownloadKindIsSoftwareKind())
    {
      v17 = @"com.apple.AppStore";
LABEL_36:
      [(Download *)v4 setValue:v17 forProperty:@"client_id"];
      goto LABEL_37;
    }

    if (SSDownloadKindIsEBookKind())
    {
      v17 = @"com.apple.iBooks";
      goto LABEL_36;
    }

    if (SSDownloadKindIsMediaKind())
    {
      v17 = @"com.apple.MobileStore";
      goto LABEL_36;
    }
  }

LABEL_37:
  v18 = [v12 count];
  v19 = v4->_downloadPolicy;
  if (v18)
  {
    [(SSDownloadPolicy *)v19 setPolicyRules:v12];
  }

  else if (![(SSDownloadPolicy *)v19 downloadKind])
  {

    v4->_downloadPolicy = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = Download;
  [(Download *)&v3 dealloc];
}

- (id)anyAssetForAssetType:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  assets = self->_assets;
  result = [(NSArray *)assets countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(assets);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([objc_msgSend(v9 valueForProperty:{@"asset_type", "isEqualToString:", a3}])
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)assets countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)assetForAssetIdentifier:(int64_t)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  assets = self->_assets;
  result = [(NSArray *)assets countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(assets);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([v9 databaseID] == a3)
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)assets countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)copyStoreDownloadMetadata
{
  v2 = [+[ScratchManager directoryPathForDownloadID:kind:createIfNeeded:](ScratchManager directoryPathForDownloadID:-[Download databaseID](self kind:"databaseID") createIfNeeded:{-[Download valueForProperty:](self, "valueForProperty:", @"kind", 0), "stringByAppendingPathComponent:", @"iTunesMetadata.plist"}];
  v3 = [StoreDownload alloc];

  return [(StoreDownload *)v3 initWithContentsOfFile:v2];
}

- (id)copyInMemoryStoreDownloadMetadata
{
  v3 = [StoreDownload alloc];
  v4 = [(Download *)self propertyValues];

  return [(StoreDownload *)v3 initWithDictionary:v4];
}

- (void)removeAssetsWithAssetType:(id)a3
{
  v7 = [(NSArray *)self->_assets mutableCopy];
  v5 = [v7 count];
  if (v5 >= 1)
  {
    v6 = v5 + 1;
    do
    {
      if ([objc_msgSend(objc_msgSend(v7 objectAtIndex:{v6 - 2), "valueForProperty:", @"asset_type", "isEqualToString:", a3}])
      {
        [v7 removeObjectAtIndex:v6 - 2];
      }

      --v6;
    }

    while (v6 > 1);
  }

  [(Download *)self setAssets:v7];
}

- (void)unionNetworkConstraints:(id)a3
{
  if (!self->_downloadPolicy)
  {
    self->_downloadPolicy = objc_alloc_init(SSDownloadPolicy);
  }

  SSNetworkTypeApplyBlock();
}

- (id)_copyValidAssetsWithExternalAssets:(id)a3 validateVariants:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [[DownloadAsset alloc] initWithExternalManifestDictionary:v11 validateVariants:v4];
          if (v12)
          {
            v13 = v12;
            [v6 addObject:v12];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v6;
}

- (BOOL)_setAssetsWithExternalAssets:(id)a3 error:(id *)a4
{
  v6 = [(Download *)self _copyValidAssetsWithExternalAssets:a3 validateVariants:0];
  v7 = [v6 count];
  if (v7)
  {
    [(Download *)self setAssets:v6];
  }

  else if (a4)
  {
    *a4 = [NSError errorWithDomain:SSErrorDomain code:401 userInfo:0];
  }

  return v7 != 0;
}

- (BOOL)_setAssetsWithExternalThinnedAssets:(id)a3 error:(id *)a4
{
  v5 = [(Download *)self _copyValidAssetsWithExternalAssets:a3 validateVariants:1];
  if ([v5 count])
  {
    v6 = +[SSDevice currentDevice];
    v20 = [v6 productType];
    v21 = [v6 compatibleProductType];
    v19 = self;
    [v5 addObjectsFromArray:{-[Download assets](self, "assets")}];
    v7 = objc_alloc_init(NSMutableDictionary);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      obj = v5;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 valueForProperty:@"asset_type"];
          v14 = [v7 objectForKey:v13];
          if (v14)
          {
            v15 = [v14 valueForProperty:@"variant_id"];
            v16 = [v12 valueForProperty:@"variant_id"];
            if (!v16)
            {
              continue;
            }

            if (v15)
            {
              v17 = v16;
              if (![v15 isEqualToString:v21] || !objc_msgSend(v17, "isEqualToString:", v20))
              {
                continue;
              }
            }
          }

          [v7 setObject:v12 forKey:v13];
        }

        v5 = obj;
        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    -[Download setAssets:](v19, "setAssets:", [v7 allValues]);
  }

  return 1;
}

- (BOOL)_setDatabasePropertiesWithExternalMetadata:(id)a3 error:(id *)a4
{
  v7 = [a3 objectForKey:@"kind"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"software"])
  {
    v8 = SSDownloadKindSoftwareApplication;
LABEL_7:
    [(Download *)self setValue:v8 forProperty:@"kind"];
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"vpn-plugin"])
  {
    v8 = SSDownloadKindVPNPlugin;
    goto LABEL_7;
  }

LABEL_8:
  v9 = [(Download *)self valueForProperty:@"kind"];
  if (v9)
  {
    v10 = [a3 objectForKey:@"bundle-identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(Download *)self setValue:v10 forProperty:@"bundle_id"];
    }

    v11 = [a3 objectForKey:@"bundle-version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(Download *)self setValue:v11 forProperty:@"bundle_version"];
    }

    v12 = [a3 objectForKey:@"has-messages-extension"];
    if (objc_opt_respondsToSelector())
    {
      [(Download *)self setValue:v12 forProperty:@"has_messages_extension"];
    }

    v13 = [a3 objectForKey:@"launch-prohibited"];
    if (objc_opt_respondsToSelector())
    {
      [(Download *)self setValue:v13 forProperty:@"launch_prohibited"];
    }

    v14 = [a3 objectForKey:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(Download *)self setValue:v14 forProperty:@"artist_name"];
    }

    v15 = [a3 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(Download *)self setValue:v15 forProperty:@"title"];
    }

    v16 = [a3 objectForKey:@"UINewsstandApp"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 BOOLValue])
    {
      [(Download *)self setValue:SSDownloadSoftwareTypeNewsstand forProperty:@"software_type"];
    }

    v9 = [(Download *)self valueForProperty:@"title"];
    if (v9)
    {
      v17 = [(Download *)self valueForProperty:@"kind"];
      if (![v17 isEqualToString:SSDownloadKindSoftwareApplication])
      {
        LOBYTE(v9) = 1;
        return v9;
      }

      LOBYTE(v9) = [(Download *)self valueForProperty:@"bundle_id"]!= 0;
    }
  }

  if (a4 && (v9 & 1) == 0)
  {
    v18 = [NSError errorWithDomain:SSErrorDomain code:402 userInfo:0];
    LOBYTE(v9) = 0;
    *a4 = v18;
  }

  return v9;
}

- (BOOL)_setThumbnailImageWithExternalAssets:(id)a3 error:(id *)a4
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v8 = @"kind";
    v9 = @"display-image";
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 objectForKey:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v12 isEqualToString:v9])
            {
              v13 = v8;
              v14 = v9;
              v15 = [v11 objectForKey:@"url"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [[NSURL alloc] initWithString:v15];
                if ([v16 host])
                {
                  [(Download *)self setValue:v15 forProperty:@"thumbnail_url"];
                }
              }

              v17 = [v11 objectForKey:@"needs-shine"];
              if (objc_opt_respondsToSelector())
              {
                -[Download setValue:forProperty:](self, "setValue:forProperty:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 BOOLValue] ^ 1), @"artwork_is_prerendered");
              }

              v18 = [v11 objectForKey:@"UINewsstandBindingEdge"];
              objc_opt_class();
              v9 = v14;
              if (objc_opt_isKindOfClass())
              {
                [(Download *)self setValue:v18 forProperty:@"thumbnail_newsstand_binding_edge"];
              }

              v19 = [v11 objectForKey:@"UINewsstandBindingType"];
              objc_opt_class();
              v8 = v13;
              if (objc_opt_isKindOfClass())
              {
                [(Download *)self setValue:v19 forProperty:@"thumbnail_newsstand_binding_type"];
              }
            }

            else if ([v12 isEqualToString:@"messages-display-image"])
            {
              v20 = [v11 objectForKey:@"url"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [[NSURL alloc] initWithString:v20];
                if ([v21 host])
                {
                  [(Download *)self setValue:v20 forProperty:@"messages_artwork_url"];
                }
              }
            }
          }
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = Download;
  v5 = [(Download *)&v7 copyWithZone:?];
  v5[1] = [(NSArray *)self->_assets copyWithZone:a3];
  v5[2] = [(SSDownloadPolicy *)self->_downloadPolicy copyWithZone:a3];
  return v5;
}

- (Download)initWithMicroPaymentDownload:(id)a3 clientID:(id)a4
{
  v18.receiver = self;
  v18.super_class = Download;
  v6 = [(Download *)&v18 init];
  if (v6)
  {
    v7 = [a3 downloadID];
    -[Download setDatabaseID:](v6, "setDatabaseID:", [v7 longLongValue]);
    [(Download *)v6 setValue:a4 forProperty:@"client_id"];
    [(Download *)v6 setValue:v7 forProperty:SSSQLEntityPropertyPersistentID];
    [(Download *)v6 setValue:[NSNumber forProperty:"numberWithBool:" numberWithBool:?], @"suppress_error_dialogs"];
    [(Download *)v6 setValue:[NSNumber forProperty:"numberWithBool:" numberWithBool:?], @"is_from_store"];
    [(Download *)v6 setValue:SSDownloadKindInAppContent forProperty:@"kind"];
    -[Download setValue:forProperty:](v6, "setValue:forProperty:", [a3 downloadKey], @"store_download_key");
    v8 = [SSDownloadPolicy alloc];
    v9 = [v8 initWithDownloadKind:SSDownloadKindSoftwareApplication URLBagType:0];
    [(Download *)v6 setDownloadPolicy:v9];

    v10 = objc_alloc_init(DownloadAsset);
    -[DownloadAsset setValue:forProperty:](v10, "setValue:forProperty:", [a3 hashArrayData], @"hash_array");
    [(DownloadAsset *)v10 setValue:SSDownloadAssetTypeMedia forProperty:@"asset_type"];
    -[DownloadAsset setValue:forProperty:](v10, "setValue:forProperty:", [a3 remoteURL], @"url");
    v11 = [a3 sinfs];
    if (v11)
    {
      v12 = v11;
      v13 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [[DownloadDRM alloc] initWithSinfArray:v13];
        if ([(DownloadDRM *)v14 isDRMFree])
        {
          [(DownloadAsset *)v10 setValue:[NSNumber forProperty:"numberWithBool:" numberWithBool:?], @"is_drm_free"];
        }
      }

      [(DownloadAsset *)v10 setValue:v12 forProperty:@"sinfs_data"];
    }

    v15 = [a3 contentLength];
    if ([v15 longLongValue] >= 1)
    {
      [(DownloadAsset *)v10 setValue:v15 forProperty:@"bytes_total"];
    }

    v16 = [a3 hashChunkSize];
    if ([v16 longLongValue] >= 1)
    {
      [(DownloadAsset *)v10 setValue:v16 forProperty:@"bytes_to_hash"];
    }

    [(Download *)v6 setAssets:[NSArray arrayWithObject:v10]];
  }

  return v6;
}

@end