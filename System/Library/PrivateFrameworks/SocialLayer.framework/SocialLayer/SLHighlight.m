@interface SLHighlight
+ (id)Sha256ForData:(id)a3 withSalt:(id)a4;
+ (id)errorForHighlightDomain:(id)a3 andCode:(int64_t)a4 andUnderlyingError:(id *)a5;
+ (id)requiredSpotlightAttributeKeys;
- (BOOL)isEqual:(id)a3;
- (SLHighlight)initWithAttribution:(id)a3;
- (SLHighlight)initWithCSSearchableItem:(id)a3 error:(id *)a4;
- (SLHighlight)initWithCoder:(id)a3;
- (SLHighlight)initWithDictionary:(id)a3;
- (SLHighlight)initWithPortraitHighlight:(id)a3 error:(id *)a4;
- (id)_uniqueIdentifierForResourceURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)portraitHighlight;
- (unint64_t)hash;
- (void)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setAttributions:(id)a3;
@end

@implementation SLHighlight

+ (id)Sha256ForData:(id)a3 withSalt:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  memset(&v13, 0, sizeof(v13));
  v6 = a3;
  CC_SHA256_Init(&v13);
  v7 = v6;
  v8 = [v7 bytes];
  v9 = [v6 length];

  CC_SHA256_Update(&v13, v8, v9);
  if (v5)
  {
    CC_SHA256_Update(&v13, [v5 bytes], objc_msgSend(v5, "length"));
  }

  CC_SHA256_Final(md, &v13);
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:32];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (SLHighlight)initWithAttribution:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SLHighlight;
  v5 = [(SLHighlight *)&v20 init];
  v6 = v5;
  if (v5)
  {
    identifier = v5->_identifier;
    v5->_identifier = &stru_28468DAB8;

    v8 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28468DAB8];
    resourceURL = v6->_resourceURL;
    v6->_resourceURL = v8;

    v10 = [MEMORY[0x277CBEAA8] date];
    timestamp = v6->_timestamp;
    v6->_timestamp = v10;

    v21[0] = v4;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    attributions = v6->_attributions;
    v6->_attributions = v12;

    supplementaryData = v6->_supplementaryData;
    v6->_supplementaryData = MEMORY[0x277CBEC10];

    score = v6->_score;
    v6->_score = &unk_28469BCC0;

    v16 = [(NSDictionary *)v6->_supplementaryData valueForKey:@"com_apple_mobilesms_resolvedURL"];
    resolvedURL = v6->_resolvedURL;
    v6->_resolvedURL = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (SLHighlight)initWithPortraitHighlight:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v51.receiver = self;
  v51.super_class = SLHighlight;
  v7 = [(SLHighlight *)&v51 init];
  if (!v7)
  {
LABEL_32:
    v33 = v7;
    goto LABEL_33;
  }

  if (v6)
  {
    v8 = [v6 identifier];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v6 identifier];
      identifier = v7->_identifier;
      v7->_identifier = v10;

      v12 = [v6 resourceURL];

      if (v12)
      {
        v13 = [v6 resourceURL];
        resourceURL = v7->_resourceURL;
        v7->_resourceURL = v13;

        v15 = [v6 timestamp];

        if (v15)
        {
          v16 = [v6 timestamp];
          timestamp = v7->_timestamp;
          v7->_timestamp = v16;

          v18 = objc_opt_new();
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = [v6 attributionIdentifiers];
          v19 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
          if (v19)
          {
            v20 = v19;
            v43 = a4;
            v21 = 0;
            v22 = *v48;
            while (2)
            {
              v23 = 0;
              v24 = v21;
              do
              {
                if (*v48 != v22)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v47 + 1) + 8 * v23);
                v26 = [SLAttribution alloc];
                v46 = v24;
                v27 = [(SLAttribution *)v26 initWithIdentifier:v25 error:&v46];
                v21 = v46;

                if (!v27)
                {
                  if (v43)
                  {
                    v45 = v21;
                    v30 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:5 andUnderlyingError:&v45];
                    v31 = v45;

                    v32 = v30;
                    *v43 = v30;
                    v21 = v31;
                  }

                  goto LABEL_27;
                }

                [v18 addObject:v27];

                ++v23;
                v24 = v21;
              }

              while (v20 != v23);
              v20 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v21 = 0;
          }

          objc_storeStrong(&v7->_attributions, v18);
          v34 = [v6 supplementaryData];
          supplementaryData = v7->_supplementaryData;
          v7->_supplementaryData = v34;

          v36 = [v6 score];
          score = v7->_score;
          v7->_score = v36;

          v38 = [(NSDictionary *)v7->_supplementaryData valueForKey:@"com_apple_mobilesms_resolvedURL"];

          if (v38)
          {
            v39 = [(NSDictionary *)v7->_supplementaryData valueForKey:@"com_apple_mobilesms_resolvedURL"];
            resolvedURL = v7->_resolvedURL;
            v7->_resolvedURL = v39;
          }

          goto LABEL_32;
        }

        if (a4)
        {
          v28 = objc_opt_class();
          v29 = 4;
          goto LABEL_26;
        }

