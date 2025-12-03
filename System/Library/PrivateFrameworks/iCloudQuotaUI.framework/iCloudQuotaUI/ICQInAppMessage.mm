@interface ICQInAppMessage
+ (id)actionFromOffer:(id)offer;
+ (id)airplaneMode;
+ (id)dataRecoveryAlert;
+ (id)fallbackAction;
+ (id)fallbackOffer;
+ (id)quotaAlmostFull;
+ (id)quotaAlmostFullForOffer:(id)offer;
+ (id)quotaAlmostFullLongForOffer:(id)offer;
+ (id)quotaAlmostFullWithAlertForOffer:(id)offer;
+ (id)quotaFull;
+ (id)quotaFullForOffer:(id)offer;
+ (id)quotaFullLongForOffer:(id)offer;
+ (id)serverUnreachable;
+ (id)universalLinkFromOffer:(id)offer;
- (BOOL)isEqual:(id)equal;
- (ICQInAppMessage)initWithCoder:(id)coder;
- (ICQInAppMessage)initWithContentType:(unint64_t)type identifier:(id)identifier reason:(id)reason title:(id)title subTitle:(id)subTitle conciseTitle:(id)conciseTitle sfSymbolName:(id)name sfSymbolColor:(id)self0 accountId:(id)self1 bundleID:(id)self2 actions:(id)self3 dismissAction:(id)self4 iconSpecification:(id)self5 serverGenerated:(BOOL)self6;
- (ICQInAppMessage)initWithContentType:(unint64_t)type identifier:(id)identifier reason:(id)reason title:(id)title subTitle:(id)subTitle sfSymbolName:(id)name accountId:(id)id bundleID:(id)self0 actions:(id)self1 dismissAction:(id)self2 iconSpecification:(id)self3 serverGenerated:(BOOL)self4;
- (id)description;
- (void)didDisplayMessage;
- (void)encodeWithCoder:(id)coder;
- (void)fetchIconIfNeededWithCompletion:(id)completion;
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

+ (id)universalLinkFromOffer:(id)offer
{
  offerCopy = offer;
  universalLink = [offerCopy universalLink];
  v5 = universalLink;
  if (universalLink)
  {
    firstObject = universalLink;
  }

  else
  {
    bannerSpecification = [offerCopy bannerSpecification];
    links = [bannerSpecification links];
    firstObject = [links firstObject];
  }

  [firstObject setValue:@"Get More Storage" forKey:@"_text"];

  return firstObject;
}

+ (id)actionFromOffer:(id)offer
{
  offerCopy = offer;
  v5 = [self universalLinkFromOffer:offerCopy];
  if (v5)
  {
    fallbackAction = [[ICQLinkInAppAction alloc] initWithLink:v5 inOffer:offerCopy];
  }

  else
  {
    fallbackAction = [self fallbackAction];
  }

  v7 = fallbackAction;

  return v7;
}

+ (id)quotaAlmostFull
{
  fallbackOffer = [self fallbackOffer];
  v4 = [self quotaAlmostFullForOffer:fallbackOffer];

  return v4;
}

+ (id)quotaAlmostFullForOffer:(id)offer
{
  v17[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v5 = [self actionFromOffer:offerCopy];
  v6 = [ICQInAppMessage alloc];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];
  v17[0] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [offerCopy messageSpecificationForPlacement:@"InApp"];

  iconSpecification = [v12 iconSpecification];
  LOBYTE(v16) = 1;
  v14 = [(ICQInAppMessage *)v6 initWithContentType:0 identifier:@"mockAlmostFull" reason:@"iCloudStorageAlmostFull" title:@"[icqctl] Your iCloud Storage is Almost Full" subTitle:@"Some files might stop syncing" conciseTitle:@"[icqctl] iCloud Storage Almost Full" sfSymbolName:@"exclamationmark.icloud.fill" sfSymbolColor:whiteColor accountId:identifier bundleID:@"com.apple.icqctl" actions:v11 dismissAction:0 iconSpecification:iconSpecification serverGenerated:v16];

  return v14;
}

