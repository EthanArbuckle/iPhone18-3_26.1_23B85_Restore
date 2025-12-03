@interface WiFiAwarePublishDatapathSecurityConfiguration
- (BOOL)isEqual:(id)equal;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithCoder:(id)coder;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPMK:(id)k andPMKID:(id)d;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPMKList:(id)list passphraseList:(id)passphraseList;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate usingPairingNFCTag:(id)tag;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate usingPairingPINCode:(id)code;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate usingPairingPassphrase:(id)passphrase;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate usingPairingQRCodeInformation:(id)information;
- (WiFiAwarePublisherPairingDelegate)pairingDelegate;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePublishDatapathSecurityConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pmkList = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkList];
  [coderCopy encodeObject:pmkList forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pmkList"];

  passphraseList = [(WiFiAwarePublishDatapathSecurityConfiguration *)self passphraseList];
  [coderCopy encodeObject:passphraseList forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.passphraseList"];

  pmkID = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];
  [coderCopy encodeObject:pmkID forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pmkID"];

  pairingConfiguration = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];
  [coderCopy encodeObject:pairingConfiguration forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pairingConfiguration"];
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pmkList"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.passphraseList"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pairingConfiguration"];
  if ([v6 count] || objc_msgSend(v5, "count") != 1)
  {
    if (v7)
    {
      v12 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self initWithPairingConfiguration:v7 usingPairingDelegate:0];
LABEL_8:
      v11 = v12;
      goto LABEL_9;
    }

LABEL_7:
    v12 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self initWithPMKList:v5 passphraseList:v6];
    goto LABEL_8;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pmkID"];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  firstObject = [v5 firstObject];
  v11 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self initWithPMK:firstObject andPMKID:v9];

