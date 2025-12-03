@interface _ICQUpgradeOfferPageSpecification
+ (id)upgradeOfferPageSpecificationSampleForLevel:(int64_t)level;
- (_ICQUpgradeOfferPageSpecification)initWithServerDictionary:(id)dictionary;
- (_ICQUpgradeOfferPageSpecification)initWithServerDictionary:(id)dictionary pageIdentifier:(id)identifier;
- (id)copy;
- (id)copyWithBindings:(id)bindings;
- (id)debugDescription;
@end

@implementation _ICQUpgradeOfferPageSpecification

- (_ICQUpgradeOfferPageSpecification)initWithServerDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CCAD78];
  dictionaryCopy = dictionary;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];

  v8 = [(_ICQUpgradeOfferPageSpecification *)self initWithServerDictionary:dictionaryCopy pageIdentifier:uUIDString];
  return v8;
}

- (_ICQUpgradeOfferPageSpecification)initWithServerDictionary:(id)dictionary pageIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v48.receiver = self;
  v48.super_class = _ICQUpgradeOfferPageSpecification;
  v9 = [(_ICQUpgradeOfferPageSpecification *)&v48 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serverDict, dictionary);
    [(_ICQPageSpecification *)v10 setPageIdentifier:identifierCopy];
    v11 = dictionaryCopy;
    v12 = [v11 objectForKeyedSubscript:@"appId"];
    if (!v12)
    {
      v13 = [v11 objectForKeyedSubscript:@"icloudApps"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count])
      {
        v14 = [v13 objectAtIndexedSubscript:0];
        objc_opt_class();
        v12 = 0;
        if (objc_opt_isKindOfClass())
        {
          v12 = [v14 objectForKeyedSubscript:@"appId"];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    [(_ICQUpgradeOfferPageSpecification *)v10 setIconBundleIdentifier:v12];
    v15 = [v11 objectForKeyedSubscript:@"title"];
    [(_ICQUpgradeOfferPageSpecification *)v10 setTitle:v15];

    v16 = [v11 objectForKeyedSubscript:@"header"];
    v46 = 0;
    v47 = 0;
    _ICQServerHeaderGetFormatAndLinks(v16, &v47, &v46);
    v17 = v47;
    v18 = v46;

    [(_ICQUpgradeOfferPageSpecification *)v10 setMessage:v17];
    [(_ICQUpgradeOfferPageSpecification *)v10 setMessageLinks:v18];
    v19 = [v11 objectForKeyedSubscript:@"altHeader"];

    if (v19)
    {
      v20 = [v11 objectForKeyedSubscript:@"altHeader"];
      v44 = v18;
      v45 = v17;
      _ICQServerHeaderGetFormatAndLinks(v20, &v45, &v44);
      v21 = v45;

      v22 = v44;
      [(_ICQUpgradeOfferPageSpecification *)v10 setAltMessage:v21];
      [(_ICQUpgradeOfferPageSpecification *)v10 setAltMessageLinks:v22];
      v18 = v22;
      v17 = v21;
    }

    v23 = [v11 objectForKeyedSubscript:@"footer"];
    v42 = v18;
    v43 = v17;
    _ICQServerHeaderGetFormatAndLinks(v23, &v43, &v42);
    v24 = v43;

    v25 = v42;
    [(_ICQUpgradeOfferPageSpecification *)v10 setFineprintFormat:v24];
    [(_ICQUpgradeOfferPageSpecification *)v10 setFineprintLinks:v25];
    v26 = _ICQDictionaryForKey(v11, @"actionBtn");
    v27 = v26;
    if (v26)
    {
      v28 = _ICQLinkForServerMessageParameterWithOptions(v26, 0);
      [(_ICQUpgradeOfferPageSpecification *)v10 setPurchaseLink:v28];
    }

    else
    {
      v29 = [v11 objectForKeyedSubscript:@"buyBtn"];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = [v11 objectForKeyedSubscript:@"doneBtn"];
      }

      v28 = v31;

      pageIdentifier = [(_ICQPageSpecification *)v10 pageIdentifier];
      if ([pageIdentifier isEqualToString:@"UpgradeOffer"])
      {
        v33 = 4;
      }

      else if ([pageIdentifier isEqualToString:@"UpgradeComplete"])
      {
        v33 = 5;
      }

      else if ([pageIdentifier isEqualToString:@"UpgradeSuccessWiFi"])
      {
        v33 = 5;
      }

      else
      {
        v33 = 1;
      }

      v34 = [ICQLink linkWithText:v28 action:v33 parameters:MEMORY[0x277CBEC10]];
      [(_ICQUpgradeOfferPageSpecification *)v10 setPurchaseLink:v34];
    }

    v35 = _ICQDictionaryForKey(v11, @"actionBtn2");

    v36 = _ICQLinkForServerMessageParameterWithOptions(v35, 0);
    [(_ICQUpgradeOfferPageSpecification *)v10 setPurchase2Link:v36];

    v37 = _ICQLinkVisibleKeyForServerMessageParameter(v35);
    [(_ICQUpgradeOfferPageSpecification *)v10 setPurchase2LinkVisibleKey:v37];

    v38 = _ICQDictionaryForOneOfKeys(v11, &unk_288445250);

    v39 = _ICQLinkForServerMessageParameterWithOptions(v38, 0);
    [(_ICQUpgradeOfferPageSpecification *)v10 setBottomLink:v39];

    v40 = _ICQLinkVisibleKeyForServerMessageParameter(v38);
    [(_ICQUpgradeOfferPageSpecification *)v10 setBottomLinkVisibleKey:v40];

    [(_ICQPageSpecification *)v10 setHasCancelButtonForBack:1];
  }

  return v10;
}

