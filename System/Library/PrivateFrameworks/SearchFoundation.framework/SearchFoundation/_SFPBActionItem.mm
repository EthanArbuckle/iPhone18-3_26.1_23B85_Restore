@interface _SFPBActionItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBActionItem)initWithDictionary:(id)a3;
- (_SFPBActionItem)initWithFacade:(id)a3;
- (_SFPBActionItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStoreIdentifiers:(id)a3;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setContactIdentifier:(id)a3;
- (void)setEmail:(id)a3;
- (void)setInteractionContentType:(id)a3;
- (void)setLabel:(id)a3;
- (void)setLabelForLocalMedia:(id)a3;
- (void)setLabelITunes:(id)a3;
- (void)setLocalMediaIdentifier:(id)a3;
- (void)setMapsData:(id)a3;
- (void)setMessageIdentifier:(id)a3;
- (void)setOfferType:(id)a3;
- (void)setPersistentID:(id)a3;
- (void)setPhoneNumber:(id)a3;
- (void)setProvider:(id)a3;
- (void)setStoreIdentifiers:(id)a3;
- (void)setType:(id)a3;
- (void)setUniversalLibraryID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBActionItem

- (_SFPBActionItem)initWithFacade:(id)a3
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBActionItem *)self init];

  if (v5)
  {
    v6 = [v4 label];

    if (v6)
    {
      v7 = [v4 label];
      [(_SFPBActionItem *)v5 setLabel:v7];
    }

    v8 = [v4 labelForLocalMedia];

    if (v8)
    {
      v9 = [v4 labelForLocalMedia];
      [(_SFPBActionItem *)v5 setLabelForLocalMedia:v9];
    }

    if ([v4 hasIsOverlay])
    {
      -[_SFPBActionItem setIsOverlay:](v5, "setIsOverlay:", [v4 isOverlay]);
    }

    v10 = [v4 storeIdentifiers];
    if (v10)
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
    v12 = [v4 storeIdentifiers];
    v13 = [v12 countByEnumeratingWithState:&v77 objects:v81 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v77 + 1) + 8 * i);
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v14);
    }

    [(_SFPBActionItem *)v5 setStoreIdentifiers:v11];
    if ([v4 hasRequiresLocalMedia])
    {
      -[_SFPBActionItem setRequiresLocalMedia:](v5, "setRequiresLocalMedia:", [v4 requiresLocalMedia]);
    }

    v18 = [v4 localMediaIdentifier];

    if (v18)
    {
      v19 = [v4 localMediaIdentifier];
      [(_SFPBActionItem *)v5 setLocalMediaIdentifier:v19];
    }

    v20 = [v4 punchout];

    if (v20)
    {
      v21 = [_SFPBPunchout alloc];
      v22 = [v4 punchout];
      v23 = [(_SFPBPunchout *)v21 initWithFacade:v22];
      [(_SFPBActionItem *)v5 setPunchout:v23];
    }

    v24 = [v4 applicationBundleIdentifier];

    if (v24)
    {
      v25 = [v4 applicationBundleIdentifier];
      [(_SFPBActionItem *)v5 setApplicationBundleIdentifier:v25];
    }

    v26 = [v4 contactIdentifier];

    if (v26)
    {
      v27 = [v4 contactIdentifier];
      [(_SFPBActionItem *)v5 setContactIdentifier:v27];
    }

    v28 = [v4 phoneNumber];

    if (v28)
    {
      v29 = [v4 phoneNumber];
      [(_SFPBActionItem *)v5 setPhoneNumber:v29];
    }

    v30 = [v4 email];

    if (v30)
    {
      v31 = [v4 email];
      [(_SFPBActionItem *)v5 setEmail:v31];
    }

    v32 = [v4 mapsData];

    if (v32)
    {
      v33 = [v4 mapsData];
      [(_SFPBActionItem *)v5 setMapsData:v33];
    }

    if ([v4 hasLatitude])
    {
      v34 = [_SFPBGraphicalFloat alloc];
      [v4 latitude];
      v35 = [(_SFPBGraphicalFloat *)v34 initWithCGFloat:?];
      [(_SFPBActionItem *)v5 setLatitude:v35];
    }

    if ([v4 hasLongitude])
    {
      v36 = [_SFPBGraphicalFloat alloc];
      [v4 longitude];
      v37 = [(_SFPBGraphicalFloat *)v36 initWithCGFloat:?];
      [(_SFPBActionItem *)v5 setLongitude:v37];
    }

    v38 = [v4 provider];

    if (v38)
    {
      v39 = [v4 provider];
      [(_SFPBActionItem *)v5 setProvider:v39];
    }

    v40 = [v4 offerType];

    if (v40)
    {
      v41 = [v4 offerType];
      [(_SFPBActionItem *)v5 setOfferType:v41];
    }

    v42 = [v4 type];

    if (v42)
    {
      v43 = [v4 type];
      [(_SFPBActionItem *)v5 setType:v43];
    }

    v44 = [v4 labelITunes];

    if (v44)
    {
      v45 = [v4 labelITunes];
      [(_SFPBActionItem *)v5 setLabelITunes:v45];
    }

    if ([v4 hasIsITunes])
    {
      -[_SFPBActionItem setIsITunes:](v5, "setIsITunes:", [v4 isITunes]);
    }

    v46 = [v4 icon];

    if (v46)
    {
      v47 = [_SFPBImage alloc];
      v48 = [v4 icon];
      v49 = [(_SFPBImage *)v47 initWithFacade:v48];
      [(_SFPBActionItem *)v5 setIcon:v49];
    }

    v50 = [v4 baseIcon];

    if (v50)
    {
      v51 = [_SFPBImage alloc];
      v52 = [v4 baseIcon];
      v53 = [(_SFPBImage *)v51 initWithFacade:v52];
      [(_SFPBActionItem *)v5 setBaseIcon:v53];
    }

    v54 = [v4 location];

    if (v54)
    {
      v55 = [_SFPBLatLng alloc];
      v56 = [v4 location];
      v57 = [(_SFPBLatLng *)v55 initWithFacade:v56];
      [(_SFPBActionItem *)v5 setLocation:v57];
    }

    v58 = [v4 messageIdentifier];

    if (v58)
    {
      v59 = [v4 messageIdentifier];
      [(_SFPBActionItem *)v5 setMessageIdentifier:v59];
    }

    v60 = [v4 messageURL];

    if (v60)
    {
      v61 = [_SFPBURL alloc];
      v62 = [v4 messageURL];
      v63 = [(_SFPBURL *)v61 initWithNSURL:v62];
      [(_SFPBActionItem *)v5 setMessageURL:v63];
    }

    v64 = [v4 persistentID];

    if (v64)
    {
      v65 = [v4 persistentID];
      [(_SFPBActionItem *)v5 setPersistentID:v65];
    }

    if ([v4 hasMediaEntityType])
    {
      -[_SFPBActionItem setMediaEntityType:](v5, "setMediaEntityType:", [v4 mediaEntityType]);
    }

    v66 = [v4 universalLibraryID];

    if (v66)
    {
      v67 = [v4 universalLibraryID];
      [(_SFPBActionItem *)v5 setUniversalLibraryID:v67];
    }

    v68 = [v4 interactionContentType];

    if (v68)
    {
      v69 = [v4 interactionContentType];
      [(_SFPBActionItem *)v5 setInteractionContentType:v69];
    }

    v70 = [v4 customDirectionsPunchout];

    if (v70)
    {
      v71 = [_SFPBPunchout alloc];
      v72 = [v4 customDirectionsPunchout];
      v73 = [(_SFPBPunchout *)v71 initWithFacade:v72];
      [(_SFPBActionItem *)v5 setCustomDirectionsPunchout:v73];
    }

    if ([v4 hasShouldSearchDirectionsAlongCurrentRoute])
    {
      -[_SFPBActionItem setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [v4 shouldSearchDirectionsAlongCurrentRoute]);
    }

    if ([v4 hasDirectionsMode])
    {
      -[_SFPBActionItem setDirectionsMode:](v5, "setDirectionsMode:", [v4 directionsMode]);
    }

    v74 = v5;
  }

  v75 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBActionItem)initWithDictionary:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v98.receiver = self;
  v98.super_class = _SFPBActionItem;
  v5 = [(_SFPBActionItem *)&v98 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBActionItem *)v5 setLabel:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"labelForLocalMedia"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBActionItem *)v5 setLabelForLocalMedia:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isOverlay"];
    objc_opt_class();
    v93 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setIsOverlay:](v5, "setIsOverlay:", [v10 BOOLValue]);
    }

    v76 = v8;
    v11 = [v4 objectForKeyedSubscript:@"storeIdentifiers"];
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

    v19 = [v4 objectForKeyedSubscript:@"requiresLocalMedia"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setRequiresLocalMedia:](v5, "setRequiresLocalMedia:", [v19 BOOLValue]);
    }

    v75 = v19;
    v20 = [v4 objectForKeyedSubscript:@"localMediaIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(_SFPBActionItem *)v5 setLocalMediaIdentifier:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"punchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBPunchout alloc] initWithDictionary:v22];
      [(_SFPBActionItem *)v5 setPunchout:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBActionItem *)v5 setApplicationBundleIdentifier:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    v91 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBActionItem *)v5 setContactIdentifier:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"phoneNumber"];
    objc_opt_class();
    v90 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBActionItem *)v5 setPhoneNumber:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"email"];
    objc_opt_class();
    v89 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBActionItem *)v5 setEmail:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"mapsData"];
    objc_opt_class();
    v88 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v32 options:0];
      [(_SFPBActionItem *)v5 setMapsData:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"latitude"];
    objc_opt_class();
    v87 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v34];
      [(_SFPBActionItem *)v5 setLatitude:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"longitude"];
    objc_opt_class();
    v86 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v36];
      [(_SFPBActionItem *)v5 setLongitude:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"provider"];
    objc_opt_class();
    v85 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 copy];
      [(_SFPBActionItem *)v5 setProvider:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"offerType"];
    objc_opt_class();
    v84 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(_SFPBActionItem *)v5 setOfferType:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v83 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [v42 copy];
      [(_SFPBActionItem *)v5 setType:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"labelITunes"];
    objc_opt_class();
    v82 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [v44 copy];
      [(_SFPBActionItem *)v5 setLabelITunes:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"isITunes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setIsITunes:](v5, "setIsITunes:", [v46 BOOLValue]);
    }

    v72 = v46;
    v47 = [v4 objectForKeyedSubscript:@"icon"];
    objc_opt_class();
    v81 = v47;
    if (objc_opt_isKindOfClass())
    {
      v48 = [[_SFPBImage alloc] initWithDictionary:v47];
      [(_SFPBActionItem *)v5 setIcon:v48];
    }

    v49 = [v4 objectForKeyedSubscript:@"baseIcon"];
    objc_opt_class();
    v80 = v49;
    if (objc_opt_isKindOfClass())
    {
      v50 = [[_SFPBImage alloc] initWithDictionary:v49];
      [(_SFPBActionItem *)v5 setBaseIcon:v50];
    }

    v51 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    v79 = v51;
    if (objc_opt_isKindOfClass())
    {
      v52 = [[_SFPBLatLng alloc] initWithDictionary:v51];
      [(_SFPBActionItem *)v5 setLocation:v52];
    }

    v53 = [v4 objectForKeyedSubscript:@"messageIdentifier"];
    objc_opt_class();
    v78 = v53;
    if (objc_opt_isKindOfClass())
    {
      v54 = [v53 copy];
      [(_SFPBActionItem *)v5 setMessageIdentifier:v54];
    }

    v74 = v20;
    v55 = [v4 objectForKeyedSubscript:@"messageURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [[_SFPBURL alloc] initWithDictionary:v55];
      [(_SFPBActionItem *)v5 setMessageURL:v56];
    }

    v57 = [v4 objectForKeyedSubscript:{@"persistentID", v55}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [v57 copy];
      [(_SFPBActionItem *)v5 setPersistentID:v58];
    }

    v73 = v22;
    v59 = [v4 objectForKeyedSubscript:@"mediaEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setMediaEntityType:](v5, "setMediaEntityType:", [v59 intValue]);
    }

    v60 = [v4 objectForKeyedSubscript:@"universalLibraryID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [v60 copy];
      [(_SFPBActionItem *)v5 setUniversalLibraryID:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"interactionContentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [v62 copy];
      [(_SFPBActionItem *)v5 setInteractionContentType:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"customDirectionsPunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [[_SFPBPunchout alloc] initWithDictionary:v64];
      [(_SFPBActionItem *)v5 setCustomDirectionsPunchout:v65];
    }

    v77 = v6;
    v66 = [v4 objectForKeyedSubscript:@"shouldSearchDirectionsAlongCurrentRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBActionItem setShouldSearchDirectionsAlongCurrentRoute:](v5, "setShouldSearchDirectionsAlongCurrentRoute:", [v66 BOOLValue]);
    }

    v67 = [v4 objectForKeyedSubscript:@"directionsMode"];
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

- (_SFPBActionItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBActionItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBActionItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    v4 = [(_SFPBActionItem *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_baseIcon)
  {
    v6 = [(_SFPBActionItem *)self baseIcon];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"baseIcon"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"baseIcon"];
    }
  }

  if (self->_contactIdentifier)
  {
    v9 = [(_SFPBActionItem *)self contactIdentifier];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_customDirectionsPunchout)
  {
    v11 = [(_SFPBActionItem *)self customDirectionsPunchout];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"customDirectionsPunchout"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"customDirectionsPunchout"];
    }
  }

  if (self->_directionsMode)
  {
    v14 = [(_SFPBActionItem *)self directionsMode];
    if (v14 >= 6)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E7ACE580[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"directionsMode"];
  }

  if (self->_email)
  {
    v16 = [(_SFPBActionItem *)self email];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"email"];
  }

  if (self->_icon)
  {
    v18 = [(_SFPBActionItem *)self icon];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"icon"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"icon"];
    }
  }

  if (self->_interactionContentType)
  {
    v21 = [(_SFPBActionItem *)self interactionContentType];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"interactionContentType"];
  }

  if (self->_isITunes)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBActionItem isITunes](self, "isITunes")}];
    [v3 setObject:v23 forKeyedSubscript:@"isITunes"];
  }

  if (self->_isOverlay)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBActionItem isOverlay](self, "isOverlay")}];
    [v3 setObject:v24 forKeyedSubscript:@"isOverlay"];
  }

  if (self->_label)
  {
    v25 = [(_SFPBActionItem *)self label];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"label"];
  }

  if (self->_labelForLocalMedia)
  {
    v27 = [(_SFPBActionItem *)self labelForLocalMedia];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"labelForLocalMedia"];
  }

  if (self->_labelITunes)
  {
    v29 = [(_SFPBActionItem *)self labelITunes];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"labelITunes"];
  }

  if (self->_latitude)
  {
    v31 = [(_SFPBActionItem *)self latitude];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"latitude"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"latitude"];
    }
  }

  if (self->_localMediaIdentifier)
  {
    v34 = [(_SFPBActionItem *)self localMediaIdentifier];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"localMediaIdentifier"];
  }

  if (self->_location)
  {
    v36 = [(_SFPBActionItem *)self location];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"location"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"location"];
    }
  }

  if (self->_longitude)
  {
    v39 = [(_SFPBActionItem *)self longitude];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"longitude"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"longitude"];
    }
  }

  if (self->_mapsData)
  {
    v42 = [(_SFPBActionItem *)self mapsData];
    v43 = [v42 base64EncodedStringWithOptions:0];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"mapsData"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"mapsData"];
    }
  }

  if (self->_mediaEntityType)
  {
    v45 = [(_SFPBActionItem *)self mediaEntityType];
    if (v45 >= 7)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v45];
    }

    else
    {
      v46 = off_1E7ACE4C8[v45];
    }

    [v3 setObject:v46 forKeyedSubscript:@"mediaEntityType"];
  }

  if (self->_messageIdentifier)
  {
    v47 = [(_SFPBActionItem *)self messageIdentifier];
    v48 = [v47 copy];
    [v3 setObject:v48 forKeyedSubscript:@"messageIdentifier"];
  }

  if (self->_messageURL)
  {
    v49 = [(_SFPBActionItem *)self messageURL];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"messageURL"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"messageURL"];
    }
  }

  if (self->_offerType)
  {
    v52 = [(_SFPBActionItem *)self offerType];
    v53 = [v52 copy];
    [v3 setObject:v53 forKeyedSubscript:@"offerType"];
  }

  if (self->_persistentID)
  {
    v54 = [(_SFPBActionItem *)self persistentID];
    v55 = [v54 copy];
    [v3 setObject:v55 forKeyedSubscript:@"persistentID"];
  }

  if (self->_phoneNumber)
  {
    v56 = [(_SFPBActionItem *)self phoneNumber];
    v57 = [v56 copy];
    [v3 setObject:v57 forKeyedSubscript:@"phoneNumber"];
  }

  if (self->_provider)
  {
    v58 = [(_SFPBActionItem *)self provider];
    v59 = [v58 copy];
    [v3 setObject:v59 forKeyedSubscript:@"provider"];
  }

  if (self->_punchout)
  {
    v60 = [(_SFPBActionItem *)self punchout];
    v61 = [v60 dictionaryRepresentation];
    if (v61)
    {
      [v3 setObject:v61 forKeyedSubscript:@"punchout"];
    }

    else
    {
      v62 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v62 forKeyedSubscript:@"punchout"];
    }
  }

  if (self->_requiresLocalMedia)
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBActionItem requiresLocalMedia](self, "requiresLocalMedia")}];
    [v3 setObject:v63 forKeyedSubscript:@"requiresLocalMedia"];
  }

  if (self->_shouldSearchDirectionsAlongCurrentRoute)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBActionItem shouldSearchDirectionsAlongCurrentRoute](self, "shouldSearchDirectionsAlongCurrentRoute")}];
    [v3 setObject:v64 forKeyedSubscript:@"shouldSearchDirectionsAlongCurrentRoute"];
  }

  if (self->_storeIdentifiers)
  {
    v65 = [(_SFPBActionItem *)self storeIdentifiers];
    v66 = [v65 copy];
    [v3 setObject:v66 forKeyedSubscript:@"storeIdentifiers"];
  }

  if (self->_type)
  {
    v67 = [(_SFPBActionItem *)self type];
    v68 = [v67 copy];
    [v3 setObject:v68 forKeyedSubscript:@"type"];
  }

  if (self->_universalLibraryID)
  {
    v69 = [(_SFPBActionItem *)self universalLibraryID];
    v70 = [v69 copy];
    [v3 setObject:v70 forKeyedSubscript:@"universalLibraryID"];
  }

  v71 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_131;
  }

  v5 = [(_SFPBActionItem *)self label];
  v6 = [v4 label];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v7 = [(_SFPBActionItem *)self label];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBActionItem *)self label];
    v10 = [v4 label];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self labelForLocalMedia];
  v6 = [v4 labelForLocalMedia];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v12 = [(_SFPBActionItem *)self labelForLocalMedia];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBActionItem *)self labelForLocalMedia];
    v15 = [v4 labelForLocalMedia];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  isOverlay = self->_isOverlay;
  if (isOverlay != [v4 isOverlay])
  {
    goto LABEL_131;
  }

  v5 = [(_SFPBActionItem *)self storeIdentifiers];
  v6 = [v4 storeIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v18 = [(_SFPBActionItem *)self storeIdentifiers];
  if (v18)
  {
    v19 = v18;
    v20 = [(_SFPBActionItem *)self storeIdentifiers];
    v21 = [v4 storeIdentifiers];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  requiresLocalMedia = self->_requiresLocalMedia;
  if (requiresLocalMedia != [v4 requiresLocalMedia])
  {
    goto LABEL_131;
  }

  v5 = [(_SFPBActionItem *)self localMediaIdentifier];
  v6 = [v4 localMediaIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v24 = [(_SFPBActionItem *)self localMediaIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = [(_SFPBActionItem *)self localMediaIdentifier];
    v27 = [v4 localMediaIdentifier];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self punchout];
  v6 = [v4 punchout];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v29 = [(_SFPBActionItem *)self punchout];
  if (v29)
  {
    v30 = v29;
    v31 = [(_SFPBActionItem *)self punchout];
    v32 = [v4 punchout];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v34 = [(_SFPBActionItem *)self applicationBundleIdentifier];
  if (v34)
  {
    v35 = v34;
    v36 = [(_SFPBActionItem *)self applicationBundleIdentifier];
    v37 = [v4 applicationBundleIdentifier];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self contactIdentifier];
  v6 = [v4 contactIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v39 = [(_SFPBActionItem *)self contactIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = [(_SFPBActionItem *)self contactIdentifier];
    v42 = [v4 contactIdentifier];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self phoneNumber];
  v6 = [v4 phoneNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v44 = [(_SFPBActionItem *)self phoneNumber];
  if (v44)
  {
    v45 = v44;
    v46 = [(_SFPBActionItem *)self phoneNumber];
    v47 = [v4 phoneNumber];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self email];
  v6 = [v4 email];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v49 = [(_SFPBActionItem *)self email];
  if (v49)
  {
    v50 = v49;
    v51 = [(_SFPBActionItem *)self email];
    v52 = [v4 email];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self mapsData];
  v6 = [v4 mapsData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v54 = [(_SFPBActionItem *)self mapsData];
  if (v54)
  {
    v55 = v54;
    v56 = [(_SFPBActionItem *)self mapsData];
    v57 = [v4 mapsData];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self latitude];
  v6 = [v4 latitude];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v59 = [(_SFPBActionItem *)self latitude];
  if (v59)
  {
    v60 = v59;
    v61 = [(_SFPBActionItem *)self latitude];
    v62 = [v4 latitude];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self longitude];
  v6 = [v4 longitude];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v64 = [(_SFPBActionItem *)self longitude];
  if (v64)
  {
    v65 = v64;
    v66 = [(_SFPBActionItem *)self longitude];
    v67 = [v4 longitude];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self provider];
  v6 = [v4 provider];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v69 = [(_SFPBActionItem *)self provider];
  if (v69)
  {
    v70 = v69;
    v71 = [(_SFPBActionItem *)self provider];
    v72 = [v4 provider];
    v73 = [v71 isEqual:v72];

    if (!v73)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self offerType];
  v6 = [v4 offerType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v74 = [(_SFPBActionItem *)self offerType];
  if (v74)
  {
    v75 = v74;
    v76 = [(_SFPBActionItem *)self offerType];
    v77 = [v4 offerType];
    v78 = [v76 isEqual:v77];

    if (!v78)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v79 = [(_SFPBActionItem *)self type];
  if (v79)
  {
    v80 = v79;
    v81 = [(_SFPBActionItem *)self type];
    v82 = [v4 type];
    v83 = [v81 isEqual:v82];

    if (!v83)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self labelITunes];
  v6 = [v4 labelITunes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v84 = [(_SFPBActionItem *)self labelITunes];
  if (v84)
  {
    v85 = v84;
    v86 = [(_SFPBActionItem *)self labelITunes];
    v87 = [v4 labelITunes];
    v88 = [v86 isEqual:v87];

    if (!v88)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  isITunes = self->_isITunes;
  if (isITunes != [v4 isITunes])
  {
    goto LABEL_131;
  }

  v5 = [(_SFPBActionItem *)self icon];
  v6 = [v4 icon];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v90 = [(_SFPBActionItem *)self icon];
  if (v90)
  {
    v91 = v90;
    v92 = [(_SFPBActionItem *)self icon];
    v93 = [v4 icon];
    v94 = [v92 isEqual:v93];

    if (!v94)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self baseIcon];
  v6 = [v4 baseIcon];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v95 = [(_SFPBActionItem *)self baseIcon];
  if (v95)
  {
    v96 = v95;
    v97 = [(_SFPBActionItem *)self baseIcon];
    v98 = [v4 baseIcon];
    v99 = [v97 isEqual:v98];

    if (!v99)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v100 = [(_SFPBActionItem *)self location];
  if (v100)
  {
    v101 = v100;
    v102 = [(_SFPBActionItem *)self location];
    v103 = [v4 location];
    v104 = [v102 isEqual:v103];

    if (!v104)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self messageIdentifier];
  v6 = [v4 messageIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v105 = [(_SFPBActionItem *)self messageIdentifier];
  if (v105)
  {
    v106 = v105;
    v107 = [(_SFPBActionItem *)self messageIdentifier];
    v108 = [v4 messageIdentifier];
    v109 = [v107 isEqual:v108];

    if (!v109)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self messageURL];
  v6 = [v4 messageURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v110 = [(_SFPBActionItem *)self messageURL];
  if (v110)
  {
    v111 = v110;
    v112 = [(_SFPBActionItem *)self messageURL];
    v113 = [v4 messageURL];
    v114 = [v112 isEqual:v113];

    if (!v114)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self persistentID];
  v6 = [v4 persistentID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v115 = [(_SFPBActionItem *)self persistentID];
  if (v115)
  {
    v116 = v115;
    v117 = [(_SFPBActionItem *)self persistentID];
    v118 = [v4 persistentID];
    v119 = [v117 isEqual:v118];

    if (!v119)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  mediaEntityType = self->_mediaEntityType;
  if (mediaEntityType != [v4 mediaEntityType])
  {
    goto LABEL_131;
  }

  v5 = [(_SFPBActionItem *)self universalLibraryID];
  v6 = [v4 universalLibraryID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v121 = [(_SFPBActionItem *)self universalLibraryID];
  if (v121)
  {
    v122 = v121;
    v123 = [(_SFPBActionItem *)self universalLibraryID];
    v124 = [v4 universalLibraryID];
    v125 = [v123 isEqual:v124];

    if (!v125)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self interactionContentType];
  v6 = [v4 interactionContentType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v126 = [(_SFPBActionItem *)self interactionContentType];
  if (v126)
  {
    v127 = v126;
    v128 = [(_SFPBActionItem *)self interactionContentType];
    v129 = [v4 interactionContentType];
    v130 = [v128 isEqual:v129];

    if (!v130)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(_SFPBActionItem *)self customDirectionsPunchout];
  v6 = [v4 customDirectionsPunchout];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_130:

    goto LABEL_131;
  }

  v131 = [(_SFPBActionItem *)self customDirectionsPunchout];
  if (v131)
  {
    v132 = v131;
    v133 = [(_SFPBActionItem *)self customDirectionsPunchout];
    v134 = [v4 customDirectionsPunchout];
    v135 = [v133 isEqual:v134];

    if (!v135)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  shouldSearchDirectionsAlongCurrentRoute = self->_shouldSearchDirectionsAlongCurrentRoute;
  if (shouldSearchDirectionsAlongCurrentRoute == [v4 shouldSearchDirectionsAlongCurrentRoute])
  {
    directionsMode = self->_directionsMode;
    v136 = directionsMode == [v4 directionsMode];
    goto LABEL_132;
  }

LABEL_131:
  v136 = 0;
LABEL_132:

  return v136;
}

- (void)writeTo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBActionItem *)self label];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBActionItem *)self labelForLocalMedia];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBActionItem *)self isOverlay])
  {
    PBDataWriterWriteBOOLField();
  }

  v7 = [(_SFPBActionItem *)self storeIdentifiers];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v9);
  }

  if ([(_SFPBActionItem *)self requiresLocalMedia])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBActionItem *)self localMediaIdentifier];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  v14 = [(_SFPBActionItem *)self punchout];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBActionItem *)self applicationBundleIdentifier];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBActionItem *)self contactIdentifier];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = [(_SFPBActionItem *)self phoneNumber];
  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(_SFPBActionItem *)self email];
  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = [(_SFPBActionItem *)self mapsData];
  if (v19)
  {
    PBDataWriterWriteDataField();
  }

  v20 = [(_SFPBActionItem *)self latitude];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBActionItem *)self longitude];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBActionItem *)self provider];
  if (v22)
  {
    PBDataWriterWriteStringField();
  }

  v23 = [(_SFPBActionItem *)self offerType];
  if (v23)
  {
    PBDataWriterWriteStringField();
  }

  v24 = [(_SFPBActionItem *)self type];
  if (v24)
  {
    PBDataWriterWriteStringField();
  }

  v25 = [(_SFPBActionItem *)self labelITunes];
  if (v25)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBActionItem *)self isITunes])
  {
    PBDataWriterWriteBOOLField();
  }

  v26 = [(_SFPBActionItem *)self icon];
  if (v26)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_SFPBActionItem *)self baseIcon];
  if (v27)
  {
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_SFPBActionItem *)self location];
  if (v28)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = [(_SFPBActionItem *)self messageIdentifier];
  if (v29)
  {
    PBDataWriterWriteStringField();
  }

  v30 = [(_SFPBActionItem *)self messageURL];
  if (v30)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = [(_SFPBActionItem *)self persistentID];
  if (v31)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBActionItem *)self mediaEntityType])
  {
    PBDataWriterWriteInt32Field();
  }

  v32 = [(_SFPBActionItem *)self universalLibraryID];
  if (v32)
  {
    PBDataWriterWriteStringField();
  }

  v33 = [(_SFPBActionItem *)self interactionContentType];
  if (v33)
  {
    PBDataWriterWriteStringField();
  }

  v34 = [(_SFPBActionItem *)self customDirectionsPunchout];
  if (v34)
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