LABEL_27:
        v33 = 0;
        goto LABEL_33;
      }

      if (!a4)
      {
        goto LABEL_27;
      }

      v28 = objc_opt_class();
      v29 = 3;
    }

    else
    {
      if (!a4)
      {
        goto LABEL_27;
      }

      v28 = objc_opt_class();
      v29 = 2;
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_27;
    }

    v28 = objc_opt_class();
    v29 = 1;
  }

LABEL_26:
  [v28 errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:v29 andUnderlyingError:0];
  *a4 = v33 = 0;
LABEL_33:

  v41 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)portraitHighlight
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(SLHighlight *)self attributions];
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

        v9 = [*(*(&v19 + 1) + 8 * i) uniqueIdentifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = objc_alloc(MEMORY[0x277D3A4C0]);
  v11 = [(SLHighlight *)self identifier];
  v12 = [(SLHighlight *)self resourceURL];
  v13 = [(SLHighlight *)self timestamp];
  v14 = [(SLHighlight *)self supplementaryData];
  v15 = [(SLHighlight *)self score];
  v16 = [v10 initWithIdentifier:v11 resourceURL:v12 timestamp:v13 attributionIdentifiers:v3 supplementaryData:v14 score:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (SLHighlight)initWithCSSearchableItem:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v48.receiver = self;
  v48.super_class = SLHighlight;
  v7 = [(SLHighlight *)&v48 init];
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = [v6 attributeSet];
  v9 = [v8 messageType];

  v10 = [v9 isEqualToString:@"lnk"];
  v11 = [v6 domainIdentifier];
  v12 = [v11 isEqualToString:@"attachmentDomain"];

  if ((v12 & 1) == 0 && (v10 & 1) == 0)
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight initWithCSSearchableItem:v6 error:?];
    }

    if (a4)
    {
      *a4 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:6 andUnderlyingError:0];
    }

    goto LABEL_22;
  }

  v14 = [v6 attributeSet];
  v15 = [v14 contentURL];
  if (v15 || ([v14 URL], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    objc_storeStrong(&v7->_resourceURL, v15);
    v17 = [(SLHighlight *)v7 _uniqueIdentifierForResourceURL:v7->_resourceURL];
    if ([v17 length])
    {
      objc_storeStrong(&v7->_identifier, v17);
      supplementaryData = v7->_supplementaryData;
      v7->_supplementaryData = MEMORY[0x277CBEC10];

      v47 = 0;
      v19 = [[SLAttribution alloc] initWithCSSearchableItem:v6 error:&v47];
      v20 = v47;
      if (v19)
      {
        v49[0] = v19;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
        attributions = v7->_attributions;
        v7->_attributions = v21;

        v23 = [v14 contentCreationDate];
        if (v23)
        {
          v44 = v23;
          objc_storeStrong(&v7->_timestamp, v23);
          v24 = [v14 customAttributeDictionary];
          v25 = [v24 objectForKey:@"com_apple_mobilesms_isSyndicatedContent"];

          v43 = v25;
          v7->_syndicationType = [v25 unsignedIntegerValue];
          v26 = [v14 customAttributeDictionary];
          v27 = [v26 objectForKey:@"com_apple_mobilesms_isSyndicatableMedia"];
          v7->_isSyndicatableMedia = [v27 BOOLValue];

          v28 = [v14 isLocal];
          v7->_isLocalResource = [v28 BOOLValue];

          v29 = [v14 contentType];
          v30 = v29;
          v45 = v20;
          if (v29)
          {
            v31 = v29;
            resourceUTI = v7->_resourceUTI;
            v7->_resourceUTI = v31;
          }

          else
          {
            resourceUTI = SLFrameworkLogHandle();
            if (os_log_type_enabled(resourceUTI, OS_LOG_TYPE_ERROR))
            {
              [SLHighlight initWithCSSearchableItem:v6 error:?];
            }
          }

          v37 = [v14 customAttributeDictionary];
          v38 = [v37 objectForKey:@"com_apple_mobilesms_livePhotoComplementPath"];

          if (v38)
          {
            v39 = [MEMORY[0x277CBEBC0] fileURLWithPath:v38];
          }

          else
          {
            v39 = 0;
          }

          v20 = v45;
          livePhotoComplementURL = v7->_livePhotoComplementURL;
          v7->_livePhotoComplementURL = v39;

          v23 = v44;
        }

        else if (a4)
        {
          *a4 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:4 andUnderlyingError:0];
        }

        if (!v23)
        {
          goto LABEL_23;
        }

LABEL_35:
        v36 = v7;
        goto LABEL_36;
      }

      if (a4)
      {
        v46 = v20;
        v33 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:5 andUnderlyingError:&v46];
        v34 = v46;

        v35 = v33;
        *a4 = v33;
        v20 = v34;
      }
    }

    else if (a4)
    {
      *a4 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:2 andUnderlyingError:0];
    }
  }

  else if (a4)
  {
    *a4 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:3 andUnderlyingError:0];
  }

