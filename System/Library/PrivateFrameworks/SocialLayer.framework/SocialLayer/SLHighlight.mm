@interface SLHighlight
+ (id)Sha256ForData:(id)data withSalt:(id)salt;
+ (id)errorForHighlightDomain:(id)domain andCode:(int64_t)code andUnderlyingError:(id *)error;
+ (id)requiredSpotlightAttributeKeys;
- (BOOL)isEqual:(id)equal;
- (SLHighlight)initWithAttribution:(id)attribution;
- (SLHighlight)initWithCSSearchableItem:(id)item error:(id *)error;
- (SLHighlight)initWithCoder:(id)coder;
- (SLHighlight)initWithDictionary:(id)dictionary;
- (SLHighlight)initWithPortraitHighlight:(id)highlight error:(id *)error;
- (id)_uniqueIdentifierForResourceURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)portraitHighlight;
- (unint64_t)hash;
- (void)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributions:(id)attributions;
@end

@implementation SLHighlight

+ (id)Sha256ForData:(id)data withSalt:(id)salt
{
  v15 = *MEMORY[0x277D85DE8];
  saltCopy = salt;
  memset(&v13, 0, sizeof(v13));
  dataCopy = data;
  CC_SHA256_Init(&v13);
  v7 = dataCopy;
  bytes = [v7 bytes];
  v9 = [dataCopy length];

  CC_SHA256_Update(&v13, bytes, v9);
  if (saltCopy)
  {
    CC_SHA256_Update(&v13, [saltCopy bytes], objc_msgSend(saltCopy, "length"));
  }

  CC_SHA256_Final(md, &v13);
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:32];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (SLHighlight)initWithAttribution:(id)attribution
{
  v21[1] = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
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

    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v6->_timestamp;
    v6->_timestamp = date;

    v21[0] = attributionCopy;
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

- (SLHighlight)initWithPortraitHighlight:(id)highlight error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  v51.receiver = self;
  v51.super_class = SLHighlight;
  v7 = [(SLHighlight *)&v51 init];
  if (!v7)
  {
LABEL_32:
    v33 = v7;
    goto LABEL_33;
  }

  if (highlightCopy)
  {
    identifier = [highlightCopy identifier];
    v9 = [identifier length];

    if (v9)
    {
      identifier2 = [highlightCopy identifier];
      identifier = v7->_identifier;
      v7->_identifier = identifier2;

      resourceURL = [highlightCopy resourceURL];

      if (resourceURL)
      {
        resourceURL2 = [highlightCopy resourceURL];
        resourceURL = v7->_resourceURL;
        v7->_resourceURL = resourceURL2;

        timestamp = [highlightCopy timestamp];

        if (timestamp)
        {
          timestamp2 = [highlightCopy timestamp];
          timestamp = v7->_timestamp;
          v7->_timestamp = timestamp2;

          v18 = objc_opt_new();
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = [highlightCopy attributionIdentifiers];
          v19 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
          if (v19)
          {
            v20 = v19;
            errorCopy = error;
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
                  if (errorCopy)
                  {
                    v45 = v21;
                    v30 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:5 andUnderlyingError:&v45];
                    v31 = v45;

                    v32 = v30;
                    *errorCopy = v30;
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
          supplementaryData = [highlightCopy supplementaryData];
          supplementaryData = v7->_supplementaryData;
          v7->_supplementaryData = supplementaryData;

          score = [highlightCopy score];
          score = v7->_score;
          v7->_score = score;

          v38 = [(NSDictionary *)v7->_supplementaryData valueForKey:@"com_apple_mobilesms_resolvedURL"];

          if (v38)
          {
            v39 = [(NSDictionary *)v7->_supplementaryData valueForKey:@"com_apple_mobilesms_resolvedURL"];
            resolvedURL = v7->_resolvedURL;
            v7->_resolvedURL = v39;
          }

          goto LABEL_32;
        }

        if (error)
        {
          v28 = objc_opt_class();
          v29 = 4;
          goto LABEL_26;
        }

LABEL_27:
        v33 = 0;
        goto LABEL_33;
      }

      if (!error)
      {
        goto LABEL_27;
      }

      v28 = objc_opt_class();
      v29 = 3;
    }

    else
    {
      if (!error)
      {
        goto LABEL_27;
      }

      v28 = objc_opt_class();
      v29 = 2;
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_27;
    }

    v28 = objc_opt_class();
    v29 = 1;
  }

LABEL_26:
  [v28 errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:v29 andUnderlyingError:0];
  *error = v33 = 0;
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
  attributions = [(SLHighlight *)self attributions];
  v5 = [attributions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(attributions);
        }

        uniqueIdentifier = [*(*(&v19 + 1) + 8 * i) uniqueIdentifier];
        [v3 addObject:uniqueIdentifier];
      }

      v6 = [attributions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = objc_alloc(MEMORY[0x277D3A4C0]);
  identifier = [(SLHighlight *)self identifier];
  resourceURL = [(SLHighlight *)self resourceURL];
  timestamp = [(SLHighlight *)self timestamp];
  supplementaryData = [(SLHighlight *)self supplementaryData];
  score = [(SLHighlight *)self score];
  v16 = [v10 initWithIdentifier:identifier resourceURL:resourceURL timestamp:timestamp attributionIdentifiers:v3 supplementaryData:supplementaryData score:score];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (SLHighlight)initWithCSSearchableItem:(id)item error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v48.receiver = self;
  v48.super_class = SLHighlight;
  v7 = [(SLHighlight *)&v48 init];
  if (!v7)
  {
    goto LABEL_35;
  }

  attributeSet = [itemCopy attributeSet];
  messageType = [attributeSet messageType];

  v10 = [messageType isEqualToString:@"lnk"];
  domainIdentifier = [itemCopy domainIdentifier];
  v12 = [domainIdentifier isEqualToString:@"attachmentDomain"];

  if ((v12 & 1) == 0 && (v10 & 1) == 0)
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight initWithCSSearchableItem:itemCopy error:?];
    }

    if (error)
    {
      *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:6 andUnderlyingError:0];
    }

    goto LABEL_22;
  }

  attributeSet2 = [itemCopy attributeSet];
  contentURL = [attributeSet2 contentURL];
  if (contentURL || ([attributeSet2 URL], (contentURL = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = contentURL;
    objc_storeStrong(&v7->_resourceURL, contentURL);
    v17 = [(SLHighlight *)v7 _uniqueIdentifierForResourceURL:v7->_resourceURL];
    if ([v17 length])
    {
      objc_storeStrong(&v7->_identifier, v17);
      supplementaryData = v7->_supplementaryData;
      v7->_supplementaryData = MEMORY[0x277CBEC10];

      v47 = 0;
      v19 = [[SLAttribution alloc] initWithCSSearchableItem:itemCopy error:&v47];
      v20 = v47;
      if (v19)
      {
        v49[0] = v19;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
        attributions = v7->_attributions;
        v7->_attributions = v21;

        contentCreationDate = [attributeSet2 contentCreationDate];
        if (contentCreationDate)
        {
          v44 = contentCreationDate;
          objc_storeStrong(&v7->_timestamp, contentCreationDate);
          customAttributeDictionary = [attributeSet2 customAttributeDictionary];
          v25 = [customAttributeDictionary objectForKey:@"com_apple_mobilesms_isSyndicatedContent"];

          v43 = v25;
          v7->_syndicationType = [v25 unsignedIntegerValue];
          customAttributeDictionary2 = [attributeSet2 customAttributeDictionary];
          v27 = [customAttributeDictionary2 objectForKey:@"com_apple_mobilesms_isSyndicatableMedia"];
          v7->_isSyndicatableMedia = [v27 BOOLValue];

          isLocal = [attributeSet2 isLocal];
          v7->_isLocalResource = [isLocal BOOLValue];

          contentType = [attributeSet2 contentType];
          v30 = contentType;
          v45 = v20;
          if (contentType)
          {
            v31 = contentType;
            resourceUTI = v7->_resourceUTI;
            v7->_resourceUTI = v31;
          }

          else
          {
            resourceUTI = SLFrameworkLogHandle();
            if (os_log_type_enabled(resourceUTI, OS_LOG_TYPE_ERROR))
            {
              [SLHighlight initWithCSSearchableItem:itemCopy error:?];
            }
          }

          customAttributeDictionary3 = [attributeSet2 customAttributeDictionary];
          v38 = [customAttributeDictionary3 objectForKey:@"com_apple_mobilesms_livePhotoComplementPath"];

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

          contentCreationDate = v44;
        }

        else if (error)
        {
          *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:4 andUnderlyingError:0];
        }

        if (!contentCreationDate)
        {
          goto LABEL_23;
        }

LABEL_35:
        v36 = v7;
        goto LABEL_36;
      }

      if (error)
      {
        v46 = v20;
        v33 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:5 andUnderlyingError:&v46];
        v34 = v46;

        v35 = v33;
        *error = v33;
        v20 = v34;
      }
    }

    else if (error)
    {
      *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:2 andUnderlyingError:0];
    }
  }

  else if (error)
  {
    *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:3 andUnderlyingError:0];
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