- (void)setInteractionContentType:(id)a3
{
  v4 = [a3 copy];
  interactionContentType = self->_interactionContentType;
  self->_interactionContentType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUniversalLibraryID:(id)a3
{
  v4 = [a3 copy];
  universalLibraryID = self->_universalLibraryID;
  self->_universalLibraryID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersistentID:(id)a3
{
  v4 = [a3 copy];
  persistentID = self->_persistentID;
  self->_persistentID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMessageIdentifier:(id)a3
{
  v4 = [a3 copy];
  messageIdentifier = self->_messageIdentifier;
  self->_messageIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabelITunes:(id)a3
{
  v4 = [a3 copy];
  labelITunes = self->_labelITunes;
  self->_labelITunes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)a3
{
  v4 = [a3 copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setOfferType:(id)a3
{
  v4 = [a3 copy];
  offerType = self->_offerType;
  self->_offerType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setProvider:(id)a3
{
  v4 = [a3 copy];
  provider = self->_provider;
  self->_provider = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMapsData:(id)a3
{
  v4 = [a3 copy];
  mapsData = self->_mapsData;
  self->_mapsData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEmail:(id)a3
{
  v4 = [a3 copy];
  email = self->_email;
  self->_email = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPhoneNumber:(id)a3
{
  v4 = [a3 copy];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocalMediaIdentifier:(id)a3
{
  v4 = [a3 copy];
  localMediaIdentifier = self->_localMediaIdentifier;
  self->_localMediaIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addStoreIdentifiers:(id)a3
{
  v4 = a3;
  storeIdentifiers = self->_storeIdentifiers;
  v8 = v4;
  if (!storeIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_storeIdentifiers;
    self->_storeIdentifiers = v6;

    v4 = v8;
    storeIdentifiers = self->_storeIdentifiers;
  }

  [(NSArray *)storeIdentifiers addObject:v4];
}

- (void)setStoreIdentifiers:(id)a3
{
  v4 = [a3 copy];
  storeIdentifiers = self->_storeIdentifiers;
  self->_storeIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabelForLocalMedia:(id)a3
{
  v4 = [a3 copy];
  labelForLocalMedia = self->_labelForLocalMedia;
  self->_labelForLocalMedia = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabel:(id)a3
{
  v4 = [a3 copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8]();
}

@end