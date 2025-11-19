@interface SFCard
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCard)initWithCoder:(id)a3;
- (SFCard)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)loadCardSectionsWithCompletionAndErrorHandler:(id)a3;
- (void)loadCardSectionsWithCompletionHandler:(id)a3;
@end

@implementation SFCard

- (SFCard)initWithProtobuf:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v89.receiver = self;
  v89.super_class = SFCard;
  v5 = [(SFCard *)&v89 init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(SFCard *)v5 setTitle:v7];
    }

    if ([v4 type])
    {
      -[SFCard setType:](v5, "setType:", [v4 type]);
    }

    v8 = [v4 cardSections];
    v76 = v5;
    if (v8)
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
    v10 = [v4 cardSections];
    v11 = [v10 countByEnumeratingWithState:&v85 objects:v92 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [[SFCardSection alloc] initWithProtobuf:*(*(&v85 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v85 objects:v92 count:16];
      }

      while (v12);
    }

    [(SFCard *)v5 setCardSections:v9];
    v16 = [v4 intentMessageData];

    if (v16)
    {
      v17 = [v4 intentMessageData];
      [(SFCard *)v5 setIntentMessageData:v17];
    }

    v18 = [v4 intentMessageName];

    if (v18)
    {
      v19 = [v4 intentMessageName];
      [(SFCard *)v5 setIntentMessageName:v19];
    }

    v20 = [v4 intentResponseMessageData];

    if (v20)
    {
      v21 = [v4 intentResponseMessageData];
      [(SFCard *)v5 setIntentResponseMessageData:v21];
    }

    v22 = [v4 intentResponseMessageName];

    if (v22)
    {
      v23 = [v4 intentResponseMessageName];
      [(SFCard *)v5 setIntentResponseMessageName:v23];
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

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v26 = [v4 dismissalCommands];
    v27 = [v26 countByEnumeratingWithState:&v81 objects:v91 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [[SFAbstractCommand alloc] initWithProtobuf:*(*(&v81 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v81 objects:v91 count:16];
      }

      while (v28);
    }

    [(SFCard *)v76 setDismissalCommands:v25];
    v32 = [v4 cardId];

    if (v32)
    {
      v33 = [v4 cardId];
      [(SFCard *)v76 setCardId:v33];
    }

    v34 = [v4 contextReferenceIdentifier];

    if (v34)
    {
      v35 = [v4 contextReferenceIdentifier];
      [(SFCard *)v76 setContextReferenceIdentifier:v35];
    }

    v36 = [v4 urlValue];

    if (v36)
    {
      v37 = [v4 urlValue];
      v38 = _SFPBURLHandwrittenTranslator(v37);
      [(SFCard *)v76 setUrlValue:v38];
    }

    if ([v4 source])
    {
      -[SFCard setSource:](v76, "setSource:", [v4 source]);
    }

    v39 = [v4 entityIdentifier];

    if (v39)
    {
      v40 = [v4 entityIdentifier];
      [(SFCard *)v76 setEntityIdentifier:v40];
    }

    v41 = [v4 resultIdentifier];

    if (v41)
    {
      v42 = [v4 resultIdentifier];
      [(SFCard *)v76 setResultIdentifier:v42];
    }

    if ([v4 queryId])
    {
      -[SFCard setQueryId:](v76, "setQueryId:", [v4 queryId]);
    }

    v43 = [v4 fbr];

    if (v43)
    {
      v44 = [v4 fbr];
      [(SFCard *)v76 setFbr:v44];
    }

    if ([v4 flexibleSectionOrder])
    {
      -[SFCard setFlexibleSectionOrder:](v76, "setFlexibleSectionOrder:", [v4 flexibleSectionOrder]);
    }

    v45 = [v4 entityProtobufMessages];
    if (v45)
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
    v47 = [v4 entityProtobufMessages];
    v48 = [v47 countByEnumeratingWithState:&v77 objects:v90 count:16];
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
            objc_enumerationMutation(v47);
          }

          v52 = [[SFNamedProtobufMessage alloc] initWithProtobuf:*(*(&v77 + 1) + 8 * k)];
          if (v52)
          {
            [v46 addObject:v52];
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v77 objects:v90 count:16];
      }

      while (v49);
    }

    v5 = v76;
    [(SFCard *)v76 setEntityProtobufMessages:v46];
    v53 = [v4 titleImage];

    if (v53)
    {
      v54 = [SFImage alloc];
      v55 = [v4 titleImage];
      v56 = [(SFImage *)v54 initWithProtobuf:v55];
      [(SFCard *)v76 setTitleImage:v56];
    }

    v57 = [v4 backgroundColor];

    if (v57)
    {
      v58 = [SFColor alloc];
      v59 = [v4 backgroundColor];
      v60 = [(SFColor *)v58 initWithProtobuf:v59];
      [(SFCard *)v76 setBackgroundColor:v60];
    }

    v61 = [v4 metadata];

    if (v61)
    {
      v62 = [SFDrillDownMetadata alloc];
      v63 = [v4 metadata];
      v64 = [(SFDrillDownMetadata *)v62 initWithProtobuf:v63];
      [(SFCard *)v76 setMetadata:v64];
    }

    v65 = [v4 drilldownMetadata];

    if (v65)
    {
      v66 = [SFDrillDownMetadata alloc];
      v67 = [v4 drilldownMetadata];
      v68 = [(SFDrillDownMetadata *)v66 initWithProtobuf:v67];
      [(SFCard *)v76 setDrilldownMetadata:v68];
    }

    v69 = [v4 backgroundImage];

    if (v69)
    {
      v70 = [SFImage alloc];
      v71 = [v4 backgroundImage];
      v72 = [(SFImage *)v70 initWithProtobuf:v71];
      [(SFCard *)v76 setBackgroundImage:v72];
    }

    v73 = v76;
  }

  v74 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)loadCardSectionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SFCard_Handwritten__loadCardSectionsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7ACDBB8;
  v7 = v4;
  v5 = v4;
  [(SFCard *)self loadCardSectionsWithCompletionAndErrorHandler:v6];
}

