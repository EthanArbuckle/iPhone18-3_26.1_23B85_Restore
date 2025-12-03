@interface SFCard
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCard)initWithCoder:(id)coder;
- (SFCard)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)loadCardSectionsWithCompletionAndErrorHandler:(id)handler;
- (void)loadCardSectionsWithCompletionHandler:(id)handler;
@end

@implementation SFCard

- (SFCard)initWithProtobuf:(id)protobuf
{
  v93 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v89.receiver = self;
  v89.super_class = SFCard;
  v5 = [(SFCard *)&v89 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFCard *)v5 setTitle:title2];
    }

    if ([protobufCopy type])
    {
      -[SFCard setType:](v5, "setType:", [protobufCopy type]);
    }

    cardSections = [protobufCopy cardSections];
    v76 = v5;
    if (cardSections)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    cardSections2 = [protobufCopy cardSections];
    v11 = [cardSections2 countByEnumeratingWithState:&v85 objects:v92 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v86;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v86 != v13)
          {
            objc_enumerationMutation(cardSections2);
          }

          v15 = [[SFCardSection alloc] initWithProtobuf:*(*(&v85 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [cardSections2 countByEnumeratingWithState:&v85 objects:v92 count:16];
      }

      while (v12);
    }

    [(SFCard *)v5 setCardSections:v9];
    intentMessageData = [protobufCopy intentMessageData];

    if (intentMessageData)
    {
      intentMessageData2 = [protobufCopy intentMessageData];
      [(SFCard *)v5 setIntentMessageData:intentMessageData2];
    }

    intentMessageName = [protobufCopy intentMessageName];

    if (intentMessageName)
    {
      intentMessageName2 = [protobufCopy intentMessageName];
      [(SFCard *)v5 setIntentMessageName:intentMessageName2];
    }

    intentResponseMessageData = [protobufCopy intentResponseMessageData];

    if (intentResponseMessageData)
    {
      intentResponseMessageData2 = [protobufCopy intentResponseMessageData];
      [(SFCard *)v5 setIntentResponseMessageData:intentResponseMessageData2];
    }

    intentResponseMessageName = [protobufCopy intentResponseMessageName];

    if (intentResponseMessageName)
    {
      intentResponseMessageName2 = [protobufCopy intentResponseMessageName];
      [(SFCard *)v5 setIntentResponseMessageName:intentResponseMessageName2];
    }

    dismissalCommands = [protobufCopy dismissalCommands];
    if (dismissalCommands)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    dismissalCommands2 = [protobufCopy dismissalCommands];
    v27 = [dismissalCommands2 countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v82;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v82 != v29)
          {
            objc_enumerationMutation(dismissalCommands2);
          }

          v31 = [[SFAbstractCommand alloc] initWithProtobuf:*(*(&v81 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [dismissalCommands2 countByEnumeratingWithState:&v81 objects:v91 count:16];
      }

      while (v28);
    }

    [(SFCard *)v76 setDismissalCommands:v25];
    cardId = [protobufCopy cardId];

    if (cardId)
    {
      cardId2 = [protobufCopy cardId];
      [(SFCard *)v76 setCardId:cardId2];
    }

    contextReferenceIdentifier = [protobufCopy contextReferenceIdentifier];

    if (contextReferenceIdentifier)
    {
      contextReferenceIdentifier2 = [protobufCopy contextReferenceIdentifier];
      [(SFCard *)v76 setContextReferenceIdentifier:contextReferenceIdentifier2];
    }

    urlValue = [protobufCopy urlValue];

    if (urlValue)
    {
      urlValue2 = [protobufCopy urlValue];
      v38 = _SFPBURLHandwrittenTranslator(urlValue2);
      [(SFCard *)v76 setUrlValue:v38];
    }

    if ([protobufCopy source])
    {
      -[SFCard setSource:](v76, "setSource:", [protobufCopy source]);
    }

    entityIdentifier = [protobufCopy entityIdentifier];

    if (entityIdentifier)
    {
      entityIdentifier2 = [protobufCopy entityIdentifier];
      [(SFCard *)v76 setEntityIdentifier:entityIdentifier2];
    }

    resultIdentifier = [protobufCopy resultIdentifier];

    if (resultIdentifier)
    {
      resultIdentifier2 = [protobufCopy resultIdentifier];
      [(SFCard *)v76 setResultIdentifier:resultIdentifier2];
    }

    if ([protobufCopy queryId])
    {
      -[SFCard setQueryId:](v76, "setQueryId:", [protobufCopy queryId]);
    }

    v43 = [protobufCopy fbr];

    if (v43)
    {
      v44 = [protobufCopy fbr];
      [(SFCard *)v76 setFbr:v44];
    }

    if ([protobufCopy flexibleSectionOrder])
    {
      -[SFCard setFlexibleSectionOrder:](v76, "setFlexibleSectionOrder:", [protobufCopy flexibleSectionOrder]);
    }

    entityProtobufMessages = [protobufCopy entityProtobufMessages];
    if (entityProtobufMessages)
    {
      v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v46 = 0;
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    entityProtobufMessages2 = [protobufCopy entityProtobufMessages];
    v48 = [entityProtobufMessages2 countByEnumeratingWithState:&v77 objects:v90 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v78;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v78 != v50)
          {
            objc_enumerationMutation(entityProtobufMessages2);
          }

          v52 = [[SFNamedProtobufMessage alloc] initWithProtobuf:*(*(&v77 + 1) + 8 * k)];
          if (v52)
          {
            [v46 addObject:v52];
          }
        }

        v49 = [entityProtobufMessages2 countByEnumeratingWithState:&v77 objects:v90 count:16];
      }

      while (v49);
    }

    v5 = v76;
    [(SFCard *)v76 setEntityProtobufMessages:v46];
    titleImage = [protobufCopy titleImage];

    if (titleImage)
    {
      v54 = [SFImage alloc];
      titleImage2 = [protobufCopy titleImage];
      v56 = [(SFImage *)v54 initWithProtobuf:titleImage2];
      [(SFCard *)v76 setTitleImage:v56];
    }

    backgroundColor = [protobufCopy backgroundColor];

    if (backgroundColor)
    {
      v58 = [SFColor alloc];
      backgroundColor2 = [protobufCopy backgroundColor];
      v60 = [(SFColor *)v58 initWithProtobuf:backgroundColor2];
      [(SFCard *)v76 setBackgroundColor:v60];
    }

    metadata = [protobufCopy metadata];

    if (metadata)
    {
      v62 = [SFDrillDownMetadata alloc];
      metadata2 = [protobufCopy metadata];
      v64 = [(SFDrillDownMetadata *)v62 initWithProtobuf:metadata2];
      [(SFCard *)v76 setMetadata:v64];
    }

    drilldownMetadata = [protobufCopy drilldownMetadata];

    if (drilldownMetadata)
    {
      v66 = [SFDrillDownMetadata alloc];
      drilldownMetadata2 = [protobufCopy drilldownMetadata];
      v68 = [(SFDrillDownMetadata *)v66 initWithProtobuf:drilldownMetadata2];
      [(SFCard *)v76 setDrilldownMetadata:v68];
    }

    backgroundImage = [protobufCopy backgroundImage];

    if (backgroundImage)
    {
      v70 = [SFImage alloc];
      backgroundImage2 = [protobufCopy backgroundImage];
      v72 = [(SFImage *)v70 initWithProtobuf:backgroundImage2];
      [(SFCard *)v76 setBackgroundImage:v72];
    }

    v73 = v76;
  }

  v74 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)loadCardSectionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SFCard_Handwritten__loadCardSectionsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7ACDBB8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(SFCard *)self loadCardSectionsWithCompletionAndErrorHandler:v6];
}

