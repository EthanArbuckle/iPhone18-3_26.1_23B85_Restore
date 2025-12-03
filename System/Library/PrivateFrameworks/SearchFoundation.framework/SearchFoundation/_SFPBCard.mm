@interface _SFPBCard
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCard)initWithDictionary:(id)dictionary;
- (_SFPBCard)initWithFacade:(id)facade;
- (_SFPBCard)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCardSections:(id)sections;
- (void)addDismissalCommands:(id)commands;
- (void)addEntityProtobufMessages:(id)messages;
- (void)setCardId:(id)id;
- (void)setCardSections:(id)sections;
- (void)setContextReferenceIdentifier:(id)identifier;
- (void)setDismissalCommands:(id)commands;
- (void)setEntityIdentifier:(id)identifier;
- (void)setEntityProtobufMessages:(id)messages;
- (void)setFbr:(id)fbr;
- (void)setIntentMessageData:(id)data;
- (void)setIntentMessageName:(id)name;
- (void)setIntentResponseMessageData:(id)data;
- (void)setIntentResponseMessageName:(id)name;
- (void)setResultIdentifier:(id)identifier;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCard

- (_SFPBCard)initWithFacade:(id)facade
{
  v93 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBCard *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBCard *)v5 setTitle:title2];
    }

    if ([facadeCopy hasType])
    {
      -[_SFPBCard setType:](v5, "setType:", [facadeCopy type]);
    }

    cardSections = [facadeCopy cardSections];
    v77 = v5;
    if (cardSections)
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
    cardSections2 = [facadeCopy cardSections];
    v11 = [cardSections2 countByEnumeratingWithState:&v86 objects:v92 count:16];
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
            objc_enumerationMutation(cardSections2);
          }

          v15 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v86 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [cardSections2 countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v12);
    }

    [(_SFPBCard *)v5 setCardSections:v9];
    intentMessageData = [facadeCopy intentMessageData];

    if (intentMessageData)
    {
      intentMessageData2 = [facadeCopy intentMessageData];
      [(_SFPBCard *)v5 setIntentMessageData:intentMessageData2];
    }

    intentMessageName = [facadeCopy intentMessageName];

    if (intentMessageName)
    {
      intentMessageName2 = [facadeCopy intentMessageName];
      [(_SFPBCard *)v5 setIntentMessageName:intentMessageName2];
    }

    intentResponseMessageData = [facadeCopy intentResponseMessageData];

    if (intentResponseMessageData)
    {
      intentResponseMessageData2 = [facadeCopy intentResponseMessageData];
      [(_SFPBCard *)v5 setIntentResponseMessageData:intentResponseMessageData2];
    }

    intentResponseMessageName = [facadeCopy intentResponseMessageName];

    if (intentResponseMessageName)
    {
      intentResponseMessageName2 = [facadeCopy intentResponseMessageName];
      [(_SFPBCard *)v5 setIntentResponseMessageName:intentResponseMessageName2];
    }

    dismissalCommands = [facadeCopy dismissalCommands];
    if (dismissalCommands)
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
    dismissalCommands2 = [facadeCopy dismissalCommands];
    v27 = [dismissalCommands2 countByEnumeratingWithState:&v82 objects:v91 count:16];
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
            objc_enumerationMutation(dismissalCommands2);
          }

          v31 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v82 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [dismissalCommands2 countByEnumeratingWithState:&v82 objects:v91 count:16];
      }

      while (v28);
    }

    [(_SFPBCard *)v77 setDismissalCommands:v25];
    cardId = [facadeCopy cardId];

    if (cardId)
    {
      cardId2 = [facadeCopy cardId];
      [(_SFPBCard *)v77 setCardId:cardId2];
    }

    contextReferenceIdentifier = [facadeCopy contextReferenceIdentifier];

    if (contextReferenceIdentifier)
    {
      contextReferenceIdentifier2 = [facadeCopy contextReferenceIdentifier];
      [(_SFPBCard *)v77 setContextReferenceIdentifier:contextReferenceIdentifier2];
    }

    urlValue = [facadeCopy urlValue];

    if (urlValue)
    {
      v37 = [_SFPBURL alloc];
      urlValue2 = [facadeCopy urlValue];
      v39 = [(_SFPBURL *)v37 initWithNSURL:urlValue2];
      [(_SFPBCard *)v77 setUrlValue:v39];
    }

    if ([facadeCopy hasSource])
    {
      -[_SFPBCard setSource:](v77, "setSource:", [facadeCopy source]);
    }

    entityIdentifier = [facadeCopy entityIdentifier];

    if (entityIdentifier)
    {
      entityIdentifier2 = [facadeCopy entityIdentifier];
      [(_SFPBCard *)v77 setEntityIdentifier:entityIdentifier2];
    }

    resultIdentifier = [facadeCopy resultIdentifier];

    if (resultIdentifier)
    {
      resultIdentifier2 = [facadeCopy resultIdentifier];
      [(_SFPBCard *)v77 setResultIdentifier:resultIdentifier2];
    }

    if ([facadeCopy hasQueryId])
    {
      -[_SFPBCard setQueryId:](v77, "setQueryId:", [facadeCopy queryId]);
    }

    v44 = [facadeCopy fbr];

    if (v44)
    {
      v45 = [facadeCopy fbr];
      [(_SFPBCard *)v77 setFbr:v45];
    }

    if ([facadeCopy hasFlexibleSectionOrder])
    {
      -[_SFPBCard setFlexibleSectionOrder:](v77, "setFlexibleSectionOrder:", [facadeCopy flexibleSectionOrder]);
    }

    entityProtobufMessages = [facadeCopy entityProtobufMessages];
    if (entityProtobufMessages)
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
    entityProtobufMessages2 = [facadeCopy entityProtobufMessages];
    v49 = [entityProtobufMessages2 countByEnumeratingWithState:&v78 objects:v90 count:16];
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
            objc_enumerationMutation(entityProtobufMessages2);
          }

          v53 = [[_SFPBNamedProtobufMessage alloc] initWithFacade:*(*(&v78 + 1) + 8 * k)];
          if (v53)
          {
            [v47 addObject:v53];
          }
        }

        v50 = [entityProtobufMessages2 countByEnumeratingWithState:&v78 objects:v90 count:16];
      }

      while (v50);
    }

    v5 = v77;
    [(_SFPBCard *)v77 setEntityProtobufMessages:v47];
    titleImage = [facadeCopy titleImage];

    if (titleImage)
    {
      v55 = [_SFPBImage alloc];
      titleImage2 = [facadeCopy titleImage];
      v57 = [(_SFPBImage *)v55 initWithFacade:titleImage2];
      [(_SFPBCard *)v77 setTitleImage:v57];
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v59 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v61 = [(_SFPBColor *)v59 initWithFacade:backgroundColor2];
      [(_SFPBCard *)v77 setBackgroundColor:v61];
    }

    metadata = [facadeCopy metadata];

    if (metadata)
    {
      v63 = [_SFPBDrillDownMetadata alloc];
      metadata2 = [facadeCopy metadata];
      v65 = [(_SFPBDrillDownMetadata *)v63 initWithFacade:metadata2];
      [(_SFPBCard *)v77 setMetadata:v65];
    }

    drilldownMetadata = [facadeCopy drilldownMetadata];

    if (drilldownMetadata)
    {
      v67 = [_SFPBDrillDownMetadata alloc];
      drilldownMetadata2 = [facadeCopy drilldownMetadata];
      v69 = [(_SFPBDrillDownMetadata *)v67 initWithFacade:drilldownMetadata2];
      [(_SFPBCard *)v77 setDrilldownMetadata:v69];
    }

    backgroundImage = [facadeCopy backgroundImage];

    if (backgroundImage)
    {
      v71 = [_SFPBImage alloc];
      backgroundImage2 = [facadeCopy backgroundImage];
      v73 = [(_SFPBImage *)v71 initWithFacade:backgroundImage2];
      [(_SFPBCard *)v77 setBackgroundImage:v73];
    }

    v74 = v77;
  }

  v75 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCard)initWithDictionary:(id)dictionary
{
  v103 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v99.receiver = self;
  v99.super_class = _SFPBCard;
  v5 = [(_SFPBCard *)&v99 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCard *)v5 setTitle:v7];
    }

    v74 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCard setType:](v5, "setType:", [v8 intValue]);
    }

    v73 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"cardSections"];
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"intentMessageData"];
    objc_opt_class();
    v85 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v17 options:0];
      [(_SFPBCard *)v5 setIntentMessageData:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"intentMessageName"];
    objc_opt_class();
    v84 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 copy];
      [(_SFPBCard *)v5 setIntentMessageName:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"intentResponseMessageData"];
    objc_opt_class();
    v83 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v21 options:0];
      [(_SFPBCard *)v5 setIntentResponseMessageData:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"intentResponseMessageName"];
    objc_opt_class();
    v82 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(_SFPBCard *)v5 setIntentResponseMessageName:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"dismissalCommands"];
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

    v33 = [dictionaryCopy objectForKeyedSubscript:@"cardId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 copy];
      [(_SFPBCard *)v5 setCardId:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"contextReferenceIdentifier"];
    objc_opt_class();
    v80 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(_SFPBCard *)v5 setContextReferenceIdentifier:v36];
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"urlValue"];
    objc_opt_class();
    v79 = v37;
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBURL alloc] initWithDictionary:v37];
      [(_SFPBCard *)v5 setUrlValue:v38];
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    v78 = v39;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCard setSource:](v5, "setSource:", [v39 intValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"entityIdentifier"];
    objc_opt_class();
    v77 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v40 options:0];
      [(_SFPBCard *)v5 setEntityIdentifier:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"resultIdentifier"];
    objc_opt_class();
    v76 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [v42 copy];
      [(_SFPBCard *)v5 setResultIdentifier:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"queryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCard setQueryId:](v5, "setQueryId:", [v44 unsignedLongLongValue]);
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"fbr"];
    objc_opt_class();
    v75 = v45;
    if (objc_opt_isKindOfClass())
    {
      v46 = v44;
      v47 = [v45 copy];
      [(_SFPBCard *)v5 setFbr:v47];

      v44 = v46;
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"flexibleSectionOrder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCard setFlexibleSectionOrder:](v5, "setFlexibleSectionOrder:", [v48 BOOLValue]);
    }

    v71 = v48;
    v72 = v33;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"entityProtobufMessages"];
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

    v57 = [dictionaryCopy objectForKeyedSubscript:@"titleImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [[_SFPBImage alloc] initWithDictionary:v57];
      [(_SFPBCard *)v5 setTitleImage:v58];
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = [[_SFPBColor alloc] initWithDictionary:v59];
      [(_SFPBCard *)v5 setBackgroundColor:v60];
    }

    v61 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = [[_SFPBDrillDownMetadata alloc] initWithDictionary:v61];
      [(_SFPBCard *)v5 setMetadata:v62];
    }

    v63 = [dictionaryCopy objectForKeyedSubscript:@"drilldownMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = [[_SFPBDrillDownMetadata alloc] initWithDictionary:v63];
      [(_SFPBCard *)v5 setDrilldownMetadata:v64];
    }

    v65 = [dictionaryCopy objectForKeyedSubscript:@"backgroundImage"];
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

