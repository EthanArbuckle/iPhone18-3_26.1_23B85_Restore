@interface _SFPBCard
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCard)initWithDictionary:(id)a3;
- (_SFPBCard)initWithFacade:(id)a3;
- (_SFPBCard)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCardSections:(id)a3;
- (void)addDismissalCommands:(id)a3;
- (void)addEntityProtobufMessages:(id)a3;
- (void)setCardId:(id)a3;
- (void)setCardSections:(id)a3;
- (void)setContextReferenceIdentifier:(id)a3;
- (void)setDismissalCommands:(id)a3;
- (void)setEntityIdentifier:(id)a3;
- (void)setEntityProtobufMessages:(id)a3;
- (void)setFbr:(id)a3;
- (void)setIntentMessageData:(id)a3;
- (void)setIntentMessageName:(id)a3;
- (void)setIntentResponseMessageData:(id)a3;
- (void)setIntentResponseMessageName:(id)a3;
- (void)setResultIdentifier:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCard

- (_SFPBCard)initWithFacade:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCard *)self init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(_SFPBCard *)v5 setTitle:v7];
    }

    if ([v4 hasType])
    {
      -[_SFPBCard setType:](v5, "setType:", [v4 type]);
    }

    v8 = [v4 cardSections];
    v77 = v5;
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v10 = [v4 cardSections];
    v11 = [v10 countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v87;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v87 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v86 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v12);
    }

    [(_SFPBCard *)v5 setCardSections:v9];
    v16 = [v4 intentMessageData];

    if (v16)
    {
      v17 = [v4 intentMessageData];
      [(_SFPBCard *)v5 setIntentMessageData:v17];
    }

    v18 = [v4 intentMessageName];

    if (v18)
    {
      v19 = [v4 intentMessageName];
      [(_SFPBCard *)v5 setIntentMessageName:v19];
    }

    v20 = [v4 intentResponseMessageData];

    if (v20)
    {
      v21 = [v4 intentResponseMessageData];
      [(_SFPBCard *)v5 setIntentResponseMessageData:v21];
    }

    v22 = [v4 intentResponseMessageName];

    if (v22)
    {
      v23 = [v4 intentResponseMessageName];
      [(_SFPBCard *)v5 setIntentResponseMessageName:v23];
    }

    v24 = [v4 dismissalCommands];
    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v26 = [v4 dismissalCommands];
    v27 = [v26 countByEnumeratingWithState:&v82 objects:v91 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v83;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v83 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v82 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v82 objects:v91 count:16];
      }

      while (v28);
    }

    [(_SFPBCard *)v77 setDismissalCommands:v25];
    v32 = [v4 cardId];

    if (v32)
    {
      v33 = [v4 cardId];
      [(_SFPBCard *)v77 setCardId:v33];
    }

    v34 = [v4 contextReferenceIdentifier];

    if (v34)
    {
      v35 = [v4 contextReferenceIdentifier];
      [(_SFPBCard *)v77 setContextReferenceIdentifier:v35];
    }

    v36 = [v4 urlValue];

    if (v36)
    {
      v37 = [_SFPBURL alloc];
      v38 = [v4 urlValue];
      v39 = [(_SFPBURL *)v37 initWithNSURL:v38];
      [(_SFPBCard *)v77 setUrlValue:v39];
    }

    if ([v4 hasSource])
    {
      -[_SFPBCard setSource:](v77, "setSource:", [v4 source]);
    }

    v40 = [v4 entityIdentifier];

    if (v40)
    {
      v41 = [v4 entityIdentifier];
      [(_SFPBCard *)v77 setEntityIdentifier:v41];
    }

    v42 = [v4 resultIdentifier];

    if (v42)
    {
      v43 = [v4 resultIdentifier];
      [(_SFPBCard *)v77 setResultIdentifier:v43];
    }

    if ([v4 hasQueryId])
    {
      -[_SFPBCard setQueryId:](v77, "setQueryId:", [v4 queryId]);
    }

    v44 = [v4 fbr];

    if (v44)
    {
      v45 = [v4 fbr];
      [(_SFPBCard *)v77 setFbr:v45];
    }

    if ([v4 hasFlexibleSectionOrder])
    {
      -[_SFPBCard setFlexibleSectionOrder:](v77, "setFlexibleSectionOrder:", [v4 flexibleSectionOrder]);
    }

    v46 = [v4 entityProtobufMessages];
    if (v46)
    {
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v47 = 0;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v48 = [v4 entityProtobufMessages];
    v49 = [v48 countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v79;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v79 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [[_SFPBNamedProtobufMessage alloc] initWithFacade:*(*(&v78 + 1) + 8 * k)];
          if (v53)
          {
            [v47 addObject:v53];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v78 objects:v90 count:16];
      }

      while (v50);
    }

    v5 = v77;
    [(_SFPBCard *)v77 setEntityProtobufMessages:v47];
    v54 = [v4 titleImage];

    if (v54)
    {
      v55 = [_SFPBImage alloc];
      v56 = [v4 titleImage];
      v57 = [(_SFPBImage *)v55 initWithFacade:v56];
      [(_SFPBCard *)v77 setTitleImage:v57];
    }

    v58 = [v4 backgroundColor];

    if (v58)
    {
      v59 = [_SFPBColor alloc];
      v60 = [v4 backgroundColor];
      v61 = [(_SFPBColor *)v59 initWithFacade:v60];
      [(_SFPBCard *)v77 setBackgroundColor:v61];
    }

    v62 = [v4 metadata];

    if (v62)
    {
      v63 = [_SFPBDrillDownMetadata alloc];
      v64 = [v4 metadata];
      v65 = [(_SFPBDrillDownMetadata *)v63 initWithFacade:v64];
      [(_SFPBCard *)v77 setMetadata:v65];
    }

    v66 = [v4 drilldownMetadata];

    if (v66)
    {
      v67 = [_SFPBDrillDownMetadata alloc];
      v68 = [v4 drilldownMetadata];
      v69 = [(_SFPBDrillDownMetadata *)v67 initWithFacade:v68];
      [(_SFPBCard *)v77 setDrilldownMetadata:v69];
    }

    v70 = [v4 backgroundImage];

    if (v70)
    {
      v71 = [_SFPBImage alloc];
      v72 = [v4 backgroundImage];
      v73 = [(_SFPBImage *)v71 initWithFacade:v72];
      [(_SFPBCard *)v77 setBackgroundImage:v73];
    }

    v74 = v77;
  }

  v75 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCard)initWithDictionary:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v99.receiver = self;
  v99.super_class = _SFPBCard;
  v5 = [(_SFPBCard *)&v99 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCard *)v5 setTitle:v7];
    }

    v74 = v6;
    v8 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCard setType:](v5, "setType:", [v8 intValue]);
    }

    v73 = v8;
    v9 = [v4 objectForKeyedSubscript:@"cardSections"];
    objc_opt_class();
    v86 = v9;
    if (objc_opt_isKindOfClass())
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v95 objects:v102 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v96;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v96 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v95 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[_SFPBCardSection alloc] initWithDictionary:v15];
              [(_SFPBCard *)v5 addCardSections:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v95 objects:v102 count:16];
        }

        while (v12);
      }
    }

    v17 = [v4 objectForKeyedSubscript:@"intentMessageData"];
    objc_opt_class();
    v85 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v17 options:0];
      [(_SFPBCard *)v5 setIntentMessageData:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"intentMessageName"];
    objc_opt_class();
    v84 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 copy];
      [(_SFPBCard *)v5 setIntentMessageName:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"intentResponseMessageData"];
    objc_opt_class();
    v83 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v21 options:0];
      [(_SFPBCard *)v5 setIntentResponseMessageData:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"intentResponseMessageName"];
    objc_opt_class();
    v82 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(_SFPBCard *)v5 setIntentResponseMessageName:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"dismissalCommands"];
    objc_opt_class();
    v81 = v25;
    if (objc_opt_isKindOfClass())
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v91 objects:v101 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v92;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v92 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v91 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [[_SFPBAbstractCommand alloc] initWithDictionary:v31];
              [(_SFPBCard *)v5 addDismissalCommands:v32];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v91 objects:v101 count:16];
        }

        while (v28);
      }
    }

    v33 = [v4 objectForKeyedSubscript:@"cardId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 copy];
      [(_SFPBCard *)v5 setCardId:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"contextReferenceIdentifier"];
    objc_opt_class();
    v80 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(_SFPBCard *)v5 setContextReferenceIdentifier:v36];
    }

    v37 = [v4 objectForKeyedSubscript:@"urlValue"];
    objc_opt_class();
    v79 = v37;
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBURL alloc] initWithDictionary:v37];
      [(_SFPBCard *)v5 setUrlValue:v38];
    }

    v39 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    v78 = v39;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCard setSource:](v5, "setSource:", [v39 intValue]);
    }

    v40 = [v4 objectForKeyedSubscript:@"entityIdentifier"];
    objc_opt_class();
    v77 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v40 options:0];
      [(_SFPBCard *)v5 setEntityIdentifier:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"resultIdentifier"];
    objc_opt_class();
    v76 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [v42 copy];
      [(_SFPBCard *)v5 setResultIdentifier:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"queryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCard setQueryId:](v5, "setQueryId:", [v44 unsignedLongLongValue]);
    }

    v45 = [v4 objectForKeyedSubscript:@"fbr"];
    objc_opt_class();
    v75 = v45;
    if (objc_opt_isKindOfClass())
    {
      v46 = v44;
      v47 = [v45 copy];
      [(_SFPBCard *)v5 setFbr:v47];

      v44 = v46;
    }

    v48 = [v4 objectForKeyedSubscript:@"flexibleSectionOrder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCard setFlexibleSectionOrder:](v5, "setFlexibleSectionOrder:", [v48 BOOLValue]);
    }

    v71 = v48;
    v72 = v33;
    v49 = [v4 objectForKeyedSubscript:@"entityProtobufMessages"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = v44;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v50 = v49;
      v51 = [v50 countByEnumeratingWithState:&v87 objects:v100 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v88;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v88 != v53)
            {
              objc_enumerationMutation(v50);
            }

            v55 = *(*(&v87 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = [[_SFPBNamedProtobufMessage alloc] initWithDictionary:v55];
              [(_SFPBCard *)v5 addEntityProtobufMessages:v56];
            }
          }

          v52 = [v50 countByEnumeratingWithState:&v87 objects:v100 count:16];
        }

        while (v52);
      }

      v44 = v70;
    }

    v57 = [v4 objectForKeyedSubscript:@"titleImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [[_SFPBImage alloc] initWithDictionary:v57];
      [(_SFPBCard *)v5 setTitleImage:v58];
    }

    v59 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = [[_SFPBColor alloc] initWithDictionary:v59];
      [(_SFPBCard *)v5 setBackgroundColor:v60];
    }

    v61 = [v4 objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = [[_SFPBDrillDownMetadata alloc] initWithDictionary:v61];
      [(_SFPBCard *)v5 setMetadata:v62];
    }

    v63 = [v4 objectForKeyedSubscript:@"drilldownMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = [[_SFPBDrillDownMetadata alloc] initWithDictionary:v63];
      [(_SFPBCard *)v5 setDrilldownMetadata:v64];
    }

    v65 = [v4 objectForKeyedSubscript:@"backgroundImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = [[_SFPBImage alloc] initWithDictionary:v65];
      [(_SFPBCard *)v5 setBackgroundImage:v66];
    }

    v67 = v5;
  }

  v68 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCard)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCard *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCard *)self dictionaryRepresentation];
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
  v93 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBCard *)self backgroundColor];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_backgroundImage)
  {
    v7 = [(_SFPBCard *)self backgroundImage];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"backgroundImage"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"backgroundImage"];
    }
  }

  if (self->_cardId)
  {
    v10 = [(_SFPBCard *)self cardId];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"cardId"];
  }

  if ([(NSArray *)self->_cardSections count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v13 = self->_cardSections;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v87;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v87 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v86 + 1) + 8 * i) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"cardSections"];
  }

  if (self->_contextReferenceIdentifier)
  {
    v20 = [(_SFPBCard *)self contextReferenceIdentifier];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"contextReferenceIdentifier"];
  }

  if ([(NSArray *)self->_dismissalCommands count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v23 = self->_dismissalCommands;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v82 objects:v91 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v83;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v83 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v82 + 1) + 8 * j) dictionaryRepresentation];
          if (v28)
          {
            [v22 addObject:v28];
          }

          else
          {
            v29 = [MEMORY[0x1E695DFB0] null];
            [v22 addObject:v29];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v82 objects:v91 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"dismissalCommands"];
  }

  if (self->_drilldownMetadata)
  {
    v30 = [(_SFPBCard *)self drilldownMetadata];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"drilldownMetadata"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"drilldownMetadata"];
    }
  }

  if (self->_entityIdentifier)
  {
    v33 = [(_SFPBCard *)self entityIdentifier];
    v34 = [v33 base64EncodedStringWithOptions:0];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"entityIdentifier"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"entityIdentifier"];
    }
  }

  if ([(NSArray *)self->_entityProtobufMessages count])
  {
    v36 = [MEMORY[0x1E695DF70] array];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v37 = self->_entityProtobufMessages;
    v38 = [(NSArray *)v37 countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v79;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v79 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [*(*(&v78 + 1) + 8 * k) dictionaryRepresentation];
          if (v42)
          {
            [v36 addObject:v42];
          }

          else
          {
            v43 = [MEMORY[0x1E695DFB0] null];
            [v36 addObject:v43];
          }
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v78 objects:v90 count:16];
      }

      while (v39);
    }

    [v3 setObject:v36 forKeyedSubscript:@"entityProtobufMessages"];
  }

  if (self->_fbr)
  {
    v44 = [(_SFPBCard *)self fbr];
    v45 = [v44 copy];
    [v3 setObject:v45 forKeyedSubscript:@"fbr"];
  }

  if (self->_flexibleSectionOrder)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCard flexibleSectionOrder](self, "flexibleSectionOrder")}];
    [v3 setObject:v46 forKeyedSubscript:@"flexibleSectionOrder"];
  }

  if (self->_intentMessageData)
  {
    v47 = [(_SFPBCard *)self intentMessageData];
    v48 = [v47 base64EncodedStringWithOptions:0];
    if (v48)
    {
      [v3 setObject:v48 forKeyedSubscript:@"intentMessageData"];
    }

    else
    {
      v49 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v49 forKeyedSubscript:@"intentMessageData"];
    }
  }

  if (self->_intentMessageName)
  {
    v50 = [(_SFPBCard *)self intentMessageName];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"intentMessageName"];
  }

  if (self->_intentResponseMessageData)
  {
    v52 = [(_SFPBCard *)self intentResponseMessageData];
    v53 = [v52 base64EncodedStringWithOptions:0];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"intentResponseMessageData"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"intentResponseMessageData"];
    }
  }

  if (self->_intentResponseMessageName)
  {
    v55 = [(_SFPBCard *)self intentResponseMessageName];
    v56 = [v55 copy];
    [v3 setObject:v56 forKeyedSubscript:@"intentResponseMessageName"];
  }

  if (self->_metadata)
  {
    v57 = [(_SFPBCard *)self metadata];
    v58 = [v57 dictionaryRepresentation];
    if (v58)
    {
      [v3 setObject:v58 forKeyedSubscript:@"metadata"];
    }

    else
    {
      v59 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v59 forKeyedSubscript:@"metadata"];
    }
  }

  if (self->_queryId)
  {
    v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCard queryId](self, "queryId")}];
    [v3 setObject:v60 forKeyedSubscript:@"queryId"];
  }

  if (self->_resultIdentifier)
  {
    v61 = [(_SFPBCard *)self resultIdentifier];
    v62 = [v61 copy];
    [v3 setObject:v62 forKeyedSubscript:@"resultIdentifier"];
  }

  if (self->_source)
  {
    v63 = [(_SFPBCard *)self source];
    if (v63 >= 3)
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v63];
    }

    else
    {
      v64 = off_1E7ACE548[v63];
    }

    [v3 setObject:v64 forKeyedSubscript:@"source"];
  }

  if (self->_title)
  {
    v65 = [(_SFPBCard *)self title];
    v66 = [v65 copy];
    [v3 setObject:v66 forKeyedSubscript:@"title"];
  }

  if (self->_titleImage)
  {
    v67 = [(_SFPBCard *)self titleImage];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"titleImage"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"titleImage"];
    }
  }

  if (self->_type)
  {
    v70 = [(_SFPBCard *)self type];
    if (v70 >= 4)
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v70];
    }

    else
    {
      v71 = off_1E7ACE560[v70];
    }

    [v3 setObject:v71 forKeyedSubscript:@"type"];
  }

  if (self->_urlValue)
  {
    v72 = [(_SFPBCard *)self urlValue];
    v73 = [v72 dictionaryRepresentation];
    if (v73)
    {
      [v3 setObject:v73 forKeyedSubscript:@"urlValue"];
    }

    else
    {
      v74 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v74 forKeyedSubscript:@"urlValue"];
    }
  }

  v75 = v3;

  v76 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = 2654435761;
  v26 = 2654435761 * self->_type;
  v27 = v3;
  v25 = [(NSArray *)self->_cardSections hash];
  v24 = [(NSData *)self->_intentMessageData hash];
  v23 = [(NSString *)self->_intentMessageName hash];
  v22 = [(NSData *)self->_intentResponseMessageData hash];
  v21 = [(NSString *)self->_intentResponseMessageName hash];
  v5 = [(NSArray *)self->_dismissalCommands hash];
  v6 = [(NSString *)self->_cardId hash];
  v7 = [(NSString *)self->_contextReferenceIdentifier hash];
  v8 = [(_SFPBURL *)self->_urlValue hash];
  v9 = 2654435761 * self->_source;
  v10 = [(NSData *)self->_entityIdentifier hash];
  v11 = [(NSString *)self->_resultIdentifier hash];
  v12 = 2654435761u * self->_queryId;
  v13 = [(NSString *)self->_fbr hash];
  if (!self->_flexibleSectionOrder)
  {
    v4 = 0;
  }

  v14 = v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  v15 = v4 ^ [(NSArray *)self->_entityProtobufMessages hash];
  v16 = v15 ^ [(_SFPBImage *)self->_titleImage hash];
  v17 = v16 ^ [(_SFPBColor *)self->_backgroundColor hash];
  v18 = v17 ^ [(_SFPBDrillDownMetadata *)self->_metadata hash];
  v19 = v18 ^ [(_SFPBDrillDownMetadata *)self->_drilldownMetadata hash];
  return v14 ^ v19 ^ [(_SFPBImage *)self->_backgroundImage hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_101;
  }

  v5 = [(_SFPBCard *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v7 = [(_SFPBCard *)self title];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCard *)self title];
    v10 = [v4 title];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_101;
  }

  v5 = [(_SFPBCard *)self cardSections];
  v6 = [v4 cardSections];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v13 = [(_SFPBCard *)self cardSections];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBCard *)self cardSections];
    v16 = [v4 cardSections];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self intentMessageData];
  v6 = [v4 intentMessageData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v18 = [(_SFPBCard *)self intentMessageData];
  if (v18)
  {
    v19 = v18;
    v20 = [(_SFPBCard *)self intentMessageData];
    v21 = [v4 intentMessageData];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self intentMessageName];
  v6 = [v4 intentMessageName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v23 = [(_SFPBCard *)self intentMessageName];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBCard *)self intentMessageName];
    v26 = [v4 intentMessageName];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self intentResponseMessageData];
  v6 = [v4 intentResponseMessageData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v28 = [(_SFPBCard *)self intentResponseMessageData];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBCard *)self intentResponseMessageData];
    v31 = [v4 intentResponseMessageData];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self intentResponseMessageName];
  v6 = [v4 intentResponseMessageName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v33 = [(_SFPBCard *)self intentResponseMessageName];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBCard *)self intentResponseMessageName];
    v36 = [v4 intentResponseMessageName];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self dismissalCommands];
  v6 = [v4 dismissalCommands];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v38 = [(_SFPBCard *)self dismissalCommands];
  if (v38)
  {
    v39 = v38;
    v40 = [(_SFPBCard *)self dismissalCommands];
    v41 = [v4 dismissalCommands];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self cardId];
  v6 = [v4 cardId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v43 = [(_SFPBCard *)self cardId];
  if (v43)
  {
    v44 = v43;
    v45 = [(_SFPBCard *)self cardId];
    v46 = [v4 cardId];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self contextReferenceIdentifier];
  v6 = [v4 contextReferenceIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v48 = [(_SFPBCard *)self contextReferenceIdentifier];
  if (v48)
  {
    v49 = v48;
    v50 = [(_SFPBCard *)self contextReferenceIdentifier];
    v51 = [v4 contextReferenceIdentifier];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self urlValue];
  v6 = [v4 urlValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v53 = [(_SFPBCard *)self urlValue];
  if (v53)
  {
    v54 = v53;
    v55 = [(_SFPBCard *)self urlValue];
    v56 = [v4 urlValue];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  source = self->_source;
  if (source != [v4 source])
  {
    goto LABEL_101;
  }

  v5 = [(_SFPBCard *)self entityIdentifier];
  v6 = [v4 entityIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v59 = [(_SFPBCard *)self entityIdentifier];
  if (v59)
  {
    v60 = v59;
    v61 = [(_SFPBCard *)self entityIdentifier];
    v62 = [v4 entityIdentifier];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self resultIdentifier];
  v6 = [v4 resultIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v64 = [(_SFPBCard *)self resultIdentifier];
  if (v64)
  {
    v65 = v64;
    v66 = [(_SFPBCard *)self resultIdentifier];
    v67 = [v4 resultIdentifier];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  queryId = self->_queryId;
  if (queryId != [v4 queryId])
  {
    goto LABEL_101;
  }

  v5 = [(_SFPBCard *)self fbr];
  v6 = [v4 fbr];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v70 = [(_SFPBCard *)self fbr];
  if (v70)
  {
    v71 = v70;
    v72 = [(_SFPBCard *)self fbr];
    v73 = [v4 fbr];
    v74 = [v72 isEqual:v73];

    if (!v74)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  flexibleSectionOrder = self->_flexibleSectionOrder;
  if (flexibleSectionOrder != [v4 flexibleSectionOrder])
  {
    goto LABEL_101;
  }

  v5 = [(_SFPBCard *)self entityProtobufMessages];
  v6 = [v4 entityProtobufMessages];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v76 = [(_SFPBCard *)self entityProtobufMessages];
  if (v76)
  {
    v77 = v76;
    v78 = [(_SFPBCard *)self entityProtobufMessages];
    v79 = [v4 entityProtobufMessages];
    v80 = [v78 isEqual:v79];

    if (!v80)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self titleImage];
  v6 = [v4 titleImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v81 = [(_SFPBCard *)self titleImage];
  if (v81)
  {
    v82 = v81;
    v83 = [(_SFPBCard *)self titleImage];
    v84 = [v4 titleImage];
    v85 = [v83 isEqual:v84];

    if (!v85)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v86 = [(_SFPBCard *)self backgroundColor];
  if (v86)
  {
    v87 = v86;
    v88 = [(_SFPBCard *)self backgroundColor];
    v89 = [v4 backgroundColor];
    v90 = [v88 isEqual:v89];

    if (!v90)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self metadata];
  v6 = [v4 metadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v91 = [(_SFPBCard *)self metadata];
  if (v91)
  {
    v92 = v91;
    v93 = [(_SFPBCard *)self metadata];
    v94 = [v4 metadata];
    v95 = [v93 isEqual:v94];

    if (!v95)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self drilldownMetadata];
  v6 = [v4 drilldownMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_100;
  }

  v96 = [(_SFPBCard *)self drilldownMetadata];
  if (v96)
  {
    v97 = v96;
    v98 = [(_SFPBCard *)self drilldownMetadata];
    v99 = [v4 drilldownMetadata];
    v100 = [v98 isEqual:v99];

    if (!v100)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCard *)self backgroundImage];
  v6 = [v4 backgroundImage];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_100:

    goto LABEL_101;
  }

  v101 = [(_SFPBCard *)self backgroundImage];
  if (!v101)
  {

LABEL_104:
    v106 = 1;
    goto LABEL_102;
  }

  v102 = v101;
  v103 = [(_SFPBCard *)self backgroundImage];
  v104 = [v4 backgroundImage];
  v105 = [v103 isEqual:v104];

  if (v105)
  {
    goto LABEL_104;
  }

LABEL_101:
  v106 = 0;
LABEL_102:

  return v106;
}

- (void)writeTo:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCard *)self title];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCard *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_SFPBCard *)self cardSections];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  v12 = [(_SFPBCard *)self intentMessageData];
  if (v12)
  {
    PBDataWriterWriteDataField();
  }

  v13 = [(_SFPBCard *)self intentMessageName];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  v14 = [(_SFPBCard *)self intentResponseMessageData];
  if (v14)
  {
    PBDataWriterWriteDataField();
  }

  v15 = [(_SFPBCard *)self intentResponseMessageName];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBCard *)self dismissalCommands];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      v20 = 0;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v44 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v18);
  }

  v22 = [(_SFPBCard *)self cardId];
  if (v22)
  {
    PBDataWriterWriteStringField();
  }

  v23 = [(_SFPBCard *)self contextReferenceIdentifier];
  if (v23)
  {
    PBDataWriterWriteStringField();
  }

  v24 = [(_SFPBCard *)self urlValue];
  if (v24)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCard *)self source])
  {
    PBDataWriterWriteInt32Field();
  }

  v25 = [(_SFPBCard *)self entityIdentifier];
  if (v25)
  {
    PBDataWriterWriteDataField();
  }

  v26 = [(_SFPBCard *)self resultIdentifier];
  if (v26)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCard *)self queryId])
  {
    PBDataWriterWriteUint64Field();
  }

  v27 = [(_SFPBCard *)self fbr];
  if (v27)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCard *)self flexibleSectionOrder])
  {
    PBDataWriterWriteBOOLField();
  }

  v28 = [(_SFPBCard *)self entityProtobufMessages];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v41;
    do
    {
      v32 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v40 + 1) + 8 * v32);
        PBDataWriterWriteSubmessage();
        ++v32;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v30);
  }

  v34 = [(_SFPBCard *)self titleImage];
  if (v34)
  {
    PBDataWriterWriteSubmessage();
  }

  v35 = [(_SFPBCard *)self backgroundColor];
  if (v35)
  {
    PBDataWriterWriteSubmessage();
  }

  v36 = [(_SFPBCard *)self metadata];
  if (v36)
  {
    PBDataWriterWriteSubmessage();
  }

  v37 = [(_SFPBCard *)self drilldownMetadata];
  if (v37)
  {
    PBDataWriterWriteSubmessage();
  }

  v38 = [(_SFPBCard *)self backgroundImage];
  if (v38)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)addEntityProtobufMessages:(id)a3
{
  v4 = a3;
  entityProtobufMessages = self->_entityProtobufMessages;
  v8 = v4;
  if (!entityProtobufMessages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityProtobufMessages;
    self->_entityProtobufMessages = v6;

    v4 = v8;
    entityProtobufMessages = self->_entityProtobufMessages;
  }

  [(NSArray *)entityProtobufMessages addObject:v4];
}