+ (id)quotaAlmostFullWithAlertForOffer:(id)offer
{
  v21[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v20 = [self actionFromOffer:offerCopy];
  v19 = [v20 valueForKey:@"_link"];
  v18 = [[ICQInAppAlert alloc] initQuotaAlmostFullAlertWithUpgradeLink:v19];
  v5 = [objc_alloc(MEMORY[0x277D7F370]) initWithAction:102];
  [v5 setValue:@"iCloud Storage Almost Full" forKey:@"_text"];
  v6 = [(ICQInAppAction *)[ICQLinkInAppAction alloc] initWithTitle:@"iCloud Storage Almost Full" type:@"banner" icqActionType:102];
  [(ICQLinkInAppAction *)v6 setValue:v5 forKey:@"_link"];
  [(ICQLinkInAppAction *)v6 setValue:v18 forKey:@"_inAppAlert"];
  [(ICQLinkInAppAction *)v6 setValue:offerCopy forKey:@"_offer"];
  v7 = [ICQInAppMessage alloc];
  labelColor = [MEMORY[0x277D75348] labelColor];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];
  v21[0] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v13 = [offerCopy messageSpecificationForPlacement:@"InApp"];

  iconSpecification = [v13 iconSpecification];
  LOBYTE(v17) = 1;
  v15 = [(ICQInAppMessage *)v7 initWithContentType:0 identifier:@"mockAlmostFull" reason:@"iCloudStorageAlmostFull" title:@"[icqctl] Your iCloud Storage is Almost Full" subTitle:@"Some files might stop syncing" conciseTitle:@"[icqctl] iCloud Storage Almost Full" sfSymbolName:@"exclamationmark.icloud.fill" sfSymbolColor:labelColor accountId:identifier bundleID:@"com.apple.icqctl" actions:v12 dismissAction:0 iconSpecification:iconSpecification serverGenerated:v17];

  return v15;
}

+ (id)quotaAlmostFullLongForOffer:(id)offer
{
  v17[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v5 = [self actionFromOffer:offerCopy];
  v6 = [ICQInAppMessage alloc];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];
  v17[0] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [offerCopy messageSpecificationForPlacement:@"InApp"];

  iconSpecification = [v12 iconSpecification];
  LOBYTE(v16) = 1;
  v14 = [(ICQInAppMessage *)v6 initWithContentType:0 identifier:@"mockAlmostFull" reason:@"iCloudStorageAlmostFull" title:@"[icqctl] Your iCloud Storage is Almost Full" subTitle:@"Make sure you have room for your next 20 conciseTitle:000 photos with iCloud+" sfSymbolName:@"[icqctl] iCloud Storage Almost Full" sfSymbolColor:@"exclamationmark.icloud.fill" accountId:whiteColor bundleID:identifier actions:@"com.apple.icqctl" dismissAction:v11 iconSpecification:0 serverGenerated:iconSpecification, v16];

  return v14;
}

+ (id)quotaFull
{
  fallbackOffer = [self fallbackOffer];
  v4 = [self quotaFullForOffer:fallbackOffer];

  return v4;
}

+ (id)quotaFullForOffer:(id)offer
{
  v18[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v5 = [self actionFromOffer:offerCopy];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(ICQInAppMessage(Examples) *)v5 quotaFullForOffer:v6];
  }

  v7 = [ICQInAppMessage alloc];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];
  v18[0] = v5;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v13 = [offerCopy messageSpecificationForPlacement:@"InApp"];

  iconSpecification = [v13 iconSpecification];
  LOBYTE(v17) = 1;
  v15 = [(ICQInAppMessage *)v7 initWithContentType:3 identifier:@"mockFull" reason:@"iCloudStorageFull" title:@"[icqctl] Your iCloud Storage is Full" subTitle:@"Some files aren't syncing" conciseTitle:@"[icqctl] iCloud Storage Full" sfSymbolName:@"exclamationmark.icloud.fill" sfSymbolColor:whiteColor accountId:identifier bundleID:@"com.apple.icqctl" actions:v12 dismissAction:0 iconSpecification:iconSpecification serverGenerated:v17];

  return v15;
}

+ (id)quotaFullLongForOffer:(id)offer
{
  v17[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v5 = [self actionFromOffer:offerCopy];
  v6 = [ICQInAppMessage alloc];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];
  v17[0] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [offerCopy messageSpecificationForPlacement:@"InApp"];

  iconSpecification = [v12 iconSpecification];
  LOBYTE(v16) = 1;
  v14 = [(ICQInAppMessage *)v6 initWithContentType:3 identifier:@"mockFull" reason:@"iCloudStorageFull" title:@"[icqctl] Your iCloud Storage is Full" subTitle:@"New photos and videos won't be uploaded to iCloud because you don't have enough storage" conciseTitle:@"[icqctl] iCloud Storage Full" sfSymbolName:@"exclamationmark.icloud.fill" sfSymbolColor:whiteColor accountId:identifier bundleID:@"com.apple.icqctl" actions:v11 dismissAction:0 iconSpecification:iconSpecification serverGenerated:v16];

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
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];
  v13 = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = [(ICQInAppMessage *)v6 initWithContentType:0 identifier:@"mockAirplaneMode" reason:@"AirplaneModeOn" title:@"[icqctl] Syncing with iCloud Paused" subTitle:@"In Airplane Mode" sfSymbolName:0 accountId:identifier bundleID:@"com.apple.icqctl" actions:v10 iconSpecification:0];

  return v11;
}

