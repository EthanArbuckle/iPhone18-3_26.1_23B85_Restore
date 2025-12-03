@interface SFLeadingTrailingCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLeadingTrailingCardSection)initWithCoder:(id)coder;
- (SFLeadingTrailingCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFLeadingTrailingCardSection

- (SFLeadingTrailingCardSection)initWithProtobuf:(id)protobuf
{
  v62 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v58.receiver = self;
  v58.super_class = SFLeadingTrailingCardSection;
  v5 = [(SFCardSection *)&v58 init];
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

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v54 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v54 objects:v61 count:16];
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
      [(SFLeadingTrailingCardSection *)v5 setType:type2];
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

    leadingCardSections = [protobufCopy leadingCardSections];
    if (leadingCardSections)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    leadingCardSections2 = [protobufCopy leadingCardSections];
    v27 = [leadingCardSections2 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v51;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(leadingCardSections2);
          }

          v31 = [[SFCardSection alloc] initWithProtobuf:*(*(&v50 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [leadingCardSections2 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v28);
    }

    [(SFLeadingTrailingCardSection *)v5 setLeadingCardSections:v25];
    trailingCardSections = [protobufCopy trailingCardSections];
    v45 = v5;
    if (trailingCardSections)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    trailingCardSections2 = [protobufCopy trailingCardSections];
    v35 = [trailingCardSections2 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v47;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(trailingCardSections2);
          }

          v39 = [[SFCardSection alloc] initWithProtobuf:*(*(&v46 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [trailingCardSections2 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v36);
    }

    v5 = v45;
    [(SFLeadingTrailingCardSection *)v45 setTrailingCardSections:v33];
    leadingToTrailingRatio = [protobufCopy leadingToTrailingRatio];

    if (leadingToTrailingRatio)
    {
      leadingToTrailingRatio2 = [protobufCopy leadingToTrailingRatio];
      [leadingToTrailingRatio2 doubleValue];
      [(SFLeadingTrailingCardSection *)v45 setLeadingToTrailingRatio:?];
    }

    v42 = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v28.receiver = self;
  v28.super_class = SFLeadingTrailingCardSection;
  v3 = [(SFCardSection *)&v28 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [punchoutPickerDismissText hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFLeadingTrailingCardSection *)self type];
  v14 = hasBottomPadding ^ [type hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [backgroundColor hash];
  leadingCardSections = [(SFLeadingTrailingCardSection *)self leadingCardSections];
  v19 = v11 ^ v17 ^ [leadingCardSections hash];
  trailingCardSections = [(SFLeadingTrailingCardSection *)self trailingCardSections];
  v21 = v19 ^ [trailingCardSections hash];
  [(SFLeadingTrailingCardSection *)self leadingToTrailingRatio];
  if (v22 < 0.0)
  {
    v22 = -v22;
  }

  *v23.i64 = round(v22);
  *v24.i64 = *v23.i64 - trunc(*v23.i64 * 5.42101086e-20) * 1.84467441e19;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v26 = (*vbslq_s8(vnegq_f64(v25), v24, v23).i64 * 2654435760.0) + vcvtd_n_u64_f64(v22 - *v23.i64, 0x40uLL);

  return v21 ^ v26;
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
    if ([(SFLeadingTrailingCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v67.receiver = self;
      v67.super_class = SFLeadingTrailingCardSection;
      if ([(SFCardSection *)&v67 isEqual:equalCopy])
      {
        v5 = equalCopy;
        punchoutOptions = [(SFCardSection *)self punchoutOptions];
        punchoutOptions2 = [(SFCardSection *)v5 punchoutOptions];
        if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
        {
          v11 = 0;
LABEL_27:

          goto LABEL_28;
        }

        punchoutOptions3 = [(SFCardSection *)self punchoutOptions];
        if (punchoutOptions3)
        {
          punchoutOptions4 = [(SFCardSection *)self punchoutOptions];
          punchoutOptions5 = [(SFCardSection *)v5 punchoutOptions];
          if (![punchoutOptions4 isEqual:punchoutOptions5])
          {
            v11 = 0;
LABEL_25:

            goto LABEL_26;
          }

          v65 = punchoutOptions5;
          v66 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v5 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) == (punchoutPickerTitle2 == 0))
        {
          goto LABEL_23;
        }

        punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
        if (punchoutPickerTitle3)
        {
          punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
          punchoutPickerTitle5 = [(SFCardSection *)v5 punchoutPickerTitle];
          v63 = punchoutPickerTitle4;
          if (![punchoutPickerTitle4 isEqual:punchoutPickerTitle5])
          {
            goto LABEL_21;
          }
        }

        v64 = punchoutPickerTitle3;
        punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
        punchoutPickerDismissText2 = [(SFCardSection *)v5 punchoutPickerDismissText];
        if ((punchoutPickerDismissText != 0) == (punchoutPickerDismissText2 == 0))
        {

          if (!punchoutPickerTitle3)
          {
LABEL_22:

LABEL_23:
            v11 = 0;
            if (!punchoutOptions3)
            {
LABEL_26:

              goto LABEL_27;
            }

            goto LABEL_24;
          }

LABEL_21:

          goto LABEL_22;
        }

        v59 = punchoutPickerDismissText;
        v60 = punchoutPickerDismissText2;
        punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
        if (punchoutPickerDismissText3)
        {
          punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText5 = [(SFCardSection *)v5 punchoutPickerDismissText];
          v58 = punchoutPickerDismissText4;
          v20 = punchoutPickerDismissText4;
          punchoutPickerDismissText = punchoutPickerDismissText5;
          if (![v20 isEqual:punchoutPickerDismissText5])
          {
LABEL_39:

LABEL_40:
            if (!punchoutPickerTitle3)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        canBeHidden = [(SFCardSection *)self canBeHidden];
        if (canBeHidden == [(SFCardSection *)v5 canBeHidden])
        {
          hasTopPadding = [(SFCardSection *)self hasTopPadding];
          if (hasTopPadding == [(SFCardSection *)v5 hasTopPadding])
          {
            hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
            if (hasBottomPadding == [(SFCardSection *)v5 hasBottomPadding])
            {
              type = [(SFLeadingTrailingCardSection *)self type];
              type2 = [(SFLeadingTrailingCardSection *)v5 type];
              if ((type != 0) != (type2 == 0))
              {
                v55 = type2;
                v56 = type;
                [(SFLeadingTrailingCardSection *)self type];
                v57 = punchoutPickerTitle3 = v64;
                if (v57)
                {
                  type3 = [(SFLeadingTrailingCardSection *)self type];
                  type4 = [(SFLeadingTrailingCardSection *)v5 type];
                  if (![type3 isEqual:?])
                  {
                    goto LABEL_50;
                  }
                }

                separatorStyle = [(SFCardSection *)self separatorStyle];
                if (separatorStyle == [(SFCardSection *)v5 separatorStyle])
                {
                  backgroundColor = [(SFCardSection *)self backgroundColor];
                  backgroundColor2 = [(SFCardSection *)v5 backgroundColor];
                  if ((backgroundColor != 0) != (backgroundColor2 == 0))
                  {
                    v50 = punchoutPickerDismissText;
                    v51 = backgroundColor2;
                    backgroundColor3 = [(SFCardSection *)self backgroundColor];
                    if (backgroundColor3)
                    {
                      backgroundColor4 = [(SFCardSection *)self backgroundColor];
                      backgroundColor5 = [(SFCardSection *)v5 backgroundColor];
                      v47 = backgroundColor4;
                      if (![backgroundColor4 isEqual:?])
                      {
                        goto LABEL_57;
                      }
                    }

                    leadingCardSections = [(SFLeadingTrailingCardSection *)self leadingCardSections];
                    leadingCardSections2 = [(SFLeadingTrailingCardSection *)v5 leadingCardSections];
                    if ((leadingCardSections != 0) == (leadingCardSections2 == 0))
                    {

                      if (!backgroundColor3)
                      {
LABEL_58:

                        punchoutPickerTitle3 = v64;
                        punchoutPickerDismissText = v50;
LABEL_49:
                        if (!v57)
                        {
LABEL_51:

LABEL_38:
                          if (!punchoutPickerDismissText3)
                          {
                            goto LABEL_40;
                          }

                          goto LABEL_39;
                        }

LABEL_50:

                        goto LABEL_51;
                      }

LABEL_57:

                      goto LABEL_58;
                    }

                    leadingCardSections3 = [(SFLeadingTrailingCardSection *)self leadingCardSections];
                    if (leadingCardSections3)
                    {
                      leadingCardSections4 = [(SFLeadingTrailingCardSection *)self leadingCardSections];
                      leadingCardSections5 = [(SFLeadingTrailingCardSection *)v5 leadingCardSections];
                      v42 = leadingCardSections4;
                      if (![leadingCardSections4 isEqual:?])
                      {
                        v11 = 0;
LABEL_68:

LABEL_69:
                        if (backgroundColor3)
                        {
                        }

                        if (v57)
                        {
                        }

                        if (punchoutPickerDismissText3)
                        {
                        }

                        if (v64)
                        {
                        }

                        if (!punchoutOptions3)
                        {
                          goto LABEL_26;
                        }

LABEL_24:
                        punchoutOptions5 = v65;
                        punchoutOptions4 = v66;
                        goto LABEL_25;
                      }
                    }

                    trailingCardSections = [(SFLeadingTrailingCardSection *)self trailingCardSections];
                    v32 = trailingCardSections != 0;
                    trailingCardSections2 = [(SFLeadingTrailingCardSection *)v5 trailingCardSections];
                    if (v32 == (trailingCardSections2 == 0))
                    {

                      v11 = 0;
                      goto LABEL_67;
                    }

                    trailingCardSections3 = [(SFLeadingTrailingCardSection *)self trailingCardSections];
                    if (!trailingCardSections3 || (-[SFLeadingTrailingCardSection trailingCardSections](self, "trailingCardSections"), v33 = objc_claimAutoreleasedReturnValue(), -[SFLeadingTrailingCardSection trailingCardSections](v5, "trailingCardSections"), v34 = objc_claimAutoreleasedReturnValue(), v39 = v33, v35 = v33, v32 = v34, [v35 isEqual:?]))
                    {
                      [(SFLeadingTrailingCardSection *)self leadingToTrailingRatio];
                      v37 = v36;
                      [(SFLeadingTrailingCardSection *)v5 leadingToTrailingRatio];
                      v11 = vabdd_f64(v37, v38) < 2.22044605e-16;
                      if (!trailingCardSections3)
                      {
LABEL_66:

LABEL_67:
                        if (!leadingCardSections3)
                        {
                          goto LABEL_69;
                        }

                        goto LABEL_68;
                      }
                    }

                    else
                    {
                      v11 = 0;
                    }

                    goto LABEL_66;
                  }
                }

                punchoutPickerTitle3 = v64;
                goto LABEL_49;
              }
            }
          }
        }

        punchoutPickerTitle3 = v64;
        goto LABEL_38;
      }
    }

    v11 = 0;
  }

LABEL_28:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = SFLeadingTrailingCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:zone];
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
  type = [(SFLeadingTrailingCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  leadingCardSections = [(SFLeadingTrailingCardSection *)self leadingCardSections];
  v16 = [leadingCardSections copy];
  [v4 setLeadingCardSections:v16];

  trailingCardSections = [(SFLeadingTrailingCardSection *)self trailingCardSections];
  v18 = [trailingCardSections copy];
  [v4 setTrailingCardSections:v18];

  [(SFLeadingTrailingCardSection *)self leadingToTrailingRatio];
  [v4 setLeadingToTrailingRatio:?];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLeadingTrailingCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBLeadingTrailingCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLeadingTrailingCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBLeadingTrailingCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFLeadingTrailingCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFLeadingTrailingCardSection)initWithCoder:(id)coder
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
    [(SFLeadingTrailingCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    leadingCardSections = [(SFCardSection *)v8 leadingCardSections];
    [(SFLeadingTrailingCardSection *)v5 setLeadingCardSections:leadingCardSections];

    trailingCardSections = [(SFCardSection *)v8 trailingCardSections];
    [(SFLeadingTrailingCardSection *)v5 setTrailingCardSections:trailingCardSections];

    [(SFCardSection *)v8 leadingToTrailingRatio];
    [(SFLeadingTrailingCardSection *)v5 setLeadingToTrailingRatio:?];
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