@interface PKWebServiceCarAccessFeature
- (PKWebServiceCarAccessFeature)initWithDictionary:(id)a3 region:(id)a4;
- (id)localizedNameForIssuerWithIdentifier:(id)a3;
- (id)supportedTerminalForIdentifier:(id)a3;
@end

@implementation PKWebServiceCarAccessFeature

- (PKWebServiceCarAccessFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKWebServiceRegionFeature *)self initWithFeatureType:2 dictionary:v6 region:a4];
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = [v6 objectForKey:@"ownerSharingVersionRequirement"];
  v9 = [PKOSVersionRequirementRange alloc];
  if (!v8)
  {
    v13 = [(PKOSVersionRequirementRange *)v9 initWithMinimumVersion:0 maximumVersion:0];
    ownerSharingOSVersionRequirement = v7->_ownerSharingOSVersionRequirement;
    v7->_ownerSharingOSVersionRequirement = v13;

    goto LABEL_8;
  }

  v10 = [(PKOSVersionRequirementRange *)v9 initWithDictionary:v8];
  v11 = v7->_ownerSharingOSVersionRequirement;
  v7->_ownerSharingOSVersionRequirement = v10;

  if (v7->_ownerSharingOSVersionRequirement)
  {
LABEL_8:
    v15 = [v6 objectForKey:@"friendSharingVersionRequirement"];
    v16 = [PKOSVersionRequirementRange alloc];
    if (v15)
    {
      v17 = [(PKOSVersionRequirementRange *)v16 initWithDictionary:v8];
      friendSharingOSVersionRequirement = v7->_friendSharingOSVersionRequirement;
      v7->_friendSharingOSVersionRequirement = v17;

      if (!v7->_friendSharingOSVersionRequirement)
      {
        v19 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v8;
          _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Invalid friend sharing version range: %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v21 = [(PKOSVersionRequirementRange *)v16 initWithMinimumVersion:0 maximumVersion:0];
      v22 = v7->_friendSharingOSVersionRequirement;
      v7->_friendSharingOSVersionRequirement = v21;
    }

    v42 = v15;
    v43 = v8;
    v23 = [v6 objectForKey:@"brandIdentifiers"];
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __58__PKWebServiceCarAccessFeature_initWithDictionary_region___block_invoke;
    v50[3] = &unk_1E79C9900;
    v25 = v24;
    v51 = v25;
    [v23 enumerateKeysAndObjectsUsingBlock:v50];
    v41 = v25;
    v26 = [v25 copy];
    brandIdentifierForBrandCode = v7->_brandIdentifierForBrandCode;
    v44 = v7;
    v7->_brandIdentifierForBrandCode = v26;

    v45 = v6;
    v28 = [v6 PKArrayContaining:objc_opt_class() forKey:@"supportedTerminals"];
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v28, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v47;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v46 + 1) + 8 * i);
          v36 = [[PKCarUnlockSupportedTerminal alloc] initWithDictionary:v35];
          if (v36)
          {
            [v29 addObject:v36];
          }

          else
          {
            v37 = PKLogFacilityTypeGetObject(0x17uLL);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v35;
              _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "Invalid supported terminal dictionary: %@", buf, 0xCu);
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v32);
    }

    v38 = [v29 copy];
    v7 = v44;
    supportedTerminals = v44->_supportedTerminals;
    v44->_supportedTerminals = v38;

    v6 = v45;
LABEL_28:
    v20 = v7;
    goto LABEL_29;
  }

  v12 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v8;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Invalid owner sharing version range: %@", buf, 0xCu);
  }

LABEL_13:
  v20 = 0;
LABEL_29:

  return v20;
}

void __58__PKWebServiceCarAccessFeature_initWithDictionary_region___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  [v4 setObject:v6 forKey:v7];
}

- (id)localizedNameForIssuerWithIdentifier:(id)a3
{
  v3 = [(PKWebServiceCarAccessFeature *)self supportedTerminalForIdentifier:a3];
  v4 = [v3 partnerName];

  return v4;
}

- (id)supportedTerminalForIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_supportedTerminals;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 partnerIdentifier];
        v11 = v4;
        v12 = v11;
        if (v10 == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (v4 && v10)
        {
          v13 = [v10 isEqualToString:v11];

          if (v13)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v6;
}

@end