- (id)debugDescription
{
  v15 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = _ICQUpgradeOfferPageSpecification;
  v14 = [(_ICQPageSpecification *)&v16 debugDescription];
  title = [(_ICQUpgradeOfferPageSpecification *)self title];
  message = [(_ICQUpgradeOfferPageSpecification *)self message];
  purchaseLink = [(_ICQUpgradeOfferPageSpecification *)self purchaseLink];
  text = [purchaseLink text];
  purchase2Link = [(_ICQUpgradeOfferPageSpecification *)self purchase2Link];
  text2 = [purchase2Link text];
  bottomLink = [(_ICQUpgradeOfferPageSpecification *)self bottomLink];
  text3 = [bottomLink text];
  fineprintFormat = [(_ICQUpgradeOfferPageSpecification *)self fineprintFormat];
  v12 = [v15 stringWithFormat:@"%@: title:%@ message:%@ purchase:%@ purchase2:%@ bottom:%@ fine:%@", v14, title, message, text, text2, text3, fineprintFormat];

  return v12;
}

- (id)copy
{
  v3 = objc_alloc(objc_opt_class());
  serverDict = [(_ICQUpgradeOfferPageSpecification *)self serverDict];
  pageIdentifier = [(_ICQPageSpecification *)self pageIdentifier];
  v6 = [v3 initWithServerDictionary:serverDict pageIdentifier:pageIdentifier];

  return v6;
}

- (id)copyWithBindings:(id)bindings
{
  bindingsCopy = bindings;
  v5 = [(_ICQUpgradeOfferPageSpecification *)self copy];
  purchase2LinkVisibleKey = [v5 purchase2LinkVisibleKey];

  if (purchase2LinkVisibleKey)
  {
    purchase2LinkVisibleKey2 = [v5 purchase2LinkVisibleKey];
    v8 = [bindingsCopy objectForKeyedSubscript:purchase2LinkVisibleKey2];
    v9 = _ICQBooleanForServerObjectDefault(v8, 0);

    if ((v9 & 1) == 0)
    {
      [v5 setPurchase2Link:0];
    }
  }

  bottomLinkVisibleKey = [v5 bottomLinkVisibleKey];

  if (bottomLinkVisibleKey)
  {
    bottomLinkVisibleKey2 = [v5 bottomLinkVisibleKey];
    v12 = [bindingsCopy objectForKeyedSubscript:bottomLinkVisibleKey2];
    v13 = _ICQBooleanForServerObjectDefault(v12, 0);

    if ((v13 & 1) == 0)
    {
      [v5 setBottomLink:0];
    }
  }

  return v5;
}

+ (id)upgradeOfferPageSpecificationSampleForLevel:(int64_t)level
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setTitle:@"Upgrade your iCloud Storage"];
  [v3 setMessage:@"Add more storage to continue using iCloud and keep the most important things on your iPhone safe."];
  8288 = [MEMORY[0x277CCACA8] stringWithFormat:@"Buy 50 GB for $0.99%C/%Cmo", 8288, 8288];
  v5 = [ICQLink linkWithText:8288 action:4 parameters:MEMORY[0x277CBEC10]];
  [v3 setPurchaseLink:v5];

  v17 = @"URL";
  v18[0] = @"http://www.apple.com/icloud/";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v7 = [ICQLink linkWithText:@"Learn about managing storage" action:6 parameters:v6];
  [v3 setBottomLink:v7];

  [v3 setFineprintFormat:@"You will be charged $0.99 right now and each month. You can cancel at any time. Contact Apple within 15 days for a refund. Partial refunds are available where required. See %@."];
  v15 = @"URL";
  v16 = @"https://www.apple.com/legal/internet-services/icloud/en/terms.html";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v9 = [ICQLink linkWithText:@"Terms & Conditions" action:6 parameters:v8];

  v14 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v3 setFineprintLinks:v10];

  [v3 setHasCancelButtonForBack:1];
  pageIdentifier = [v3 pageIdentifier];

  if (!pageIdentifier)
  {
    [v3 setPageIdentifier:&stru_288431E38];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

@end