- (_SFPBCard)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCard *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCard *)self dictionaryRepresentation];
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
  v93 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBCard *)self backgroundColor];
    dictionaryRepresentation = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_backgroundImage)
  {
    backgroundImage = [(_SFPBCard *)self backgroundImage];
    dictionaryRepresentation2 = [backgroundImage dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundImage"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundImage"];
    }
  }

  if (self->_cardId)
  {
    cardId = [(_SFPBCard *)self cardId];
    v11 = [cardId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"cardId"];
  }

  if ([(NSArray *)self->_cardSections count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v86 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"cardSections"];
  }

  if (self->_contextReferenceIdentifier)
  {
    contextReferenceIdentifier = [(_SFPBCard *)self contextReferenceIdentifier];
    v21 = [contextReferenceIdentifier copy];
    [dictionary setObject:v21 forKeyedSubscript:@"contextReferenceIdentifier"];
  }

  if ([(NSArray *)self->_dismissalCommands count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v82 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v82 objects:v91 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"dismissalCommands"];
  }

  if (self->_drilldownMetadata)
  {
    drilldownMetadata = [(_SFPBCard *)self drilldownMetadata];
    dictionaryRepresentation5 = [drilldownMetadata dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"drilldownMetadata"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"drilldownMetadata"];
    }
  }

  if (self->_entityIdentifier)
  {
    entityIdentifier = [(_SFPBCard *)self entityIdentifier];
    v34 = [entityIdentifier base64EncodedStringWithOptions:0];
    if (v34)
    {
      [dictionary setObject:v34 forKeyedSubscript:@"entityIdentifier"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"entityIdentifier"];
    }
  }

  if ([(NSArray *)self->_entityProtobufMessages count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation6 = [*(*(&v78 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array3 addObject:dictionaryRepresentation6];
          }

          else
          {
            null7 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null7];
          }
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v78 objects:v90 count:16];
      }

      while (v39);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"entityProtobufMessages"];
  }

  if (self->_fbr)
  {
    v44 = [(_SFPBCard *)self fbr];
    v45 = [v44 copy];
    [dictionary setObject:v45 forKeyedSubscript:@"fbr"];
  }

  if (self->_flexibleSectionOrder)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCard flexibleSectionOrder](self, "flexibleSectionOrder")}];
    [dictionary setObject:v46 forKeyedSubscript:@"flexibleSectionOrder"];
  }

  if (self->_intentMessageData)
  {
    intentMessageData = [(_SFPBCard *)self intentMessageData];
    v48 = [intentMessageData base64EncodedStringWithOptions:0];
    if (v48)
    {
      [dictionary setObject:v48 forKeyedSubscript:@"intentMessageData"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"intentMessageData"];
    }
  }

  if (self->_intentMessageName)
  {
    intentMessageName = [(_SFPBCard *)self intentMessageName];
    v51 = [intentMessageName copy];
    [dictionary setObject:v51 forKeyedSubscript:@"intentMessageName"];
  }

  if (self->_intentResponseMessageData)
  {
    intentResponseMessageData = [(_SFPBCard *)self intentResponseMessageData];
    v53 = [intentResponseMessageData base64EncodedStringWithOptions:0];
    if (v53)
    {
      [dictionary setObject:v53 forKeyedSubscript:@"intentResponseMessageData"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"intentResponseMessageData"];
    }
  }

  if (self->_intentResponseMessageName)
  {
    intentResponseMessageName = [(_SFPBCard *)self intentResponseMessageName];
    v56 = [intentResponseMessageName copy];
    [dictionary setObject:v56 forKeyedSubscript:@"intentResponseMessageName"];
  }

  if (self->_metadata)
  {
    metadata = [(_SFPBCard *)self metadata];
    dictionaryRepresentation7 = [metadata dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"metadata"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"metadata"];
    }
  }

  if (self->_queryId)
  {
    v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCard queryId](self, "queryId")}];
    [dictionary setObject:v60 forKeyedSubscript:@"queryId"];
  }

  if (self->_resultIdentifier)
  {
    resultIdentifier = [(_SFPBCard *)self resultIdentifier];
    v62 = [resultIdentifier copy];
    [dictionary setObject:v62 forKeyedSubscript:@"resultIdentifier"];
  }

  if (self->_source)
  {
    source = [(_SFPBCard *)self source];
    if (source >= 3)
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", source];
    }

    else
    {
      v64 = off_1E7ACE548[source];
    }

    [dictionary setObject:v64 forKeyedSubscript:@"source"];
  }

  if (self->_title)
  {
    title = [(_SFPBCard *)self title];
    v66 = [title copy];
    [dictionary setObject:v66 forKeyedSubscript:@"title"];
  }

  if (self->_titleImage)
  {
    titleImage = [(_SFPBCard *)self titleImage];
    dictionaryRepresentation8 = [titleImage dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"titleImage"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"titleImage"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBCard *)self type];
    if (type >= 4)
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v71 = off_1E7ACE560[type];
    }

    [dictionary setObject:v71 forKeyedSubscript:@"type"];
  }

  if (self->_urlValue)
  {
    urlValue = [(_SFPBCard *)self urlValue];
    dictionaryRepresentation9 = [urlValue dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"urlValue"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"urlValue"];
    }
  }

  v75 = dictionary;

  v76 = *MEMORY[0x1E69E9840];
  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_101;
  }

  title = [(_SFPBCard *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  title3 = [(_SFPBCard *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBCard *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_101;
  }

  title = [(_SFPBCard *)self cardSections];
  title2 = [equalCopy cardSections];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  cardSections = [(_SFPBCard *)self cardSections];
  if (cardSections)
  {
    v14 = cardSections;
    cardSections2 = [(_SFPBCard *)self cardSections];
    cardSections3 = [equalCopy cardSections];
    v17 = [cardSections2 isEqual:cardSections3];

    if (!v17)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self intentMessageData];
  title2 = [equalCopy intentMessageData];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  intentMessageData = [(_SFPBCard *)self intentMessageData];
  if (intentMessageData)
  {
    v19 = intentMessageData;
    intentMessageData2 = [(_SFPBCard *)self intentMessageData];
    intentMessageData3 = [equalCopy intentMessageData];
    v22 = [intentMessageData2 isEqual:intentMessageData3];

    if (!v22)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self intentMessageName];
  title2 = [equalCopy intentMessageName];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  intentMessageName = [(_SFPBCard *)self intentMessageName];
  if (intentMessageName)
  {
    v24 = intentMessageName;
    intentMessageName2 = [(_SFPBCard *)self intentMessageName];
    intentMessageName3 = [equalCopy intentMessageName];
    v27 = [intentMessageName2 isEqual:intentMessageName3];

    if (!v27)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self intentResponseMessageData];
  title2 = [equalCopy intentResponseMessageData];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  intentResponseMessageData = [(_SFPBCard *)self intentResponseMessageData];
  if (intentResponseMessageData)
  {
    v29 = intentResponseMessageData;
    intentResponseMessageData2 = [(_SFPBCard *)self intentResponseMessageData];
    intentResponseMessageData3 = [equalCopy intentResponseMessageData];
    v32 = [intentResponseMessageData2 isEqual:intentResponseMessageData3];

    if (!v32)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self intentResponseMessageName];
  title2 = [equalCopy intentResponseMessageName];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  intentResponseMessageName = [(_SFPBCard *)self intentResponseMessageName];
  if (intentResponseMessageName)
  {
    v34 = intentResponseMessageName;
    intentResponseMessageName2 = [(_SFPBCard *)self intentResponseMessageName];
    intentResponseMessageName3 = [equalCopy intentResponseMessageName];
    v37 = [intentResponseMessageName2 isEqual:intentResponseMessageName3];

    if (!v37)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self dismissalCommands];
  title2 = [equalCopy dismissalCommands];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  dismissalCommands = [(_SFPBCard *)self dismissalCommands];
  if (dismissalCommands)
  {
    v39 = dismissalCommands;
    dismissalCommands2 = [(_SFPBCard *)self dismissalCommands];
    dismissalCommands3 = [equalCopy dismissalCommands];
    v42 = [dismissalCommands2 isEqual:dismissalCommands3];

    if (!v42)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self cardId];
  title2 = [equalCopy cardId];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  cardId = [(_SFPBCard *)self cardId];
  if (cardId)
  {
    v44 = cardId;
    cardId2 = [(_SFPBCard *)self cardId];
    cardId3 = [equalCopy cardId];
    v47 = [cardId2 isEqual:cardId3];

    if (!v47)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self contextReferenceIdentifier];
  title2 = [equalCopy contextReferenceIdentifier];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  contextReferenceIdentifier = [(_SFPBCard *)self contextReferenceIdentifier];
  if (contextReferenceIdentifier)
  {
    v49 = contextReferenceIdentifier;
    contextReferenceIdentifier2 = [(_SFPBCard *)self contextReferenceIdentifier];
    contextReferenceIdentifier3 = [equalCopy contextReferenceIdentifier];
    v52 = [contextReferenceIdentifier2 isEqual:contextReferenceIdentifier3];

    if (!v52)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self urlValue];
  title2 = [equalCopy urlValue];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  urlValue = [(_SFPBCard *)self urlValue];
  if (urlValue)
  {
    v54 = urlValue;
    urlValue2 = [(_SFPBCard *)self urlValue];
    urlValue3 = [equalCopy urlValue];
    v57 = [urlValue2 isEqual:urlValue3];

    if (!v57)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  source = self->_source;
  if (source != [equalCopy source])
  {
    goto LABEL_101;
  }

  title = [(_SFPBCard *)self entityIdentifier];
  title2 = [equalCopy entityIdentifier];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  entityIdentifier = [(_SFPBCard *)self entityIdentifier];
  if (entityIdentifier)
  {
    v60 = entityIdentifier;
    entityIdentifier2 = [(_SFPBCard *)self entityIdentifier];
    entityIdentifier3 = [equalCopy entityIdentifier];
    v63 = [entityIdentifier2 isEqual:entityIdentifier3];

    if (!v63)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self resultIdentifier];
  title2 = [equalCopy resultIdentifier];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  resultIdentifier = [(_SFPBCard *)self resultIdentifier];
  if (resultIdentifier)
  {
    v65 = resultIdentifier;
    resultIdentifier2 = [(_SFPBCard *)self resultIdentifier];
    resultIdentifier3 = [equalCopy resultIdentifier];
    v68 = [resultIdentifier2 isEqual:resultIdentifier3];

    if (!v68)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  queryId = self->_queryId;
  if (queryId != [equalCopy queryId])
  {
    goto LABEL_101;
  }

  title = [(_SFPBCard *)self fbr];
  title2 = [equalCopy fbr];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  v70 = [(_SFPBCard *)self fbr];
  if (v70)
  {
    v71 = v70;
    v72 = [(_SFPBCard *)self fbr];
    v73 = [equalCopy fbr];
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
  if (flexibleSectionOrder != [equalCopy flexibleSectionOrder])
  {
    goto LABEL_101;
  }

  title = [(_SFPBCard *)self entityProtobufMessages];
  title2 = [equalCopy entityProtobufMessages];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  entityProtobufMessages = [(_SFPBCard *)self entityProtobufMessages];
  if (entityProtobufMessages)
  {
    v77 = entityProtobufMessages;
    entityProtobufMessages2 = [(_SFPBCard *)self entityProtobufMessages];
    entityProtobufMessages3 = [equalCopy entityProtobufMessages];
    v80 = [entityProtobufMessages2 isEqual:entityProtobufMessages3];

    if (!v80)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self titleImage];
  title2 = [equalCopy titleImage];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  titleImage = [(_SFPBCard *)self titleImage];
  if (titleImage)
  {
    v82 = titleImage;
    titleImage2 = [(_SFPBCard *)self titleImage];
    titleImage3 = [equalCopy titleImage];
    v85 = [titleImage2 isEqual:titleImage3];

    if (!v85)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self backgroundColor];
  title2 = [equalCopy backgroundColor];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  backgroundColor = [(_SFPBCard *)self backgroundColor];
  if (backgroundColor)
  {
    v87 = backgroundColor;
    backgroundColor2 = [(_SFPBCard *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v90 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v90)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self metadata];
  title2 = [equalCopy metadata];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  metadata = [(_SFPBCard *)self metadata];
  if (metadata)
  {
    v92 = metadata;
    metadata2 = [(_SFPBCard *)self metadata];
    metadata3 = [equalCopy metadata];
    v95 = [metadata2 isEqual:metadata3];

    if (!v95)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self drilldownMetadata];
  title2 = [equalCopy drilldownMetadata];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_100;
  }

  drilldownMetadata = [(_SFPBCard *)self drilldownMetadata];
  if (drilldownMetadata)
  {
    v97 = drilldownMetadata;
    drilldownMetadata2 = [(_SFPBCard *)self drilldownMetadata];
    drilldownMetadata3 = [equalCopy drilldownMetadata];
    v100 = [drilldownMetadata2 isEqual:drilldownMetadata3];

    if (!v100)
    {
      goto LABEL_101;
    }
  }

  else
  {
  }

  title = [(_SFPBCard *)self backgroundImage];
  title2 = [equalCopy backgroundImage];
  if ((title != 0) == (title2 == 0))
  {
LABEL_100:

    goto LABEL_101;
  }

  backgroundImage = [(_SFPBCard *)self backgroundImage];
  if (!backgroundImage)
  {

LABEL_104:
    v106 = 1;
    goto LABEL_102;
  }

  v102 = backgroundImage;
  backgroundImage2 = [(_SFPBCard *)self backgroundImage];
  backgroundImage3 = [equalCopy backgroundImage];
  v105 = [backgroundImage2 isEqual:backgroundImage3];

  if (v105)
  {
    goto LABEL_104;
  }

LABEL_101:
  v106 = 0;
LABEL_102:

  return v106;
}

- (void)writeTo:(id)to
{
  v55 = *MEMORY[0x1E69E9840];
  toCopy = to;
  title = [(_SFPBCard *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCard *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  cardSections = [(_SFPBCard *)self cardSections];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = [cardSections countByEnumeratingWithState:&v48 objects:v54 count:16];
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
          objc_enumerationMutation(cardSections);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [cardSections countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  intentMessageData = [(_SFPBCard *)self intentMessageData];
  if (intentMessageData)
  {
    PBDataWriterWriteDataField();
  }

  intentMessageName = [(_SFPBCard *)self intentMessageName];
  if (intentMessageName)
  {
    PBDataWriterWriteStringField();
  }

  intentResponseMessageData = [(_SFPBCard *)self intentResponseMessageData];
  if (intentResponseMessageData)
  {
    PBDataWriterWriteDataField();
  }

  intentResponseMessageName = [(_SFPBCard *)self intentResponseMessageName];
  if (intentResponseMessageName)
  {
    PBDataWriterWriteStringField();
  }

  dismissalCommands = [(_SFPBCard *)self dismissalCommands];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = [dismissalCommands countByEnumeratingWithState:&v44 objects:v53 count:16];
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
          objc_enumerationMutation(dismissalCommands);
        }

        v21 = *(*(&v44 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [dismissalCommands countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v18);
  }

  cardId = [(_SFPBCard *)self cardId];
  if (cardId)
  {
    PBDataWriterWriteStringField();
  }

  contextReferenceIdentifier = [(_SFPBCard *)self contextReferenceIdentifier];
  if (contextReferenceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  urlValue = [(_SFPBCard *)self urlValue];
  if (urlValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCard *)self source])
  {
    PBDataWriterWriteInt32Field();
  }

  entityIdentifier = [(_SFPBCard *)self entityIdentifier];
  if (entityIdentifier)
  {
    PBDataWriterWriteDataField();
  }

  resultIdentifier = [(_SFPBCard *)self resultIdentifier];
  if (resultIdentifier)
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

  entityProtobufMessages = [(_SFPBCard *)self entityProtobufMessages];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = [entityProtobufMessages countByEnumeratingWithState:&v40 objects:v52 count:16];
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
          objc_enumerationMutation(entityProtobufMessages);
        }

        v33 = *(*(&v40 + 1) + 8 * v32);
        PBDataWriterWriteSubmessage();
        ++v32;
      }

      while (v30 != v32);
      v30 = [entityProtobufMessages countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v30);
  }

  titleImage = [(_SFPBCard *)self titleImage];
  if (titleImage)
  {
    PBDataWriterWriteSubmessage();
  }

  backgroundColor = [(_SFPBCard *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  metadata = [(_SFPBCard *)self metadata];
  if (metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  drilldownMetadata = [(_SFPBCard *)self drilldownMetadata];
  if (drilldownMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  backgroundImage = [(_SFPBCard *)self backgroundImage];
  if (backgroundImage)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)addEntityProtobufMessages:(id)messages
{
  messagesCopy = messages;
  entityProtobufMessages = self->_entityProtobufMessages;
  v8 = messagesCopy;
  if (!entityProtobufMessages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityProtobufMessages;
    self->_entityProtobufMessages = array;

    messagesCopy = v8;
    entityProtobufMessages = self->_entityProtobufMessages;
  }

  [(NSArray *)entityProtobufMessages addObject:messagesCopy];
}

- (void)setEntityProtobufMessages:(id)messages
{
  v4 = [messages copy];
  entityProtobufMessages = self->_entityProtobufMessages;
  self->_entityProtobufMessages = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFbr:(id)fbr
{
  v4 = [fbr copy];
  fbr = self->_fbr;
  self->_fbr = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setResultIdentifier:(id)identifier
{
  v4 = [identifier copy];
  resultIdentifier = self->_resultIdentifier;
  self->_resultIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEntityIdentifier:(id)identifier
{
  v4 = [identifier copy];
  entityIdentifier = self->_entityIdentifier;
  self->_entityIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContextReferenceIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contextReferenceIdentifier = self->_contextReferenceIdentifier;
  self->_contextReferenceIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCardId:(id)id
{
  v4 = [id copy];
  cardId = self->_cardId;
  self->_cardId = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addDismissalCommands:(id)commands
{
  commandsCopy = commands;
  dismissalCommands = self->_dismissalCommands;
  v8 = commandsCopy;
  if (!dismissalCommands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_dismissalCommands;
    self->_dismissalCommands = array;

    commandsCopy = v8;
    dismissalCommands = self->_dismissalCommands;
  }

  [(NSArray *)dismissalCommands addObject:commandsCopy];
}

- (void)setDismissalCommands:(id)commands
{
  v4 = [commands copy];
  dismissalCommands = self->_dismissalCommands;
  self->_dismissalCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentResponseMessageName:(id)name
{
  v4 = [name copy];
  intentResponseMessageName = self->_intentResponseMessageName;
  self->_intentResponseMessageName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentResponseMessageData:(id)data
{
  v4 = [data copy];
  intentResponseMessageData = self->_intentResponseMessageData;
  self->_intentResponseMessageData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentMessageName:(id)name
{
  v4 = [name copy];
  intentMessageName = self->_intentMessageName;
  self->_intentMessageName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentMessageData:(id)data
{
  v4 = [data copy];
  intentMessageData = self->_intentMessageData;
  self->_intentMessageData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCardSections:(id)sections
{
  sectionsCopy = sections;
  cardSections = self->_cardSections;
  v8 = sectionsCopy;
  if (!cardSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardSections;
    self->_cardSections = array;

    sectionsCopy = v8;
    cardSections = self->_cardSections;
  }

  [(NSArray *)cardSections addObject:sectionsCopy];
}

- (void)setCardSections:(id)sections
{
  v4 = [sections copy];
  cardSections = self->_cardSections;
  self->_cardSections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end