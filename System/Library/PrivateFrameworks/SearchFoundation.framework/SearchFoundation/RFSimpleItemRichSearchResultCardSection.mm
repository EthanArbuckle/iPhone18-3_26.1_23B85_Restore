@interface RFSimpleItemRichSearchResultCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSimpleItemRichSearchResultCardSection)initWithCoder:(id)coder;
- (RFSimpleItemRichSearchResultCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSimpleItemRichSearchResultCardSection

- (RFSimpleItemRichSearchResultCardSection)initWithProtobuf:(id)protobuf
{
  v64 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v61.receiver = self;
  v61.super_class = RFSimpleItemRichSearchResultCardSection;
  v5 = [(SFCardSection *)&v61 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSimpleItemRichSearchResultCardSection *)v5 setText_1:v9];
    }

    text3 = [protobufCopy text];

    if (text3)
    {
      v11 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:text4];
      [(RFSimpleItemRichSearchResultCardSection *)v5 setText_2:v13];
    }

    text_3s = [protobufCopy text_3s];
    if (text_3s)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    text_3s2 = [protobufCopy text_3s];
    v17 = [text_3s2 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v58;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(text_3s2);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v57 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text_3s2 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v18);
    }

    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_3:v15];
    text5 = [protobufCopy text];

    if (text5)
    {
      v23 = [RFTextProperty alloc];
      text6 = [protobufCopy text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:text6];
      [(RFSimpleItemRichSearchResultCardSection *)v5 setText_4:v25];
    }

    text_5s = [protobufCopy text_5s];
    if (text_5s)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    text_5s2 = [protobufCopy text_5s];
    v29 = [text_5s2 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v54;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v54 != v31)
          {
            objc_enumerationMutation(text_5s2);
          }

          v33 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v53 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [text_5s2 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v30);
    }

    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_5:v27];
    text7 = [protobufCopy text];

    if (text7)
    {
      v35 = [RFTextProperty alloc];
      text8 = [protobufCopy text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:text8];
      [(RFSimpleItemRichSearchResultCardSection *)v5 setText_6:v37];
    }

    text9 = [protobufCopy text];

    if (text9)
    {
      v39 = [RFTextProperty alloc];
      text10 = [protobufCopy text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:text10];
      [(RFSimpleItemRichSearchResultCardSection *)v5 setText_7:v41];
    }

    text11 = [protobufCopy text];

    if (text11)
    {
      v43 = [RFTextProperty alloc];
      text12 = [protobufCopy text];
      v45 = [(RFTextProperty *)v43 initWithProtobuf:text12];
      [(RFSimpleItemRichSearchResultCardSection *)v5 setText_8:v45];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v47 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v49 = [(RFVisualProperty *)v47 initWithProtobuf:thumbnail2];
      [(RFSimpleItemRichSearchResultCardSection *)v5 setThumbnail:v49];
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v23.receiver = self;
  v23.super_class = RFSimpleItemRichSearchResultCardSection;
  v3 = [(SFCardSection *)&v23 hash];
  text = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v5 = [text hash];
  text2 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v7 = v5 ^ [text2 hash];
  text3 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v9 = v7 ^ [text3 hash];
  text4 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v11 = v9 ^ [text4 hash];
  text5 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v22 = v11 ^ [text5 hash] ^ v3;
  text6 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v14 = [text6 hash];
  text7 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v16 = v14 ^ [text7 hash];
  text8 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v18 = v16 ^ [text8 hash];
  thumbnail = [(RFSimpleItemRichSearchResultCardSection *)self thumbnail];
  v20 = v18 ^ [thumbnail hash];

  return v22 ^ v20;
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
    if ([(RFSimpleItemRichSearchResultCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v81.receiver = self;
      v81.super_class = RFSimpleItemRichSearchResultCardSection;
      if ([(SFCardSection *)&v81 isEqual:equalCopy])
      {
        v5 = equalCopy;
        text = [(RFSimpleItemRichSearchResultCardSection *)self text];
        text2 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
        if ((text != 0) == (text2 == 0))
        {
          v11 = 0;
LABEL_51:

          goto LABEL_52;
        }

        text3 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        if (text3)
        {
          text4 = [(RFSimpleItemRichSearchResultCardSection *)self text];
          text5 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
          if (![text4 isEqual:text5])
          {
            v11 = 0;
LABEL_49:

            goto LABEL_50;
          }

          v79 = text5;
          v80 = text4;
        }

        text6 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        text7 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
        if ((text6 != 0) == (text7 == 0))
        {
          goto LABEL_47;
        }

        text8 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        if (text8)
        {
          text9 = [(RFSimpleItemRichSearchResultCardSection *)self text];
          text10 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
          v77 = text9;
          if (![text9 isEqual:text10])
          {
LABEL_45:

LABEL_46:
            goto LABEL_47;
          }
        }

        v78 = text8;
        text11 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        text12 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
        if ((text11 != 0) == (text12 == 0))
        {

          if (!text8)
          {
LABEL_47:

            v11 = 0;
            if (!text3)
            {
LABEL_50:

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        v73 = text11;
        v74 = text12;
        text13 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        if (text13)
        {
          text14 = [(RFSimpleItemRichSearchResultCardSection *)self text];
          text15 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
          v72 = text14;
          if (![text14 isEqual:text15])
          {
LABEL_43:

LABEL_44:
            if (!text8)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }
        }

        text16 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        text17 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
        if ((text16 != 0) == (text17 == 0))
        {

          goto LABEL_42;
        }

        v69 = text17;
        v70 = text16;
        text18 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        if (text18)
        {
          text19 = [(RFSimpleItemRichSearchResultCardSection *)self text];
          text20 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
          v67 = text19;
          if (![text19 isEqual:?])
          {
            goto LABEL_40;
          }
        }

        v68 = text18;
        text21 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        text22 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
        if ((text21 != 0) == (text22 == 0))
        {

          goto LABEL_39;
        }

        v64 = text21;
        v65 = text22;
        text23 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        if (text23)
        {
          text24 = [(RFSimpleItemRichSearchResultCardSection *)self text];
          text25 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
          v62 = text24;
          if (![text24 isEqual:?])
          {
LABEL_37:

LABEL_38:
LABEL_39:
            text18 = v68;
            if (!v68)
            {
LABEL_41:

LABEL_42:
              text8 = v78;
              if (!text13)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

LABEL_40:

            goto LABEL_41;
          }
        }

        v63 = text23;
        text26 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        text27 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
        if ((text26 != 0) == (text27 == 0))
        {

          text23 = v63;
          if (!v63)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v59 = text27;
        text28 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        if (text28)
        {
          text29 = [(RFSimpleItemRichSearchResultCardSection *)self text];
          text30 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
          v57 = text29;
          v30 = text29;
          v31 = v63;
          if (![v30 isEqual:?])
          {
            goto LABEL_59;
          }
        }

        v58 = text26;
        text31 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        text32 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
        if ((text31 != 0) == (text32 == 0))
        {

          v31 = v63;
          text26 = v58;
          if (!text28)
          {
            v38 = v68;
LABEL_60:

            if (v31)
            {
            }

            text8 = v78;
            if (v38)
            {
            }

            if (text13)
            {
            }

            if (!v78)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }

LABEL_59:
          v38 = v68;

          goto LABEL_60;
        }

        v54 = text32;
        v55 = text31;
        text33 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        if (text33)
        {
          text34 = [(RFSimpleItemRichSearchResultCardSection *)self text];
          text35 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
          v51 = text34;
          if (![text34 isEqual:?])
          {
            v11 = 0;
            v36 = text28;
            v37 = text33;
LABEL_83:

LABEL_84:
            if (v36)
            {
            }

            if (v63)
            {
            }

            if (v68)
            {
            }

            if (text13)
            {
            }

            if (v78)
            {
            }

            if (!text3)
            {
              goto LABEL_50;
            }

LABEL_48:
            text5 = v79;
            text4 = v80;
            goto LABEL_49;
          }
        }

        text36 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        text37 = [(RFSimpleItemRichSearchResultCardSection *)v5 text];
        if ((text36 != 0) == (text37 == 0))
        {

          v11 = 0;
          goto LABEL_82;
        }

        text38 = [(RFSimpleItemRichSearchResultCardSection *)self text];
        if (!text38 || (-[RFSimpleItemRichSearchResultCardSection text](self, "text"), v40 = objc_claimAutoreleasedReturnValue(), -[RFSimpleItemRichSearchResultCardSection text](v5, "text"), v45 = objc_claimAutoreleasedReturnValue(), v46 = v40, [v40 isEqual:?]))
        {
          thumbnail = [(RFSimpleItemRichSearchResultCardSection *)self thumbnail];
          thumbnail2 = [(RFSimpleItemRichSearchResultCardSection *)v5 thumbnail];
          if ((thumbnail != 0) == (thumbnail2 == 0))
          {

            v11 = 0;
          }

          else
          {
            thumbnail3 = [(RFSimpleItemRichSearchResultCardSection *)self thumbnail];
            if (thumbnail3)
            {
              v42 = thumbnail3;
              thumbnail4 = [(RFSimpleItemRichSearchResultCardSection *)self thumbnail];
              thumbnail5 = [(RFSimpleItemRichSearchResultCardSection *)v5 thumbnail];
              v11 = [thumbnail4 isEqual:thumbnail5];
            }

            else
            {

              v11 = 1;
            }
          }

          if (!text38)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v11 = 0;
        }

LABEL_81:
LABEL_82:
        v36 = text28;
        v37 = text33;
        if (!text33)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }
    }

    v11 = 0;
  }

LABEL_52:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = RFSimpleItemRichSearchResultCardSection;
  v4 = [(SFCardSection *)&v24 copyWithZone:zone];
  text = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  text2 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v8 = [text2 copy];
  [v4 setText_2:v8];

  text3 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v10 = [text3 copy];
  [v4 setText_3:v10];

  text4 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v12 = [text4 copy];
  [v4 setText_4:v12];

  text5 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v14 = [text5 copy];
  [v4 setText_5:v14];

  text6 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v16 = [text6 copy];
  [v4 setText_6:v16];

  text7 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v18 = [text7 copy];
  [v4 setText_7:v18];

  text8 = [(RFSimpleItemRichSearchResultCardSection *)self text];
  v20 = [text8 copy];
  [v4 setText_8:v20];

  thumbnail = [(RFSimpleItemRichSearchResultCardSection *)self thumbnail];
  v22 = [thumbnail copy];
  [v4 setThumbnail:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSimpleItemRichSearchResultCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSimpleItemRichSearchResultCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSimpleItemRichSearchResultCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSimpleItemRichSearchResultCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSimpleItemRichSearchResultCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSimpleItemRichSearchResultCardSection)initWithCoder:(id)coder
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
    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_1:text];

    text2 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_4:text4];

    text5 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_5:text5];

    text6 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_6:text6];

    text7 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_7:text7];

    text8 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichSearchResultCardSection *)v5 setText_8:text8];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSimpleItemRichSearchResultCardSection *)v5 setThumbnail:thumbnail];

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