@interface ICQInAppMessage
+ (id)actionFromOffer:(id)a3;
+ (id)airplaneMode;
+ (id)dataRecoveryAlert;
+ (id)fallbackAction;
+ (id)fallbackOffer;
+ (id)quotaAlmostFull;
+ (id)quotaAlmostFullForOffer:(id)a3;
+ (id)quotaAlmostFullLongForOffer:(id)a3;
+ (id)quotaAlmostFullWithAlertForOffer:(id)a3;
+ (id)quotaFull;
+ (id)quotaFullForOffer:(id)a3;
+ (id)quotaFullLongForOffer:(id)a3;
+ (id)serverUnreachable;
+ (id)universalLinkFromOffer:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICQInAppMessage)initWithCoder:(id)a3;
- (ICQInAppMessage)initWithContentType:(unint64_t)a3 identifier:(id)a4 reason:(id)a5 title:(id)a6 subTitle:(id)a7 conciseTitle:(id)a8 sfSymbolName:(id)a9 sfSymbolColor:(id)a10 accountId:(id)a11 bundleID:(id)a12 actions:(id)a13 dismissAction:(id)a14 iconSpecification:(id)a15 serverGenerated:(BOOL)a16;
- (ICQInAppMessage)initWithContentType:(unint64_t)a3 identifier:(id)a4 reason:(id)a5 title:(id)a6 subTitle:(id)a7 sfSymbolName:(id)a8 accountId:(id)a9 bundleID:(id)a10 actions:(id)a11 dismissAction:(id)a12 iconSpecification:(id)a13 serverGenerated:(BOOL)a14;
- (id)description;
- (void)didDisplayMessage;
- (void)encodeWithCoder:(id)a3;
- (void)fetchIconIfNeededWithCompletion:(id)a3;
@end

@implementation ICQInAppMessage

+ (id)fallbackOffer
{
  v2 = objc_alloc(MEMORY[0x277D7F388]);
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [v2 initWithServerDictionary:&unk_28847A068 accountAltDSID:@"Test" notificationID:&stru_28844FC60 retrievalDate:v3 callbackInterval:0 appLaunchLink:@"com.apple.DocumentsApp" bundleIdentifier:0.0];

  return v4;
}

+ (id)fallbackAction
{
  v2 = [objc_alloc(MEMORY[0x277D7F370]) initWithAction:100];
  [v2 setValue:@"Manage" forKey:@"_text"];
  v3 = [[ICQLinkInAppAction alloc] initWithLink:v2];

  return v3;
}

+ (id)universalLinkFromOffer:(id)a3
{
  v3 = a3;
  v4 = [v3 universalLink];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 bannerSpecification];
    v8 = [v7 links];
    v6 = [v8 firstObject];
  }

  [v6 setValue:@"Get More Storage" forKey:@"_text"];

  return v6;
}

+ (id)actionFromOffer:(id)a3
{
  v4 = a3;
  v5 = [a1 universalLinkFromOffer:v4];
  if (v5)
  {
    v6 = [[ICQLinkInAppAction alloc] initWithLink:v5 inOffer:v4];
  }

  else
  {
    v6 = [a1 fallbackAction];
  }

  v7 = v6;

  return v7;
}

+ (id)quotaAlmostFull
{
  v3 = [a1 fallbackOffer];
  v4 = [a1 quotaAlmostFullForOffer:v3];

  return v4;
}

+ (id)quotaAlmostFullForOffer:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 actionFromOffer:v4];
  v6 = [ICQInAppMessage alloc];
  v7 = [MEMORY[0x277D75348] whiteColor];
  v8 = [MEMORY[0x277CB8F48] defaultStore];
  v9 = [v8 aa_primaryAppleAccount];
  v10 = [v9 identifier];
  v17[0] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [v4 messageSpecificationForPlacement:@"InApp"];

  v13 = [v12 iconSpecification];
  LOBYTE(v16) = 1;
  v14 = [(ICQInAppMessage *)v6 initWithContentType:0 identifier:@"mockAlmostFull" reason:@"iCloudStorageAlmostFull" title:@"[icqctl] Your iCloud Storage is Almost Full" subTitle:@"Some files might stop syncing" conciseTitle:@"[icqctl] iCloud Storage Almost Full" sfSymbolName:@"exclamationmark.icloud.fill" sfSymbolColor:v7 accountId:v10 bundleID:@"com.apple.icqctl" actions:v11 dismissAction:0 iconSpecification:v13 serverGenerated:v16];

  return v14;
}

