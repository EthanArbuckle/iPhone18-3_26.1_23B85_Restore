@interface _SFPBActionItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBActionItem)initWithDictionary:(id)dictionary;
- (_SFPBActionItem)initWithFacade:(id)facade;
- (_SFPBActionItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStoreIdentifiers:(id)identifiers;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setContactIdentifier:(id)identifier;
- (void)setEmail:(id)email;
- (void)setInteractionContentType:(id)type;
- (void)setLabel:(id)label;
- (void)setLabelForLocalMedia:(id)media;
- (void)setLabelITunes:(id)tunes;
- (void)setLocalMediaIdentifier:(id)identifier;
- (void)setMapsData:(id)data;
- (void)setMessageIdentifier:(id)identifier;
- (void)setOfferType:(id)type;
- (void)setPersistentID:(id)d;
- (void)setPhoneNumber:(id)number;
- (void)setProvider:(id)provider;
- (void)setStoreIdentifiers:(id)identifiers;
- (void)setType:(id)type;
- (void)setUniversalLibraryID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation _SFPBActionItem

- (_SFPBActionItem)initWithFacade:(id)facade
{
  v82 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBActionItem *)self init];

  if (v5)
  {
    label = [facadeCopy label];

    if (label)
    {
      label2 = [facadeCopy label];
      [(_SFPBActionItem *)v5 setLabel:label2];
    }

    labelForLocalMedia = [facadeCopy labelForLocalMedia];

    if (labelForLocalMedia)
    {
      labelForLocalMedia2 = [facadeCopy labelForLocalMedia];
      [(_SFPBActionItem *)v5 setLabelForLocalMedia:labelForLocalMedia2];
    }

    if ([facadeCopy hasIsOverlay])
    {
      -[_SFPBActionItem setIsOverlay:](v5, "setIsOverlay:", [facadeCopy isOverlay]);
    }

    storeIdentifiers = [facadeCopy storeIdentifiers];
    if (storeIdentifiers)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    storeIdentifiers2 = [facadeCopy storeIdentifiers];
    v13 = [storeIdentifiers2 countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v78;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v78 != v15)
          {
            objc_enumerationMutation(storeIdentifiers2);
          }

          v17 = *(*(&v77 + 1) + 8 * i);
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [storeIdentifiers2 countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v14);
    }

    [(_SFPBActionItem *)v5 setStoreIdentifiers:v11];
    if ([facadeCopy hasRequiresLocalMedia])
    {
      -[_SFPBActionItem setRequiresLocalMedia:](v5, "setRequiresLocalMedia:", [facadeCopy requiresLocalMedia]);
    }

    localMediaIdentifier = [facadeCopy localMediaIdentifier];

    if (localMediaIdentifier)
    {
      localMediaIdentifier2 = [facadeCopy localMediaIdentifier];
      [(_SFPBActionItem *)v5 setLocalMediaIdentifier:localMediaIdentifier2];
    }

    punchout = [facadeCopy punchout];

    if (punchout)
    {
      v21 = [_SFPBPunchout alloc];
      punchout2 = [facadeCopy punchout];
      v23 = [(_SFPBPunchout *)v21 initWithFacade:punchout2];
      [(_SFPBActionItem *)v5 setPunchout:v23];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBActionItem *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    contactIdentifier = [facadeCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [facadeCopy contactIdentifier];
      [(_SFPBActionItem *)v5 setContactIdentifier:contactIdentifier2];
    }

    phoneNumber = [facadeCopy phoneNumber];

    if (phoneNumber)
    {
      phoneNumber2 = [facadeCopy phoneNumber];
      [(_SFPBActionItem *)v5 setPhoneNumber:phoneNumber2];
    }

    email = [facadeCopy email];

    if (email)
    {
      email2 = [facadeCopy email];
      [(_SFPBActionItem *)v5 setEmail:email2];
    }

    mapsData = [facadeCopy mapsData];

    if (mapsData)
    {
      mapsData2 = [facadeCopy mapsData];
      [(_SFPBActionItem *)v5 setMapsData:mapsData2];
    }

    if ([facadeCopy hasLatitude])
    {
      v34 = [_SFPBGraphicalFloat alloc];
      [facadeCopy latitude];
      v35 = [(_SFPBGraphicalFloat *)v34 initWithCGFloat:?];
      [(_SFPBActionItem *)v5 setLatitude:v35];
    }

    if ([facadeCopy hasLongitude])
    {
      v36 = [_SFPBGraphicalFloat alloc];
      [facadeCopy longitude];
      v37 = [(_SFPBGraphicalFloat *)v36 initWithCGFloat:?];
      [(_SFPBActionItem *)v5 setLongitude:v37];
    }

    provider = [facadeCopy provider];

    if (provider)
    {
      provider2 = [facadeCopy provider];
      [(_SFPBActionItem *)v5 setProvider:provider2];
    }

    offerType = [facadeCopy offerType];

    if (offerType)
    {
      offerType2 = [facadeCopy offerType];
      [(_SFPBActionItem *)v5 setOfferType:offerType2];
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBActionItem *)v5 setType:type2];
    }

    labelITunes = [facadeCopy labelITunes];

    if (labelITunes)
    {
      labelITunes2 = [facadeCopy labelITunes];
      [(_SFPBActionItem *)v5 setLabelITunes:labelITunes2];
    }

    if ([facadeCopy hasIsITunes])
    {
      -[_SFPBActionItem setIsITunes:](v5, "setIsITunes:", [facadeCopy isITunes]);
    }

    icon = [facadeCopy icon];

    if (icon)
    {
      v47 = [_SFPBImage alloc];
      icon2 = [facadeCopy icon];
      v49 = [(_SFPBImage *)v47 initWithFacade:icon2];
      [(_SFPBActionItem *)v5 setIcon:v49];
    }

    baseIcon = [facadeCopy baseIcon];

    if (baseIcon)
    {
      v51 = [_SFPBImage alloc];
      baseIcon2 = [facadeCopy baseIcon];
      v53 = [(_SFPBImage *)v51 initWithFacade:baseIcon2];
      [(_SFPBActionItem *)v5 setBaseIcon:v53];
    }

    location = [facadeCopy location];

    if (location)
    {
      v55 = [_SFPBLatLng alloc];
      location2 = [facadeCopy location];
      v57 = [(_SFPBLatLng *)v55 initWithFacade:location2];
      [(_SFPBActionItem *)v5 setLocation:v57];
    }

    messageIdentifier = [facadeCopy messageIdentifier];

    if (messageIdentifier)
    {
      messageIdentifier2 = [facadeCopy messageIdentifier];
      [(_SFPBActionItem *)v5 setMessageIdentifier:messageIdentifier2];
    }

    messageURL = [facadeCopy messageURL];

    if (messageURL)
    {
      v61 = [_SFPBURL alloc];
      messageURL2 = [facadeCopy messageURL];
      v63 = [(_SFPBURL *)v61 initWithNSURL:messageURL2];
      [(_SFPBActionItem *)v5 setMessageURL:v63];
    }

    persistentID = [facadeCopy persistentID];

    if (persistentID)
    {
      persistentID2 = [facadeCopy persistentID];
      [(_SFPBActionItem *)v5 setPersistentID:persistentID2];
    }

    if ([facadeCopy hasMediaEntityType])
    {
      -[_SFPBActionItem setMediaEntityType:](v5, "setMediaEntityType:", [facadeCopy mediaEntityType]);
    }

    universalLibraryID = [facadeCopy universalLibraryID];

    if (universalLibraryID)
    {
      universalLibraryID2 = [facadeCopy universalLibraryID];
      [(_SFPBActionItem *)v5 setUniversalLibraryID:universalLibraryID2];
    }

    interactionContentType = [facadeCopy interactionContentType];

    if (interactionContentType)
    {
      interactionContentType2 = [facadeCopy interactionContentType];
      [(_SFPBActionItem *)v5 setInteractionContentType:interactionContentType2];
    }

    customDirectionsPunchout = [facadeCopy customDirectionsPunchout];

    if (customDirectionsPunchout)
    {
      v71 = [_SFPBPunchout alloc];
      customDirectionsPunchout2 = [facadeCopy customDirectionsPunchout];
      v73 = [(_SFPBPunchout *)v71 initWithFacade:customDirectionsPunchout2];
      [(_SFPBActionItem *)v5 setCustomDirectionsPunchout:v73];
    }

    if ([facadeCopy hasShouldSearchDirectionsAlongCurrentRoute])
    {
      -[_SFPBActionItem setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [facadeCopy shouldSearchDirectionsAlongCurrentRoute]);
    }

    if ([facadeCopy hasDirectionsMode])
    {
      -[_SFPBActionItem setDirectionsMode:](v5, "setDirectionsMode:", [facadeCopy directionsMode]);
    }

    v74 = v5;
  }

  v75 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBActionItem)initWithDictionary:(id)dictionary
{
  v100 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v98.receiver = self;
  v98.super_class = _SFPBActionItem;
  v5 = [(_SFPBActionItem *)&v98 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBActionItem *)v5 setLabel:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"labelForLocalMedia"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBActionItem *)v5 setLabelForLocalMedia:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isOverlay"];
    objc_opt_class();
    v93 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setIsOverlay:](v5, "setIsOverlay:", [v10 BOOLValue]);
    }

    v76 = v8;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"storeIdentifiers"];
    objc_opt_class();
    v92 = v11;
    if (objc_opt_isKindOfClass())
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v94 objects:v99 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v95;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v95 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v94 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v17 copy];
              [(_SFPBActionItem *)v5 addStoreIdentifiers:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v94 objects:v99 count:16];
        }

        while (v14);
      }
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"requiresLocalMedia"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setRequiresLocalMedia:](v5, "setRequiresLocalMedia:", [v19 BOOLValue]);
    }

    v75 = v19;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"localMediaIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(_SFPBActionItem *)v5 setLocalMediaIdentifier:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"punchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBPunchout alloc] initWithDictionary:v22];
      [(_SFPBActionItem *)v5 setPunchout:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBActionItem *)v5 setApplicationBundleIdentifier:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    v91 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBActionItem *)v5 setContactIdentifier:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumber"];
    objc_opt_class();
    v90 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBActionItem *)v5 setPhoneNumber:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"email"];
    objc_opt_class();
    v89 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBActionItem *)v5 setEmail:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"mapsData"];
    objc_opt_class();
    v88 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v32 options:0];
      [(_SFPBActionItem *)v5 setMapsData:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
    objc_opt_class();
    v87 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v34];
      [(_SFPBActionItem *)v5 setLatitude:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
    objc_opt_class();
    v86 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v36];
      [(_SFPBActionItem *)v5 setLongitude:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    objc_opt_class();
    v85 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 copy];
      [(_SFPBActionItem *)v5 setProvider:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"offerType"];
    objc_opt_class();
    v84 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(_SFPBActionItem *)v5 setOfferType:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v83 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [v42 copy];
      [(_SFPBActionItem *)v5 setType:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"labelITunes"];
    objc_opt_class();
    v82 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [v44 copy];
      [(_SFPBActionItem *)v5 setLabelITunes:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"isITunes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setIsITunes:](v5, "setIsITunes:", [v46 BOOLValue]);
    }

    v72 = v46;
    v47 = [dictionaryCopy objectForKeyedSubscript:@"icon"];
    objc_opt_class();
    v81 = v47;
    if (objc_opt_isKindOfClass())
    {
      v48 = [[_SFPBImage alloc] initWithDictionary:v47];
      [(_SFPBActionItem *)v5 setIcon:v48];
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"baseIcon"];
    objc_opt_class();
    v80 = v49;
    if (objc_opt_isKindOfClass())
    {
      v50 = [[_SFPBImage alloc] initWithDictionary:v49];
      [(_SFPBActionItem *)v5 setBaseIcon:v50];
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    v79 = v51;
    if (objc_opt_isKindOfClass())
    {
      v52 = [[_SFPBLatLng alloc] initWithDictionary:v51];
      [(_SFPBActionItem *)v5 setLocation:v52];
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"messageIdentifier"];
    objc_opt_class();
    v78 = v53;
    if (objc_opt_isKindOfClass())
    {
      v54 = [v53 copy];
      [(_SFPBActionItem *)v5 setMessageIdentifier:v54];
    }

    v74 = v20;
    v55 = [dictionaryCopy objectForKeyedSubscript:@"messageURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [[_SFPBURL alloc] initWithDictionary:v55];
      [(_SFPBActionItem *)v5 setMessageURL:v56];
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:{@"persistentID", v55}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [v57 copy];
      [(_SFPBActionItem *)v5 setPersistentID:v58];
    }

    v73 = v22;
    v59 = [dictionaryCopy objectForKeyedSubscript:@"mediaEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setMediaEntityType:](v5, "setMediaEntityType:", [v59 intValue]);
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"universalLibraryID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [v60 copy];
      [(_SFPBActionItem *)v5 setUniversalLibraryID:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"interactionContentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [v62 copy];
      [(_SFPBActionItem *)v5 setInteractionContentType:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"customDirectionsPunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [[_SFPBPunchout alloc] initWithDictionary:v64];
      [(_SFPBActionItem *)v5 setCustomDirectionsPunchout:v65];
    }

    v77 = v6;
    v66 = [dictionaryCopy objectForKeyedSubscript:@"shouldSearchDirectionsAlongCurrentRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [v66 BOOLValue]);
    }

    v67 = [dictionaryCopy objectForKeyedSubscript:@"directionsMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setDirectionsMode:](v5, "setDirectionsMode:", [v67 intValue]);
    }

    v68 = v5;
  }

  v69 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBActionItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBActionItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBActionItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBActionItem *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_baseIcon)
  {
    baseIcon = [(_SFPBActionItem *)self baseIcon];
    dictionaryRepresentation = [baseIcon dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"baseIcon"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"baseIcon"];
    }
  }

  if (self->_contactIdentifier)
  {
    contactIdentifier = [(_SFPBActionItem *)self contactIdentifier];
    v10 = [contactIdentifier copy];
    [dictionary setObject:v10 forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_customDirectionsPunchout)
  {
    customDirectionsPunchout = [(_SFPBActionItem *)self customDirectionsPunchout];
    dictionaryRepresentation2 = [customDirectionsPunchout dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"customDirectionsPunchout"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"customDirectionsPunchout"];
    }
  }

  if (self->_directionsMode)
  {
    directionsMode = [(_SFPBActionItem *)self directionsMode];
    if (directionsMode >= 6)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", directionsMode];
    }

    else
    {
      v15 = off_1E7ACE580[directionsMode];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"directionsMode"];
  }

  if (self->_email)
  {
    email = [(_SFPBActionItem *)self email];
    v17 = [email copy];
    [dictionary setObject:v17 forKeyedSubscript:@"email"];
  }

  if (self->_icon)
  {
    icon = [(_SFPBActionItem *)self icon];
    dictionaryRepresentation3 = [icon dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"icon"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"icon"];
    }
  }

  if (self->_interactionContentType)
  {
    interactionContentType = [(_SFPBActionItem *)self interactionContentType];
    v22 = [interactionContentType copy];
    [dictionary setObject:v22 forKeyedSubscript:@"interactionContentType"];
  }

  if (self->_isITunes)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBActionItem isITunes](self, "isITunes")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isITunes"];
  }

  if (self->_isOverlay)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBActionItem isOverlay](self, "isOverlay")}];
    [dictionary setObject:v24 forKeyedSubscript:@"isOverlay"];
  }

  if (self->_label)
  {
    label = [(_SFPBActionItem *)self label];
    v26 = [label copy];
    [dictionary setObject:v26 forKeyedSubscript:@"label"];
  }

  if (self->_labelForLocalMedia)
  {
    labelForLocalMedia = [(_SFPBActionItem *)self labelForLocalMedia];
    v28 = [labelForLocalMedia copy];
    [dictionary setObject:v28 forKeyedSubscript:@"labelForLocalMedia"];
  }

  if (self->_labelITunes)
  {
    labelITunes = [(_SFPBActionItem *)self labelITunes];
    v30 = [labelITunes copy];
    [dictionary setObject:v30 forKeyedSubscript:@"labelITunes"];
  }

  if (self->_latitude)
  {
    latitude = [(_SFPBActionItem *)self latitude];
    dictionaryRepresentation4 = [latitude dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"latitude"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"latitude"];
    }
  }

  if (self->_localMediaIdentifier)
  {
    localMediaIdentifier = [(_SFPBActionItem *)self localMediaIdentifier];
    v35 = [localMediaIdentifier copy];
    [dictionary setObject:v35 forKeyedSubscript:@"localMediaIdentifier"];
  }

  if (self->_location)
  {
    location = [(_SFPBActionItem *)self location];
    dictionaryRepresentation5 = [location dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"location"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"location"];
    }
  }

  if (self->_longitude)
  {
    longitude = [(_SFPBActionItem *)self longitude];
    dictionaryRepresentation6 = [longitude dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"longitude"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"longitude"];
    }
  }

  if (self->_mapsData)
  {
    mapsData = [(_SFPBActionItem *)self mapsData];
    v43 = [mapsData base64EncodedStringWithOptions:0];
    if (v43)
    {
      [dictionary setObject:v43 forKeyedSubscript:@"mapsData"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"mapsData"];
    }
  }

  if (self->_mediaEntityType)
  {
    mediaEntityType = [(_SFPBActionItem *)self mediaEntityType];
    if (mediaEntityType >= 7)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mediaEntityType];
    }

    else
    {
      v46 = off_1E7ACE4C8[mediaEntityType];
    }

    [dictionary setObject:v46 forKeyedSubscript:@"mediaEntityType"];
  }

  if (self->_messageIdentifier)
  {
    messageIdentifier = [(_SFPBActionItem *)self messageIdentifier];
    v48 = [messageIdentifier copy];
    [dictionary setObject:v48 forKeyedSubscript:@"messageIdentifier"];
  }

  if (self->_messageURL)
  {
    messageURL = [(_SFPBActionItem *)self messageURL];
    dictionaryRepresentation7 = [messageURL dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"messageURL"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"messageURL"];
    }
  }

  if (self->_offerType)
  {
    offerType = [(_SFPBActionItem *)self offerType];
    v53 = [offerType copy];
    [dictionary setObject:v53 forKeyedSubscript:@"offerType"];
  }

  if (self->_persistentID)
  {
    persistentID = [(_SFPBActionItem *)self persistentID];
    v55 = [persistentID copy];
    [dictionary setObject:v55 forKeyedSubscript:@"persistentID"];
  }

  if (self->_phoneNumber)
  {
    phoneNumber = [(_SFPBActionItem *)self phoneNumber];
    v57 = [phoneNumber copy];
    [dictionary setObject:v57 forKeyedSubscript:@"phoneNumber"];
  }

  if (self->_provider)
  {
    provider = [(_SFPBActionItem *)self provider];
    v59 = [provider copy];
    [dictionary setObject:v59 forKeyedSubscript:@"provider"];
  }

  if (self->_punchout)
  {
    punchout = [(_SFPBActionItem *)self punchout];
    dictionaryRepresentation8 = [punchout dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"punchout"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"punchout"];
    }
  }

  if (self->_requiresLocalMedia)
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBActionItem requiresLocalMedia](self, "requiresLocalMedia")}];
    [dictionary setObject:v63 forKeyedSubscript:@"requiresLocalMedia"];
  }

  if (self->_shouldSearchDirectionsAlongCurrentRoute)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBActionItem shouldSearchDirectionsAlongCurrentRoute](self, "shouldSearchDirectionsAlongCurrentRoute")}];
    [dictionary setObject:v64 forKeyedSubscript:@"shouldSearchDirectionsAlongCurrentRoute"];
  }

  if (self->_storeIdentifiers)
  {
    storeIdentifiers = [(_SFPBActionItem *)self storeIdentifiers];
    v66 = [storeIdentifiers copy];
    [dictionary setObject:v66 forKeyedSubscript:@"storeIdentifiers"];
  }

  if (self->_type)
  {
    type = [(_SFPBActionItem *)self type];
    v68 = [type copy];
    [dictionary setObject:v68 forKeyedSubscript:@"type"];
  }

  if (self->_universalLibraryID)
  {
    universalLibraryID = [(_SFPBActionItem *)self universalLibraryID];
    v70 = [universalLibraryID copy];
    [dictionary setObject:v70 forKeyedSubscript:@"universalLibraryID"];
  }

  v71 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v39 = [(NSString *)self->_label hash];
  v3 = [(NSString *)self->_labelForLocalMedia hash];
  if (self->_isOverlay)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v37 = v4;
  v38 = v3;
  v5 = [(NSArray *)self->_storeIdentifiers hash];
  if (self->_requiresLocalMedia)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v35 = v6;
  v36 = v5;
  v34 = [(NSString *)self->_localMediaIdentifier hash];
  v33 = [(_SFPBPunchout *)self->_punchout hash];
  v32 = [(NSString *)self->_applicationBundleIdentifier hash];
  v31 = [(NSString *)self->_contactIdentifier hash];
  v30 = [(NSString *)self->_phoneNumber hash];
  v29 = [(NSString *)self->_email hash];
  v28 = [(NSData *)self->_mapsData hash];
  v27 = [(_SFPBGraphicalFloat *)self->_latitude hash];
  v26 = [(_SFPBGraphicalFloat *)self->_longitude hash];
  v25 = [(NSString *)self->_provider hash];
  v24 = [(NSString *)self->_offerType hash];
  v23 = [(NSString *)self->_type hash];
  v7 = [(NSString *)self->_labelITunes hash];
  if (self->_isITunes)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_SFPBImage *)self->_icon hash:v8];
  v10 = [(_SFPBImage *)self->_baseIcon hash];
  v11 = [(_SFPBLatLng *)self->_location hash];
  v12 = [(NSString *)self->_messageIdentifier hash];
  v13 = [(_SFPBURL *)self->_messageURL hash];
  v14 = [(NSString *)self->_persistentID hash];
  v15 = 2654435761 * self->_mediaEntityType;
  v16 = [(NSString *)self->_universalLibraryID hash];
  v17 = [(NSString *)self->_interactionContentType hash];
  v18 = [(_SFPBPunchout *)self->_customDirectionsPunchout hash];
  v19 = 2654435761;
  if (!self->_shouldSearchDirectionsAlongCurrentRoute)
  {
    v19 = 0;
  }

  return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ (2654435761 * self->_directionsMode);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_131;
  }

  label = [(_SFPBActionItem *)self label];
  label2 = [equalCopy label];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  label3 = [(_SFPBActionItem *)self label];
  if (label3)
  {
    v8 = label3;
    label4 = [(_SFPBActionItem *)self label];
    label5 = [equalCopy label];
    v11 = [label4 isEqual:label5];

    if (!v11)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self labelForLocalMedia];
  label2 = [equalCopy labelForLocalMedia];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  labelForLocalMedia = [(_SFPBActionItem *)self labelForLocalMedia];
  if (labelForLocalMedia)
  {
    v13 = labelForLocalMedia;
    labelForLocalMedia2 = [(_SFPBActionItem *)self labelForLocalMedia];
    labelForLocalMedia3 = [equalCopy labelForLocalMedia];
    v16 = [labelForLocalMedia2 isEqual:labelForLocalMedia3];

    if (!v16)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  isOverlay = self->_isOverlay;
  if (isOverlay != [equalCopy isOverlay])
  {
    goto LABEL_131;
  }

  label = [(_SFPBActionItem *)self storeIdentifiers];
  label2 = [equalCopy storeIdentifiers];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  storeIdentifiers = [(_SFPBActionItem *)self storeIdentifiers];
  if (storeIdentifiers)
  {
    v19 = storeIdentifiers;
    storeIdentifiers2 = [(_SFPBActionItem *)self storeIdentifiers];
    storeIdentifiers3 = [equalCopy storeIdentifiers];
    v22 = [storeIdentifiers2 isEqual:storeIdentifiers3];

    if (!v22)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  requiresLocalMedia = self->_requiresLocalMedia;
  if (requiresLocalMedia != [equalCopy requiresLocalMedia])
  {
    goto LABEL_131;
  }

  label = [(_SFPBActionItem *)self localMediaIdentifier];
  label2 = [equalCopy localMediaIdentifier];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  localMediaIdentifier = [(_SFPBActionItem *)self localMediaIdentifier];
  if (localMediaIdentifier)
  {
    v25 = localMediaIdentifier;
    localMediaIdentifier2 = [(_SFPBActionItem *)self localMediaIdentifier];
    localMediaIdentifier3 = [equalCopy localMediaIdentifier];
    v28 = [localMediaIdentifier2 isEqual:localMediaIdentifier3];

    if (!v28)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self punchout];
  label2 = [equalCopy punchout];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  punchout = [(_SFPBActionItem *)self punchout];
  if (punchout)
  {
    v30 = punchout;
    punchout2 = [(_SFPBActionItem *)self punchout];
    punchout3 = [equalCopy punchout];
    v33 = [punchout2 isEqual:punchout3];

    if (!v33)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self applicationBundleIdentifier];
  label2 = [equalCopy applicationBundleIdentifier];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  applicationBundleIdentifier = [(_SFPBActionItem *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v35 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBActionItem *)self applicationBundleIdentifier];
    applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
    v38 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

    if (!v38)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self contactIdentifier];
  label2 = [equalCopy contactIdentifier];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  contactIdentifier = [(_SFPBActionItem *)self contactIdentifier];
  if (contactIdentifier)
  {
    v40 = contactIdentifier;
    contactIdentifier2 = [(_SFPBActionItem *)self contactIdentifier];
    contactIdentifier3 = [equalCopy contactIdentifier];
    v43 = [contactIdentifier2 isEqual:contactIdentifier3];

    if (!v43)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self phoneNumber];
  label2 = [equalCopy phoneNumber];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  phoneNumber = [(_SFPBActionItem *)self phoneNumber];
  if (phoneNumber)
  {
    v45 = phoneNumber;
    phoneNumber2 = [(_SFPBActionItem *)self phoneNumber];
    phoneNumber3 = [equalCopy phoneNumber];
    v48 = [phoneNumber2 isEqual:phoneNumber3];

    if (!v48)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self email];
  label2 = [equalCopy email];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  email = [(_SFPBActionItem *)self email];
  if (email)
  {
    v50 = email;
    email2 = [(_SFPBActionItem *)self email];
    email3 = [equalCopy email];
    v53 = [email2 isEqual:email3];

    if (!v53)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self mapsData];
  label2 = [equalCopy mapsData];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  mapsData = [(_SFPBActionItem *)self mapsData];
  if (mapsData)
  {
    v55 = mapsData;
    mapsData2 = [(_SFPBActionItem *)self mapsData];
    mapsData3 = [equalCopy mapsData];
    v58 = [mapsData2 isEqual:mapsData3];

    if (!v58)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self latitude];
  label2 = [equalCopy latitude];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  latitude = [(_SFPBActionItem *)self latitude];
  if (latitude)
  {
    v60 = latitude;
    latitude2 = [(_SFPBActionItem *)self latitude];
    latitude3 = [equalCopy latitude];
    v63 = [latitude2 isEqual:latitude3];

    if (!v63)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self longitude];
  label2 = [equalCopy longitude];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  longitude = [(_SFPBActionItem *)self longitude];
  if (longitude)
  {
    v65 = longitude;
    longitude2 = [(_SFPBActionItem *)self longitude];
    longitude3 = [equalCopy longitude];
    v68 = [longitude2 isEqual:longitude3];

    if (!v68)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self provider];
  label2 = [equalCopy provider];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  provider = [(_SFPBActionItem *)self provider];
  if (provider)
  {
    v70 = provider;
    provider2 = [(_SFPBActionItem *)self provider];
    provider3 = [equalCopy provider];
    v73 = [provider2 isEqual:provider3];

    if (!v73)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self offerType];
  label2 = [equalCopy offerType];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  offerType = [(_SFPBActionItem *)self offerType];
  if (offerType)
  {
    v75 = offerType;
    offerType2 = [(_SFPBActionItem *)self offerType];
    offerType3 = [equalCopy offerType];
    v78 = [offerType2 isEqual:offerType3];

    if (!v78)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self type];
  label2 = [equalCopy type];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  type = [(_SFPBActionItem *)self type];
  if (type)
  {
    v80 = type;
    type2 = [(_SFPBActionItem *)self type];
    type3 = [equalCopy type];
    v83 = [type2 isEqual:type3];

    if (!v83)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self labelITunes];
  label2 = [equalCopy labelITunes];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  labelITunes = [(_SFPBActionItem *)self labelITunes];
  if (labelITunes)
  {
    v85 = labelITunes;
    labelITunes2 = [(_SFPBActionItem *)self labelITunes];
    labelITunes3 = [equalCopy labelITunes];
    v88 = [labelITunes2 isEqual:labelITunes3];

    if (!v88)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  isITunes = self->_isITunes;
  if (isITunes != [equalCopy isITunes])
  {
    goto LABEL_131;
  }

  label = [(_SFPBActionItem *)self icon];
  label2 = [equalCopy icon];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  icon = [(_SFPBActionItem *)self icon];
  if (icon)
  {
    v91 = icon;
    icon2 = [(_SFPBActionItem *)self icon];
    icon3 = [equalCopy icon];
    v94 = [icon2 isEqual:icon3];

    if (!v94)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self baseIcon];
  label2 = [equalCopy baseIcon];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  baseIcon = [(_SFPBActionItem *)self baseIcon];
  if (baseIcon)
  {
    v96 = baseIcon;
    baseIcon2 = [(_SFPBActionItem *)self baseIcon];
    baseIcon3 = [equalCopy baseIcon];
    v99 = [baseIcon2 isEqual:baseIcon3];

    if (!v99)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self location];
  label2 = [equalCopy location];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  location = [(_SFPBActionItem *)self location];
  if (location)
  {
    v101 = location;
    location2 = [(_SFPBActionItem *)self location];
    location3 = [equalCopy location];
    v104 = [location2 isEqual:location3];

    if (!v104)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self messageIdentifier];
  label2 = [equalCopy messageIdentifier];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  messageIdentifier = [(_SFPBActionItem *)self messageIdentifier];
  if (messageIdentifier)
  {
    v106 = messageIdentifier;
    messageIdentifier2 = [(_SFPBActionItem *)self messageIdentifier];
    messageIdentifier3 = [equalCopy messageIdentifier];
    v109 = [messageIdentifier2 isEqual:messageIdentifier3];

    if (!v109)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self messageURL];
  label2 = [equalCopy messageURL];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  messageURL = [(_SFPBActionItem *)self messageURL];
  if (messageURL)
  {
    v111 = messageURL;
    messageURL2 = [(_SFPBActionItem *)self messageURL];
    messageURL3 = [equalCopy messageURL];
    v114 = [messageURL2 isEqual:messageURL3];

    if (!v114)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self persistentID];
  label2 = [equalCopy persistentID];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  persistentID = [(_SFPBActionItem *)self persistentID];
  if (persistentID)
  {
    v116 = persistentID;
    persistentID2 = [(_SFPBActionItem *)self persistentID];
    persistentID3 = [equalCopy persistentID];
    v119 = [persistentID2 isEqual:persistentID3];

    if (!v119)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  mediaEntityType = self->_mediaEntityType;
  if (mediaEntityType != [equalCopy mediaEntityType])
  {
    goto LABEL_131;
  }

  label = [(_SFPBActionItem *)self universalLibraryID];
  label2 = [equalCopy universalLibraryID];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  universalLibraryID = [(_SFPBActionItem *)self universalLibraryID];
  if (universalLibraryID)
  {
    v122 = universalLibraryID;
    universalLibraryID2 = [(_SFPBActionItem *)self universalLibraryID];
    universalLibraryID3 = [equalCopy universalLibraryID];
    v125 = [universalLibraryID2 isEqual:universalLibraryID3];

    if (!v125)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self interactionContentType];
  label2 = [equalCopy interactionContentType];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_130;
  }

  interactionContentType = [(_SFPBActionItem *)self interactionContentType];
  if (interactionContentType)
  {
    v127 = interactionContentType;
    interactionContentType2 = [(_SFPBActionItem *)self interactionContentType];
    interactionContentType3 = [equalCopy interactionContentType];
    v130 = [interactionContentType2 isEqual:interactionContentType3];

    if (!v130)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  label = [(_SFPBActionItem *)self customDirectionsPunchout];
  label2 = [equalCopy customDirectionsPunchout];
  if ((label != 0) == (label2 == 0))
  {
LABEL_130:

    goto LABEL_131;
  }

  customDirectionsPunchout = [(_SFPBActionItem *)self customDirectionsPunchout];
  if (customDirectionsPunchout)
  {
    v132 = customDirectionsPunchout;
    customDirectionsPunchout2 = [(_SFPBActionItem *)self customDirectionsPunchout];
    customDirectionsPunchout3 = [equalCopy customDirectionsPunchout];
    v135 = [customDirectionsPunchout2 isEqual:customDirectionsPunchout3];

    if (!v135)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  shouldSearchDirectionsAlongCurrentRoute = self->_shouldSearchDirectionsAlongCurrentRoute;
  if (shouldSearchDirectionsAlongCurrentRoute == [equalCopy shouldSearchDirectionsAlongCurrentRoute])
  {
    directionsMode = self->_directionsMode;
    v136 = directionsMode == [equalCopy directionsMode];
    goto LABEL_132;
  }

LABEL_131:
  v136 = 0;
LABEL_132:

  return v136;
}

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x1E69E9840];
  toCopy = to;
  label = [(_SFPBActionItem *)self label];
  if (label)
  {
    PBDataWriterWriteStringField();
  }

  labelForLocalMedia = [(_SFPBActionItem *)self labelForLocalMedia];
  if (labelForLocalMedia)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBActionItem *)self isOverlay])
  {
    PBDataWriterWriteBOOLField();
  }

  storeIdentifiers = [(_SFPBActionItem *)self storeIdentifiers];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [storeIdentifiers countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      v11 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(storeIdentifiers);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [storeIdentifiers countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v9);
  }

  if ([(_SFPBActionItem *)self requiresLocalMedia])
  {
    PBDataWriterWriteBOOLField();
  }

  localMediaIdentifier = [(_SFPBActionItem *)self localMediaIdentifier];
  if (localMediaIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  punchout = [(_SFPBActionItem *)self punchout];
  if (punchout)
  {
    PBDataWriterWriteSubmessage();
  }

  applicationBundleIdentifier = [(_SFPBActionItem *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  contactIdentifier = [(_SFPBActionItem *)self contactIdentifier];
  if (contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  phoneNumber = [(_SFPBActionItem *)self phoneNumber];
  if (phoneNumber)
  {
    PBDataWriterWriteStringField();
  }

  email = [(_SFPBActionItem *)self email];
  if (email)
  {
    PBDataWriterWriteStringField();
  }

  mapsData = [(_SFPBActionItem *)self mapsData];
  if (mapsData)
  {
    PBDataWriterWriteDataField();
  }

  latitude = [(_SFPBActionItem *)self latitude];
  if (latitude)
  {
    PBDataWriterWriteSubmessage();
  }

  longitude = [(_SFPBActionItem *)self longitude];
  if (longitude)
  {
    PBDataWriterWriteSubmessage();
  }

  provider = [(_SFPBActionItem *)self provider];
  if (provider)
  {
    PBDataWriterWriteStringField();
  }

  offerType = [(_SFPBActionItem *)self offerType];
  if (offerType)
  {
    PBDataWriterWriteStringField();
  }

  type = [(_SFPBActionItem *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  labelITunes = [(_SFPBActionItem *)self labelITunes];
  if (labelITunes)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBActionItem *)self isITunes])
  {
    PBDataWriterWriteBOOLField();
  }

  icon = [(_SFPBActionItem *)self icon];
  if (icon)
  {
    PBDataWriterWriteSubmessage();
  }

  baseIcon = [(_SFPBActionItem *)self baseIcon];
  if (baseIcon)
  {
    PBDataWriterWriteSubmessage();
  }

  location = [(_SFPBActionItem *)self location];
  if (location)
  {
    PBDataWriterWriteSubmessage();
  }

  messageIdentifier = [(_SFPBActionItem *)self messageIdentifier];
  if (messageIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  messageURL = [(_SFPBActionItem *)self messageURL];
  if (messageURL)
  {
    PBDataWriterWriteSubmessage();
  }

  persistentID = [(_SFPBActionItem *)self persistentID];
  if (persistentID)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBActionItem *)self mediaEntityType])
  {
    PBDataWriterWriteInt32Field();
  }

  universalLibraryID = [(_SFPBActionItem *)self universalLibraryID];
  if (universalLibraryID)
  {
    PBDataWriterWriteStringField();
  }

  interactionContentType = [(_SFPBActionItem *)self interactionContentType];
  if (interactionContentType)
  {
    PBDataWriterWriteStringField();
  }

  customDirectionsPunchout = [(_SFPBActionItem *)self customDirectionsPunchout];
  if (customDirectionsPunchout)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBActionItem *)self shouldSearchDirectionsAlongCurrentRoute])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBActionItem *)self directionsMode])
  {
    PBDataWriterWriteInt32Field();
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)setInteractionContentType:(id)type
{
  v4 = [type copy];
  interactionContentType = self->_interactionContentType;
  self->_interactionContentType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUniversalLibraryID:(id)d
{
  v4 = [d copy];
  universalLibraryID = self->_universalLibraryID;
  self->_universalLibraryID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersistentID:(id)d
{
  v4 = [d copy];
  persistentID = self->_persistentID;
  self->_persistentID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMessageIdentifier:(id)identifier
{
  v4 = [identifier copy];
  messageIdentifier = self->_messageIdentifier;
  self->_messageIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabelITunes:(id)tunes
{
  v4 = [tunes copy];
  labelITunes = self->_labelITunes;
  self->_labelITunes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setOfferType:(id)type
{
  v4 = [type copy];
  offerType = self->_offerType;
  self->_offerType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setProvider:(id)provider
{
  v4 = [provider copy];
  provider = self->_provider;
  self->_provider = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMapsData:(id)data
{
  v4 = [data copy];
  mapsData = self->_mapsData;
  self->_mapsData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEmail:(id)email
{
  v4 = [email copy];
  email = self->_email;
  self->_email = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPhoneNumber:(id)number
{
  v4 = [number copy];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContactIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocalMediaIdentifier:(id)identifier
{
  v4 = [identifier copy];
  localMediaIdentifier = self->_localMediaIdentifier;
  self->_localMediaIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addStoreIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  storeIdentifiers = self->_storeIdentifiers;
  v8 = identifiersCopy;
  if (!storeIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_storeIdentifiers;
    self->_storeIdentifiers = array;

    identifiersCopy = v8;
    storeIdentifiers = self->_storeIdentifiers;
  }

  [(NSArray *)storeIdentifiers addObject:identifiersCopy];
}

- (void)setStoreIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  storeIdentifiers = self->_storeIdentifiers;
  self->_storeIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabelForLocalMedia:(id)media
{
  v4 = [media copy];
  labelForLocalMedia = self->_labelForLocalMedia;
  self->_labelForLocalMedia = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabel:(id)label
{
  v4 = [label copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8]();
}

@end