- (void)loadCardSectionsWithCompletionAndErrorHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SFCard_Handwritten__loadCardSectionsWithCompletionAndErrorHandler___block_invoke;
  v6[3] = &unk_1E7ACDB90;
  v7 = v4;
  v5 = v4;
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
  v45 = [(SFCard *)self title];
  v3 = [v45 hash];
  v4 = v3 ^ [(SFCard *)self type];
  v44 = [(SFCard *)self cardSections];
  v5 = [v44 hash];
  v43 = [(SFCard *)self intentMessageData];
  v6 = v4 ^ v5 ^ [v43 hash];
  v42 = [(SFCard *)self intentMessageName];
  v7 = [v42 hash];
  v41 = [(SFCard *)self intentResponseMessageData];
  v8 = v7 ^ [v41 hash];
  v40 = [(SFCard *)self intentResponseMessageName];
  v9 = v6 ^ v8 ^ [v40 hash];
  v39 = [(SFCard *)self dismissalCommands];
  v10 = [v39 hash];
  v38 = [(SFCard *)self cardId];
  v11 = v10 ^ [v38 hash];
  v37 = [(SFCard *)self contextReferenceIdentifier];
  v12 = v11 ^ [v37 hash];
  v36 = [(SFCard *)self urlValue];
  v13 = v9 ^ v12 ^ [v36 hash];
  v14 = [(SFCard *)self source];
  v15 = [(SFCard *)self entityIdentifier];
  v16 = v14 ^ [v15 hash];
  v17 = [(SFCard *)self resultIdentifier];
  v18 = v16 ^ [v17 hash];
  v19 = v18 ^ [(SFCard *)self queryId];
  v20 = [(SFCard *)self fbr];
  v21 = v13 ^ v19 ^ [v20 hash];
  v22 = [(SFCard *)self flexibleSectionOrder];
  v23 = [(SFCard *)self entityProtobufMessages];
  v24 = v22 ^ [v23 hash];
  v25 = [(SFCard *)self titleImage];
  v26 = v24 ^ [v25 hash];
  v27 = [(SFCard *)self backgroundColor];
  v28 = v26 ^ [v27 hash];
  v29 = [(SFCard *)self metadata];
  v35 = v21 ^ v28 ^ [v29 hash];
  v30 = [(SFCard *)self drilldownMetadata];
  v31 = [v30 hash];
  v32 = [(SFCard *)self backgroundImage];
  v33 = v31 ^ [v32 hash];

  return v35 ^ v33;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v12 = 1;
    goto LABEL_88;
  }

  if (![(SFCard *)v7 isMemberOfClass:objc_opt_class()])
  {
    v12 = 0;
    goto LABEL_88;
  }

  v8 = v7;
  v9 = [(SFCard *)self title];
  v10 = [(SFCard *)v8 title];
  if ((v9 == v10 || (-[SFCard title](self, "title"), v11 = objc_claimAutoreleasedReturnValue(), -[SFCard title](v8, "title"), v123 = objc_claimAutoreleasedReturnValue(), v124 = v11, [v11 isEqual:?])) && (v13 = -[SFCard type](self, "type"), v13 == -[SFCard type](v8, "type")))
  {
    v14 = [(SFCard *)self cardSections];
    v121 = [(SFCard *)v8 cardSections];
    v122 = v14;
    v3 = v14 != v121;
    if (v14 == v121 || (-[SFCard cardSections](self, "cardSections"), v15 = objc_claimAutoreleasedReturnValue(), -[SFCard cardSections](v8, "cardSections"), v118 = v15, v117 = objc_claimAutoreleasedReturnValue(), [v15 isEqual:?]))
    {
      v22 = [(SFCard *)self intentMessageData];
      [(SFCard *)v8 intentMessageData];
      v119 = v120 = v22;
      v23 = v22 != v119;
      *&v128[24] = v3;
      if (v22 == v119 || (-[SFCard intentMessageData](self, "intentMessageData"), v24 = objc_claimAutoreleasedReturnValue(), -[SFCard intentMessageData](v8, "intentMessageData"), v113 = objc_claimAutoreleasedReturnValue(), v114 = v24, [v24 isEqual:?]))
      {
        v25 = [(SFCard *)self intentMessageName];
        v115 = [(SFCard *)v8 intentMessageName];
        v116 = v25;
        v5 = v25 != v115;
        *&v128[20] = v23;
        if (v25 == v115 || (-[SFCard intentMessageName](self, "intentMessageName"), v26 = objc_claimAutoreleasedReturnValue(), -[SFCard intentMessageName](v8, "intentMessageName"), v109 = objc_claimAutoreleasedReturnValue(), v110 = v26, [v26 isEqual:?]))
        {
          v27 = [(SFCard *)self intentResponseMessageData];
          v111 = [(SFCard *)v8 intentResponseMessageData];
          v112 = v27;
          v4 = v27 != v111;
          *&v128[16] = v5;
          if (v27 == v111 || (-[SFCard intentResponseMessageData](self, "intentResponseMessageData"), v28 = objc_claimAutoreleasedReturnValue(), -[SFCard intentResponseMessageData](v8, "intentResponseMessageData"), v105 = objc_claimAutoreleasedReturnValue(), v106 = v28, [v28 isEqual:?]))
          {
            v29 = [(SFCard *)self intentResponseMessageName];
            v107 = [(SFCard *)v8 intentResponseMessageName];
            v108 = v29;
            v30 = v29 == v107;
            v31 = v29 != v107;
            *&v128[12] = v4;
            if (v30 || (-[SFCard intentResponseMessageName](self, "intentResponseMessageName"), v5 = objc_claimAutoreleasedReturnValue(), -[SFCard intentResponseMessageName](v8, "intentResponseMessageName"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v5, [v5 isEqual:?]))
            {
              v32 = [(SFCard *)self dismissalCommands];
              v103 = [(SFCard *)v8 dismissalCommands];
              v104 = v32;
              HIDWORD(v129[4]) = v32 != v103;
              *&v128[8] = v31;
              if (v32 == v103 || (-[SFCard dismissalCommands](self, "dismissalCommands"), v5 = objc_claimAutoreleasedReturnValue(), -[SFCard dismissalCommands](v8, "dismissalCommands"), v97 = objc_claimAutoreleasedReturnValue(), v98 = v5, [v5 isEqual:?]))
              {
                v33 = [(SFCard *)self cardId];
                v99 = [(SFCard *)v8 cardId];
                v100 = v33;
                LODWORD(v129[4]) = v33 != v99;
                if (v33 == v99 || (-[SFCard cardId](self, "cardId"), v5 = objc_claimAutoreleasedReturnValue(), -[SFCard cardId](v8, "cardId"), v93 = objc_claimAutoreleasedReturnValue(), v94 = v5, [v5 isEqual:?]))
                {
                  v34 = [(SFCard *)self contextReferenceIdentifier];
                  v95 = [(SFCard *)v8 contextReferenceIdentifier];
                  v96 = v34;
                  HIDWORD(v129[3]) = v34 != v95;
                  if (v34 == v95 || (-[SFCard contextReferenceIdentifier](self, "contextReferenceIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), -[SFCard contextReferenceIdentifier](v8, "contextReferenceIdentifier"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v5, [v5 isEqual:?]))
                  {
                    v5 = [(SFCard *)self urlValue];
                    v91 = [(SFCard *)v8 urlValue];
                    v92 = v5;
                    LODWORD(v129[3]) = v5 != v91;
                    if (v5 == v91 || (-[SFCard urlValue](self, "urlValue"), v5 = objc_claimAutoreleasedReturnValue(), -[SFCard urlValue](v8, "urlValue"), v87 = objc_claimAutoreleasedReturnValue(), v88 = v5, [v5 isEqual:?]))
                    {
                      v35 = [(SFCard *)self source];
                      if (v35 == [(SFCard *)v8 source])
                      {
                        v36 = [(SFCard *)self entityIdentifier];
                        v85 = [(SFCard *)v8 entityIdentifier];
                        v86 = v36;
                        v30 = v36 == v85;
                        v37 = v36 != v85;
                        if (v30 || (-[SFCard entityIdentifier](self, "entityIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), -[SFCard entityIdentifier](v8, "entityIdentifier"), v81 = objc_claimAutoreleasedReturnValue(), v82 = v5, [v5 isEqual:?]))
                        {
                          v5 = [(SFCard *)self resultIdentifier];
                          v83 = [(SFCard *)v8 resultIdentifier];
                          v84 = v5;
                          HIDWORD(v129[2]) = v5 != v83;
                          *&v128[4] = v37;
                          if (v5 == v83 || (-[SFCard resultIdentifier](self, "resultIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), -[SFCard resultIdentifier](v8, "resultIdentifier"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v5, [v5 isEqual:?]))
                          {
                            v38 = [(SFCard *)self queryId];
                            if (v38 == [(SFCard *)v8 queryId])
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
                                v5 = [(SFCard *)self fbr];
                                v75 = [(SFCard *)v8 fbr];
                                v76 = v5;
                                if (![v5 isEqual:?])
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

                              v41 = [(SFCard *)self flexibleSectionOrder];
                              if (v41 == [(SFCard *)v8 flexibleSectionOrder])
                              {
                                v42 = [(SFCard *)self entityProtobufMessages];
                                v43 = [(SFCard *)v8 entityProtobufMessages];
                                LODWORD(v129[2]) = v42 != v43;
                                v73 = v43;
                                v74 = v42;
                                if (v42 == v43 || (-[SFCard entityProtobufMessages](self, "entityProtobufMessages"), v44 = objc_claimAutoreleasedReturnValue(), -[SFCard entityProtobufMessages](v8, "entityProtobufMessages"), v69 = objc_claimAutoreleasedReturnValue(), v70 = v44, [v44 isEqual:?]))
                                {
                                  v45 = [(SFCard *)self titleImage];
                                  v71 = [(SFCard *)v8 titleImage];
                                  v72 = v45;
                                  HIDWORD(v129[1]) = v45 != v71;
                                  if (v45 == v71 || (-[SFCard titleImage](self, "titleImage"), v46 = objc_claimAutoreleasedReturnValue(), -[SFCard titleImage](v8, "titleImage"), v65 = objc_claimAutoreleasedReturnValue(), v66 = v46, [v46 isEqual:?]))
                                  {
                                    v47 = [(SFCard *)self backgroundColor];
                                    v67 = [(SFCard *)v8 backgroundColor];
                                    v68 = v47;
                                    LODWORD(v129[1]) = v47 != v67;
                                    if (v47 == v67 || (-[SFCard backgroundColor](self, "backgroundColor"), v48 = objc_claimAutoreleasedReturnValue(), -[SFCard backgroundColor](v8, "backgroundColor"), v61 = objc_claimAutoreleasedReturnValue(), v62 = v48, [v48 isEqual:?]))
                                    {
                                      v49 = [(SFCard *)self metadata];
                                      v63 = [(SFCard *)v8 metadata];
                                      v64 = v49;
                                      HIDWORD(v129[0]) = v49 != v63;
                                      if (v49 == v63 || (-[SFCard metadata](self, "metadata"), v50 = objc_claimAutoreleasedReturnValue(), -[SFCard metadata](v8, "metadata"), v57 = objc_claimAutoreleasedReturnValue(), v58 = v50, [v50 isEqual:?]))
                                      {
                                        v51 = [(SFCard *)self drilldownMetadata];
                                        v59 = [(SFCard *)v8 drilldownMetadata];
                                        v60 = v51;
                                        LODWORD(v129[0]) = v51 != v59;
                                        if (v51 == v59 || (-[SFCard drilldownMetadata](self, "drilldownMetadata"), v52 = objc_claimAutoreleasedReturnValue(), -[SFCard drilldownMetadata](v8, "drilldownMetadata"), v54 = objc_claimAutoreleasedReturnValue(), v55 = v52, [v52 isEqual:?]))
                                        {
                                          v53 = [(SFCard *)self backgroundImage];
                                          v3 = [(SFCard *)v8 backgroundImage];
                                          v56 = v53;
                                          if (v53 == v3)
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
                                            v4 = [(SFCard *)self backgroundImage];
                                            v5 = [(SFCard *)v8 backgroundImage];
                                            v12 = [v4 isEqual:v5];
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

  if (v9 != v10)
  {
  }

LABEL_88:
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFCard *)self title];
  v6 = [v5 copy];
  [v4 setTitle:v6];

  [v4 setType:{-[SFCard type](self, "type")}];
  v7 = [(SFCard *)self cardSections];
  v8 = [v7 copy];
  [v4 setCardSections:v8];

  v9 = [(SFCard *)self intentMessageData];
  v10 = [v9 copy];
  [v4 setIntentMessageData:v10];

  v11 = [(SFCard *)self intentMessageName];
  v12 = [v11 copy];
  [v4 setIntentMessageName:v12];

  v13 = [(SFCard *)self intentResponseMessageData];
  v14 = [v13 copy];
  [v4 setIntentResponseMessageData:v14];

  v15 = [(SFCard *)self intentResponseMessageName];
  v16 = [v15 copy];
  [v4 setIntentResponseMessageName:v16];

  v17 = [(SFCard *)self dismissalCommands];
  v18 = [v17 copy];
  [v4 setDismissalCommands:v18];

  v19 = [(SFCard *)self cardId];
  v20 = [v19 copy];
  [v4 setCardId:v20];

  v21 = [(SFCard *)self contextReferenceIdentifier];
  v22 = [v21 copy];
  [v4 setContextReferenceIdentifier:v22];

  v23 = [(SFCard *)self urlValue];
  v24 = [v23 copy];
  [v4 setUrlValue:v24];

  [v4 setSource:{-[SFCard source](self, "source")}];
  v25 = [(SFCard *)self entityIdentifier];
  v26 = [v25 copy];
  [v4 setEntityIdentifier:v26];

  v27 = [(SFCard *)self resultIdentifier];
  v28 = [v27 copy];
  [v4 setResultIdentifier:v28];

  [v4 setQueryId:{-[SFCard queryId](self, "queryId")}];
  v29 = [(SFCard *)self fbr];
  v30 = [v29 copy];
  [v4 setFbr:v30];

  [v4 setFlexibleSectionOrder:{-[SFCard flexibleSectionOrder](self, "flexibleSectionOrder")}];
  v31 = [(SFCard *)self entityProtobufMessages];
  v32 = [v31 copy];
  [v4 setEntityProtobufMessages:v32];

  v33 = [(SFCard *)self titleImage];
  v34 = [v33 copy];
  [v4 setTitleImage:v34];

  v35 = [(SFCard *)self backgroundColor];
  v36 = [v35 copy];
  [v4 setBackgroundColor:v36];

  v37 = [(SFCard *)self metadata];
  v38 = [v37 copy];
  [v4 setMetadata:v38];

  v39 = [(SFCard *)self drilldownMetadata];
  v40 = [v39 copy];
  [v4 setDrilldownMetadata:v40];

  v41 = [(SFCard *)self backgroundImage];
  v42 = [v41 copy];
  [v4 setBackgroundImage:v42];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCard alloc] initWithFacade:self];
  v3 = [(_SFPBCard *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCard alloc] initWithFacade:self];
  v3 = [(_SFPBCard *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = a3;
  v4 = [(SFCard *)self backgroundColor];
  [v24 encodeObject:v4 forKey:@"_backgroundColor"];

  v5 = [(SFCard *)self cardId];
  [v24 encodeObject:v5 forKey:@"_cardId"];

  v6 = [(SFCard *)self cardSections];
  [v24 encodeObject:v6 forKey:@"_cardSections"];

  v7 = [(SFCard *)self contextReferenceIdentifier];
  [v24 encodeObject:v7 forKey:@"_contextReferenceIdentifier"];

  v8 = [(SFCard *)self dismissalCommands];
  [v24 encodeObject:v8 forKey:@"_dismissalCommands"];

  v9 = [(SFCard *)self entityIdentifier];
  [v24 encodeObject:v9 forKey:@"_entityIdentifier"];

  v10 = [(SFCard *)self entityProtobufMessages];
  [v24 encodeObject:v10 forKey:@"_entityProtobufMessages"];

  v11 = [(SFCard *)self fbr];
  [v24 encodeObject:v11 forKey:@"_fbr"];

  if ([(SFCard *)self hasFlexibleSectionOrder])
  {
    [v24 encodeBool:1 forKey:@"_hasFlexibleSectionOrder"];
    [v24 encodeBool:-[SFCard flexibleSectionOrder](self forKey:{"flexibleSectionOrder"), @"_flexibleSectionOrder"}];
  }

  v12 = [(SFCard *)self intentMessageData];
  [v24 encodeObject:v12 forKey:@"_intentMessageData"];

  v13 = [(SFCard *)self intentMessageName];
  [v24 encodeObject:v13 forKey:@"_intentMessageName"];

  v14 = [(SFCard *)self intentResponseMessageData];
  [v24 encodeObject:v14 forKey:@"_intentResponseMessageData"];

  v15 = [(SFCard *)self intentResponseMessageName];
  [v24 encodeObject:v15 forKey:@"_intentResponseMessageName"];

  v16 = [(SFCard *)self metadata];
  [v24 encodeObject:v16 forKey:@"_metadata"];

  v17 = [(SFCard *)self drilldownMetadata];
  [v24 encodeObject:v17 forKey:@"_drilldownMetadata"];

  if ([(SFCard *)self hasQueryId])
  {
    [v24 encodeBool:1 forKey:@"_hasQueryId"];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SFCard queryId](self, "queryId")}];
    [v24 encodeObject:v18 forKey:@"_queryId"];
  }

  v19 = [(SFCard *)self resultIdentifier];
  [v24 encodeObject:v19 forKey:@"_resultIdentifier"];

  if ([(SFCard *)self hasSource])
  {
    [v24 encodeBool:1 forKey:@"_hasSource"];
    [v24 encodeInt32:-[SFCard source](self forKey:{"source"), @"_source"}];
  }

  v20 = [(SFCard *)self title];
  [v24 encodeObject:v20 forKey:@"_title"];

  v21 = [(SFCard *)self titleImage];
  [v24 encodeObject:v21 forKey:@"_titleImage"];

  if ([(SFCard *)self hasType])
  {
    [v24 encodeBool:1 forKey:@"_hasType"];
    [v24 encodeInt32:-[SFCard type](self forKey:{"type"), @"_type"}];
  }

  v22 = [(SFCard *)self urlValue];
  [v24 encodeObject:v22 forKey:@"_urlValue"];

  v23 = [(SFCard *)self backgroundImage];
  [v24 encodeObject:v23 forKey:@"_backgroundImage"];
}

- (SFCard)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SFCard;
  v5 = [(SFCard *)&v27 init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundColor"];
  [(SFCard *)v5 setBackgroundColor:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cardId"];
  [(SFCard *)v5 setCardId:v7];

  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_cardSections"];
  [(SFCard *)v5 setCardSections:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contextReferenceIdentifier"];
  [(SFCard *)v5 setContextReferenceIdentifier:v9];

  v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_dismissalCommands"];
  [(SFCard *)v5 setDismissalCommands:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_entityIdentifier"];
  [(SFCard *)v5 setEntityIdentifier:v11];

  v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_entityProtobufMessages"];
  [(SFCard *)v5 setEntityProtobufMessages:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fbr"];
  [(SFCard *)v5 setFbr:v13];

  if ([v4 decodeBoolForKey:@"_hasFlexibleSectionOrder"])
  {
    -[SFCard setFlexibleSectionOrder:](v5, "setFlexibleSectionOrder:", [v4 decodeBoolForKey:@"_flexibleSectionOrder"]);
  }

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_intentMessageData"];
  [(SFCard *)v5 setIntentMessageData:v14];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_intentMessageName"];
  [(SFCard *)v5 setIntentMessageName:v15];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_intentResponseMessageData"];
  [(SFCard *)v5 setIntentResponseMessageData:v16];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_intentResponseMessageName"];
  [(SFCard *)v5 setIntentResponseMessageName:v17];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_metadata"];
  [(SFCard *)v5 setMetadata:v18];

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_drilldownMetadata"];
  [(SFCard *)v5 setDrilldownMetadata:v19];

  if ([v4 decodeBoolForKey:@"_hasQueryId"])
  {
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_queryId"];
    -[SFCard setQueryId:](v5, "setQueryId:", [v20 unsignedIntegerValue]);
  }

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resultIdentifier"];
  [(SFCard *)v5 setResultIdentifier:v21];

  if ([v4 decodeBoolForKey:@"_hasSource"])
  {
    -[SFCard setSource:](v5, "setSource:", [v4 decodeInt32ForKey:@"_source"]);
  }

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
  [(SFCard *)v5 setTitle:v22];

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_titleImage"];
  [(SFCard *)v5 setTitleImage:v23];

  if ([v4 decodeBoolForKey:@"_hasType"])
  {
    -[SFCard setType:](v5, "setType:", [v4 decodeInt32ForKey:@"_type"]);
  }

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_urlValue"];
  [(SFCard *)v5 setUrlValue:v24];

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backgroundImage"];
  [(SFCard *)v5 setBackgroundImage:v25];

  return v5;
}

@end