+ (id)quotaAlmostFullWithAlertForOffer:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = [a1 actionFromOffer:v4];
  v19 = [v20 valueForKey:@"_link"];
  v18 = [[ICQInAppAlert alloc] initQuotaAlmostFullAlertWithUpgradeLink:v19];
  v5 = [objc_alloc(MEMORY[0x277D7F370]) initWithAction:102];
  [v5 setValue:@"iCloud Storage Almost Full" forKey:@"_text"];
  v6 = [(ICQInAppAction *)[ICQLinkInAppAction alloc] initWithTitle:@"iCloud Storage Almost Full" type:@"banner" icqActionType:102];
  [(ICQLinkInAppAction *)v6 setValue:v5 forKey:@"_link"];
  [(ICQLinkInAppAction *)v6 setValue:v18 forKey:@"_inAppAlert"];
  [(ICQLinkInAppAction *)v6 setValue:v4 forKey:@"_offer"];
  v7 = [ICQInAppMessage alloc];
  v8 = [MEMORY[0x277D75348] labelColor];
  v9 = [MEMORY[0x277CB8F48] defaultStore];
  v10 = [v9 aa_primaryAppleAccount];
  v11 = [v10 identifier];
  v21[0] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v13 = [v4 messageSpecificationForPlacement:@"InApp"];

  v14 = [v13 iconSpecification];
  LOBYTE(v17) = 1;
  v15 = [(ICQInAppMessage *)v7 initWithContentType:0 identifier:@"mockAlmostFull" reason:@"iCloudStorageAlmostFull" title:@"[icqctl] Your iCloud Storage is Almost Full" subTitle:@"Some files might stop syncing" conciseTitle:@"[icqctl] iCloud Storage Almost Full" sfSymbolName:@"exclamationmark.icloud.fill" sfSymbolColor:v8 accountId:v11 bundleID:@"com.apple.icqctl" actions:v12 dismissAction:0 iconSpecification:v14 serverGenerated:v17];

  return v15;
}

+ (id)quotaAlmostFullLongForOffer:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 actionFromOffer:v4];
  v6 = [ICQInAppMessage alloc];
  v7 = [MEMORY[0x277D75348] whiteColor];
  v8 = [MEMORY[0x277CB8F48] defaultStore];
  v9 = [v8 aa_primaryAppleAccount];
  v10 = [v9 identifier];
  v17[0] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [v4 messageSpecificationForPlacement:@"InApp"];

  v13 = [v12 iconSpecification];
  LOBYTE(v16) = 1;
  v14 = [(ICQInAppMessage *)v6 initWithContentType:0 identifier:@"mockAlmostFull" reason:@"iCloudStorageAlmostFull" title:@"[icqctl] Your iCloud Storage is Almost Full" subTitle:@"Make sure you have room for your next 20 conciseTitle:000 photos with iCloud+" sfSymbolName:@"[icqctl] iCloud Storage Almost Full" sfSymbolColor:@"exclamationmark.icloud.fill" accountId:v7 bundleID:v10 actions:@"com.apple.icqctl" dismissAction:v11 iconSpecification:0 serverGenerated:v13, v16];

  return v14;
}

+ (id)quotaFull
{
  v3 = [a1 fallbackOffer];
  v4 = [a1 quotaFullForOffer:v3];

  return v4;
}