- (SLHighlight)initWithDictionary:(id)dictionary
{
  v51 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v49.receiver = self;
  v49.super_class = SLHighlight;
  v5 = [(SLHighlight *)&v49 init];
  if (!v5)
  {
LABEL_35:
    v22 = v5;
    goto LABEL_36;
  }

  v6 = [dictionaryCopy objectForKey:@"i"];
  if ([v6 length])
  {
    objc_storeStrong(&v5->_identifier, v6);
    v7 = [dictionaryCopy objectForKey:@"ru"];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      if (v8)
      {
        v42 = v8;
        v44 = v7;
        objc_storeStrong(&v5->_resourceURL, v8);
        v9 = objc_opt_new();
        [dictionaryCopy objectForKey:@"a"];
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
        v17 = [dictionaryCopy objectForKey:@"t"];
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

        v24 = [dictionaryCopy objectForKey:@"sd"];
        supplementaryData = v5->_supplementaryData;
        v5->_supplementaryData = v24;

        v26 = [dictionaryCopy objectForKey:@"rt"];
        resourceUTI = v5->_resourceUTI;
        v5->_resourceUTI = v26;

        v28 = [dictionaryCopy objectForKey:@"sc"];
        score = v5->_score;
        v5->_score = v28;

        v30 = [dictionaryCopy objectForKey:@"st"];
        v5->_syndicationType = [v30 unsignedIntegerValue];

        v31 = [dictionaryCopy objectForKey:@"m"];
        v5->_isSyndicatableMedia = [v31 BOOLValue];

        v32 = [dictionaryCopy objectForKey:@"lr"];
        v5->_isLocalResource = [v32 BOOLValue];

        v33 = [dictionaryCopy objectForKey:@"lp"];
        if (v33)
        {
          v34 = [MEMORY[0x277CBEBC0] fileURLWithPath:v33];
          livePhotoComplementURL = v5->_livePhotoComplementURL;
          v5->_livePhotoComplementURL = v34;
        }

        v36 = [dictionaryCopy objectForKey:{@"com_apple_mobilesms_resolvedURL", v42}];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [(SLHighlight *)self identifier];

  if (!identifier)
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

  identifier2 = [(SLHighlight *)self identifier];
  [dictionary setObject:identifier2 forKey:@"i"];

  resourceURL = [(SLHighlight *)self resourceURL];

  if (!resourceURL)
  {
    v37 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  resourceURL2 = [(SLHighlight *)self resourceURL];
  absoluteString = [resourceURL2 absoluteString];
  [dictionary setObject:absoluteString forKey:@"ru"];

  timestamp = [(SLHighlight *)self timestamp];

  if (!timestamp)
  {
    v37 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  timestamp2 = [(SLHighlight *)self timestamp];
  [dictionary setObject:timestamp2 forKey:@"t"];

  attributions = [(SLHighlight *)self attributions];

  if (!attributions)
  {
    v37 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  array = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  attributions2 = [(SLHighlight *)self attributions];
  v14 = [attributions2 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
          objc_enumerationMutation(attributions2);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        dictionaryRepresentation = [v18 dictionaryRepresentation];
        if (!dictionaryRepresentation)
        {
          v38 = SLFrameworkLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [(SLHighlight *)v18 dictionaryRepresentation];
          }

          goto LABEL_36;
        }

        v20 = dictionaryRepresentation;
        [array addObject:dictionaryRepresentation];
      }

      v15 = [attributions2 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  [dictionary setObject:array forKey:@"a"];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isLocalResource](self, "isLocalResource")}];
  [dictionary setObject:v21 forKey:@"lr"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SLHighlight syndicationType](self, "syndicationType")}];
  [dictionary setObject:v22 forKey:@"st"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isSyndicatableMedia](self, "isSyndicatableMedia")}];
  [dictionary setObject:v23 forKey:@"m"];

  score = [(SLHighlight *)self score];

  if (score)
  {
    score2 = [(SLHighlight *)self score];
    [dictionary setObject:score2 forKey:@"sc"];
  }

  supplementaryData = [(SLHighlight *)self supplementaryData];

  if (supplementaryData)
  {
    supplementaryData2 = [(SLHighlight *)self supplementaryData];
    [dictionary setObject:supplementaryData2 forKey:@"sd"];
  }

  resolvedURL = [(SLHighlight *)self resolvedURL];

  if (resolvedURL)
  {
    resolvedURL2 = [(SLHighlight *)self resolvedURL];
    path = [resolvedURL2 path];
    [dictionary setObject:path forKey:@"rs"];
  }

  resourceUTI = [(SLHighlight *)self resourceUTI];

  if (resourceUTI)
  {
    resourceUTI2 = [(SLHighlight *)self resourceUTI];
    [dictionary setObject:resourceUTI2 forKey:@"rt"];
  }

  livePhotoComplementURL = [(SLHighlight *)self livePhotoComplementURL];

  if (livePhotoComplementURL)
  {
    livePhotoComplementURL2 = [(SLHighlight *)self livePhotoComplementURL];
    path2 = [livePhotoComplementURL2 path];
    [dictionary setObject:path2 forKey:@"lp"];
  }

  v36 = dictionary;
