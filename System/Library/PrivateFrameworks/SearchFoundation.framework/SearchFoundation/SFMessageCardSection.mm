@interface SFMessageCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMessageCardSection)initWithCoder:(id)coder;
- (SFMessageCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMessageCardSection

- (SFMessageCardSection)initWithProtobuf:(id)protobuf
{
  v42 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v40.receiver = self;
  v40.super_class = SFMessageCardSection;
  v5 = [(SFCardSection *)&v40 init];
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

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    punchoutOptions2 = [protobufCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v36 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
      [(SFMessageCardSection *)v5 setType:type2];
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

    messageText = [protobufCopy messageText];

    if (messageText)
    {
      messageText2 = [protobufCopy messageText];
      [(SFMessageCardSection *)v5 setMessageText:messageText2];
    }

    if ([protobufCopy messageStatus])
    {
      -[SFMessageCardSection setMessageStatus:](v5, "setMessageStatus:", [protobufCopy messageStatus]);
    }

    if ([protobufCopy messageServiceType])
    {
      -[SFMessageCardSection setMessageServiceType:](v5, "setMessageServiceType:", [protobufCopy messageServiceType]);
    }

    audioMessageURL = [protobufCopy audioMessageURL];

    if (audioMessageURL)
    {
      audioMessageURL2 = [protobufCopy audioMessageURL];
      v28 = _SFPBURLHandwrittenTranslator(audioMessageURL2);
      [(SFMessageCardSection *)v5 setAudioMessageURL:v28];
    }

    messageAttachment = [protobufCopy messageAttachment];

    if (messageAttachment)
    {
      v30 = [SFMessageAttachment alloc];
      messageAttachment2 = [protobufCopy messageAttachment];
      v32 = [(SFMessageAttachment *)v30 initWithProtobuf:messageAttachment2];
      [(SFMessageCardSection *)v5 setMessageAttachment:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v27.receiver = self;
  v27.super_class = SFMessageCardSection;
  v3 = [(SFCardSection *)&v27 hash];
  punchoutOptions = [(SFCardSection *)self punchoutOptions];
  v5 = [punchoutOptions hash];
  punchoutPickerTitle = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [punchoutPickerTitle hash];
  punchoutPickerDismissText = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [punchoutPickerDismissText hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  hasBottomPadding = [(SFCardSection *)self hasBottomPadding];
  type = [(SFMessageCardSection *)self type];
  v14 = hasBottomPadding ^ [type hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [backgroundColor hash];
  messageText = [(SFMessageCardSection *)self messageText];
  v19 = v11 ^ v17 ^ [messageText hash];
  messageStatus = [(SFMessageCardSection *)self messageStatus];
  v21 = messageStatus ^ [(SFMessageCardSection *)self messageServiceType];
  audioMessageURL = [(SFMessageCardSection *)self audioMessageURL];
  v23 = v21 ^ [audioMessageURL hash];
  messageAttachment = [(SFMessageCardSection *)self messageAttachment];
  v25 = v23 ^ [messageAttachment hash];

  return v19 ^ v25;
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
    if ([(SFMessageCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v69.receiver = self;
      v69.super_class = SFMessageCardSection;
      if ([(SFCardSection *)&v69 isEqual:equalCopy])
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

          v67 = punchoutOptions5;
          v68 = punchoutOptions4;
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
          v65 = punchoutPickerTitle4;
          if (![punchoutPickerTitle4 isEqual:punchoutPickerTitle5])
          {
            goto LABEL_21;
          }
        }

        v66 = punchoutPickerTitle3;
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

        v61 = punchoutPickerDismissText;
        v62 = punchoutPickerDismissText2;
        punchoutPickerDismissText3 = [(SFCardSection *)self punchoutPickerDismissText];
        if (punchoutPickerDismissText3)
        {
          punchoutPickerDismissText4 = [(SFCardSection *)self punchoutPickerDismissText];
          punchoutPickerDismissText5 = [(SFCardSection *)v5 punchoutPickerDismissText];
          v60 = punchoutPickerDismissText4;
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
              type = [(SFMessageCardSection *)self type];
              type2 = [(SFMessageCardSection *)v5 type];
              if ((type != 0) != (type2 == 0))
              {
                v57 = type2;
                v58 = type;
                [(SFMessageCardSection *)self type];
                v59 = punchoutPickerTitle3 = v66;
                if (v59)
                {
                  type3 = [(SFMessageCardSection *)self type];
                  type4 = [(SFMessageCardSection *)v5 type];
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
                    v52 = punchoutPickerDismissText;
                    v53 = backgroundColor2;
                    backgroundColor3 = [(SFCardSection *)self backgroundColor];
                    if (backgroundColor3)
                    {
                      backgroundColor4 = [(SFCardSection *)self backgroundColor];
                      backgroundColor5 = [(SFCardSection *)v5 backgroundColor];
                      v49 = backgroundColor4;
                      if (![backgroundColor4 isEqual:?])
                      {
                        goto LABEL_57;
                      }
                    }

                    messageText = [(SFMessageCardSection *)self messageText];
                    messageText2 = [(SFMessageCardSection *)v5 messageText];
                    if ((messageText != 0) == (messageText2 == 0))
                    {

                      if (!backgroundColor3)
                      {
LABEL_58:

                        punchoutPickerTitle3 = v66;
                        punchoutPickerDismissText = v52;
LABEL_49:
                        if (!v59)
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

                    messageText3 = [(SFMessageCardSection *)self messageText];
                    if (messageText3)
                    {
                      messageText4 = [(SFMessageCardSection *)self messageText];
                      messageText5 = [(SFMessageCardSection *)v5 messageText];
                      v46 = messageText4;
                      if (![messageText4 isEqual:?])
                      {
                        v11 = 0;
LABEL_68:

LABEL_69:
                        if (backgroundColor3)
                        {
                        }

                        if (v59)
                        {
                        }

                        if (punchoutPickerDismissText3)
                        {
                        }

                        if (v66)
                        {
                        }

                        if (!punchoutOptions3)
                        {
                          goto LABEL_26;
                        }

LABEL_24:
                        punchoutOptions5 = v67;
                        punchoutOptions4 = v68;
                        goto LABEL_25;
                      }
                    }

                    messageStatus = [(SFMessageCardSection *)self messageStatus];
                    if (messageStatus == [(SFMessageCardSection *)v5 messageStatus])
                    {
                      messageServiceType = [(SFMessageCardSection *)self messageServiceType];
                      if (messageServiceType == [(SFMessageCardSection *)v5 messageServiceType])
                      {
                        audioMessageURL = [(SFMessageCardSection *)self audioMessageURL];
                        audioMessageURL2 = [(SFMessageCardSection *)v5 audioMessageURL];
                        if ((audioMessageURL != 0) != (audioMessageURL2 == 0))
                        {
                          audioMessageURL3 = [(SFMessageCardSection *)self audioMessageURL];
                          if (!audioMessageURL3 || (-[SFMessageCardSection audioMessageURL](self, "audioMessageURL"), v34 = objc_claimAutoreleasedReturnValue(), -[SFMessageCardSection audioMessageURL](v5, "audioMessageURL"), v38 = objc_claimAutoreleasedReturnValue(), v39 = v34, [v34 isEqual:?]))
                          {
                            messageAttachment = [(SFMessageCardSection *)self messageAttachment];
                            messageAttachment2 = [(SFMessageCardSection *)v5 messageAttachment];
                            if ((messageAttachment != 0) == (messageAttachment2 == 0))
                            {

                              v11 = 0;
                            }

                            else
                            {
                              messageAttachment3 = [(SFMessageCardSection *)self messageAttachment];
                              if (messageAttachment3)
                              {
                                messageAttachment4 = [(SFMessageCardSection *)self messageAttachment];
                                messageAttachment5 = [(SFMessageCardSection *)v5 messageAttachment];
                                v11 = [messageAttachment4 isEqual:messageAttachment5];
                              }

                              else
                              {

                                v11 = 1;
                              }
                            }

                            if (!audioMessageURL3)
                            {
                              goto LABEL_86;
                            }
                          }

                          else
                          {
                            v11 = 0;
                          }

LABEL_86:
LABEL_67:
                          if (!messageText3)
                          {
                            goto LABEL_69;
                          }

                          goto LABEL_68;
                        }
                      }
                    }

                    v11 = 0;
                    goto LABEL_67;
                  }
                }

                punchoutPickerTitle3 = v66;
                goto LABEL_49;
              }
            }
          }
        }

        punchoutPickerTitle3 = v66;
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
  v22.receiver = self;
  v22.super_class = SFMessageCardSection;
  v4 = [(SFCardSection *)&v22 copyWithZone:zone];
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
  type = [(SFMessageCardSection *)self type];
  v12 = [type copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  backgroundColor = [(SFCardSection *)self backgroundColor];
  v14 = [backgroundColor copy];
  [v4 setBackgroundColor:v14];

  messageText = [(SFMessageCardSection *)self messageText];
  v16 = [messageText copy];
  [v4 setMessageText:v16];

  [v4 setMessageStatus:{-[SFMessageCardSection messageStatus](self, "messageStatus")}];
  [v4 setMessageServiceType:{-[SFMessageCardSection messageServiceType](self, "messageServiceType")}];
  audioMessageURL = [(SFMessageCardSection *)self audioMessageURL];
  v18 = [audioMessageURL copy];
  [v4 setAudioMessageURL:v18];

  messageAttachment = [(SFMessageCardSection *)self messageAttachment];
  v20 = [messageAttachment copy];
  [v4 setMessageAttachment:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMessageCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBMessageCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMessageCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMessageCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFMessageCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (SFMessageCardSection)initWithCoder:(id)coder
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
    [(SFMessageCardSection *)v5 setType:type];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    backgroundColor = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:backgroundColor];

    messageText = [(SFCardSection *)v8 messageText];
    [(SFMessageCardSection *)v5 setMessageText:messageText];

    [(SFMessageCardSection *)v5 setMessageStatus:[(SFCardSection *)v8 messageStatus]];
    [(SFMessageCardSection *)v5 setMessageServiceType:[(SFCardSection *)v8 messageServiceType]];
    audioMessageURL = [(SFCardSection *)v8 audioMessageURL];
    [(SFMessageCardSection *)v5 setAudioMessageURL:audioMessageURL];

    messageAttachment = [(SFCardSection *)v8 messageAttachment];
    [(SFMessageCardSection *)v5 setMessageAttachment:messageAttachment];

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