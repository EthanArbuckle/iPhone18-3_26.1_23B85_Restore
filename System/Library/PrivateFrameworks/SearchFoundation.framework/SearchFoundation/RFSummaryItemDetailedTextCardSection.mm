@interface RFSummaryItemDetailedTextCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemDetailedTextCardSection)initWithCoder:(id)coder;
- (RFSummaryItemDetailedTextCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemDetailedTextCardSection

- (unint64_t)hash
{
  v19.receiver = self;
  v19.super_class = RFSummaryItemDetailedTextCardSection;
  v3 = [(SFCardSection *)&v19 hash];
  text = [(RFSummaryItemDetailedTextCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  text3 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v9 = v7 ^ [text3 hash];
  text4 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v11 = v9 ^ [text4 hash];
  text5 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v13 = v11 ^ [text5 hash] ^ v3;
  text6 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v15 = [text6 hash];
  thumbnail = [(RFSummaryItemDetailedTextCardSection *)self thumbnail];
  v17 = v15 ^ [thumbnail hash];

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
    if ([(RFSummaryItemDetailedTextCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v73.receiver = self;
      v73.super_class = RFSummaryItemDetailedTextCardSection;
      if ([(SFCardSection *)&v73 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFSummaryItemDetailedTextCardSection *)self text];
        text2 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          v12 = 0;
LABEL_50:

          goto LABEL_51;
        }

        text3 = [(RFSummaryItemDetailedTextCardSection *)self text];
        if (text3)
        {
          text4 = [(RFSummaryItemDetailedTextCardSection *)self text];
          text5 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
          if (![text4 isEqual:text5])
          {
            v12 = 0;
            goto LABEL_48;
          }

          v71 = text5;
          v72 = text4;
        }

        text6 = [(RFSummaryItemDetailedTextCardSection *)self text];
        text7 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
        if ((text6 != 0) != (text7 == 0))
        {
          v70 = text7;
          text8 = [(RFSummaryItemDetailedTextCardSection *)self text];
          if (text8)
          {
            text9 = [(RFSummaryItemDetailedTextCardSection *)self text];
            text10 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
            if (([text9 isEqual:text10] & 1) == 0)
            {

LABEL_45:
LABEL_46:
              v12 = 0;
              goto LABEL_47;
            }

            v68 = text10;
            v69 = text6;
            v3 = text9;
            v18 = text8;
          }

          else
          {
            v69 = text6;
            v18 = 0;
          }

          text11 = [(RFSummaryItemDetailedTextCardSection *)self text];
          text12 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
          v21 = v18;
          v22 = v3;
          if ((text11 != 0) != (text12 == 0))
          {
            v66 = text11;
            v67 = text12;
            text13 = [(RFSummaryItemDetailedTextCardSection *)self text];
            if (text13)
            {
              text14 = [(RFSummaryItemDetailedTextCardSection *)self text];
              text15 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
              if (([text14 isEqual:text15] & 1) == 0)
              {

                if (v21)
                {
                }

                goto LABEL_46;
              }

              v63 = text15;
              v64 = text14;
              v25 = v21;
            }

            else
            {
              v25 = v21;
            }

            text16 = [(RFSummaryItemDetailedTextCardSection *)self text];
            text17 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
            v21 = v25;
            v22 = v3;
            if ((text16 != 0) != (text17 == 0))
            {
              v62 = text17;
              text18 = [(RFSummaryItemDetailedTextCardSection *)self text];
              if (text18)
              {
                text19 = [(RFSummaryItemDetailedTextCardSection *)self text];
                [(RFSummaryItemDetailedTextCardSection *)v6 text];
                v58 = v60 = text19;
                if (![text19 isEqual:?])
                {
                  v12 = 0;
                  v34 = text18;
                  goto LABEL_71;
                }

                v59 = v21;
              }

              else
              {
                v59 = v21;
              }

              text20 = [(RFSummaryItemDetailedTextCardSection *)self text];
              text21 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
              if ((text20 != 0) != (text21 == 0))
              {
                v57 = text21;
                text22 = [(RFSummaryItemDetailedTextCardSection *)self text];
                v56 = text20;
                if (text22)
                {
                  text23 = [(RFSummaryItemDetailedTextCardSection *)self text];
                  text24 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
                  v54 = text23;
                  if (![text23 isEqual:?])
                  {
                    v12 = 0;
                    v39 = text22;
                    v21 = v59;
LABEL_69:

LABEL_70:
                    v34 = text18;
                    if (!text18)
                    {
LABEL_72:

                      if (text13)
                      {
                      }

                      if (v21)
                      {
                      }

LABEL_47:
                      text5 = v71;
                      text4 = v72;
                      if (!text3)
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

                  v55 = text22;
                }

                else
                {
                  v55 = 0;
                }

                text25 = [(RFSummaryItemDetailedTextCardSection *)self text];
                text26 = [(RFSummaryItemDetailedTextCardSection *)v6 text];
                if ((text25 != 0) == (text26 == 0))
                {

                  v12 = 0;
                  v21 = v59;
                  goto LABEL_68;
                }

                v52 = text26;
                [(RFSummaryItemDetailedTextCardSection *)self text];
                v51 = v50 = text25;
                if (!v51 || (-[RFSummaryItemDetailedTextCardSection text](self, "text"), v37 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemDetailedTextCardSection text](v6, "text"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v37, [v37 isEqual:?]))
                {
                  thumbnail = [(RFSummaryItemDetailedTextCardSection *)self thumbnail];
                  thumbnail2 = [(RFSummaryItemDetailedTextCardSection *)v6 thumbnail];
                  if ((thumbnail != 0) == (thumbnail2 == 0))
                  {

                    v12 = 0;
                    v21 = v59;
                  }

                  else
                  {
                    v46 = thumbnail2;
                    v49 = thumbnail;
                    thumbnail3 = [(RFSummaryItemDetailedTextCardSection *)self thumbnail];
                    v21 = v59;
                    if (thumbnail3)
                    {
                      v43 = thumbnail3;
                      thumbnail4 = [(RFSummaryItemDetailedTextCardSection *)self thumbnail];
                      thumbnail5 = [(RFSummaryItemDetailedTextCardSection *)v6 thumbnail];
                      v12 = [thumbnail4 isEqual:thumbnail5];
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

              if (text18)
              {
              }

              v21 = v59;
              text17 = v62;
            }

            if (text13)
            {
            }

            text11 = v66;
            text12 = v67;
          }

          if (v21)
          {
          }

          text6 = v69;
          text7 = v70;
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
  v20.super_class = RFSummaryItemDetailedTextCardSection;
  v4 = [(SFCardSection *)&v20 copyWithZone:zone];
  text = [(RFSummaryItemDetailedTextCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  text5 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v14 = [text5 copy];
  [v4 setText_5:v14];

  text6 = [(RFSummaryItemDetailedTextCardSection *)self text];
  v16 = [text6 copy];
  [v4 setText_6:v16];

  thumbnail = [(RFSummaryItemDetailedTextCardSection *)self thumbnail];
  v18 = [thumbnail copy];
  [v4 setThumbnail:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemDetailedTextCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemDetailedTextCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemDetailedTextCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemDetailedTextCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemDetailedTextCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSummaryItemDetailedTextCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [(SFCardSection *)v8 text];
    [(RFSummaryItemDetailedTextCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSummaryItemDetailedTextCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSummaryItemDetailedTextCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSummaryItemDetailedTextCardSection *)v5 setText_4:text4];

    text5 = [(SFCardSection *)v8 text];
    [(RFSummaryItemDetailedTextCardSection *)v5 setText_5:text5];

    text6 = [(SFCardSection *)v8 text];
    [(RFSummaryItemDetailedTextCardSection *)v5 setText_6:text6];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemDetailedTextCardSection *)v5 setThumbnail:thumbnail];

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

- (RFSummaryItemDetailedTextCardSection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v36.receiver = self;
  v36.super_class = RFSummaryItemDetailedTextCardSection;
  v5 = [(SFCardSection *)&v36 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSummaryItemDetailedTextCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFSummaryItemDetailedTextCardSection *)v5 setText_2:v13];
    }

    text5 = [protobufCopy text];

    if (text5)
    {
      v15 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:text6];
      [(RFSummaryItemDetailedTextCardSection *)v5 setText_3:v17];
    }

    text7 = [protobufCopy text];

    if (text7)
    {
      v19 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v21 = [(RFTextProperty *)v19 initWithProtobuf:text8];
      [(RFSummaryItemDetailedTextCardSection *)v5 setText_4:v21];
    }

    text9 = [protobufCopy text];

    if (text9)
    {
      v23 = [RFTextProperty alloc];
      text10 = [protobufCopy text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:text10];
      [(RFSummaryItemDetailedTextCardSection *)v5 setText_5:v25];
    }

    text11 = [protobufCopy text];

    if (text11)
    {
      v27 = [RFTextProperty alloc];
      text12 = [protobufCopy text];
      v29 = [(RFTextProperty *)v27 initWithProtobuf:text12];
      [(RFSummaryItemDetailedTextCardSection *)v5 setText_6:v29];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v31 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v33 = [(RFVisualProperty *)v31 initWithProtobuf:thumbnail2];
      [(RFSummaryItemDetailedTextCardSection *)v5 setThumbnail:v33];
    }

    v34 = v5;
  }

  return v5;
}

@end