LABEL_22:
LABEL_23:
  v36 = 0;
LABEL_36:

  v41 = *MEMORY[0x277D85DE8];
  return v36;
}

+ (id)requiredSpotlightAttributeKeys
{
  v14[19] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CC2408];
  v14[0] = *MEMORY[0x277CC23A8];
  v14[1] = v3;
  v4 = *MEMORY[0x277CC24D8];
  v14[2] = *MEMORY[0x277CC24B0];
  v14[3] = v4;
  v5 = *MEMORY[0x277CC2500];
  v14[4] = *MEMORY[0x277CC24E0];
  v14[5] = v5;
  v6 = *MEMORY[0x277CC2678];
  v14[6] = *MEMORY[0x277CC2640];
  v14[7] = v6;
  v7 = *MEMORY[0x277CC2770];
  v14[8] = *MEMORY[0x277CC2688];
  v14[9] = v7;
  v8 = *MEMORY[0x277CC2E48];
  v14[10] = *MEMORY[0x277CC2C88];
  v14[11] = v8;
  v9 = *MEMORY[0x277CC3208];
  v14[12] = *MEMORY[0x277CC2FC0];
  v14[13] = v9;
  v14[14] = @"com_apple_mobilesms_livePhotoComplementPath";
  v14[15] = @"com_apple_mobilesms_groupPhotoPath";
  v14[16] = @"com_apple_mobilesms_isSyndicatedContent";
  v14[17] = @"com_apple_mobilesms_isSyndicatableMedia";
  v14[18] = *MEMORY[0x277CC3190];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:19];
  v11 = [v2 setWithArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (SLHighlight)initWithDictionary:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = SLHighlight;
  v5 = [(SLHighlight *)&v49 init];
  if (!v5)
  {
LABEL_35:
    v22 = v5;
    goto LABEL_36;
  }

  v6 = [v4 objectForKey:@"i"];
  if ([v6 length])
  {
    objc_storeStrong(&v5->_identifier, v6);
    v7 = [v4 objectForKey:@"ru"];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      if (v8)
      {
        v42 = v8;
        v44 = v7;
        objc_storeStrong(&v5->_resourceURL, v8);
        v9 = objc_opt_new();
        [v4 objectForKey:@"a"];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v10 = v48 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v46;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v46 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [[SLAttribution alloc] initWithDictionary:*(*(&v45 + 1) + 8 * i)];
              if (!v15)
              {
                v23 = SLFrameworkLogHandle();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  [SLHighlight initWithDictionary:];
                }

                goto LABEL_21;
              }

              v16 = v15;
              [v9 addObject:{v15, v42, v44, v45}];
            }

            v12 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        objc_storeStrong(&v5->_attributions, v9);
        v17 = [v4 objectForKey:@"t"];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
          p_super = &v5->_timestamp->super;
          v5->_timestamp = v19;
        }

        else
        {
          p_super = SLFrameworkLogHandle();
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            [SLHighlight initWithDictionary:];
          }
        }

        v24 = [v4 objectForKey:@"sd"];
        supplementaryData = v5->_supplementaryData;
        v5->_supplementaryData = v24;

        v26 = [v4 objectForKey:@"rt"];
        resourceUTI = v5->_resourceUTI;
        v5->_resourceUTI = v26;

        v28 = [v4 objectForKey:@"sc"];
        score = v5->_score;
        v5->_score = v28;

        v30 = [v4 objectForKey:@"st"];
        v5->_syndicationType = [v30 unsignedIntegerValue];

        v31 = [v4 objectForKey:@"m"];
        v5->_isSyndicatableMedia = [v31 BOOLValue];

        v32 = [v4 objectForKey:@"lr"];
        v5->_isLocalResource = [v32 BOOLValue];

        v33 = [v4 objectForKey:@"lp"];
        if (v33)
        {
          v34 = [MEMORY[0x277CBEBC0] fileURLWithPath:v33];
          livePhotoComplementURL = v5->_livePhotoComplementURL;
          v5->_livePhotoComplementURL = v34;
        }

        v36 = [v4 objectForKey:{@"com_apple_mobilesms_resolvedURL", v42}];
        if (v36 && ([MEMORY[0x277CBEBC0] fileURLWithPath:v36], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          resolvedURL = v5->_resolvedURL;
          v5->_resolvedURL = v37;
          v39 = v37;
        }

        else
        {
          v39 = SLFrameworkLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [SLHighlight initWithDictionary:];
          }
        }

        goto LABEL_35;
      }
    }

    v21 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight initWithDictionary:];
    }
  }

  else
  {
    v7 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight initWithDictionary:];
    }
  }

