@interface SFMediaRemoteControlCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaRemoteControlCardSection)initWithCoder:(id)coder;
- (SFMediaRemoteControlCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMediaRemoteControlCardSection

- (unint64_t)hash
{
  v24.receiver = self;
  v24.super_class = SFMediaRemoteControlCardSection;
  v3 = [(SFCardSection *)&v24 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [punchoutPickerDismissText hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFMediaRemoteControlCardSection *)self type];
  v14 = hasBottomPadding ^ [type hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [backgroundColor hash];
  playbackRouteUniqueIdentifier = [(SFMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
  v19 = v11 ^ v17 ^ [playbackRouteUniqueIdentifier hash];
  playbackRouteUniqueIdentifierIsEncrypted = [(SFMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifierIsEncrypted];
  playbackBundleIdentifier = [(SFMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  v22 = playbackRouteUniqueIdentifierIsEncrypted ^ [playbackBundleIdentifier hash];

  return v19 ^ v22;
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
    if ([(SFMediaRemoteControlCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v80.receiver = self;
      v80.super_class = SFMediaRemoteControlCardSection;
      if ([(SFCardSection *)&v80 isEqual:equalCopy])
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

          v79 = punchoutOptions4;
        }

        punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
        punchoutPickerTitle2 = [(SFCardSection *)v6 punchoutPickerTitle];
        if ((punchoutPickerTitle != 0) != (punchoutPickerTitle2 == 0))
        {
          punchoutPickerTitle3 = [(SFCardSection *)self punchoutPickerTitle];
          v76 = punchoutOptions5;
          if (punchoutPickerTitle3)
          {
            v73 = punchoutPickerTitle;
            punchoutPickerTitle4 = [(SFCardSection *)self punchoutPickerTitle];
            punchoutPickerTitle5 = [(SFCardSection *)v6 punchoutPickerTitle];
            if (([punchoutPickerTitle4 isEqual:punchoutPickerTitle5] & 1) == 0)
            {

LABEL_31:
              v11 = 0;
              goto LABEL_32;
            }

            v71 = punchoutPickerTitle5;
            v72 = punchoutPickerTitle4;
            v77 = v6;
            v75 = punchoutOptions2;
            v17 = punchoutOptions;
            v18 = punchoutOptions3;
            v19 = punchoutPickerTitle2;
            v20 = v73;
            punchoutOptions5 = v76;
            v21 = punchoutPickerTitle3;
          }

          else
          {
            v77 = v6;
            v75 = punchoutOptions2;
            v17 = punchoutOptions;
            v18 = punchoutOptions3;
            v19 = punchoutPickerTitle2;
            v20 = punchoutPickerTitle;
            v21 = 0;
          }

          punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText2 = [(SFCardSection *)v77 punchoutPickerDismissText];
          v24 = v21;
          punchoutPickerTitle = v20;
          punchoutPickerTitle2 = v19;
          punchoutOptions3 = v18;
          punchoutOptions = v17;
          punchoutOptions2 = v75;
          if ((punchoutPickerDismissText != 0) != (punchoutPickerDismissText2 == 0))
          {
            v69 = punchoutPickerDismissText2;
            v70 = punchoutPickerDismissText;
            punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
            if (punchoutPickerDismissText3)
            {
              punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
              v6 = v77;
              punchoutPickerDismissText5 = [(SFCardSection *)v77 punchoutPickerDismissText];
              v67 = punchoutPickerDismissText4;
              v26 = [punchoutPickerDismissText4 isEqual:?];
              v27 = v70;
              if (!v26)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v6 = v77;
              v27 = v70;
            }

            v68 = v24;
            canBeHidden = [(SFCardSection *)self canBeHidden];
            if (canBeHidden != [(SFCardSection *)v6 canBeHidden]|| (v29 = [(SFCardSection *)self hasTopPadding], v29 != [(SFCardSection *)v6 hasTopPadding]) || (v30 = [(SFCardSection *)self hasBottomPadding], v30 != [(SFCardSection *)v6 hasBottomPadding]))
            {
              v24 = v68;
              if (!punchoutPickerDismissText3)
              {
LABEL_28:

                if (v24)
                {
                }

                goto LABEL_31;
              }

LABEL_27:

              goto LABEL_28;
            }

            v65 = punchoutPickerTitle2;
            type = [(SFMediaRemoteControlCardSection *)self type];
            type2 = [(SFMediaRemoteControlCardSection *)v6 type];
            if ((type != 0) != (type2 == 0))
            {
              v78 = type;
              v64 = type2;
              type3 = [(SFMediaRemoteControlCardSection *)self type];
              if (type3)
              {
                type4 = [(SFMediaRemoteControlCardSection *)self type];
                type5 = [(SFMediaRemoteControlCardSection *)v6 type];
                v62 = type4;
                v36 = type4;
                type = type5;
                if (![v36 isEqual:type5])
                {
                  v11 = 0;
                  goto LABEL_68;
                }

                v63 = type3;
              }

              else
              {
                v63 = 0;
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
                v60 = type;
                v61 = backgroundColor2;
                v59 = punchoutOptions;
                v40 = punchoutPickerTitle;
                backgroundColor3 = [(SFCardSection *)self backgroundColor];
                if (backgroundColor3)
                {
                  backgroundColor4 = [(SFCardSection *)self backgroundColor];
                  backgroundColor5 = [(SFCardSection *)v6 backgroundColor];
                  v58 = backgroundColor4;
                  if (![backgroundColor4 isEqual:?])
                  {
                    v11 = 0;
                    goto LABEL_65;
                  }
                }

                playbackRouteUniqueIdentifier = [(SFMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
                playbackRouteUniqueIdentifier2 = [(SFMediaRemoteControlCardSection *)v6 playbackRouteUniqueIdentifier];
                v46 = playbackRouteUniqueIdentifier2;
                if ((playbackRouteUniqueIdentifier != 0) == (playbackRouteUniqueIdentifier2 == 0))
                {

                  v11 = 0;
                  if (!backgroundColor3)
                  {
LABEL_66:

                    punchoutPickerTitle = v40;
                    punchoutOptions = v59;
                    type = v60;
                    punchoutOptions2 = v75;
                    v27 = v70;
LABEL_67:
                    type3 = v63;
                    if (!v63)
                    {
LABEL_69:

                      if (punchoutPickerDismissText3)
                      {
                      }

                      if (v68)
                      {
                      }

LABEL_32:
                      punchoutOptions4 = v79;
                      punchoutOptions5 = v76;
                      if (!punchoutOptions3)
                      {
                        goto LABEL_57;
                      }

                      goto LABEL_56;
                    }

LABEL_68:

                    goto LABEL_69;
                  }

LABEL_65:

                  goto LABEL_66;
                }

                playbackRouteUniqueIdentifier3 = [(SFMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
                if (playbackRouteUniqueIdentifier3)
                {
                  playbackRouteUniqueIdentifier4 = [(SFMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
                  playbackRouteUniqueIdentifier5 = [(SFMediaRemoteControlCardSection *)v6 playbackRouteUniqueIdentifier];
                  v55 = playbackRouteUniqueIdentifier4;
                  if (![playbackRouteUniqueIdentifier4 isEqual:?])
                  {
                    v11 = 0;
LABEL_81:

LABEL_82:
                    if (!backgroundColor3)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_65;
                  }
                }

                playbackRouteUniqueIdentifierIsEncrypted = [(SFMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifierIsEncrypted];
                if (playbackRouteUniqueIdentifierIsEncrypted == [(SFMediaRemoteControlCardSection *)v6 playbackRouteUniqueIdentifierIsEncrypted])
                {
                  playbackBundleIdentifier = [(SFMediaRemoteControlCardSection *)self playbackBundleIdentifier];
                  playbackBundleIdentifier2 = [(SFMediaRemoteControlCardSection *)v6 playbackBundleIdentifier];
                  if ((playbackBundleIdentifier != 0) != (playbackBundleIdentifier2 == 0))
                  {
                    playbackBundleIdentifier3 = [(SFMediaRemoteControlCardSection *)self playbackBundleIdentifier];
                    if (playbackBundleIdentifier3)
                    {
                      playbackBundleIdentifier4 = [(SFMediaRemoteControlCardSection *)self playbackBundleIdentifier];
                      playbackBundleIdentifier5 = [(SFMediaRemoteControlCardSection *)v6 playbackBundleIdentifier];
                      v11 = [playbackBundleIdentifier4 isEqual:playbackBundleIdentifier5];
                    }

                    else
                    {

                      v11 = 1;
                    }

LABEL_80:
                    if (!playbackRouteUniqueIdentifier3)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_81;
                  }
                }

                v11 = 0;
                goto LABEL_80;
              }

              if (v63)
              {
              }

              type2 = v64;
              type = v78;
            }

            v77 = v6;

            v24 = v68;
            if (punchoutPickerDismissText3)
            {
            }

            punchoutPickerDismissText2 = v69;
            punchoutPickerDismissText = v70;
            punchoutOptions5 = v76;
            punchoutPickerTitle2 = v65;
          }

          if (v24)
          {
          }

          v6 = v77;
        }

        v11 = 0;
        punchoutOptions4 = v79;
        if (!punchoutOptions3)
        {
LABEL_57:

          goto LABEL_58;
        }

LABEL_56:

        goto LABEL_57;
      }
    }

    v11 = 0;
  }

LABEL_59:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = SFMediaRemoteControlCardSection;
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
  type = [(SFMediaRemoteControlCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  playbackRouteUniqueIdentifier = [(SFMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
  v16 = [playbackRouteUniqueIdentifier copy];
  [v4 setPlaybackRouteUniqueIdentifier:v16];

  [v4 setPlaybackRouteUniqueIdentifierIsEncrypted:{-[SFMediaRemoteControlCardSection playbackRouteUniqueIdentifierIsEncrypted](self, "playbackRouteUniqueIdentifierIsEncrypted")}];
  playbackBundleIdentifier = [(SFMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  v18 = [playbackBundleIdentifier copy];
  [v4 setPlaybackBundleIdentifier:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaRemoteControlCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBMediaRemoteControlCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaRemoteControlCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMediaRemoteControlCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFMediaRemoteControlCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFMediaRemoteControlCardSection)initWithCoder:(id)coder
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
    [(SFMediaRemoteControlCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    playbackRouteUniqueIdentifier = [(SFCardSection *)v8 playbackRouteUniqueIdentifier];
    [(SFMediaRemoteControlCardSection *)v5 setPlaybackRouteUniqueIdentifier:playbackRouteUniqueIdentifier];

    [(SFMediaRemoteControlCardSection *)v5 setPlaybackRouteUniqueIdentifierIsEncrypted:[(SFCardSection *)v8 playbackRouteUniqueIdentifierIsEncrypted]];
    playbackBundleIdentifier = [(SFCardSection *)v8 playbackBundleIdentifier];
    [(SFMediaRemoteControlCardSection *)v5 setPlaybackBundleIdentifier:playbackBundleIdentifier];

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

- (SFMediaRemoteControlCardSection)initWithProtobuf:(id)protobuf
{
  v37 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v35.receiver = self;
  v35.super_class = SFMediaRemoteControlCardSection;
  v5 = [(SFCardSection *)&v35 init];
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

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v31 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
      [(SFMediaRemoteControlCardSection *)v5 setType:type2];
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

    playbackRouteUniqueIdentifier = [protobufCopy playbackRouteUniqueIdentifier];

    if (playbackRouteUniqueIdentifier)
    {
      playbackRouteUniqueIdentifier2 = [protobufCopy playbackRouteUniqueIdentifier];
      [(SFMediaRemoteControlCardSection *)v5 setPlaybackRouteUniqueIdentifier:playbackRouteUniqueIdentifier2];
    }

    if ([protobufCopy playbackRouteUniqueIdentifierIsEncrypted])
    {
      -[SFMediaRemoteControlCardSection setPlaybackRouteUniqueIdentifierIsEncrypted:](v5, "setPlaybackRouteUniqueIdentifierIsEncrypted:", [protobufCopy playbackRouteUniqueIdentifierIsEncrypted]);
    }

    playbackBundleIdentifier = [protobufCopy playbackBundleIdentifier];

    if (playbackBundleIdentifier)
    {
      playbackBundleIdentifier2 = [protobufCopy playbackBundleIdentifier];
      [(SFMediaRemoteControlCardSection *)v5 setPlaybackBundleIdentifier:playbackBundleIdentifier2];
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

@end