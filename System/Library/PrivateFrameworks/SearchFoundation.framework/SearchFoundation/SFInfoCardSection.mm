@interface SFInfoCardSection
- (BOOL)isEqual:(id)equal;
- (NSArray)embeddedCards;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFInfoCardSection)initWithCoder:(id)coder;
- (SFInfoCardSection)initWithProtobuf:(id)protobuf;
- (id)cardsFromInfoTuple;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFInfoCardSection

- (SFInfoCardSection)initWithProtobuf:(id)protobuf
{
  v46 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v43.receiver = self;
  v43.super_class = SFInfoCardSection;
  v5 = [(SFCardSection *)&v43 init];
  if (v5)
  {
    punchoutOptions = [protobufCopy punchoutOptions];
    if (punchoutOptions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v39 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [protobufCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [protobufCopy punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [protobufCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [protobufCopy punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([protobufCopy canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [protobufCopy canBeHidden]);
    }

    if ([protobufCopy hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [protobufCopy hasTopPadding]);
    }

    if ([protobufCopy hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [protobufCopy hasBottomPadding]);
    }

    type = [protobufCopy type];

    if (type)
    {
      type2 = [protobufCopy type];
      [(SFInfoCardSection *)v5 setType:type2];
    }

    if ([protobufCopy separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [protobufCopy separatorStyle]);
    }

    backgroundColor = [protobufCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [SFColor alloc];
      backgroundColor2 = [protobufCopy backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:backgroundColor2];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    infoTuples = [protobufCopy infoTuples];
    if (infoTuples)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    infoTuples2 = [protobufCopy infoTuples];
    v27 = [infoTuples2 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(infoTuples2);
          }

          v31 = [[SFInfoTuple alloc] initWithProtobuf:*(*(&v35 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [infoTuples2 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v28);
    }

    [(SFInfoCardSection *)v5 setInfoTuples:v25];
    if ([protobufCopy initiallyVisibleTuples])
    {
      -[SFInfoCardSection setInitiallyVisibleTuples:](v5, "setInitiallyVisibleTuples:", [protobufCopy initiallyVisibleTuples]);
    }

    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)cardsFromInfoTuple
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  infoTuples = [(SFInfoCardSection *)self infoTuples];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(infoTuples, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(SFInfoCardSection *)self infoTuples];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        values = [v10 values];
        v12 = [values countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(values);
              }

              command = [*(*(&v21 + 1) + 8 * j) command];
              embeddedCards = [command embeddedCards];
              [v5 addObjectsFromArray:embeddedCards];
            }

            v13 = [values countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)embeddedCards
{
  v3 = MEMORY[0x1E695DF70];
  infoTuples = [(SFInfoCardSection *)self infoTuples];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(infoTuples, "count")}];

  v9.receiver = self;
  v9.super_class = SFInfoCardSection;
  embeddedCards = [(SFCardSection *)&v9 embeddedCards];
  [v5 addObjectsFromArray:embeddedCards];

  cardsFromInfoTuple = [(SFInfoCardSection *)self cardsFromInfoTuple];
  [v5 addObjectsFromArray:cardsFromInfoTuple];

  return v5;
}

- (unint64_t)hash
{
  v22.receiver = self;
  v22.super_class = SFInfoCardSection;
  v3 = [(SFCardSection *)&v22 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [punchoutPickerDismissText hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFInfoCardSection *)self type];
  v14 = hasBottomPadding ^ [type hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [backgroundColor hash];
  infoTuples = [(SFInfoCardSection *)self infoTuples];
  v19 = v11 ^ v17 ^ [infoTuples hash];
  initiallyVisibleTuples = [(SFInfoCardSection *)self initiallyVisibleTuples];

  return v19 ^ initiallyVisibleTuples;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFInfoCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v71.receiver = self;
      v71.super_class = SFInfoCardSection;
      if ([(SFCardSection *)&v71 isEqual:equalCopy])
      {
        v6 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v6 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          v11 = 0;
LABEL_58:

          goto LABEL_59;
        }

        punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
        if (punchoutOptions3)
        {
          punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
          punchoutOptions5 = [(SFCardSection *)v6 punchoutOptions];
          if (![punchoutOptions4 isEqual:punchoutOptions5])
          {
            v11 = 0;
            goto LABEL_56;
          }

          v70 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) != (punchoutPickerTitle2 == 0))
        {
          punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
          if (punchoutPickerTitle3)
          {
            v63 = punchoutOptions5;
            v65 = punchoutPickerTitle;
            punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
            punchoutPickerTitle5 = [(SFCardSection *)v6 punchoutPickerTitle];
            if (([punchoutPickerTitle4 isEqual:punchoutPickerTitle5] & 1) == 0)
            {

              v11 = 0;
              punchoutOptions4 = v70;
              punchoutOptions5 = v63;
              if (!punchoutOptions3)
              {
                goto LABEL_57;
              }

              goto LABEL_56;
            }

            v61 = punchoutPickerTitle5;
            v62 = punchoutPickerTitle4;
            v67 = punchoutOptions2;
            v68 = v6;
            v17 = punchoutOptions;
            v18 = punchoutOptions3;
            v19 = punchoutPickerTitle2;
            punchoutOptions5 = v63;
            v20 = v65;
            v21 = punchoutPickerTitle3;
          }

          else
          {
            v67 = punchoutOptions2;
            v68 = v6;
            v17 = punchoutOptions;
            v18 = punchoutOptions3;
            v19 = punchoutPickerTitle2;
            v20 = punchoutPickerTitle;
            v21 = 0;
          }

          punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText2 = [(SFCardSection *)v68 punchoutPickerDismissText];
          v24 = v21;
          punchoutPickerTitle = v20;
          punchoutPickerTitle2 = v19;
          punchoutOptions3 = v18;
          punchoutOptions = v17;
          punchoutOptions2 = v67;
          if ((punchoutPickerDismissText != 0) != (punchoutPickerDismissText2 == 0))
          {
            v58 = punchoutPickerTitle2;
            v59 = punchoutPickerDismissText2;
            v60 = punchoutPickerDismissText;
            punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
            if (punchoutPickerDismissText3)
            {
              punchoutPickerTitle2 = [(SFCardSection *)self punchoutPickerDismissText];
              v6 = v68;
              punchoutPickerDismissText4 = [(SFCardSection *)v68 punchoutPickerDismissText];
              if (![punchoutPickerTitle2 isEqual:?])
              {
                goto LABEL_28;
              }
            }

            else
            {
              v6 = v68;
            }

            v57 = v24;
            canBeHidden = [(SFCardSection *)self canBeHidden];
            if (canBeHidden != [(SFCardSection *)v6 canBeHidden]|| (v26 = [(SFCardSection *)self hasTopPadding], v26 != [(SFCardSection *)v6 hasTopPadding]) || (v27 = [(SFCardSection *)self hasBottomPadding], v27 != [(SFCardSection *)v6 hasBottomPadding]))
            {
              v24 = v57;
              if (!punchoutPickerDismissText3)
              {
LABEL_29:

                if (v24)
                {
                }

                goto LABEL_54;
              }

LABEL_28:

              goto LABEL_29;
            }

            type = [(SFInfoCardSection *)self type];
            type2 = [(SFInfoCardSection *)v6 type];
            if ((type != 0) != (type2 == 0))
            {
              v55 = type2;
              v69 = type;
              type3 = [(SFInfoCardSection *)self type];
              if (type3)
              {
                type4 = [(SFInfoCardSection *)self type];
                type5 = [(SFInfoCardSection *)v6 type];
                if (![type4 isEqual:?])
                {
                  v11 = 0;
                  goto LABEL_68;
                }

                v53 = type3;
              }

              else
              {
                v53 = 0;
              }

              separatorStyle = [(SFCardSection *)self separatorStyle];
              if (separatorStyle != [(SFCardSection *)v6 separatorStyle])
              {
                v11 = 0;
                goto LABEL_67;
              }

              backgroundColor = [(SFCardSection *)self backgroundColor];
              backgroundColor2 = [(SFCardSection *)v6 backgroundColor];
              if ((backgroundColor != 0) != (backgroundColor2 == 0))
              {
                v33 = backgroundColor2;
                v49 = punchoutOptions;
                v50 = punchoutPickerTitle2;
                v48 = punchoutOptions3;
                v66 = punchoutPickerTitle;
                v34 = punchoutOptions5;
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                if (backgroundColor3)
                {
                  backgroundColor4 = [(SFCardSection *)self backgroundColor];
                  backgroundColor5 = [(SFCardSection *)v6 backgroundColor];
                  v47 = backgroundColor4;
                  if (![backgroundColor4 isEqual:?])
                  {
                    v11 = 0;
                    goto LABEL_65;
                  }
                }

                infoTuples = [(SFInfoCardSection *)self infoTuples];
                infoTuples2 = [(SFInfoCardSection *)v6 infoTuples];
                v40 = infoTuples2;
                if ((infoTuples != 0) == (infoTuples2 == 0))
                {

                  v11 = 0;
                  if (!backgroundColor3)
                  {
LABEL_66:

                    punchoutOptions5 = v34;
                    punchoutPickerTitle = v66;
                    punchoutOptions2 = v67;
                    punchoutOptions3 = v48;
                    punchoutOptions = v49;
                    punchoutPickerTitle2 = v50;
LABEL_67:
                    type3 = v53;
                    if (!v53)
                    {
LABEL_69:

                      if (punchoutPickerDismissText3)
                      {
                      }

                      if (v57)
                      {
                      }

LABEL_55:
                      punchoutOptions4 = v70;
                      if (!punchoutOptions3)
                      {
LABEL_57:

                        goto LABEL_58;
                      }

LABEL_56:

                      goto LABEL_57;
                    }

LABEL_68:

                    goto LABEL_69;
                  }

LABEL_65:

                  goto LABEL_66;
                }

                infoTuples3 = [(SFInfoCardSection *)self infoTuples];
                if (!infoTuples3 || (-[SFInfoCardSection infoTuples](self, "infoTuples"), v42 = objc_claimAutoreleasedReturnValue(), -[SFInfoCardSection infoTuples](v6, "infoTuples"), v44 = objc_claimAutoreleasedReturnValue(), v45 = v42, [v42 isEqual:?]))
                {
                  initiallyVisibleTuples = [(SFInfoCardSection *)self initiallyVisibleTuples];
                  v11 = initiallyVisibleTuples == [(SFInfoCardSection *)v6 initiallyVisibleTuples];
                  if (!infoTuples3)
                  {
                    goto LABEL_76;
                  }
                }

                else
                {
                  v11 = 0;
                }

LABEL_76:
                if (!backgroundColor3)
                {
                  goto LABEL_66;
                }

                goto LABEL_65;
              }

              if (v53)
              {
              }

              type = v69;
              type2 = v55;
            }

            v68 = v6;

            v24 = v57;
            if (punchoutPickerDismissText3)
            {
            }

            punchoutPickerDismissText2 = v59;
            punchoutPickerDismissText = v60;
            punchoutPickerTitle2 = v58;
          }

          if (v24)
          {
          }

          v6 = v68;
        }

LABEL_54:
        v11 = 0;
        goto LABEL_55;
      }
    }

    v11 = 0;
  }

LABEL_59:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = SFInfoCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:zone];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v6 = [punchoutOptions copy];
  [v4 setPunchoutOptions:v6];

  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [punchoutPickerTitle copy];
  [v4 setPunchoutPickerTitle:v8];

  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [punchoutPickerDismissText copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  type = [(SFInfoCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  infoTuples = [(SFInfoCardSection *)self infoTuples];
  v16 = [infoTuples copy];
  [v4 setInfoTuples:v16];

  [v4 setInitiallyVisibleTuples:{-[SFInfoCardSection initiallyVisibleTuples](self, "initiallyVisibleTuples")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBInfoCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBInfoCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBInfoCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBInfoCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFInfoCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFInfoCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    type = [(SFCardSection *)v8 type];
    [(SFInfoCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    infoTuples = [(SFCardSection *)v8 infoTuples];
    [(SFInfoCardSection *)v5 setInfoTuples:infoTuples];

    [(SFInfoCardSection *)v5 setInitiallyVisibleTuples:[(SFCardSection *)v8 initiallyVisibleTuples]];
    nextCard = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:nextCard];

    commands = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:commands];

    parameterKeyPaths = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:parameterKeyPaths];

    cardSectionId = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:cardSectionId];

    resultIdentifier = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:resultIdentifier];

    userReportRequest = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:userReportRequest];

    command = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:command];

    previewCommand = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:previewCommand];

    previewButtonItems = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:previewButtonItems];

    cardSectionDetail = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:cardSectionDetail];

    previewButtonItemsTitle = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:previewButtonItemsTitle];

    backgroundColor2 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor2];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions2 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions2];

    punchoutPickerTitle2 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];

    punchoutPickerDismissText2 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    referencedCommands = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:referencedCommands];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    appEntityAnnotation = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:appEntityAnnotation];

    emphasisSubjectId = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:emphasisSubjectId];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    secondaryCommand = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:secondaryCommand];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    racFeedbackSubfeatureId = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:racFeedbackSubfeatureId];

    racFeedbackLoggingContent = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:racFeedbackLoggingContent];

    copyableItems = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:copyableItems];

    applicationBundleIdentifier = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier];
  }

  return v5;
}

@end