LABEL_9:
  return v11;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPMKList:(id)list passphraseList:(id)passphraseList
{
  listCopy = list;
  passphraseListCopy = passphraseList;
  v16.receiver = self;
  v16.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v8 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v16 init];
  if (v8)
  {
    v9 = [listCopy copy];
    pmkList = v8->_pmkList;
    v8->_pmkList = v9;

    v11 = [passphraseListCopy copy];
    passphraseList = v8->_passphraseList;
    v8->_passphraseList = v11;

    pmkID = v8->_pmkID;
    v8->_pmkID = 0;

    pairingConfiguration = v8->_pairingConfiguration;
    v8->_pairingConfiguration = 0;
  }

  return v8;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPMK:(id)k andPMKID:(id)d
{
  v19[1] = *MEMORY[0x277D85DE8];
  kCopy = k;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v8 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v18 init];
  if (v8)
  {
    v9 = [kCopy copy];
    v19[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    pmkList = v8->_pmkList;
    v8->_pmkList = v10;

    passphraseList = v8->_passphraseList;
    v8->_passphraseList = MEMORY[0x277CBEBF8];

    v13 = [dCopy copy];
    pmkID = v8->_pmkID;
    v8->_pmkID = v13;

    pairingConfiguration = v8->_pairingConfiguration;
    v8->_pairingConfiguration = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v8 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    pmkList = v8->_pmkList;
    v11 = MEMORY[0x277CBEBF8];
    v8->_pmkList = MEMORY[0x277CBEBF8];

    passphraseList = v9->_passphraseList;
    v9->_passphraseList = v11;

    pmkID = v9->_pmkID;
    v9->_pmkID = 0;

    v14 = [configurationCopy copy];
    pairingConfiguration = v9->_pairingConfiguration;
    v9->_pairingConfiguration = v14;

    objc_storeWeak(&v9->_pairingDelegate, delegateCopy);
  }

  return v9;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate usingPairingNFCTag:(id)tag
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  tagCopy = tag;
  v22.receiver = self;
  v22.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v11 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v22 init];
  v12 = v11;
  if (v11)
  {
    pmkList = v11->_pmkList;
    v14 = MEMORY[0x277CBEBF8];
    v11->_pmkList = MEMORY[0x277CBEBF8];

    passphraseList = v12->_passphraseList;
    v12->_passphraseList = v14;

    pmkID = v12->_pmkID;
    v12->_pmkID = 0;

    v17 = [configurationCopy copy];
    pairingConfiguration = v12->_pairingConfiguration;
    v12->_pairingConfiguration = v17;

    objc_storeWeak(&v12->_pairingDelegate, delegateCopy);
    v19 = [tagCopy copy];
    pairingNFCTag = v12->_pairingNFCTag;
    v12->_pairingNFCTag = v19;
  }

  return v12;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate usingPairingPINCode:(id)code
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  codeCopy = code;
  v25.receiver = self;
  v25.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v11 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v25 init];
  v12 = v11;
  if (v11)
  {
    pmkList = v11->_pmkList;
    v14 = MEMORY[0x277CBEBF8];
    v11->_pmkList = MEMORY[0x277CBEBF8];

    passphraseList = v12->_passphraseList;
    v12->_passphraseList = v14;

    pmkID = v12->_pmkID;
    v12->_pmkID = 0;

    v17 = [configurationCopy copy];
    pairingConfiguration = v12->_pairingConfiguration;
    v12->_pairingConfiguration = v17;

    objc_storeWeak(&v12->_pairingDelegate, delegateCopy);
    v19 = [codeCopy copy];
    pairingPINCode = v12->_pairingPINCode;
    v12->_pairingPINCode = v19;

    pairingNFCTag = v12->_pairingNFCTag;
    v12->_pairingNFCTag = 0;

    pairingPassphrase = v12->_pairingPassphrase;
    v12->_pairingPassphrase = 0;

    pairingQRCodeInformation = v12->_pairingQRCodeInformation;
    v12->_pairingQRCodeInformation = 0;
  }

  return v12;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate usingPairingQRCodeInformation:(id)information
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  informationCopy = information;
  v25.receiver = self;
  v25.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v11 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v25 init];
  v12 = v11;
  if (v11)
  {
    pmkList = v11->_pmkList;
    v14 = MEMORY[0x277CBEBF8];
    v11->_pmkList = MEMORY[0x277CBEBF8];

    passphraseList = v12->_passphraseList;
    v12->_passphraseList = v14;

    pmkID = v12->_pmkID;
    v12->_pmkID = 0;

    v17 = [configurationCopy copy];
    pairingConfiguration = v12->_pairingConfiguration;
    v12->_pairingConfiguration = v17;

    objc_storeWeak(&v12->_pairingDelegate, delegateCopy);
    v19 = [informationCopy copy];
    pairingQRCodeInformation = v12->_pairingQRCodeInformation;
    v12->_pairingQRCodeInformation = v19;

    pairingPINCode = v12->_pairingPINCode;
    v12->_pairingPINCode = 0;

    pairingNFCTag = v12->_pairingNFCTag;
    v12->_pairingNFCTag = 0;

    pairingPassphrase = v12->_pairingPassphrase;
    v12->_pairingPassphrase = 0;
  }

  return v12;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)configuration usingPairingDelegate:(id)delegate usingPairingPassphrase:(id)passphrase
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  passphraseCopy = passphrase;
  v25.receiver = self;
  v25.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v11 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v25 init];
  v12 = v11;
  if (v11)
  {
    pmkList = v11->_pmkList;
    v14 = MEMORY[0x277CBEBF8];
    v11->_pmkList = MEMORY[0x277CBEBF8];

    passphraseList = v12->_passphraseList;
    v12->_passphraseList = v14;

    pmkID = v12->_pmkID;
    v12->_pmkID = 0;

    v17 = [configurationCopy copy];
    pairingConfiguration = v12->_pairingConfiguration;
    v12->_pairingConfiguration = v17;

    objc_storeWeak(&v12->_pairingDelegate, delegateCopy);
    v19 = [passphraseCopy copy];
    pairingPassphrase = v12->_pairingPassphrase;
    v12->_pairingPassphrase = v19;

    pairingQRCodeInformation = v12->_pairingQRCodeInformation;
    v12->_pairingQRCodeInformation = 0;

    pairingPINCode = v12->_pairingPINCode;
    v12->_pairingPINCode = 0;

    pairingNFCTag = v12->_pairingNFCTag;
    v12->_pairingNFCTag = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v5 = equalCopy;
  pmkList = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkList];
  pmkList2 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pmkList];
  if (([pmkList isEqualToArray:pmkList2] & 1) == 0)
  {
LABEL_12:

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  passphraseList = [(WiFiAwarePublishDatapathSecurityConfiguration *)self passphraseList];
  passphraseList2 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 passphraseList];
  if (![passphraseList isEqualToArray:passphraseList2])
  {

    goto LABEL_12;
  }

  pmkID = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];
  pmkID2 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pmkID];
  v12 = pmkID2;
  if (pmkID == pmkID2)
  {
    v26 = pmkID2;
  }

  else
  {
    pmkID3 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];
    pmkID4 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pmkID];
    if (![pmkID3 isEqual:?])
    {
      v21 = 1;
      goto LABEL_22;
    }

    v24 = pmkID3;
    v26 = v12;
  }

  pairingConfiguration = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];
  pairingConfiguration2 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pairingConfiguration];
  v18 = pairingConfiguration2;
  if (pairingConfiguration != pairingConfiguration2)
  {
    pairingConfiguration3 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];
    [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pairingConfiguration];
    v20 = v23 = pmkID;
    v22 = [pairingConfiguration3 isEqual:v20] ^ 1;

    pmkID = v23;
    v21 = v22;

    v12 = v26;
    pmkID3 = v24;
    if (v23 == v26)
    {
LABEL_23:

      if (v21)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

LABEL_22:

    goto LABEL_23;
  }

  v12 = v26;
  if (pmkID != v26)
  {
    v21 = 0;
    pmkID3 = v24;
    goto LABEL_22;
  }

LABEL_9:
  v14 = 1;
LABEL_14:

  return v14;
}

- (id)description
{
  v33 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  pmkList = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkList];
  v5 = [pmkList countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(pmkList);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if ([string length])
        {
          [string appendString:{@", "}];
        }

        [string appendFormat:@"%@", v9];
      }

      v6 = [pmkList countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  passphraseList = [(WiFiAwarePublishDatapathSecurityConfiguration *)self passphraseList];
  v11 = [passphraseList countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(passphraseList);
        }

        v15 = *(*(&v23 + 1) + 8 * j);
        if ([string length])
        {
          [string appendString:{@", "}];
        }

        [string appendFormat:@"%@", v15];
      }

      v12 = [passphraseList countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }

  pmkID = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];

  if (pmkID)
  {
    pmkID2 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];
    [string appendFormat:@", PMK-ID: %@", pmkID2];
  }

  pairingConfiguration = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];

  if (pairingConfiguration)
  {
    if ([string length])
    {
      [string appendString:{@", "}];
    }

    pairingConfiguration2 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];
    [string appendFormat:@"%@", pairingConfiguration2];
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", string];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (WiFiAwarePublisherPairingDelegate)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

@end