- (void)setEntityProtobufMessages:(id)a3
{
  v4 = [a3 copy];
  entityProtobufMessages = self->_entityProtobufMessages;
  self->_entityProtobufMessages = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFbr:(id)a3
{
  v4 = [a3 copy];
  fbr = self->_fbr;
  self->_fbr = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setResultIdentifier:(id)a3
{
  v4 = [a3 copy];
  resultIdentifier = self->_resultIdentifier;
  self->_resultIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEntityIdentifier:(id)a3
{
  v4 = [a3 copy];
  entityIdentifier = self->_entityIdentifier;
  self->_entityIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContextReferenceIdentifier:(id)a3
{
  v4 = [a3 copy];
  contextReferenceIdentifier = self->_contextReferenceIdentifier;
  self->_contextReferenceIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardId:(id)a3
{
  v4 = [a3 copy];
  cardId = self->_cardId;
  self->_cardId = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addDismissalCommands:(id)a3
{
  v4 = a3;
  dismissalCommands = self->_dismissalCommands;
  v8 = v4;
  if (!dismissalCommands)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_dismissalCommands;
    self->_dismissalCommands = v6;

    v4 = v8;
    dismissalCommands = self->_dismissalCommands;
  }

  [(NSArray *)dismissalCommands addObject:v4];
}

- (void)setDismissalCommands:(id)a3
{
  v4 = [a3 copy];
  dismissalCommands = self->_dismissalCommands;
  self->_dismissalCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentResponseMessageName:(id)a3
{
  v4 = [a3 copy];
  intentResponseMessageName = self->_intentResponseMessageName;
  self->_intentResponseMessageName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentResponseMessageData:(id)a3
{
  v4 = [a3 copy];
  intentResponseMessageData = self->_intentResponseMessageData;
  self->_intentResponseMessageData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentMessageName:(id)a3
{
  v4 = [a3 copy];
  intentMessageName = self->_intentMessageName;
  self->_intentMessageName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentMessageData:(id)a3
{
  v4 = [a3 copy];
  intentMessageData = self->_intentMessageData;
  self->_intentMessageData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCardSections:(id)a3
{
  v4 = a3;
  cardSections = self->_cardSections;
  v8 = v4;
  if (!cardSections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardSections;
    self->_cardSections = v6;

    v4 = v8;
    cardSections = self->_cardSections;
  }

  [(NSArray *)cardSections addObject:v4];
}

- (void)setCardSections:(id)a3
{
  v4 = [a3 copy];
  cardSections = self->_cardSections;
  self->_cardSections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end