- (void)loadCardSectionsWithCompletionAndErrorHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SFCard_Handwritten__loadCardSectionsWithCompletionAndErrorHandler___block_invoke;
  v6[3] = &unk_1E7ACDB90;
  v7 = handlerCopy;
  v5 = handlerCopy;
  SFResourceLoaderLoadCard(self, v6);
}

void __69__SFCard_Handwritten__loadCardSectionsWithCompletionAndErrorHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 cardSections];
  (*(v4 + 16))(v4, v6, v5);
}

- (unint64_t)hash
{
  title = [(SFCard *)self title];
  v3 = [title hash];
  v4 = v3 ^ [(SFCard *)self type];
  cardSections = [(SFCard *)self cardSections];
  v5 = [cardSections hash];
  intentMessageData = [(SFCard *)self intentMessageData];
  v6 = v4 ^ v5 ^ [intentMessageData hash];
  intentMessageName = [(SFCard *)self intentMessageName];
  v7 = [intentMessageName hash];
  intentResponseMessageData = [(SFCard *)self intentResponseMessageData];
  v8 = v7 ^ [intentResponseMessageData hash];
  intentResponseMessageName = [(SFCard *)self intentResponseMessageName];
  v9 = v6 ^ v8 ^ [intentResponseMessageName hash];
  dismissalCommands = [(SFCard *)self dismissalCommands];
  v10 = [dismissalCommands hash];
  cardId = [(SFCard *)self cardId];
  v11 = v10 ^ [cardId hash];
  contextReferenceIdentifier = [(SFCard *)self contextReferenceIdentifier];
  v12 = v11 ^ [contextReferenceIdentifier hash];
  urlValue = [(SFCard *)self urlValue];
  v13 = v9 ^ v12 ^ [urlValue hash];
  source = [(SFCard *)self source];
  entityIdentifier = [(SFCard *)self entityIdentifier];
  v16 = source ^ [entityIdentifier hash];
  resultIdentifier = [(SFCard *)self resultIdentifier];
  v18 = v16 ^ [resultIdentifier hash];
  v19 = v18 ^ [(SFCard *)self queryId];
  v20 = [(SFCard *)self fbr];
  v21 = v13 ^ v19 ^ [v20 hash];
  flexibleSectionOrder = [(SFCard *)self flexibleSectionOrder];
  entityProtobufMessages = [(SFCard *)self entityProtobufMessages];
  v24 = flexibleSectionOrder ^ [entityProtobufMessages hash];
  titleImage = [(SFCard *)self titleImage];
  v26 = v24 ^ [titleImage hash];
  backgroundColor = [(SFCard *)self backgroundColor];
  v28 = v26 ^ [backgroundColor hash];
  metadata = [(SFCard *)self metadata];
  v35 = v21 ^ v28 ^ [metadata hash];
  drilldownMetadata = [(SFCard *)self drilldownMetadata];
  v31 = [drilldownMetadata hash];
  backgroundImage = [(SFCard *)self backgroundImage];
  v33 = v31 ^ [backgroundImage hash];

  return v35 ^ v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_88;
  }

  if (![(SFCard *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v12 = 0;
    goto LABEL_88;
  }

  v8 = equalCopy;
  title = [(SFCard *)self title];
  title2 = [(SFCard *)v8 title];
  if ((title == title2 || (-[SFCard title](self, "title"), v11 = objc_claimAutoreleasedReturnValue(), -[SFCard title](v8, "title"), v123 = objc_claimAutoreleasedReturnValue(), v124 = v11, [v11 isEqual:?])) && (v13 = -[SFCard type](self, "type"), v13 == -[SFCard type](v8, "type")))
  {
    cardSections = [(SFCard *)self cardSections];
    cardSections2 = [(SFCard *)v8 cardSections];
    v122 = cardSections;
    backgroundImage2 = cardSections != cardSections2;
    if (cardSections == cardSections2 || (-[SFCard cardSections](self, "cardSections"), v15 = objc_claimAutoreleasedReturnValue(), -[SFCard cardSections](v8, "cardSections"), v118 = v15, v117 = objc_claimAutoreleasedReturnValue(), [v15 isEqual:?]))
    {
      intentMessageData = [(SFCard *)self intentMessageData];
      [(SFCard *)v8 intentMessageData];
      v119 = v120 = intentMessageData;
      v23 = intentMessageData != v119;
      *&v128[24] = backgroundImage2;
      if (intentMessageData == v119 || (-[SFCard intentMessageData](self, "intentMessageData"), v24 = objc_claimAutoreleasedReturnValue(), -[SFCard intentMessageData](v8, "intentMessageData"), v113 = objc_claimAutoreleasedReturnValue(), v114 = v24, [v24 isEqual:?]))
      {
        intentMessageName = [(SFCard *)self intentMessageName];
        intentMessageName2 = [(SFCard *)v8 intentMessageName];
        v116 = intentMessageName;
        urlValue = intentMessageName != intentMessageName2;
        *&v128[20] = v23;
        if (intentMessageName == intentMessageName2 || (-[SFCard intentMessageName](self, "intentMessageName"), v26 = objc_claimAutoreleasedReturnValue(), -[SFCard intentMessageName](v8, "intentMessageName"), v109 = objc_claimAutoreleasedReturnValue(), v110 = v26, [v26 isEqual:?]))
        {
          intentResponseMessageData = [(SFCard *)self intentResponseMessageData];
          intentResponseMessageData2 = [(SFCard *)v8 intentResponseMessageData];
          v112 = intentResponseMessageData;
          backgroundImage3 = intentResponseMessageData != intentResponseMessageData2;
          *&v128[16] = urlValue;
          if (intentResponseMessageData == intentResponseMessageData2 || (-[SFCard intentResponseMessageData](self, "intentResponseMessageData"), v28 = objc_claimAutoreleasedReturnValue(), -[SFCard intentResponseMessageData](v8, "intentResponseMessageData"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v28, [v28 isEqual:?]))
          {
            intentResponseMessageName = [(SFCard *)self intentResponseMessageName];
            intentResponseMessageName2 = [(SFCard *)v8 intentResponseMessageName];
            v108 = intentResponseMessageName;
            v30 = intentResponseMessageName == intentResponseMessageName2;
            v31 = intentResponseMessageName != intentResponseMessageName2;
            *&v128[12] = backgroundImage3;
            if (v30 || (-[SFCard intentResponseMessageName](self, "intentResponseMessageName"), urlValue = objc_claimAutoreleasedReturnValue(), -[SFCard intentResponseMessageName](v8, "intentResponseMessageName"), v101 = objc_claimAutoreleasedReturnValue(), v102 = urlValue, [urlValue isEqual:?]))
            {
              dismissalCommands = [(SFCard *)self dismissalCommands];
              dismissalCommands2 = [(SFCard *)v8 dismissalCommands];
              v104 = dismissalCommands;
              HIDWORD(v129[4]) = dismissalCommands != dismissalCommands2;
              *&v128[8] = v31;
              if (dismissalCommands == dismissalCommands2 || (-[SFCard dismissalCommands](self, "dismissalCommands"), urlValue = objc_claimAutoreleasedReturnValue(), -[SFCard dismissalCommands](v8, "dismissalCommands"), v97 = objc_claimAutoreleasedReturnValue(), v98 = urlValue, [urlValue isEqual:?]))
              {
                cardId = [(SFCard *)self cardId];
                cardId2 = [(SFCard *)v8 cardId];
                v100 = cardId;
                LODWORD(v129[4]) = cardId != cardId2;
                if (cardId == cardId2 || (-[SFCard cardId](self, "cardId"), urlValue = objc_claimAutoreleasedReturnValue(), -[SFCard cardId](v8, "cardId"), v93 = objc_claimAutoreleasedReturnValue(), v94 = urlValue, [urlValue isEqual:?]))
                {
                  contextReferenceIdentifier = [(SFCard *)self contextReferenceIdentifier];
                  contextReferenceIdentifier2 = [(SFCard *)v8 contextReferenceIdentifier];
                  v96 = contextReferenceIdentifier;
                  HIDWORD(v129[3]) = contextReferenceIdentifier != contextReferenceIdentifier2;
                  if (contextReferenceIdentifier == contextReferenceIdentifier2 || (-[SFCard contextReferenceIdentifier](self, "contextReferenceIdentifier"), urlValue = objc_claimAutoreleasedReturnValue(), -[SFCard contextReferenceIdentifier](v8, "contextReferenceIdentifier"), v89 = objc_claimAutoreleasedReturnValue(), v90 = urlValue, [urlValue isEqual:?]))
                  {
                    urlValue = [(SFCard *)self urlValue];
                    urlValue2 = [(SFCard *)v8 urlValue];
                    v92 = urlValue;
                    LODWORD(v129[3]) = urlValue != urlValue2;
                    if (urlValue == urlValue2 || (-[SFCard urlValue](self, "urlValue"), urlValue = objc_claimAutoreleasedReturnValue(), -[SFCard urlValue](v8, "urlValue"), v87 = objc_claimAutoreleasedReturnValue(), v88 = urlValue, [urlValue isEqual:?]))
                    {
                      source = [(SFCard *)self source];
                      if (source == [(SFCard *)v8 source])
                      {
                        entityIdentifier = [(SFCard *)self entityIdentifier];
                        entityIdentifier2 = [(SFCard *)v8 entityIdentifier];
                        v86 = entityIdentifier;
                        v30 = entityIdentifier == entityIdentifier2;
                        v37 = entityIdentifier != entityIdentifier2;
                        if (v30 || (-[SFCard entityIdentifier](self, "entityIdentifier"), urlValue = objc_claimAutoreleasedReturnValue(), -[SFCard entityIdentifier](v8, "entityIdentifier"), v81 = objc_claimAutoreleasedReturnValue(), v82 = urlValue, [urlValue isEqual:?]))
                        {
                          urlValue = [(SFCard *)self resultIdentifier];
                          resultIdentifier = [(SFCard *)v8 resultIdentifier];
                          v84 = urlValue;
                          HIDWORD(v129[2]) = urlValue != resultIdentifier;
                          *&v128[4] = v37;
                          if (urlValue == resultIdentifier || (-[SFCard resultIdentifier](self, "resultIdentifier"), urlValue = objc_claimAutoreleasedReturnValue(), -[SFCard resultIdentifier](v8, "resultIdentifier"), v79 = objc_claimAutoreleasedReturnValue(), v80 = urlValue, [urlValue isEqual:?]))
                          {
                            queryId = [(SFCard *)self queryId];
                            if (queryId == [(SFCard *)v8 queryId])
                            {
                              v39 = [(SFCard *)self fbr];
                              v77 = [(SFCard *)v8 fbr];
                              v78 = v39;
                              v30 = v39 == v77;
                              v40 = v39 != v77;
                              if (v30)
                              {
                                *v128 = v40;
                              }

                              else
                              {
                                urlValue = [(SFCard *)self fbr];
                                v75 = [(SFCard *)v8 fbr];
                                v76 = urlValue;
                                if (![urlValue isEqual:?])
                                {
                                  v126 = 0;
                                  memset(v127, 0, 12);
                                  memset(v129, 0, 20);
                                  v17 = 0;
                                  v18 = 0;
                                  v12 = 0;
                                  HIDWORD(v127[3]) = 1;
                                  *(&v127[2] + 4) = 0x100000001;
                                  *(&v127[1] + 4) = 0x100000001;
                                  v16 = 1;
                                  v125[2] = 0x100000001;
                                  v125[0] = 0x100000001;
                                  v125[1] = 0x100000001;
                                  *v128 = 1;
                                  goto LABEL_13;
                                }

                                *v128 = v40;
                              }

                              flexibleSectionOrder = [(SFCard *)self flexibleSectionOrder];
                              if (flexibleSectionOrder == [(SFCard *)v8 flexibleSectionOrder])
                              {
                                entityProtobufMessages = [(SFCard *)self entityProtobufMessages];
                                entityProtobufMessages2 = [(SFCard *)v8 entityProtobufMessages];
                                LODWORD(v129[2]) = entityProtobufMessages != entityProtobufMessages2;
                                v73 = entityProtobufMessages2;
                                v74 = entityProtobufMessages;
                                if (entityProtobufMessages == entityProtobufMessages2 || (-[SFCard entityProtobufMessages](self, "entityProtobufMessages"), v44 = objc_claimAutoreleasedReturnValue(), -[SFCard entityProtobufMessages](v8, "entityProtobufMessages"), v69 = objc_claimAutoreleasedReturnValue(), v70 = v44, [v44 isEqual:?]))
                                {
                                  titleImage = [(SFCard *)self titleImage];
                                  titleImage2 = [(SFCard *)v8 titleImage];
                                  v72 = titleImage;
                                  HIDWORD(v129[1]) = titleImage != titleImage2;
                                  if (titleImage == titleImage2 || (-[SFCard titleImage](self, "titleImage"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCard titleImage](v8, "titleImage"), v65 = objc_claimAutoreleasedReturnValue(), v66 = v46, [v46 isEqual:?]))
                                  {
                                    backgroundColor = [(SFCard *)self backgroundColor];
                                    backgroundColor2 = [(SFCard *)v8 backgroundColor];
                                    v68 = backgroundColor;
                                    LODWORD(v129[1]) = backgroundColor != backgroundColor2;
                                    if (backgroundColor == backgroundColor2 || (-[SFCard backgroundColor](self, "backgroundColor"), v48 = objc_claimAutoreleasedReturnValue(), -[SFCard backgroundColor](v8, "backgroundColor"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v48, [v48 isEqual:?]))
                                    {
                                      metadata = [(SFCard *)self metadata];
                                      metadata2 = [(SFCard *)v8 metadata];
                                      v64 = metadata;
                                      HIDWORD(v129[0]) = metadata != metadata2;
                                      if (metadata == metadata2 || (-[SFCard metadata](self, "metadata"), v50 = objc_claimAutoreleasedReturnValue(), -[SFCard metadata](v8, "metadata"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v50, [v50 isEqual:?]))
                                      {
                                        drilldownMetadata = [(SFCard *)self drilldownMetadata];
                                        drilldownMetadata2 = [(SFCard *)v8 drilldownMetadata];
                                        v60 = drilldownMetadata;
                                        LODWORD(v129[0]) = drilldownMetadata != drilldownMetadata2;
                                        if (drilldownMetadata == drilldownMetadata2 || (-[SFCard drilldownMetadata](self, "drilldownMetadata"), v52 = objc_claimAutoreleasedReturnValue(), -[SFCard drilldownMetadata](v8, "drilldownMetadata"), v54 = objc_claimAutoreleasedReturnValue(), v55 = v52, [v52 isEqual:?]))
                                        {
                                          backgroundImage = [(SFCard *)self backgroundImage];
                                          backgroundImage2 = [(SFCard *)v8 backgroundImage];
                                          v56 = backgroundImage;
                                          if (backgroundImage == backgroundImage2)
                                          {
                                            v18 = 0;
                                            HIDWORD(v127[3]) = 1;
                                            *(&v127[2] + 4) = 0x100000001;
                                            LODWORD(v127[1]) = 1;
                                            *(&v127[1] + 4) = 0x100000001;
                                            v16 = 1;
                                            v125[2] = 0x100000001;
                                            v125[0] = 0x100000001;
                                            v125[1] = 0x100000001;
                                            v126 = 0x100000001;
                                            v127[0] = 0x100000001;
                                            v17 = 1;
                                            v12 = 1;
                                          }

                                          else
                                          {
                                            backgroundImage3 = [(SFCard *)self backgroundImage];
                                            urlValue = [(SFCard *)v8 backgroundImage];
                                            v12 = [backgroundImage3 isEqual:urlValue];
                                            v18 = 1;
                                            HIDWORD(v127[3]) = 1;
                                            *(&v127[2] + 4) = 0x100000001;
                                            LODWORD(v127[1]) = 1;
                                            *(&v127[1] + 4) = 0x100000001;
                                            v16 = 1;
                                            v125[2] = 0x100000001;
                                            v125[0] = 0x100000001;
                                            v125[1] = 0x100000001;
                                            v126 = 0x100000001;
                                            v127[0] = 0x100000001;
                                            v17 = 1;
                                          }
                                        }

                                        else
                                        {
                                          v17 = 0;
                                          v18 = 0;
                                          v12 = 0;
                                          HIDWORD(v127[3]) = 1;
                                          *(&v127[2] + 4) = 0x100000001;
                                          LODWORD(v127[1]) = 1;
                                          *(&v127[1] + 4) = 0x100000001;
                                          v16 = 1;
                                          v125[2] = 0x100000001;
                                          v125[0] = 0x100000001;
                                          v125[1] = 0x100000001;
                                          v126 = 0x100000001;
                                          v127[0] = 0x100000001;
                                          LODWORD(v129[0]) = 1;
                                        }
                                      }

                                      else
                                      {
                                        v129[0] = 0x100000000;
                                        v17 = 0;
                                        v18 = 0;
                                        v12 = 0;
                                        HIDWORD(v127[3]) = 1;
                                        *(&v127[2] + 4) = 0x100000001;
                                        LODWORD(v127[1]) = 0;
                                        *(&v127[1] + 4) = 0x100000001;
                                        v16 = 1;
                                        v125[2] = 0x100000001;
                                        v125[0] = 0x100000001;
                                        v125[1] = 0x100000001;
                                        v126 = 0x100000001;
                                        v127[0] = 0x100000001;
                                      }
                                    }

                                    else
                                    {
                                      *(v127 + 4) = 0;
                                      v129[0] = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v12 = 0;
                                      HIDWORD(v127[3]) = 1;
                                      *(&v127[2] + 4) = 0x100000001;
                                      *(&v127[1] + 4) = 0x100000001;
                                      v16 = 1;
                                      v125[2] = 0x100000001;
                                      v125[0] = 0x100000001;
                                      v125[1] = 0x100000001;
                                      v126 = 0x100000001;
                                      LODWORD(v127[0]) = 1;
                                      LODWORD(v129[1]) = 1;
                                    }
                                  }

                                  else
                                  {
                                    memset(v127, 0, 12);
                                    *(v129 + 4) = 0;
                                    LODWORD(v129[0]) = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v12 = 0;
                                    HIDWORD(v127[3]) = 1;
                                    *(&v127[2] + 4) = 0x100000001;
                                    *(&v127[1] + 4) = 0x100000001;
                                    v16 = 1;
                                    v125[2] = 0x100000001;
                                    v125[0] = 0x100000001;
                                    v125[1] = 0x100000001;
                                    v126 = 0x100000001;
                                    HIDWORD(v129[1]) = 1;
                                  }
                                }

                                else
                                {
                                  v129[0] = 0;
                                  v129[1] = 0;
                                  memset(v127, 0, 12);
                                  v17 = 0;
                                  v18 = 0;
                                  v12 = 0;
                                  HIDWORD(v127[3]) = 1;
                                  *(&v127[2] + 4) = 0x100000001;
                                  *(&v127[1] + 4) = 0x100000001;
                                  v16 = 1;
                                  v126 = 0x100000000;
                                  v125[2] = 0x100000001;
                                  v125[0] = 0x100000001;
                                  v125[1] = 0x100000001;
                                  LODWORD(v129[2]) = 1;
                                }
                              }

                              else
                              {
                                v126 = 0;
                                memset(v127, 0, 12);
                                memset(v129, 0, 20);
                                v17 = 0;
                                v18 = 0;
                                v12 = 0;
                                HIDWORD(v127[3]) = 1;
                                *(&v127[2] + 4) = 0x100000001;
                                *(&v127[1] + 4) = 0x100000001;
                                v16 = 1;
                                v125[2] = 0x100000001;
                                v125[0] = 0x100000001;
                                v125[1] = 0x100000001;
                              }

                              goto LABEL_13;
                            }

                            v125[1] = 0x100000000;
                            v126 = 0;
                            memset(v127, 0, 12);
                            memset(v129, 0, 20);
                            v17 = 0;
                            v18 = 0;
                            v12 = 0;
                            HIDWORD(v127[3]) = 1;
                            *v128 = 0;
                            *(&v127[2] + 4) = 0x100000001;
                            *(&v127[1] + 4) = 0x100000001;
                            v16 = 1;
                            v125[2] = 0x100000001;
                            v125[0] = 0x100000001;
                          }

                          else
                          {
                            v125[1] = 0x100000000;
                            v126 = 0;
                            memset(v127, 0, 12);
                            memset(v129, 0, 20);
                            v17 = 0;
                            v18 = 0;
                            v12 = 0;
                            HIDWORD(v127[3]) = 1;
                            *v128 = 0;
                            *(&v127[2] + 4) = 0x100000001;
                            *(&v127[1] + 4) = 0x100000001;
                            v16 = 1;
                            v125[2] = 0x100000001;
                            v125[0] = 0x100000001;
                            HIDWORD(v129[2]) = 1;
                          }
                        }

                        else
                        {
                          *(v125 + 4) = 0;
                          v126 = 0;
                          memset(v127, 0, 12);
                          memset(v129, 0, 24);
                          v17 = 0;
                          v18 = 0;
                          v12 = 0;
                          HIDWORD(v127[3]) = 1;
                          *v128 = 0x100000000;
                          *(&v127[2] + 4) = 0x100000001;
                          *(&v127[1] + 4) = 0x100000001;
                          v16 = 1;
                          v125[2] = 0x100000001;
                          LODWORD(v125[0]) = 1;
                          HIDWORD(v125[1]) = 1;
                        }
                      }

                      else
                      {
                        v125[1] = 0;
                        *v128 = 0;
                        v126 = 0;
                        memset(v127, 0, 12);
                        memset(v129, 0, 24);
                        v17 = 0;
                        v18 = 0;
                        v12 = 0;
                        HIDWORD(v127[3]) = 1;
                        *(&v127[2] + 4) = 0x100000001;
                        *(&v127[1] + 4) = 0x100000001;
                        v16 = 1;
                        v125[2] = 0x100000001;
                        v125[0] = 1;
                      }
                    }

                    else
                    {
                      v125[1] = 0;
                      *v128 = 0;
                      v126 = 0;
                      memset(v127, 0, 12);
                      memset(v129, 0, 24);
                      v17 = 0;
                      v18 = 0;
                      v12 = 0;
                      HIDWORD(v127[3]) = 1;
                      *(&v127[2] + 4) = 0x100000001;
                      *(&v127[1] + 4) = 0x100000001;
                      v16 = 1;
                      v125[2] = 0x100000001;
                      v125[0] = 1;
                      LODWORD(v129[3]) = 1;
                    }
                  }

                  else
                  {
                    v125[0] = 0;
                    v125[1] = 0;
                    *v128 = 0;
                    v126 = 0;
                    memset(v127, 0, 12);
                    memset(v129, 0, 28);
                    v17 = 0;
                    v18 = 0;
                    v12 = 0;
                    HIDWORD(v127[3]) = 1;
                    *(&v127[2] + 4) = 0x100000001;
                    *(&v127[1] + 4) = 0x100000001;
                    v16 = 1;
                    v125[2] = 0x100000001;
                    HIDWORD(v129[3]) = 1;
                  }
                }

                else
                {
                  memset(v125, 0, 20);
                  *v128 = 0;
                  v126 = 0;
                  memset(v129, 0, 32);
                  memset(v127, 0, 12);
                  v17 = 0;
                  v18 = 0;
                  v12 = 0;
                  HIDWORD(v127[3]) = 1;
                  *(&v127[2] + 4) = 0x100000001;
                  *(&v127[1] + 4) = 0x100000001;
                  v16 = 1;
                  HIDWORD(v125[2]) = 1;
                  LODWORD(v129[4]) = 1;
                }
              }

              else
              {
                memset(v125, 0, sizeof(v125));
                *v128 = 0;
                v126 = 0;
                memset(v127, 0, 12);
                memset(v129, 0, 36);
                v17 = 0;
                v18 = 0;
                v12 = 0;
                HIDWORD(v127[3]) = 1;
                *(&v127[2] + 4) = 0x100000001;
                *(&v127[1] + 4) = 0x100000001;
                v16 = 1;
                HIDWORD(v129[4]) = 1;
              }
            }

            else
            {
              v16 = 0;
              memset(v125, 0, sizeof(v125));
              *v128 = 0;
              v126 = 0;
              memset(v127, 0, 12);
              memset(v129, 0, sizeof(v129));
              v17 = 0;
              v18 = 0;
              v12 = 0;
              HIDWORD(v127[3]) = 1;
              *(&v127[2] + 4) = 0x100000001;
              *(&v127[1] + 4) = 0x100000001;
              *&v128[8] = 1;
            }
          }

          else
          {
            *(&v127[1] + 4) = 0x100000000;
            *&v128[4] = 0;
            v16 = 0;
            memset(v125, 0, sizeof(v125));
            v126 = 0;
            memset(v127, 0, 12);
            memset(v129, 0, sizeof(v129));
            v17 = 0;
            v18 = 0;
            v12 = 0;
            HIDWORD(v127[3]) = 1;
            *v128 = 0;
            *(&v127[2] + 4) = 0x100000001;
            *&v128[12] = 1;
          }
        }

        else
        {
          *&v128[8] = 0;
          v16 = 0;
          memset(v125, 0, sizeof(v125));
          *v128 = 0;
          v126 = 0;
          memset(v127, 0, 20);
          memset(v129, 0, sizeof(v129));
          v17 = 0;
          v18 = 0;
          v12 = 0;
          HIDWORD(v127[3]) = 1;
          *(&v127[2] + 4) = 0x100000001;
          *&v128[16] = 1;
        }
      }

      else
      {
        v16 = 0;
        memset(v125, 0, sizeof(v125));
        v126 = 0;
        memset(v127, 0, 24);
        memset(v129, 0, sizeof(v129));
        v17 = 0;
        v18 = 0;
        v12 = 0;
        memset(v128, 0, 20);
        v127[3] = 0x100000001;
        *&v128[20] = 1;
      }
    }

    else
    {
      v16 = 0;
      memset(v125, 0, sizeof(v125));
      memset(v128, 0, 24);
      v126 = 0;
      memset(v127, 0, 28);
      memset(v129, 0, sizeof(v129));
      v17 = 0;
      v18 = 0;
      v12 = 0;
      HIDWORD(v127[3]) = 1;
      *&v128[24] = 1;
    }
  }

  else
  {
    v16 = 0;
    memset(v125, 0, sizeof(v125));
    memset(v128, 0, sizeof(v128));
    v126 = 0;
    memset(v127, 0, sizeof(v127));
    memset(v129, 0, sizeof(v129));
    v17 = 0;
    v18 = 0;
    v12 = 0;
  }

LABEL_13:
  if (v18)
  {
    v19 = v16;
    v20 = v17;

    v17 = v20;
    v16 = v19;
  }

  if (v17)
  {
  }

  if (LODWORD(v129[0]))
  {
  }

  if (LODWORD(v127[1]))
  {
  }

  if (HIDWORD(v129[0]))
  {
  }

  if (HIDWORD(v127[0]))
  {
  }

  if (LODWORD(v129[1]))
  {
  }

  if (LODWORD(v127[0]))
  {
  }

  if (HIDWORD(v129[1]))
  {
  }

  if (v126)
  {
  }

  if (LODWORD(v129[2]))
  {
  }

  if (HIDWORD(v126))
  {
  }

  if (*v128)
  {
  }

  if (LODWORD(v125[1]))
  {
  }

  if (HIDWORD(v129[2]))
  {
  }

  if (HIDWORD(v125[0]))
  {
  }

  if (*&v128[4])
  {
  }

  if (HIDWORD(v125[1]))
  {
  }

  if (LODWORD(v129[3]))
  {
  }

  if (LODWORD(v125[0]))
  {
  }

  if (HIDWORD(v129[3]))
  {
  }

  if (LODWORD(v125[2]))
  {
  }

  if (LODWORD(v129[4]))
  {
  }

  if (HIDWORD(v125[2]))
  {
  }

  if (HIDWORD(v129[4]))
  {
  }

  if (v16)
  {
  }

  if (*&v128[8])
  {
  }

  if (HIDWORD(v127[1]))
  {
  }

  if (*&v128[12])
  {
  }

  if (LODWORD(v127[2]))
  {
  }

  if (*&v128[16])
  {
  }

  if (HIDWORD(v127[2]))
  {
  }

  if (*&v128[20])
  {
  }

  if (LODWORD(v127[3]))
  {
  }

  if (*&v128[24])
  {
  }

  if (HIDWORD(v127[3]))
  {
  }

  if (title != title2)
  {
  }

LABEL_88:
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(SFCard *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  [v4 setType:{-[SFCard type](self, "type")}];
  cardSections = [(SFCard *)self cardSections];
  v8 = [cardSections copy];
  [v4 setCardSections:v8];

  intentMessageData = [(SFCard *)self intentMessageData];
  v10 = [intentMessageData copy];
  [v4 setIntentMessageData:v10];

  intentMessageName = [(SFCard *)self intentMessageName];
  v12 = [intentMessageName copy];
  [v4 setIntentMessageName:v12];

  intentResponseMessageData = [(SFCard *)self intentResponseMessageData];
  v14 = [intentResponseMessageData copy];
  [v4 setIntentResponseMessageData:v14];

  intentResponseMessageName = [(SFCard *)self intentResponseMessageName];
  v16 = [intentResponseMessageName copy];
  [v4 setIntentResponseMessageName:v16];

  dismissalCommands = [(SFCard *)self dismissalCommands];
  v18 = [dismissalCommands copy];
  [v4 setDismissalCommands:v18];

  cardId = [(SFCard *)self cardId];
  v20 = [cardId copy];
  [v4 setCardId:v20];

  contextReferenceIdentifier = [(SFCard *)self contextReferenceIdentifier];
  v22 = [contextReferenceIdentifier copy];
  [v4 setContextReferenceIdentifier:v22];

  urlValue = [(SFCard *)self urlValue];
  v24 = [urlValue copy];
  [v4 setUrlValue:v24];

  [v4 setSource:{-[SFCard source](self, "source")}];
  entityIdentifier = [(SFCard *)self entityIdentifier];
  v26 = [entityIdentifier copy];
  [v4 setEntityIdentifier:v26];

  resultIdentifier = [(SFCard *)self resultIdentifier];
  v28 = [resultIdentifier copy];
  [v4 setResultIdentifier:v28];

  [v4 setQueryId:{-[SFCard queryId](self, "queryId")}];
  v29 = [(SFCard *)self fbr];
  v30 = [v29 copy];
  [v4 setFbr:v30];

  [v4 setFlexibleSectionOrder:{-[SFCard flexibleSectionOrder](self, "flexibleSectionOrder")}];
  entityProtobufMessages = [(SFCard *)self entityProtobufMessages];
  v32 = [entityProtobufMessages copy];
  [v4 setEntityProtobufMessages:v32];

  titleImage = [(SFCard *)self titleImage];
  v34 = [titleImage copy];
  [v4 setTitleImage:v34];

  backgroundColor = [(SFCard *)self backgroundColor];
  v36 = [backgroundColor copy];
  [v4 setBackgroundColor:v36];

  metadata = [(SFCard *)self metadata];
  v38 = [metadata copy];
  [v4 setMetadata:v38];

  drilldownMetadata = [(SFCard *)self drilldownMetadata];
  v40 = [drilldownMetadata copy];
  [v4 setDrilldownMetadata:v40];

  backgroundImage = [(SFCard *)self backgroundImage];
  v42 = [backgroundImage copy];
  [v4 setBackgroundImage:v42];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCard alloc] initWithFacade:self];
  jsonData = [(_SFPBCard *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCard alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCard *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backgroundColor = [(SFCard *)self backgroundColor];
  [coderCopy encodeObject:backgroundColor forKey:@"_backgroundColor"];

  cardId = [(SFCard *)self cardId];
  [coderCopy encodeObject:cardId forKey:@"_cardId"];

  cardSections = [(SFCard *)self cardSections];
  [coderCopy encodeObject:cardSections forKey:@"_cardSections"];

  contextReferenceIdentifier = [(SFCard *)self contextReferenceIdentifier];
  [coderCopy encodeObject:contextReferenceIdentifier forKey:@"_contextReferenceIdentifier"];

  dismissalCommands = [(SFCard *)self dismissalCommands];
  [coderCopy encodeObject:dismissalCommands forKey:@"_dismissalCommands"];

  entityIdentifier = [(SFCard *)self entityIdentifier];
  [coderCopy encodeObject:entityIdentifier forKey:@"_entityIdentifier"];

  entityProtobufMessages = [(SFCard *)self entityProtobufMessages];
  [coderCopy encodeObject:entityProtobufMessages forKey:@"_entityProtobufMessages"];

  v11 = [(SFCard *)self fbr];
  [coderCopy encodeObject:v11 forKey:@"_fbr"];

  if ([(SFCard *)self hasFlexibleSectionOrder])
  {
    [coderCopy encodeBool:1 forKey:@"_hasFlexibleSectionOrder"];
    [coderCopy encodeBool:-[SFCard flexibleSectionOrder](self forKey:{"flexibleSectionOrder"), @"_flexibleSectionOrder"}];
  }

  intentMessageData = [(SFCard *)self intentMessageData];
  [coderCopy encodeObject:intentMessageData forKey:@"_intentMessageData"];

  intentMessageName = [(SFCard *)self intentMessageName];
  [coderCopy encodeObject:intentMessageName forKey:@"_intentMessageName"];

  intentResponseMessageData = [(SFCard *)self intentResponseMessageData];
  [coderCopy encodeObject:intentResponseMessageData forKey:@"_intentResponseMessageData"];

  intentResponseMessageName = [(SFCard *)self intentResponseMessageName];
  [coderCopy encodeObject:intentResponseMessageName forKey:@"_intentResponseMessageName"];

  metadata = [(SFCard *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"_metadata"];

  drilldownMetadata = [(SFCard *)self drilldownMetadata];
  [coderCopy encodeObject:drilldownMetadata forKey:@"_drilldownMetadata"];

  if ([(SFCard *)self hasQueryId])
  {
    [coderCopy encodeBool:1 forKey:@"_hasQueryId"];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SFCard queryId](self, "queryId")}];
    [coderCopy encodeObject:v18 forKey:@"_queryId"];
  }

  resultIdentifier = [(SFCard *)self resultIdentifier];
  [coderCopy encodeObject:resultIdentifier forKey:@"_resultIdentifier"];

  if ([(SFCard *)self hasSource])
  {
    [coderCopy encodeBool:1 forKey:@"_hasSource"];
    [coderCopy encodeInt32:-[SFCard source](self forKey:{"source"), @"_source"}];
  }

  title = [(SFCard *)self title];
  [coderCopy encodeObject:title forKey:@"_title"];

  titleImage = [(SFCard *)self titleImage];
  [coderCopy encodeObject:titleImage forKey:@"_titleImage"];

  if ([(SFCard *)self hasType])
  {
    [coderCopy encodeBool:1 forKey:@"_hasType"];
    [coderCopy encodeInt32:-[SFCard type](self forKey:{"type"), @"_type"}];
  }

  urlValue = [(SFCard *)self urlValue];
  [coderCopy encodeObject:urlValue forKey:@"_urlValue"];

  backgroundImage = [(SFCard *)self backgroundImage];
  [coderCopy encodeObject:backgroundImage forKey:@"_backgroundImage"];
}

- (SFCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = SFCard;
  v5 = [(SFCard *)&v27 init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundColor"];
  [(SFCard *)v5 setBackgroundColor:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cardId"];
  [(SFCard *)v5 setCardId:v7];

  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_cardSections"];
  [(SFCard *)v5 setCardSections:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contextReferenceIdentifier"];
  [(SFCard *)v5 setContextReferenceIdentifier:v9];

  v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_dismissalCommands"];
  [(SFCard *)v5 setDismissalCommands:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_entityIdentifier"];
  [(SFCard *)v5 setEntityIdentifier:v11];

  v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_entityProtobufMessages"];
  [(SFCard *)v5 setEntityProtobufMessages:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fbr"];
  [(SFCard *)v5 setFbr:v13];

  if ([coderCopy decodeBoolForKey:@"_hasFlexibleSectionOrder"])
  {
    -[SFCard setFlexibleSectionOrder:](v5, "setFlexibleSectionOrder:", [coderCopy decodeBoolForKey:@"_flexibleSectionOrder"]);
  }

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_intentMessageData"];
  [(SFCard *)v5 setIntentMessageData:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_intentMessageName"];
  [(SFCard *)v5 setIntentMessageName:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_intentResponseMessageData"];
  [(SFCard *)v5 setIntentResponseMessageData:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_intentResponseMessageName"];
  [(SFCard *)v5 setIntentResponseMessageName:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_metadata"];
  [(SFCard *)v5 setMetadata:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_drilldownMetadata"];
  [(SFCard *)v5 setDrilldownMetadata:v19];

  if ([coderCopy decodeBoolForKey:@"_hasQueryId"])
  {
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_queryId"];
    -[SFCard setQueryId:](v5, "setQueryId:", [v20 unsignedIntegerValue]);
  }

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resultIdentifier"];
  [(SFCard *)v5 setResultIdentifier:v21];

  if ([coderCopy decodeBoolForKey:@"_hasSource"])
  {
    -[SFCard setSource:](v5, "setSource:", [coderCopy decodeInt32ForKey:@"_source"]);
  }

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
  [(SFCard *)v5 setTitle:v22];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_titleImage"];
  [(SFCard *)v5 setTitleImage:v23];

  if ([coderCopy decodeBoolForKey:@"_hasType"])
  {
    -[SFCard setType:](v5, "setType:", [coderCopy decodeInt32ForKey:@"_type"]);
  }

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_urlValue"];
  [(SFCard *)v5 setUrlValue:v24];

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundImage"];
  [(SFCard *)v5 setBackgroundImage:v25];

  return v5;
}

@end