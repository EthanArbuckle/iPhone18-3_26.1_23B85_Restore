@interface SFSplitCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSplitCardSection)initWithCoder:(id)coder;
- (SFSplitCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSplitCardSection

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = SFSplitCardSection;
  v3 = [(SFCardSection *)&v19 hash];
  topTitle = [(SFSplitCardSection *)self topTitle];
  v5 = [topTitle hash];
  secondaryTopTitle = [(SFSplitCardSection *)self secondaryTopTitle];
  v7 = v5 ^ [secondaryTopTitle hash];
  listPrefix = [(SFSplitCardSection *)self listPrefix];
  v9 = v7 ^ [listPrefix hash];
  listItems = [(SFSplitCardSection *)self listItems];
  v11 = v9 ^ [listItems hash];
  listMoreString = [(SFSplitCardSection *)self listMoreString];
  v13 = v11 ^ [listMoreString hash] ^ v3;
  bottomTitle = [(SFSplitCardSection *)self bottomTitle];
  v15 = [bottomTitle hash];
  body = [(SFSplitCardSection *)self body];
  v17 = v15 ^ [body hash];

  return v13 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFSplitCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = SFSplitCardSection;
      if ([(SFCardSection *)&v73 isEqual:equalCopy])
      {
        v6 = equalCopy;
        topTitle = [(SFSplitCardSection *)self topTitle];
        topTitle2 = [(SFSplitCardSection *)v6 topTitle];
        if ((topTitle != 0) == (topTitle2 == 0))
        {
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        topTitle3 = [(SFSplitCardSection *)self topTitle];
        if (topTitle3)
        {
          topTitle4 = [(SFSplitCardSection *)self topTitle];
          topTitle5 = [(SFSplitCardSection *)v6 topTitle];
          if (![topTitle4 isEqual:topTitle5])
          {
            v12 = 0;
            goto LABEL_48;
          }

          v71 = topTitle5;
          v72 = topTitle4;
        }

        secondaryTopTitle = [(SFSplitCardSection *)self secondaryTopTitle];
        secondaryTopTitle2 = [(SFSplitCardSection *)v6 secondaryTopTitle];
        if ((secondaryTopTitle != 0) != (secondaryTopTitle2 == 0))
        {
          v70 = secondaryTopTitle2;
          secondaryTopTitle3 = [(SFSplitCardSection *)self secondaryTopTitle];
          if (secondaryTopTitle3)
          {
            secondaryTopTitle4 = [(SFSplitCardSection *)self secondaryTopTitle];
            secondaryTopTitle5 = [(SFSplitCardSection *)v6 secondaryTopTitle];
            if (([secondaryTopTitle4 isEqual:secondaryTopTitle5] & 1) == 0)
            {

LABEL_45:
LABEL_46:
              v12 = 0;
              goto LABEL_47;
            }

            v68 = secondaryTopTitle5;
            v69 = secondaryTopTitle;
            v3 = secondaryTopTitle4;
            v18 = secondaryTopTitle3;
          }

          else
          {
            v69 = secondaryTopTitle;
            v18 = 0;
          }

          listPrefix = [(SFSplitCardSection *)self listPrefix];
          listPrefix2 = [(SFSplitCardSection *)v6 listPrefix];
          v21 = v18;
          v22 = v3;
          if ((listPrefix != 0) != (listPrefix2 == 0))
          {
            v66 = listPrefix;
            v67 = listPrefix2;
            listPrefix3 = [(SFSplitCardSection *)self listPrefix];
            if (listPrefix3)
            {
              listPrefix4 = [(SFSplitCardSection *)self listPrefix];
              listPrefix5 = [(SFSplitCardSection *)v6 listPrefix];
              if (([listPrefix4 isEqual:listPrefix5] & 1) == 0)
              {

                if (v21)
                {
                }

                goto LABEL_46;
              }

              v63 = listPrefix5;
              v64 = listPrefix4;
              v25 = v21;
            }

            else
            {
              v25 = v21;
            }

            listItems = [(SFSplitCardSection *)self listItems];
            listItems2 = [(SFSplitCardSection *)v6 listItems];
            v21 = v25;
            v22 = v3;
            if ((listItems != 0) != (listItems2 == 0))
            {
              v62 = listItems2;
              listItems3 = [(SFSplitCardSection *)self listItems];
              if (listItems3)
              {
                listItems4 = [(SFSplitCardSection *)self listItems];
                [(SFSplitCardSection *)v6 listItems];
                v58 = v60 = listItems4;
                if (![listItems4 isEqual:?])
                {
                  v12 = 0;
                  v34 = listItems3;
                  goto LABEL_71;
                }

                v59 = v21;
              }

              else
              {
                v59 = v21;
              }

              listMoreString = [(SFSplitCardSection *)self listMoreString];
              listMoreString2 = [(SFSplitCardSection *)v6 listMoreString];
              if ((listMoreString != 0) != (listMoreString2 == 0))
              {
                v57 = listMoreString2;
                listMoreString3 = [(SFSplitCardSection *)self listMoreString];
                v56 = listMoreString;
                if (listMoreString3)
                {
                  listMoreString4 = [(SFSplitCardSection *)self listMoreString];
                  listMoreString5 = [(SFSplitCardSection *)v6 listMoreString];
                  v54 = listMoreString4;
                  if (![listMoreString4 isEqual:?])
                  {
                    v12 = 0;
                    v39 = listMoreString3;
                    v21 = v59;
LABEL_69:

LABEL_70:
                    v34 = listItems3;
                    if (!listItems3)
                    {
LABEL_72:

                      if (listPrefix3)
                      {
                      }

                      if (v21)
                      {
                      }

LABEL_47:
                      topTitle5 = v71;
                      topTitle4 = v72;
                      if (!topTitle3)
                      {
LABEL_49:

                        goto LABEL_50;
                      }

LABEL_48:

                      goto LABEL_49;
                    }

LABEL_71:

                    goto LABEL_72;
                  }

                  v55 = listMoreString3;
                }

                else
                {
                  v55 = 0;
                }

                bottomTitle = [(SFSplitCardSection *)self bottomTitle];
                bottomTitle2 = [(SFSplitCardSection *)v6 bottomTitle];
                if ((bottomTitle != 0) == (bottomTitle2 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                  goto LABEL_68;
                }

                v52 = bottomTitle2;
                [(SFSplitCardSection *)self bottomTitle];
                v51 = v50 = bottomTitle;
                if (!v51 || (-[SFSplitCardSection bottomTitle](self, "bottomTitle"), v37 = objc_claimAutoreleasedReturnValue(), -[SFSplitCardSection bottomTitle](v6, "bottomTitle"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v37, [v37 isEqual:?]))
                {
                  body = [(SFSplitCardSection *)self body];
                  body2 = [(SFSplitCardSection *)v6 body];
                  if ((body != 0) == (body2 == 0))
                  {

                    v12 = 0;
                    v21 = v59;
                  }

                  else
                  {
                    v46 = body2;
                    v49 = body;
                    body3 = [(SFSplitCardSection *)self body];
                    v21 = v59;
                    if (body3)
                    {
                      v43 = body3;
                      body4 = [(SFSplitCardSection *)self body];
                      body5 = [(SFSplitCardSection *)v6 body];
                      v12 = [body4 isEqual:body5];
                    }

                    else
                    {

                      v12 = 1;
                    }
                  }

                  v38 = v51;
                  if (!v51)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  v12 = 0;
                  v21 = v59;
                  v38 = v51;
                }

LABEL_67:
LABEL_68:
                v39 = v55;
                if (!v55)
                {
                  goto LABEL_70;
                }

                goto LABEL_69;
              }

              if (listItems3)
              {
              }

              v21 = v59;
              listItems2 = v62;
            }

            if (listPrefix3)
            {
            }

            listPrefix = v66;
            listPrefix2 = v67;
          }

          if (v21)
          {
          }

          secondaryTopTitle = v69;
          secondaryTopTitle2 = v70;
        }

        goto LABEL_45;
      }
    }

    v12 = 0;
  }

LABEL_51:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = SFSplitCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:zone];
  topTitle = [(SFSplitCardSection *)self topTitle];
  v6 = [topTitle copy];
  [v4 setTopTitle:v6];

  secondaryTopTitle = [(SFSplitCardSection *)self secondaryTopTitle];
  v8 = [secondaryTopTitle copy];
  [v4 setSecondaryTopTitle:v8];

  listPrefix = [(SFSplitCardSection *)self listPrefix];
  v10 = [listPrefix copy];
  [v4 setListPrefix:v10];

  listItems = [(SFSplitCardSection *)self listItems];
  v12 = [listItems copy];
  [v4 setListItems:v12];

  listMoreString = [(SFSplitCardSection *)self listMoreString];
  v14 = [listMoreString copy];
  [v4 setListMoreString:v14];

  bottomTitle = [(SFSplitCardSection *)self bottomTitle];
  v16 = [bottomTitle copy];
  [v4 setBottomTitle:v16];

  body = [(SFSplitCardSection *)self body];
  v18 = [body copy];
  [v4 setBody:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSplitCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBSplitCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSplitCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSplitCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFSplitCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFSplitCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topTitle = [(SFCardSection *)v8 topTitle];
    [(SFSplitCardSection *)v5 setTopTitle:topTitle];

    secondaryTopTitle = [(SFCardSection *)v8 secondaryTopTitle];
    [(SFSplitCardSection *)v5 setSecondaryTopTitle:secondaryTopTitle];

    listPrefix = [(SFCardSection *)v8 listPrefix];
    [(SFSplitCardSection *)v5 setListPrefix:listPrefix];

    listItems = [(SFCardSection *)v8 listItems];
    [(SFSplitCardSection *)v5 setListItems:listItems];

    listMoreString = [(SFCardSection *)v8 listMoreString];
    [(SFSplitCardSection *)v5 setListMoreString:listMoreString];

    bottomTitle = [(SFCardSection *)v8 bottomTitle];
    [(SFSplitCardSection *)v5 setBottomTitle:bottomTitle];

    body = [(SFCardSection *)v8 body];
    [(SFSplitCardSection *)v5 setBody:body];

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

    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    leadingSwipeButtonItems = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:leadingSwipeButtonItems];

    trailingSwipeButtonItems = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:trailingSwipeButtonItems];

    punchoutOptions = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:punchoutOptions];

    punchoutPickerTitle = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle];

    punchoutPickerDismissText = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText];

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

