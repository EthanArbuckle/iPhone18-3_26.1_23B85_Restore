@interface RFSummaryItemExpandableCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemExpandableCardSection)initWithCoder:(id)coder;
- (RFSummaryItemExpandableCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemExpandableCardSection

- (RFSummaryItemExpandableCardSection)initWithProtobuf:(id)protobuf
{
  v43 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v41.receiver = self;
  v41.super_class = RFSummaryItemExpandableCardSection;
  v5 = [(SFCardSection *)&v41 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSummaryItemExpandableCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFSummaryItemExpandableCardSection *)v5 setText_2:v13];
    }

    attribution = [protobufCopy attribution];

    if (attribution)
    {
      v15 = [RFSummaryItemAttribution alloc];
      attribution2 = [protobufCopy attribution];
      v17 = [(RFSummaryItemAttribution *)v15 initWithProtobuf:attribution2];
      [(RFSummaryItemExpandableCardSection *)v5 setAttribution:v17];
    }

    if ([protobufCopy attribution_ignores_expansion])
    {
      -[RFSummaryItemExpandableCardSection setAttribution_ignores_expansion:](v5, "setAttribution_ignores_expansion:", [protobufCopy attribution_ignores_expansion]);
    }

    expanding_component_contents = [protobufCopy expanding_component_contents];
    if (expanding_component_contents)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = [protobufCopy expanding:0 component:?contents];
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[RFSummaryItemExpandableContent alloc] initWithProtobuf:*(*(&v37 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v22);
    }

    [(RFSummaryItemExpandableCardSection *)v5 setExpanding_component_content:v19];
    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v27 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v29 = [(RFVisualProperty *)v27 initWithProtobuf:thumbnail2];
      [(RFSummaryItemExpandableCardSection *)v5 setThumbnail:v29];
    }

    attribution_caveat = [protobufCopy attribution_caveat];

    if (attribution_caveat)
    {
      v31 = [RFTextProperty alloc];
      attribution_caveat2 = [protobufCopy attribution_caveat];
      v33 = [(RFTextProperty *)v31 initWithProtobuf:attribution_caveat2];
      [(RFSummaryItemExpandableCardSection *)v5 setAttribution_caveat:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v18.receiver = self;
  v18.super_class = RFSummaryItemExpandableCardSection;
  v3 = [(SFCardSection *)&v18 hash];
  text = [(RFSummaryItemExpandableCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFSummaryItemExpandableCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  attribution = [(RFSummaryItemExpandableCardSection *)self attribution];
  v9 = v7 ^ [attribution hash];
  v10 = v9 ^ [(RFSummaryItemExpandableCardSection *)self attribution_ignores_expansion];
  expanding_component_content = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
  v12 = v10 ^ [expanding_component_content hash] ^ v3;
  thumbnail = [(RFSummaryItemExpandableCardSection *)self thumbnail];
  v14 = [thumbnail hash];
  attribution_caveat = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
  v16 = v14 ^ [attribution_caveat hash];

  return v12 ^ v16;
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
    if ([(RFSummaryItemExpandableCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v63.receiver = self;
      v63.super_class = RFSummaryItemExpandableCardSection;
      if ([(SFCardSection *)&v63 isEqual:equalCopy])
      {
        v6 = equalCopy;
        text = [(RFSummaryItemExpandableCardSection *)self text];
        text2 = [(RFSummaryItemExpandableCardSection *)v6 text];
        if ((text != 0) == (text2 == 0))
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }

        text3 = [(RFSummaryItemExpandableCardSection *)self text];
        if (text3)
        {
          text4 = [(RFSummaryItemExpandableCardSection *)self text];
          text5 = [(RFSummaryItemExpandableCardSection *)v6 text];
          if (![text4 isEqual:?])
          {
            v11 = 0;
            goto LABEL_38;
          }

          v59 = text4;
        }

        text6 = [(RFSummaryItemExpandableCardSection *)self text];
        text7 = [(RFSummaryItemExpandableCardSection *)v6 text];
        if ((text6 != 0) == (text7 == 0))
        {
          goto LABEL_36;
        }

        text8 = [(RFSummaryItemExpandableCardSection *)self text];
        if (text8)
        {
          text9 = [(RFSummaryItemExpandableCardSection *)self text];
          text10 = [(RFSummaryItemExpandableCardSection *)v6 text];
          if (([text9 isEqual:text10] & 1) == 0)
          {

LABEL_35:
LABEL_36:

            v11 = 0;
            goto LABEL_37;
          }

          v56 = text9;
          v58 = text2;
          v14 = text5;
          v15 = text8;
        }

        else
        {
          v58 = text2;
          v14 = text5;
          v15 = 0;
        }

        text5 = v14;
        attribution = [(RFSummaryItemExpandableCardSection *)self attribution];
        attribution2 = [(RFSummaryItemExpandableCardSection *)v6 attribution];
        text8 = v15;
        text2 = v58;
        v18 = text10;
        if ((attribution != 0) != (attribution2 == 0))
        {
          v55 = attribution2;
          attribution3 = [(RFSummaryItemExpandableCardSection *)self attribution];
          if (attribution3)
          {
            attribution4 = [(RFSummaryItemExpandableCardSection *)self attribution];
            attribution5 = [(RFSummaryItemExpandableCardSection *)v6 attribution];
            v53 = attribution4;
            v20 = [attribution4 isEqual:?];
            v21 = attribution;
            if (!v20)
            {
              v11 = 0;
              v28 = attribution3;
              v18 = text10;
              v22 = v21;
              goto LABEL_62;
            }

            v54 = text8;
            v18 = text10;
            v22 = attribution;
          }

          else
          {
            v54 = text8;
            v22 = attribution;
          }

          attribution_ignores_expansion = [(RFSummaryItemExpandableCardSection *)self attribution_ignores_expansion];
          if (attribution_ignores_expansion != [(RFSummaryItemExpandableCardSection *)v6 attribution_ignores_expansion])
          {
            v11 = 0;
            text8 = v54;
            goto LABEL_61;
          }

          v51 = v22;
          expanding_component_content = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
          expanding_component_content2 = [(RFSummaryItemExpandableCardSection *)v6 expanding_component_content];
          if ((expanding_component_content != 0) != (expanding_component_content2 == 0))
          {
            v49 = expanding_component_content;
            v50 = expanding_component_content2;
            expanding_component_content3 = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
            if (expanding_component_content3)
            {
              expanding_component_content4 = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
              expanding_component_content5 = [(RFSummaryItemExpandableCardSection *)v6 expanding_component_content];
              v47 = expanding_component_content4;
              if (![expanding_component_content4 isEqual:?])
              {
                v11 = 0;
                v34 = expanding_component_content3;
                text8 = v54;
                goto LABEL_59;
              }

              v48 = expanding_component_content3;
            }

            else
            {
              v48 = 0;
            }

            thumbnail = [(RFSummaryItemExpandableCardSection *)self thumbnail];
            thumbnail2 = [(RFSummaryItemExpandableCardSection *)v6 thumbnail];
            if ((thumbnail != 0) == (thumbnail2 == 0))
            {

              v11 = 0;
              text8 = v54;
              goto LABEL_58;
            }

            v44 = thumbnail;
            v45 = thumbnail2;
            [(RFSummaryItemExpandableCardSection *)self thumbnail];
            v32 = text8 = v54;
            if (v32 && (-[RFSummaryItemExpandableCardSection thumbnail](self, "thumbnail"), v33 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemExpandableCardSection thumbnail](v6, "thumbnail"), v42 = objc_claimAutoreleasedReturnValue(), v43 = v33, ![v33 isEqual:v42]))
            {
              v11 = 0;
            }

            else
            {
              attribution_caveat = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
              attribution_caveat2 = [(RFSummaryItemExpandableCardSection *)v6 attribution_caveat];
              if ((attribution_caveat != 0) == (attribution_caveat2 == 0))
              {

                v11 = 0;
              }

              else
              {
                v40 = attribution_caveat;
                v41 = attribution_caveat2;
                attribution_caveat3 = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
                if (attribution_caveat3)
                {
                  attribution_caveat4 = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
                  attribution_caveat5 = [(RFSummaryItemExpandableCardSection *)v6 attribution_caveat];
                  v11 = [attribution_caveat4 isEqual:attribution_caveat5];
                }

                else
                {

                  v11 = 1;
                }
              }

              text8 = v54;
              if (!v32)
              {
                goto LABEL_57;
              }
            }

LABEL_57:
LABEL_58:
            v34 = v48;
            if (!v48)
            {
LABEL_60:

              v22 = v51;
LABEL_61:
              v28 = attribution3;
              if (!attribution3)
              {
LABEL_63:

                if (text8)
                {
                }

LABEL_37:
                text4 = v59;
                if (!text3)
                {
LABEL_39:

                  goto LABEL_40;
                }

LABEL_38:

                goto LABEL_39;
              }

LABEL_62:

              goto LABEL_63;
            }

LABEL_59:

            goto LABEL_60;
          }

          text8 = v54;
          if (attribution3)
          {
          }

          attribution2 = v55;
        }

        if (text8)
        {
        }

        goto LABEL_35;
      }
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RFSummaryItemExpandableCardSection;
  v4 = [(SFCardSection *)&v18 copyWithZone:zone];
  text = [(RFSummaryItemExpandableCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFSummaryItemExpandableCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  attribution = [(RFSummaryItemExpandableCardSection *)self attribution];
  v10 = [attribution copy];
  [v4 setAttribution:v10];

  [v4 setAttribution_ignores_expansion:{-[RFSummaryItemExpandableCardSection attribution_ignores_expansion](self, "attribution_ignores_expansion")}];
  expanding_component_content = [(RFSummaryItemExpandableCardSection *)self expanding_component_content];
  v12 = [expanding_component_content copy];
  [v4 setExpanding_component_content:v12];

  thumbnail = [(RFSummaryItemExpandableCardSection *)self thumbnail];
  v14 = [thumbnail copy];
  [v4 setThumbnail:v14];

  attribution_caveat = [(RFSummaryItemExpandableCardSection *)self attribution_caveat];
  v16 = [attribution_caveat copy];
  [v4 setAttribution_caveat:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemExpandableCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemExpandableCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemExpandableCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemExpandableCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemExpandableCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSummaryItemExpandableCardSection)initWithCoder:(id)coder
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
    [(RFSummaryItemExpandableCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSummaryItemExpandableCardSection *)v5 setText_2:text2];

    attribution = [(SFCardSection *)v8 attribution];
    [(RFSummaryItemExpandableCardSection *)v5 setAttribution:attribution];

    [(RFSummaryItemExpandableCardSection *)v5 setAttribution_ignores_expansion:[(SFCardSection *)v8 attribution_ignores_expansion]];
    expanding_component_content = [(SFCardSection *)v8 expanding_component_content];
    [(RFSummaryItemExpandableCardSection *)v5 setExpanding_component_content:expanding_component_content];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemExpandableCardSection *)v5 setThumbnail:thumbnail];

    attribution_caveat = [(SFCardSection *)v8 attribution_caveat];
    [(RFSummaryItemExpandableCardSection *)v5 setAttribution_caveat:attribution_caveat];

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

@end