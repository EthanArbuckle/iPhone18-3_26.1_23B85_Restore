@interface WiFiAwarePublishDatapathSecurityConfiguration
- (BOOL)isEqual:(id)a3;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithCoder:(id)a3;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPMK:(id)a3 andPMKID:(id)a4;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPMKList:(id)a3 passphraseList:(id)a4;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4 usingPairingNFCTag:(id)a5;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4 usingPairingPINCode:(id)a5;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4 usingPairingPassphrase:(id)a5;
- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4 usingPairingQRCodeInformation:(id)a5;
- (WiFiAwarePublisherPairingDelegate)pairingDelegate;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePublishDatapathSecurityConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkList];
  [v4 encodeObject:v5 forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pmkList"];

  v6 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self passphraseList];
  [v4 encodeObject:v6 forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.passphraseList"];

  v7 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];
  [v4 encodeObject:v7 forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pmkID"];

  v8 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];
  [v4 encodeObject:v8 forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pairingConfiguration"];
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pmkList"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.passphraseList"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pairingConfiguration"];
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

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathSecurityConfiguration.pmkID"];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v5 firstObject];
  v11 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self initWithPMK:v10 andPMKID:v9];

LABEL_9:
  return v11;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPMKList:(id)a3 passphraseList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v8 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    pmkList = v8->_pmkList;
    v8->_pmkList = v9;

    v11 = [v7 copy];
    passphraseList = v8->_passphraseList;
    v8->_passphraseList = v11;

    pmkID = v8->_pmkID;
    v8->_pmkID = 0;

    pairingConfiguration = v8->_pairingConfiguration;
    v8->_pairingConfiguration = 0;
  }

  return v8;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPMK:(id)a3 andPMKID:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = WiFiAwarePublishDatapathSecurityConfiguration;
  v8 = [(WiFiAwarePublishDatapathSecurityConfiguration *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    v19[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    pmkList = v8->_pmkList;
    v8->_pmkList = v10;

    passphraseList = v8->_passphraseList;
    v8->_passphraseList = MEMORY[0x277CBEBF8];

    v13 = [v7 copy];
    pmkID = v8->_pmkID;
    v8->_pmkID = v13;

    pairingConfiguration = v8->_pairingConfiguration;
    v8->_pairingConfiguration = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v14 = [v6 copy];
    pairingConfiguration = v9->_pairingConfiguration;
    v9->_pairingConfiguration = v14;

    objc_storeWeak(&v9->_pairingDelegate, v7);
  }

  return v9;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4 usingPairingNFCTag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    v17 = [v8 copy];
    pairingConfiguration = v12->_pairingConfiguration;
    v12->_pairingConfiguration = v17;

    objc_storeWeak(&v12->_pairingDelegate, v9);
    v19 = [v10 copy];
    pairingNFCTag = v12->_pairingNFCTag;
    v12->_pairingNFCTag = v19;
  }

  return v12;
}

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4 usingPairingPINCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    v17 = [v8 copy];
    pairingConfiguration = v12->_pairingConfiguration;
    v12->_pairingConfiguration = v17;

    objc_storeWeak(&v12->_pairingDelegate, v9);
    v19 = [v10 copy];
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

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4 usingPairingQRCodeInformation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    v17 = [v8 copy];
    pairingConfiguration = v12->_pairingConfiguration;
    v12->_pairingConfiguration = v17;

    objc_storeWeak(&v12->_pairingDelegate, v9);
    v19 = [v10 copy];
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

- (WiFiAwarePublishDatapathSecurityConfiguration)initWithPairingConfiguration:(id)a3 usingPairingDelegate:(id)a4 usingPairingPassphrase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    v17 = [v8 copy];
    pairingConfiguration = v12->_pairingConfiguration;
    v12->_pairingConfiguration = v17;

    objc_storeWeak(&v12->_pairingDelegate, v9);
    v19 = [v10 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkList];
  v7 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pmkList];
  if (([v6 isEqualToArray:v7] & 1) == 0)
  {
LABEL_12:

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v8 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self passphraseList];
  v9 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 passphraseList];
  if (![v8 isEqualToArray:v9])
  {

    goto LABEL_12;
  }

  v10 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];
  v11 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pmkID];
  v12 = v11;
  if (v10 == v11)
  {
    v26 = v11;
  }

  else
  {
    v13 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];
    v25 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pmkID];
    if (![v13 isEqual:?])
    {
      v21 = 1;
      goto LABEL_22;
    }

    v24 = v13;
    v26 = v12;
  }

  v16 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];
  v17 = [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pairingConfiguration];
  v18 = v17;
  if (v16 != v17)
  {
    v19 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];
    [(WiFiAwarePublishDatapathSecurityConfiguration *)v5 pairingConfiguration];
    v20 = v23 = v10;
    v22 = [v19 isEqual:v20] ^ 1;

    v10 = v23;
    v21 = v22;

    v12 = v26;
    v13 = v24;
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
  if (v10 != v26)
  {
    v21 = 0;
    v13 = v24;
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
  v3 = [MEMORY[0x277CCAB68] string];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkList];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if ([v3 length])
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendFormat:@"%@", v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self passphraseList];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * j);
        if ([v3 length])
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendFormat:@"%@", v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }

  v16 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];

  if (v16)
  {
    v17 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pmkID];
    [v3 appendFormat:@", PMK-ID: %@", v17];
  }

  v18 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];

  if (v18)
  {
    if ([v3 length])
    {
      [v3 appendString:{@", "}];
    }

    v19 = [(WiFiAwarePublishDatapathSecurityConfiguration *)self pairingConfiguration];
    [v3 appendFormat:@"%@", v19];
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", v3];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (WiFiAwarePublisherPairingDelegate)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

@end