LABEL_37:

  v39 = *MEMORY[0x277D85DE8];

  return v36;
}

- (SLHighlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SLHighlight;
  v5 = [(SLHighlight *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ru"];
    resourceURL = v5->_resourceURL;
    v5->_resourceURL = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"a"];
    attributions = v5->_attributions;
    v5->_attributions = v13;

    v15 = objc_opt_class();
    v16 = [coderCopy decodeDictionaryWithKeysOfClass:v15 objectsOfClass:objc_opt_class() forKey:@"sd"];
    supplementaryData = v5->_supplementaryData;
    v5->_supplementaryData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sc"];
    score = v5->_score;
    v5->_score = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"st"];
    v5->_syndicationType = [v20 unsignedIntegerValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"com_apple_mobilesms_resolvedURL"];
    resolvedURL = v5->_resolvedURL;
    v5->_resolvedURL = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    v5->_isSyndicatableMedia = [v25 BOOLValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lr"];
    v5->_isLocalResource = [v26 BOOLValue];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rt"];
    resourceUTI = v5->_resourceUTI;
    v5->_resourceUTI = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lp"];
    livePhotoComplementURL = v5->_livePhotoComplementURL;
    v5->_livePhotoComplementURL = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SLHighlight *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"i"];

  resourceURL = [(SLHighlight *)self resourceURL];
  [coderCopy encodeObject:resourceURL forKey:@"ru"];

  attributions = [(SLHighlight *)self attributions];
  [coderCopy encodeObject:attributions forKey:@"a"];

  supplementaryData = [(SLHighlight *)self supplementaryData];
  [coderCopy encodeObject:supplementaryData forKey:@"sd"];

  resolvedURL = [(SLHighlight *)self resolvedURL];
  [coderCopy encodeObject:resolvedURL forKey:@"com_apple_mobilesms_resolvedURL"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SLHighlight syndicationType](self, "syndicationType")}];
  [coderCopy encodeObject:v10 forKey:@"st"];

  timestamp = [(SLHighlight *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"t"];

  score = [(SLHighlight *)self score];
  [coderCopy encodeObject:score forKey:@"sc"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isSyndicatableMedia](self, "isSyndicatableMedia")}];
  [coderCopy encodeObject:v13 forKey:@"m"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isLocalResource](self, "isLocalResource")}];
  [coderCopy encodeObject:v14 forKey:@"lr"];

  resourceUTI = [(SLHighlight *)self resourceUTI];
  [coderCopy encodeObject:resourceUTI forKey:@"rt"];

  livePhotoComplementURL = [(SLHighlight *)self livePhotoComplementURL];
  [coderCopy encodeObject:livePhotoComplementURL forKey:@"lp"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SLHighlight alloc];
  dictionaryRepresentation = [(SLHighlight *)self dictionaryRepresentation];
  v6 = [(SLHighlight *)v4 initWithDictionary:dictionaryRepresentation];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    identifier = [(SLHighlight *)self identifier];
    if (identifier || ([v6 identifier], (resourceURL2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [(SLHighlight *)self identifier];
      identifier3 = [v6 identifier];
      v10 = [identifier2 isEqualToString:identifier3];

      if (identifier)
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

    resourceURL = [(SLHighlight *)self resourceURL];
    if (!resourceURL)
    {
      resourceURL2 = [v6 resourceURL];
      if (!resourceURL2)
      {
        goto LABEL_15;
      }
    }

    resourceURL3 = [(SLHighlight *)self resourceURL];
    resourceURL4 = [v6 resourceURL];
    v15 = [resourceURL3 isEqual:resourceURL4];

    if (resourceURL)
    {

      if (!v15)
      {
        goto LABEL_20;
      }

LABEL_15:
      attributions = [(SLHighlight *)self attributions];
      v17 = [attributions count];
      if (v17 || ([v6 attributions], resourceURL2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(resourceURL2, "count")))
      {
        attributions2 = [(SLHighlight *)self attributions];
        v19 = [attributions2 count];
        attributions3 = [v6 attributions];
        v21 = [attributions3 count];

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

      attributions4 = [(SLHighlight *)self attributions];
      attributions5 = [v6 attributions];
      v11 = [attributions4 isEqualToArray:attributions5];

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
  identifier = [(SLHighlight *)self identifier];
  v4 = [identifier hash];
  resourceURL = [(SLHighlight *)self resourceURL];
  v6 = [resourceURL hash] ^ v4;
  attributions = [(SLHighlight *)self attributions];
  v8 = [attributions hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(SLHighlight *)self identifier];
  resourceURL = [(SLHighlight *)self resourceURL];
  supplementaryData = [(SLHighlight *)self supplementaryData];
  v9 = [v3 stringWithFormat:@"[%@: identifier: %@  resourceURL: %@ supplementaryData: %@]", v5, identifier, resourceURL, supplementaryData];

  return v9;
}

- (void)setAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (attributionsCopy)
  {
    v6 = attributionsCopy;
    objc_storeStrong(&self->_attributions, attributions);
    attributionsCopy = v6;
  }
}

- (id)_uniqueIdentifierForResourceURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [absoluteString dataUsingEncoding:4];

  v5 = [objc_opt_class() Sha256ForData:v4 withSalt:0];
  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

+ (id)errorForHighlightDomain:(id)domain andCode:(int64_t)code andUnderlyingError:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v8 = 0;
  if (code <= 3)
  {
    switch(code)
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

  else if (code > 5)
  {
    if (code == 6)
    {
      v18 = *MEMORY[0x277CCA068];
      v19 = @"SLHighlight Init failed. CSSearchableItem contains an invalid or nil domain identifier.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v19;
      v11 = &v18;
    }

    else
    {
      if (code != 7)
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

  else if (code == 4)
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
  if (error)
  {
    v12 = [v8 mutableCopy];
    [v12 setObject:*error forKey:*MEMORY[0x277CCA7E8]];

    v8 = v12;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:code userInfo:v8];

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
  selfCopy = self;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "SLH an SLA failed dictionary serialization. Failing dictionary serialization for the SLH as well. Offending SLA: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end