+ (id)quotaFullForOffer:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 actionFromOffer:v4];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(ICQInAppMessage(Examples) *)v5 quotaFullForOffer:v6];
  }

  v7 = [ICQInAppMessage alloc];
  v8 = [MEMORY[0x277D75348] whiteColor];
  v9 = [MEMORY[0x277CB8F48] defaultStore];
  v10 = [v9 aa_primaryAppleAccount];
  v11 = [v10 identifier];
  v18[0] = v5;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v13 = [v4 messageSpecificationForPlacement:@"InApp"];

  v14 = [v13 iconSpecification];
  LOBYTE(v17) = 1;
  v15 = [(ICQInAppMessage *)v7 initWithContentType:3 identifier:@"mockFull" reason:@"iCloudStorageFull" title:@"[icqctl] Your iCloud Storage is Full" subTitle:@"Some files aren't syncing" conciseTitle:@"[icqctl] iCloud Storage Full" sfSymbolName:@"exclamationmark.icloud.fill" sfSymbolColor:v8 accountId:v11 bundleID:@"com.apple.icqctl" actions:v12 dismissAction:0 iconSpecification:v14 serverGenerated:v17];

  return v15;
}

+ (id)quotaFullLongForOffer:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 actionFromOffer:v4];
  v6 = [ICQInAppMessage alloc];
  v7 = [MEMORY[0x277D75348] whiteColor];
  v8 = [MEMORY[0x277CB8F48] defaultStore];
  v9 = [v8 aa_primaryAppleAccount];
  v10 = [v9 identifier];
  v17[0] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [v4 messageSpecificationForPlacement:@"InApp"];

  v13 = [v12 iconSpecification];
  LOBYTE(v16) = 1;
  v14 = [(ICQInAppMessage *)v6 initWithContentType:3 identifier:@"mockFull" reason:@"iCloudStorageFull" title:@"[icqctl] Your iCloud Storage is Full" subTitle:@"New photos and videos won't be uploaded to iCloud because you don't have enough storage" conciseTitle:@"[icqctl] iCloud Storage Full" sfSymbolName:@"exclamationmark.icloud.fill" sfSymbolColor:v7 accountId:v10 bundleID:@"com.apple.icqctl" actions:v11 dismissAction:0 iconSpecification:v13 serverGenerated:v16];

  return v14;
}

+ (id)airplaneMode
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D7F370];
  v14 = *MEMORY[0x277D7F280];
  v15[0] = *MEMORY[0x277D7F2C8];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v4 = [v2 linkWithText:@"Settings" options:0 action:6 parameters:v3];

  v5 = [[ICQLinkInAppAction alloc] initWithLink:v4];
  v6 = [ICQInAppMessage alloc];
  v7 = [MEMORY[0x277CB8F48] defaultStore];
  v8 = [v7 aa_primaryAppleAccount];
  v9 = [v8 identifier];
  v13 = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = [(ICQInAppMessage *)v6 initWithContentType:0 identifier:@"mockAirplaneMode" reason:@"AirplaneModeOn" title:@"[icqctl] Syncing with iCloud Paused" subTitle:@"In Airplane Mode" sfSymbolName:0 accountId:v9 bundleID:@"com.apple.icqctl" actions:v10 iconSpecification:0];

  return v11;
}

+ (id)serverUnreachable
{
  v2 = [ICQInAppMessage alloc];
  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [v3 aa_primaryAppleAccount];
  v5 = [v4 identifier];
  v6 = [(ICQInAppMessage *)v2 initWithContentType:4 identifier:@"mockServerUnreachable" reason:@"WiFiConnectivityIssues" title:@"[icqctl] Syncing with iCloud Paused" subTitle:@"No Internet Connection" sfSymbolName:0 accountId:v5 bundleID:@"com.apple.icqctl" actions:MEMORY[0x277CBEBF8] iconSpecification:0];

  return v6;
}