+ (id)serverUnreachable
{
  v2 = [ICQInAppMessage alloc];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];
  v6 = [(ICQInAppMessage *)v2 initWithContentType:4 identifier:@"mockServerUnreachable" reason:@"WiFiConnectivityIssues" title:@"[icqctl] Syncing with iCloud Paused" subTitle:@"No Internet Connection" sfSymbolName:0 accountId:identifier bundleID:@"com.apple.icqctl" actions:MEMORY[0x277CBEBF8] iconSpecification:0];

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
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];
  v15 = v5;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v13 = [(ICQInAppMessage *)v8 initWithContentType:5 identifier:@"mockDataRecoveryAlert" reason:@"ManageStorageDeleteAlert" title:@"[icqctl] iCloud Notes Are Available For 30 Days" subTitle:@"iCloud Notes are available for 30 days. After that time sfSymbolName:notes will be permanently deleted." accountId:0 bundleID:identifier actions:@"com.apple.icqctl" dismissAction:v12 iconSpecification:v7, 0];

  return v13;
}

- (ICQInAppMessage)initWithContentType:(unint64_t)type identifier:(id)identifier reason:(id)reason title:(id)title subTitle:(id)subTitle sfSymbolName:(id)name accountId:(id)id bundleID:(id)self0 actions:(id)self1 dismissAction:(id)self2 iconSpecification:(id)self3 serverGenerated:(BOOL)self4
{
  identifierCopy = identifier;
  obj = reason;
  reasonCopy = reason;
  titleCopy = title;
  titleCopy2 = title;
  subTitleCopy = subTitle;
  nameCopy = name;
  idCopy = id;
  dCopy = d;
  actionsCopy = actions;
  actionCopy = action;
  specificationCopy = specification;
  v36.receiver = self;
  v36.super_class = ICQInAppMessage;
  v23 = [(ICQInAppMessage *)&v36 init];
  v24 = v23;
  if (v23)
  {
    v23->_contentType = type;
    objc_storeStrong(&v23->_identifier, identifier);
    objc_storeStrong(&v24->_reason, obj);
    objc_storeStrong(&v24->_title, titleCopy);
    objc_storeStrong(&v24->_subTitle, subTitle);
    objc_storeStrong(&v24->_sfSymbolName, name);
    objc_storeStrong(&v24->_accountId, id);
    objc_storeStrong(&v24->_bundleID, d);
    objc_storeStrong(&v24->_actions, actions);
    objc_storeStrong(&v24->_dismissAction, action);
    objc_storeStrong(&v24->_iconSpecification, specification);
    v24->_serverGenerated = generated;
  }

  return v24;
}