LABEL_21:
  v22 = 0;
LABEL_36:

  v40 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SLHighlight *)self identifier];

  if (!v4)
  {
    v37 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

LABEL_35:

LABEL_36:
    v36 = 0;
    goto LABEL_37;
  }

  v5 = [(SLHighlight *)self identifier];
  [v3 setObject:v5 forKey:@"i"];

  v6 = [(SLHighlight *)self resourceURL];

  if (!v6)
  {
    v37 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  v7 = [(SLHighlight *)self resourceURL];
  v8 = [v7 absoluteString];
  [v3 setObject:v8 forKey:@"ru"];

  v9 = [(SLHighlight *)self timestamp];

  if (!v9)
  {
    v37 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  v10 = [(SLHighlight *)self timestamp];
  [v3 setObject:v10 forKey:@"t"];

  v11 = [(SLHighlight *)self attributions];

  if (!v11)
  {
    v37 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = [(SLHighlight *)self attributions];
  v14 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = [v18 dictionaryRepresentation];
        if (!v19)
        {
          v38 = SLFrameworkLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [(SLHighlight *)v18 dictionaryRepresentation];
          }

          goto LABEL_36;
        }

        v20 = v19;
        [v12 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  [v3 setObject:v12 forKey:@"a"];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isLocalResource](self, "isLocalResource")}];
  [v3 setObject:v21 forKey:@"lr"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SLHighlight syndicationType](self, "syndicationType")}];
  [v3 setObject:v22 forKey:@"st"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isSyndicatableMedia](self, "isSyndicatableMedia")}];
  [v3 setObject:v23 forKey:@"m"];

  v24 = [(SLHighlight *)self score];

  if (v24)
  {
    v25 = [(SLHighlight *)self score];
    [v3 setObject:v25 forKey:@"sc"];
  }

  v26 = [(SLHighlight *)self supplementaryData];

  if (v26)
  {
    v27 = [(SLHighlight *)self supplementaryData];
    [v3 setObject:v27 forKey:@"sd"];
  }

  v28 = [(SLHighlight *)self resolvedURL];

  if (v28)
  {
    v29 = [(SLHighlight *)self resolvedURL];
    v30 = [v29 path];
    [v3 setObject:v30 forKey:@"rs"];
  }

  v31 = [(SLHighlight *)self resourceUTI];

  if (v31)
  {
    v32 = [(SLHighlight *)self resourceUTI];
    [v3 setObject:v32 forKey:@"rt"];
  }

  v33 = [(SLHighlight *)self livePhotoComplementURL];

  if (v33)
  {
    v34 = [(SLHighlight *)self livePhotoComplementURL];
    v35 = [v34 path];
    [v3 setObject:v35 forKey:@"lp"];
  }

  v36 = v3;