- (SFSplitCardSection)initWithProtobuf:(id)protobuf
{
  v42 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v40.receiver = self;
  v40.super_class = SFSplitCardSection;
  v5 = [(SFCardSection *)&v40 init];
  if (v5)
  {
    topTitle = [protobufCopy topTitle];

    if (topTitle)
    {
      v7 = [SFRichText alloc];
      topTitle2 = [protobufCopy topTitle];
      v9 = [(SFRichText *)v7 initWithProtobuf:topTitle2];
      [(SFSplitCardSection *)v5 setTopTitle:v9];
    }

    secondaryTopTitle = [protobufCopy secondaryTopTitle];

    if (secondaryTopTitle)
    {
      v11 = [SFRichText alloc];
      secondaryTopTitle2 = [protobufCopy secondaryTopTitle];
      v13 = [(SFRichText *)v11 initWithProtobuf:secondaryTopTitle2];
      [(SFSplitCardSection *)v5 setSecondaryTopTitle:v13];
    }

    listPrefix = [protobufCopy listPrefix];

    if (listPrefix)
    {
      listPrefix2 = [protobufCopy listPrefix];
      [(SFSplitCardSection *)v5 setListPrefix:listPrefix2];
    }

    listItems = [protobufCopy listItems];
    if (listItems)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    listItems2 = [protobufCopy listItems];
    v19 = [listItems2 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(listItems2);
          }

          if (*(*(&v36 + 1) + 8 * i))
          {
            [v17 addObject:?];
          }
        }

        v20 = [listItems2 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v20);
    }

    [(SFSplitCardSection *)v5 setListItems:v17];
    listMoreString = [protobufCopy listMoreString];

    if (listMoreString)
    {
      listMoreString2 = [protobufCopy listMoreString];
      [(SFSplitCardSection *)v5 setListMoreString:listMoreString2];
    }

    bottomTitle = [protobufCopy bottomTitle];

    if (bottomTitle)
    {
      v26 = [SFRichText alloc];
      bottomTitle2 = [protobufCopy bottomTitle];
      v28 = [(SFRichText *)v26 initWithProtobuf:bottomTitle2];
      [(SFSplitCardSection *)v5 setBottomTitle:v28];
    }

    body = [protobufCopy body];

    if (body)
    {
      v30 = [SFRichText alloc];
      body2 = [protobufCopy body];
      v32 = [(SFRichText *)v30 initWithProtobuf:body2];
      [(SFSplitCardSection *)v5 setBody:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

@end