- (ICQInAppMessage)initWithContentType:(unint64_t)type identifier:(id)identifier reason:(id)reason title:(id)title subTitle:(id)subTitle conciseTitle:(id)conciseTitle sfSymbolName:(id)name sfSymbolColor:(id)self0 accountId:(id)self1 bundleID:(id)self2 actions:(id)self3 dismissAction:(id)self4 iconSpecification:(id)self5 serverGenerated:(BOOL)self6
{
  identifierCopy = identifier;
  obj = reason;
  reasonCopy = reason;
  titleCopy = title;
  subTitleCopy = subTitle;
  conciseTitleCopy = conciseTitle;
  nameCopy = name;
  colorCopy = color;
  idCopy = id;
  dCopy = d;
  actionsCopy = actions;
  actionCopy = action;
  specificationCopy = specification;
  v39.receiver = self;
  v39.super_class = ICQInAppMessage;
  v25 = [(ICQInAppMessage *)&v39 init];
  v26 = v25;
  if (v25)
  {
    v25->_contentType = type;
    objc_storeStrong(&v25->_identifier, identifier);
    objc_storeStrong(&v26->_reason, obj);
    objc_storeStrong(&v26->_title, title);
    objc_storeStrong(&v26->_subTitle, subTitle);
    objc_storeStrong(&v26->_conciseTitle, conciseTitle);
    objc_storeStrong(&v26->_sfSymbolName, name);
    objc_storeStrong(&v26->_sfSymbolColor, color);
    objc_storeStrong(&v26->_accountId, id);
    objc_storeStrong(&v26->_bundleID, d);
    objc_storeStrong(&v26->_actions, actions);
    objc_storeStrong(&v26->_dismissAction, action);
    objc_storeStrong(&v26->_iconSpecification, specification);
    v26->_serverGenerated = generated;
  }

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ICQInAppMessage contentType](self forKey:{"contentType"), @"contentType"}];
  identifier = [(ICQInAppMessage *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  reason = [(ICQInAppMessage *)self reason];
  [coderCopy encodeObject:reason forKey:@"reason"];

  title = [(ICQInAppMessage *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  conciseTitle = [(ICQInAppMessage *)self conciseTitle];
  [coderCopy encodeObject:conciseTitle forKey:@"conciseTitle"];

  subTitle = [(ICQInAppMessage *)self subTitle];
  [coderCopy encodeObject:subTitle forKey:@"subTitle"];

  sfSymbolName = [(ICQInAppMessage *)self sfSymbolName];
  [coderCopy encodeObject:sfSymbolName forKey:@"sfSymbolName"];

  sfSymbolColor = [(ICQInAppMessage *)self sfSymbolColor];
  [coderCopy encodeObject:sfSymbolColor forKey:@"sfSymbolColor"];

  accountId = [(ICQInAppMessage *)self accountId];
  [coderCopy encodeObject:accountId forKey:@"accountId"];

  bundleID = [(ICQInAppMessage *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  actions = [(ICQInAppMessage *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];

  dismissAction = [(ICQInAppMessage *)self dismissAction];
  [coderCopy encodeObject:dismissAction forKey:@"dismissAction"];

  iconSpecification = [(ICQInAppMessage *)self iconSpecification];
  [coderCopy encodeObject:iconSpecification forKey:@"iconSpecification"];

  [coderCopy encodeBool:-[ICQInAppMessage serverGenerated](self forKey:{"serverGenerated"), @"serverGenerated"}];
}

- (ICQInAppMessage)initWithCoder:(id)coder
{
  v25[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18 = [coderCopy decodeIntegerForKey:@"contentType"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conciseTitle"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolName"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolColor"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountId"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v7 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v15 = [v7 setWithArray:v16];
  v8 = [coderCopy decodeObjectOfClasses:v15 forKey:@"actions"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dismissAction"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconSpecification"];
  v11 = [coderCopy decodeBoolForKey:@"serverGenerated"];

  LOBYTE(v13) = v11;
  v21 = [(ICQInAppMessage *)self initWithContentType:v18 identifier:v24 reason:v23 title:v22 subTitle:v19 conciseTitle:v17 sfSymbolName:v4 sfSymbolColor:v5 accountId:v6 bundleID:v14 actions:v8 dismissAction:v9 iconSpecification:v10 serverGenerated:v13];

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [v5 identifier];
    if ([(NSString *)identifier isEqualToString:identifier])
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
  actions = [(ICQInAppMessage *)self actions];
  v5 = [actions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(actions);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) description];
        [v3 appendString:v9];

        [v3 appendString:@"\n"];
      }

      v6 = [actions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x277CCACA8];
  bundleID = [(ICQInAppMessage *)self bundleID];
  title = [(ICQInAppMessage *)self title];
  subTitle = [(ICQInAppMessage *)self subTitle];
  conciseTitle = [(ICQInAppMessage *)self conciseTitle];
  sfSymbolName = [(ICQInAppMessage *)self sfSymbolName];
  sfSymbolColor = [(ICQInAppMessage *)self sfSymbolColor];
  v17 = [v10 stringWithFormat:@"In-App Message for bundle ID %@ with title: %@, subTitle: %@, conciseTitle:%@, sfSymbolID:%@ sfSymbolColor:%@, actions:\n%@", bundleID, title, subTitle, conciseTitle, sfSymbolName, sfSymbolColor, v3];

  return v17;
}

- (void)fetchIconIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  icon = [(ICQInAppMessage *)self icon];

  if (icon)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    iconSpecification = [(ICQInAppMessage *)self iconSpecification];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__ICQInAppMessage_fetchIconIfNeededWithCompletion___block_invoke;
    v7[3] = &unk_27A65BD70;
    v7[4] = self;
    v8 = completionCopy;
    [ICQUIImageLoader fetchIconFromIconSpecification:iconSpecification completion:v7];
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
  bundleID = [(ICQInAppMessage *)self bundleID];
  [ICQAnalytics logInAppBannerViewWithAppIdentifier:bundleID];
}

@end