LABEL_37:

  v39 = *MEMORY[0x277D85DE8];

  return v36;
}

- (SLHighlight)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SLHighlight;
  v5 = [(SLHighlight *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ru"];
    resourceURL = v5->_resourceURL;
    v5->_resourceURL = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"a"];
    attributions = v5->_attributions;
    v5->_attributions = v13;

    v15 = objc_opt_class();
    v16 = [v4 decodeDictionaryWithKeysOfClass:v15 objectsOfClass:objc_opt_class() forKey:@"sd"];
    supplementaryData = v5->_supplementaryData;
    v5->_supplementaryData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sc"];
    score = v5->_score;
    v5->_score = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"st"];
    v5->_syndicationType = [v20 unsignedIntegerValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"com_apple_mobilesms_resolvedURL"];
    resolvedURL = v5->_resolvedURL;
    v5->_resolvedURL = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    v5->_isSyndicatableMedia = [v25 BOOLValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lr"];
    v5->_isLocalResource = [v26 BOOLValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rt"];
    resourceUTI = v5->_resourceUTI;
    v5->_resourceUTI = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lp"];
    livePhotoComplementURL = v5->_livePhotoComplementURL;
    v5->_livePhotoComplementURL = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLHighlight *)self identifier];
  [v4 encodeObject:v5 forKey:@"i"];

  v6 = [(SLHighlight *)self resourceURL];
  [v4 encodeObject:v6 forKey:@"ru"];

  v7 = [(SLHighlight *)self attributions];
  [v4 encodeObject:v7 forKey:@"a"];

  v8 = [(SLHighlight *)self supplementaryData];
  [v4 encodeObject:v8 forKey:@"sd"];

  v9 = [(SLHighlight *)self resolvedURL];
  [v4 encodeObject:v9 forKey:@"com_apple_mobilesms_resolvedURL"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SLHighlight syndicationType](self, "syndicationType")}];
  [v4 encodeObject:v10 forKey:@"st"];

  v11 = [(SLHighlight *)self timestamp];
  [v4 encodeObject:v11 forKey:@"t"];

  v12 = [(SLHighlight *)self score];
  [v4 encodeObject:v12 forKey:@"sc"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isSyndicatableMedia](self, "isSyndicatableMedia")}];
  [v4 encodeObject:v13 forKey:@"m"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isLocalResource](self, "isLocalResource")}];
  [v4 encodeObject:v14 forKey:@"lr"];

  v15 = [(SLHighlight *)self resourceUTI];
  [v4 encodeObject:v15 forKey:@"rt"];

  v16 = [(SLHighlight *)self livePhotoComplementURL];
  [v4 encodeObject:v16 forKey:@"lp"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SLHighlight alloc];
  v5 = [(SLHighlight *)self dictionaryRepresentation];
  v6 = [(SLHighlight *)v4 initWithDictionary:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(SLHighlight *)self identifier];
    if (v7 || ([v6 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(SLHighlight *)self identifier];
      v9 = [v6 identifier];
      v10 = [v8 isEqualToString:v9];

      if (v7)
      {

        if (!v10)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    v12 = [(SLHighlight *)self resourceURL];
    if (!v12)
    {
      v3 = [v6 resourceURL];
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    v13 = [(SLHighlight *)self resourceURL];
    v14 = [v6 resourceURL];
    v15 = [v13 isEqual:v14];

    if (v12)
    {

      if (!v15)
      {
        goto LABEL_20;
      }

LABEL_15:
      v16 = [(SLHighlight *)self attributions];
      v17 = [v16 count];
      if (v17 || ([v6 attributions], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "count")))
      {
        v18 = [(SLHighlight *)self attributions];
        v19 = [v18 count];
        v20 = [v6 attributions];
        v21 = [v20 count];

        if (!v17)
        {
        }

        if (v19 != v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v23 = [(SLHighlight *)self attributions];
      v24 = [v6 attributions];
      v11 = [v23 isEqualToArray:v24];

      goto LABEL_21;
    }

    if (v15)
    {
      goto LABEL_15;
    }

LABEL_20:
    v11 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SLHighlight *)self identifier];
  v4 = [v3 hash];
  v5 = [(SLHighlight *)self resourceURL];
  v6 = [v5 hash] ^ v4;
  v7 = [(SLHighlight *)self attributions];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SLHighlight *)self identifier];
  v7 = [(SLHighlight *)self resourceURL];
  v8 = [(SLHighlight *)self supplementaryData];
  v9 = [v3 stringWithFormat:@"[%@: identifier: %@  resourceURL: %@ supplementaryData: %@]", v5, v6, v7, v8];

  return v9;
}