+ (id)dataRecoveryAlert
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D7F370];
  v16 = *MEMORY[0x277D7F280];
  v17[0] = *MEMORY[0x277D7F2B0];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v4 = [v2 linkWithText:@"Settings" options:0 action:6 parameters:v3];

  v5 = [[ICQLinkInAppAction alloc] initWithLink:v4];
  v6 = [MEMORY[0x277D7F370] linkWithText:@"Settings" options:0 action:1 parameters:MEMORY[0x277CBEC10]];
  v7 = [[ICQLinkInAppAction alloc] initWithLink:v6];
  v8 = [ICQInAppMessage alloc];
  v9 = [MEMORY[0x277CB8F48] defaultStore];
  v10 = [v9 aa_primaryAppleAccount];
  v11 = [v10 identifier];
  v15 = v5;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v13 = [(ICQInAppMessage *)v8 initWithContentType:5 identifier:@"mockDataRecoveryAlert" reason:@"ManageStorageDeleteAlert" title:@"[icqctl] iCloud Notes Are Available For 30 Days" subTitle:@"iCloud Notes are available for 30 days. After that time sfSymbolName:notes will be permanently deleted." accountId:0 bundleID:v11 actions:@"com.apple.icqctl" dismissAction:v12 iconSpecification:v7, 0];

  return v13;
}

- (ICQInAppMessage)initWithContentType:(unint64_t)a3 identifier:(id)a4 reason:(id)a5 title:(id)a6 subTitle:(id)a7 sfSymbolName:(id)a8 accountId:(id)a9 bundleID:(id)a10 actions:(id)a11 dismissAction:(id)a12 iconSpecification:(id)a13 serverGenerated:(BOOL)a14
{
  v35 = a4;
  obj = a5;
  v34 = a5;
  v28 = a6;
  v33 = a6;
  v32 = a7;
  v31 = a8;
  v30 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v36.receiver = self;
  v36.super_class = ICQInAppMessage;
  v23 = [(ICQInAppMessage *)&v36 init];
  v24 = v23;
  if (v23)
  {
    v23->_contentType = a3;
    objc_storeStrong(&v23->_identifier, a4);
    objc_storeStrong(&v24->_reason, obj);
    objc_storeStrong(&v24->_title, v28);
    objc_storeStrong(&v24->_subTitle, a7);
    objc_storeStrong(&v24->_sfSymbolName, a8);
    objc_storeStrong(&v24->_accountId, a9);
    objc_storeStrong(&v24->_bundleID, a10);
    objc_storeStrong(&v24->_actions, a11);
    objc_storeStrong(&v24->_dismissAction, a12);
    objc_storeStrong(&v24->_iconSpecification, a13);
    v24->_serverGenerated = a14;
  }

  return v24;
}

- (ICQInAppMessage)initWithContentType:(unint64_t)a3 identifier:(id)a4 reason:(id)a5 title:(id)a6 subTitle:(id)a7 conciseTitle:(id)a8 sfSymbolName:(id)a9 sfSymbolColor:(id)a10 accountId:(id)a11 bundleID:(id)a12 actions:(id)a13 dismissAction:(id)a14 iconSpecification:(id)a15 serverGenerated:(BOOL)a16
{
  v38 = a4;
  obj = a5;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v33 = a9;
  v32 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v39.receiver = self;
  v39.super_class = ICQInAppMessage;
  v25 = [(ICQInAppMessage *)&v39 init];
  v26 = v25;
  if (v25)
  {
    v25->_contentType = a3;
    objc_storeStrong(&v25->_identifier, a4);
    objc_storeStrong(&v26->_reason, obj);
    objc_storeStrong(&v26->_title, a6);
    objc_storeStrong(&v26->_subTitle, a7);
    objc_storeStrong(&v26->_conciseTitle, a8);
    objc_storeStrong(&v26->_sfSymbolName, a9);
    objc_storeStrong(&v26->_sfSymbolColor, a10);
    objc_storeStrong(&v26->_accountId, a11);
    objc_storeStrong(&v26->_bundleID, a12);
    objc_storeStrong(&v26->_actions, a13);
    objc_storeStrong(&v26->_dismissAction, a14);
    objc_storeStrong(&v26->_iconSpecification, a15);
    v26->_serverGenerated = a16;
  }

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  [v16 encodeInteger:-[ICQInAppMessage contentType](self forKey:{"contentType"), @"contentType"}];
  v4 = [(ICQInAppMessage *)self identifier];
  [v16 encodeObject:v4 forKey:@"identifier"];

  v5 = [(ICQInAppMessage *)self reason];
  [v16 encodeObject:v5 forKey:@"reason"];

  v6 = [(ICQInAppMessage *)self title];
  [v16 encodeObject:v6 forKey:@"title"];

  v7 = [(ICQInAppMessage *)self conciseTitle];
  [v16 encodeObject:v7 forKey:@"conciseTitle"];

  v8 = [(ICQInAppMessage *)self subTitle];
  [v16 encodeObject:v8 forKey:@"subTitle"];

  v9 = [(ICQInAppMessage *)self sfSymbolName];
  [v16 encodeObject:v9 forKey:@"sfSymbolName"];

  v10 = [(ICQInAppMessage *)self sfSymbolColor];
  [v16 encodeObject:v10 forKey:@"sfSymbolColor"];

  v11 = [(ICQInAppMessage *)self accountId];
  [v16 encodeObject:v11 forKey:@"accountId"];

  v12 = [(ICQInAppMessage *)self bundleID];
  [v16 encodeObject:v12 forKey:@"bundleID"];

  v13 = [(ICQInAppMessage *)self actions];
  [v16 encodeObject:v13 forKey:@"actions"];

  v14 = [(ICQInAppMessage *)self dismissAction];
  [v16 encodeObject:v14 forKey:@"dismissAction"];

  v15 = [(ICQInAppMessage *)self iconSpecification];
  [v16 encodeObject:v15 forKey:@"iconSpecification"];

  [v16 encodeBool:-[ICQInAppMessage serverGenerated](self forKey:{"serverGenerated"), @"serverGenerated"}];
}