- (void)setAttributions:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_attributions, a3);
    v5 = v6;
  }
}

- (id)_uniqueIdentifierForResourceURL:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 dataUsingEncoding:4];

  v5 = [objc_opt_class() Sha256ForData:v4 withSalt:0];
  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

+ (id)errorForHighlightDomain:(id)a3 andCode:(int64_t)a4 andUnderlyingError:(id *)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = 0;
  if (a4 <= 3)
  {
    switch(a4)
    {
      case 1:
        v28 = *MEMORY[0x277CCA068];
        v29[0] = @"SLHighlight Init failed. Invalid or nil PPSocialHighlight.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = v29;
        v11 = &v28;
        break;
      case 2:
        v26 = *MEMORY[0x277CCA068];
        v27 = @"SLHighlight Init failed. PPSocialHighlight contains an invalid or nil identifier.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v27;
        v11 = &v26;
        break;
      case 3:
        v24 = *MEMORY[0x277CCA068];
        v25 = @"SLHighlight Init failed. PPSocialHighlight contains an invalid or nil URL.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v25;
        v11 = &v24;
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (a4 > 5)
  {
    if (a4 == 6)
    {
      v18 = *MEMORY[0x277CCA068];
      v19 = @"SLHighlight Init failed. CSSearchableItem contains an invalid or nil domain identifier.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v19;
      v11 = &v18;
    }

    else
    {
      if (a4 != 7)
      {
        goto LABEL_17;
      }

      v16 = *MEMORY[0x277CCA068];
      v17 = @"SLHighlight Init failed. Failed to fetch CSSearchableItem.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v17;
      v11 = &v16;
    }
  }

  else if (a4 == 4)
  {
    v22 = *MEMORY[0x277CCA068];
    v23 = @"SLHighlight Init failed. PPSocialHighlight contains an invalid or nil timestamp.";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v23;
    v11 = &v22;
  }

  else
  {
    v20 = *MEMORY[0x277CCA068];
    v21 = @"SLHighlight Init failed.  One of the attribution identifiers in PPSocialHighlight is invalid or nil.";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v21;
    v11 = &v20;
  }

  v8 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
LABEL_17:
  if (a5)
  {
    v12 = [v8 mutableCopy];
    [v12 setObject:*a5 forKey:*MEMORY[0x277CCA7E8]];

    v8 = v12;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a4 userInfo:v8];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)initWithCSSearchableItem:(void *)a1 error:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 domainIdentifier];
  OUTLINED_FUNCTION_2_1(&dword_231772000, v2, v3, "Attempted to initialize SLH using a CSSearchableItem outside the attachment/links domain. Failing initialization from CSSearchableItem. domain: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithCSSearchableItem:(void *)a1 error:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_2_1(&dword_231772000, v2, v3, "WARNING: Item with unique identifier %@ had a nil UTI.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dictionaryRepresentation
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "SLH an SLA failed dictionary serialization. Failing dictionary serialization for the SLH as well. Offending SLA: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end