- (ICQInAppMessage)initWithCoder:(id)a3
{
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = [v3 decodeIntegerForKey:@"contentType"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"conciseTitle"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolName"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolColor"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accountId"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v7 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v15 = [v7 setWithArray:v16];
  v8 = [v3 decodeObjectOfClasses:v15 forKey:@"actions"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dismissAction"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"iconSpecification"];
  v11 = [v3 decodeBoolForKey:@"serverGenerated"];

  LOBYTE(v13) = v11;
  v21 = [(ICQInAppMessage *)self initWithContentType:v18 identifier:v24 reason:v23 title:v22 subTitle:v19 conciseTitle:v17 sfSymbolName:v4 sfSymbolColor:v5 accountId:v6 bundleID:v14 actions:v8 dismissAction:v9 iconSpecification:v10 serverGenerated:v13];

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = self->_identifier;
    v7 = [v5 identifier];
    if ([(NSString *)identifier isEqualToString:v7])
    {
      serverGenerated = self->_serverGenerated;
      v9 = serverGenerated == [v5 serverGenerated];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(ICQInAppMessage *)self actions];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) description];
        [v3 appendString:v9];

        [v3 appendString:@"\n"];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [(ICQInAppMessage *)self bundleID];
  v12 = [(ICQInAppMessage *)self title];
  v13 = [(ICQInAppMessage *)self subTitle];
  v14 = [(ICQInAppMessage *)self conciseTitle];
  v15 = [(ICQInAppMessage *)self sfSymbolName];
  v16 = [(ICQInAppMessage *)self sfSymbolColor];
  v17 = [v10 stringWithFormat:@"In-App Message for bundle ID %@ with title: %@, subTitle: %@, conciseTitle:%@, sfSymbolID:%@ sfSymbolColor:%@, actions:\n%@", v11, v12, v13, v14, v15, v16, v3];

  return v17;
}

- (void)fetchIconIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICQInAppMessage *)self icon];

  if (v5)
  {
    v4[2](v4);
  }

  else
  {
    v6 = [(ICQInAppMessage *)self iconSpecification];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__ICQInAppMessage_fetchIconIfNeededWithCompletion___block_invoke;
    v7[3] = &unk_27A65BD70;
    v7[4] = self;
    v8 = v4;
    [ICQUIImageLoader fetchIconFromIconSpecification:v6 completion:v7];
  }
}

void __51__ICQInAppMessage_fetchIconIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 104), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

- (void)didDisplayMessage
{
  v2 = [(ICQInAppMessage *)self bundleID];
  [ICQAnalytics logInAppBannerViewWithAppIdentifier:v2];
}

@end