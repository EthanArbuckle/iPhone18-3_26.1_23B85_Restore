@interface RFSummaryItemButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemButtonCardSection)initWithCoder:(id)coder;
- (RFSummaryItemButtonCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSummaryItemButtonCardSection

- (RFSummaryItemButtonCardSection)initWithProtobuf:(id)protobuf
{
  v60 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v57.receiver = self;
  v57.super_class = RFSummaryItemButtonCardSection;
  v5 = [(SFCardSection *)&v57 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFSummaryItemButtonCardSection *)v5 setText_1:v9];
    }

    button = [protobufCopy button];

    if (button)
    {
      v11 = [SFButtonItem alloc];
      button2 = [protobufCopy button];
      v13 = [(SFButtonItem *)v11 initWithProtobuf:button2];
      [(RFSummaryItemButtonCardSection *)v5 setButton_1:v13];
    }

    button3 = [protobufCopy button];

    if (button3)
    {
      v15 = [SFButtonItem alloc];
      button4 = [protobufCopy button];
      v17 = [(SFButtonItem *)v15 initWithProtobuf:button4];
      [(RFSummaryItemButtonCardSection *)v5 setButton_2:v17];
    }

    button5 = [protobufCopy button];

    if (button5)
    {
      v19 = [SFButtonItem alloc];
      button6 = [protobufCopy button];
      v21 = [(SFButtonItem *)v19 initWithProtobuf:button6];
      [(RFSummaryItemButtonCardSection *)v5 setButton_3:v21];
    }

    text_2s = [protobufCopy text_2s];
    if (text_2s)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    text_2s2 = [protobufCopy text_2s];
    v25 = [text_2s2 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(text_2s2);
          }

          v29 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v53 + 1) + 8 * i)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [text_2s2 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v26);
    }

    [(RFSummaryItemButtonCardSection *)v5 setText_2:v23];
    text_3s = [protobufCopy text_3s];
    if (text_3s)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text_3s2 = [protobufCopy text_3s];
    v33 = [text_3s2 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v50;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(text_3s2);
          }

          v37 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v49 + 1) + 8 * j)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [text_3s2 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v34);
    }

    [(RFSummaryItemButtonCardSection *)v5 setText_3:v31];
    text3 = [protobufCopy text];

    if (text3)
    {
      v39 = [RFTextProperty alloc];
      text4 = [protobufCopy text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:text4];
      [(RFSummaryItemButtonCardSection *)v5 setText_4:v41];
    }

    thumbnail = [protobufCopy thumbnail];

    if (thumbnail)
    {
      v43 = [RFVisualProperty alloc];
      thumbnail2 = [protobufCopy thumbnail];
      v45 = [(RFVisualProperty *)v43 initWithProtobuf:thumbnail2];
      [(RFSummaryItemButtonCardSection *)v5 setThumbnail:v45];
    }

    if ([protobufCopy buttonItemsAreTrailing])
    {
      -[RFSummaryItemButtonCardSection setButtonItemsAreTrailing:](v5, "setButtonItemsAreTrailing:", [protobufCopy buttonItemsAreTrailing]);
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v22.receiver = self;
  v22.super_class = RFSummaryItemButtonCardSection;
  v3 = [(SFCardSection *)&v22 hash];
  text = [(RFSummaryItemButtonCardSection *)self text];
  v5 = [text hash];
  button = [(RFSummaryItemButtonCardSection *)self button];
  v7 = v5 ^ [button hash];
  button2 = [(RFSummaryItemButtonCardSection *)self button];
  v9 = v7 ^ [button2 hash];
  button3 = [(RFSummaryItemButtonCardSection *)self button];
  v11 = v9 ^ [button3 hash];
  text2 = [(RFSummaryItemButtonCardSection *)self text];
  v21 = v11 ^ [text2 hash] ^ v3;
  text3 = [(RFSummaryItemButtonCardSection *)self text];
  v14 = [text3 hash];
  text4 = [(RFSummaryItemButtonCardSection *)self text];
  v16 = v14 ^ [text4 hash];
  thumbnail = [(RFSummaryItemButtonCardSection *)self thumbnail];
  v18 = v16 ^ [thumbnail hash];
  v19 = v18 ^ [(RFSummaryItemButtonCardSection *)self buttonItemsAreTrailing];

  return v21 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFSummaryItemButtonCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v78.receiver = self;
      v78.super_class = RFSummaryItemButtonCardSection;
      if ([(SFCardSection *)&v78 isEqual:equalCopy])
      {
        v5 = equalCopy;
        text = [(RFSummaryItemButtonCardSection *)self text];
        text2 = [(RFSummaryItemButtonCardSection *)v5 text];
        if ((text != 0) == (text2 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_50:

          goto LABEL_51;
        }

        text3 = [(RFSummaryItemButtonCardSection *)self text];
        if (text3)
        {
          text4 = [(RFSummaryItemButtonCardSection *)self text];
          text5 = [(RFSummaryItemButtonCardSection *)v5 text];
          if (![text4 isEqual:text5])
          {
            LOBYTE(v11) = 0;
LABEL_48:

            goto LABEL_49;
          }

          v76 = text5;
          v77 = text4;
        }

        button = [(RFSummaryItemButtonCardSection *)self button];
        button2 = [(RFSummaryItemButtonCardSection *)v5 button];
        if ((button != 0) == (button2 == 0))
        {
          goto LABEL_46;
        }

        button3 = [(RFSummaryItemButtonCardSection *)self button];
        if (button3)
        {
          button4 = [(RFSummaryItemButtonCardSection *)self button];
          [(RFSummaryItemButtonCardSection *)v5 button];
          v73 = v72 = button4;
          if (![button4 isEqual:v73])
          {
LABEL_21:

            goto LABEL_22;
          }
        }

        v75 = button3;
        button5 = [(RFSummaryItemButtonCardSection *)self button];
        button6 = [(RFSummaryItemButtonCardSection *)v5 button];
        if ((button5 != 0) == (button6 == 0))
        {

          if (!button3)
          {
            goto LABEL_46;
          }

          goto LABEL_21;
        }

        v69 = button5;
        v70 = button6;
        button7 = [(RFSummaryItemButtonCardSection *)self button];
        if (button7)
        {
          button8 = [(RFSummaryItemButtonCardSection *)self button];
          [(RFSummaryItemButtonCardSection *)v5 button];
          v67 = v68 = button8;
          if (![button8 isEqual:v67])
          {
LABEL_44:

LABEL_45:
            if (!button3)
            {
LABEL_46:

              LOBYTE(v11) = 0;
              if (!text3)
              {
LABEL_49:

                goto LABEL_50;
              }

              goto LABEL_47;
            }

            goto LABEL_21;
          }
        }

        button9 = [(RFSummaryItemButtonCardSection *)self button];
        button10 = [(RFSummaryItemButtonCardSection *)v5 button];
        if ((button9 != 0) == (button10 == 0))
        {

          goto LABEL_43;
        }

        v65 = button9;
        v66 = button10;
        button11 = [(RFSummaryItemButtonCardSection *)self button];
        if (button11)
        {
          button12 = [(RFSummaryItemButtonCardSection *)self button];
          button13 = [(RFSummaryItemButtonCardSection *)v5 button];
          v63 = button12;
          if (![button12 isEqual:?])
          {
            goto LABEL_34;
          }
        }

        v64 = button11;
        text6 = [(RFSummaryItemButtonCardSection *)self text];
        text7 = [(RFSummaryItemButtonCardSection *)v5 text];
        if ((text6 != 0) == (text7 == 0))
        {

          button11 = v64;
          if (!v64)
          {
LABEL_42:

LABEL_43:
            button3 = v75;
            if (!button7)
            {
              goto LABEL_45;
            }

            goto LABEL_44;
          }

LABEL_34:

          goto LABEL_42;
        }

        v59 = text7;
        v60 = text6;
        [(RFSummaryItemButtonCardSection *)self text];
        v61 = button11 = v64;
        if (v61)
        {
          text8 = [(RFSummaryItemButtonCardSection *)self text];
          text9 = [(RFSummaryItemButtonCardSection *)v5 text];
          v58 = text8;
          v26 = text8;
          v27 = v61;
          if (![v26 isEqual:?])
          {
            goto LABEL_40;
          }
        }

        text10 = [(RFSummaryItemButtonCardSection *)self text];
        text11 = [(RFSummaryItemButtonCardSection *)v5 text];
        if ((text10 != 0) == (text11 == 0))
        {

          button11 = v64;
          v27 = v61;
          if (!v61)
          {
LABEL_41:

            if (!button11)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_40:

          goto LABEL_41;
        }

        v54 = text11;
        v55 = text10;
        [(RFSummaryItemButtonCardSection *)self text];
        v56 = v30 = v61;
        if (v56)
        {
          text12 = [(RFSummaryItemButtonCardSection *)self text];
          text13 = [(RFSummaryItemButtonCardSection *)v5 text];
          v53 = text12;
          v32 = [text12 isEqual:?];
          v33 = v73;
          if (!v32)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v33 = v73;
        }

        v74 = v33;
        text14 = [(RFSummaryItemButtonCardSection *)self text];
        text15 = [(RFSummaryItemButtonCardSection *)v5 text];
        if ((text14 != 0) == (text15 == 0))
        {

          v30 = v61;
          v33 = v74;
          if (!v56)
          {
LABEL_60:

            if (v30)
            {
            }

            if (v64)
            {
            }

            if (button7)
            {
            }

            button3 = v75;
            if (!v75)
            {
              goto LABEL_23;
            }

LABEL_22:
LABEL_23:

            goto LABEL_46;
          }

LABEL_59:

          goto LABEL_60;
        }

        v49 = text14;
        v50 = text15;
        text16 = [(RFSummaryItemButtonCardSection *)self text];
        if (text16)
        {
          text17 = [(RFSummaryItemButtonCardSection *)self text];
          text18 = [(RFSummaryItemButtonCardSection *)v5 text];
          v46 = text17;
          if (![text17 isEqual:?])
          {
            LOBYTE(v11) = 0;
            v38 = v61;
LABEL_77:

LABEL_78:
            if (v56)
            {
            }

            if (v38)
            {
            }

            if (v64)
            {
            }

            if (button7)
            {
            }

            if (v75)
            {
            }

            if (!text3)
            {
              goto LABEL_49;
            }

LABEL_47:
            text5 = v76;
            text4 = v77;
            goto LABEL_48;
          }
        }

        thumbnail = [(RFSummaryItemButtonCardSection *)self thumbnail];
        thumbnail2 = [(RFSummaryItemButtonCardSection *)v5 thumbnail];
        if ((thumbnail != 0) == (thumbnail2 == 0))
        {

          LOBYTE(v11) = 0;
          goto LABEL_76;
        }

        thumbnail3 = [(RFSummaryItemButtonCardSection *)self thumbnail];
        if (!thumbnail3 || (-[RFSummaryItemButtonCardSection thumbnail](self, "thumbnail"), v40 = objc_claimAutoreleasedReturnValue(), -[RFSummaryItemButtonCardSection thumbnail](v5, "thumbnail"), v41 = objc_claimAutoreleasedReturnValue(), v44 = v40, v42 = v40, text14 = v41, [v42 isEqual:?]))
        {
          buttonItemsAreTrailing = [(RFSummaryItemButtonCardSection *)self buttonItemsAreTrailing];
          v11 = buttonItemsAreTrailing ^ [(RFSummaryItemButtonCardSection *)v5 buttonItemsAreTrailing]^ 1;
          if (!thumbnail3)
          {
LABEL_75:

LABEL_76:
            v38 = v61;
            text14 = v49;
            if (!text16)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        goto LABEL_75;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_51:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22.receiver = self;
  v22.super_class = RFSummaryItemButtonCardSection;
  v4 = [(SFCardSection *)&v22 copyWithZone:zone];
  text = [(RFSummaryItemButtonCardSection *)self text];
  v6 = [text copy];
  [v4 setText_1:v6];

  button = [(RFSummaryItemButtonCardSection *)self button];
  v8 = [button copy];
  [v4 setButton_1:v8];

  button2 = [(RFSummaryItemButtonCardSection *)self button];
  v10 = [button2 copy];
  [v4 setButton_2:v10];

  button3 = [(RFSummaryItemButtonCardSection *)self button];
  v12 = [button3 copy];
  [v4 setButton_3:v12];

  text2 = [(RFSummaryItemButtonCardSection *)self text];
  v14 = [text2 copy];
  [v4 setText_2:v14];

  text3 = [(RFSummaryItemButtonCardSection *)self text];
  v16 = [text3 copy];
  [v4 setText_3:v16];

  text4 = [(RFSummaryItemButtonCardSection *)self text];
  v18 = [text4 copy];
  [v4 setText_4:v18];

  thumbnail = [(RFSummaryItemButtonCardSection *)self thumbnail];
  v20 = [thumbnail copy];
  [v4 setThumbnail:v20];

  [v4 setButtonItemsAreTrailing:{-[RFSummaryItemButtonCardSection buttonItemsAreTrailing](self, "buttonItemsAreTrailing")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemButtonCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSummaryItemButtonCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemButtonCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSummaryItemButtonCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFSummaryItemButtonCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFSummaryItemButtonCardSection)initWithCoder:(id)coder
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
    [(RFSummaryItemButtonCardSection *)v5 setText_1:text];

    button = [(SFCardSection *)v8 button];
    [(RFSummaryItemButtonCardSection *)v5 setButton_1:button];

    button2 = [(SFCardSection *)v8 button];
    [(RFSummaryItemButtonCardSection *)v5 setButton_2:button2];

    button3 = [(SFCardSection *)v8 button];
    [(RFSummaryItemButtonCardSection *)v5 setButton_3:button3];

    text2 = [(SFCardSection *)v8 text];
    [(RFSummaryItemButtonCardSection *)v5 setText_2:text2];

    text3 = [(SFCardSection *)v8 text];
    [(RFSummaryItemButtonCardSection *)v5 setText_3:text3];

    text4 = [(SFCardSection *)v8 text];
    [(RFSummaryItemButtonCardSection *)v5 setText_4:text4];

    thumbnail = [(SFCardSection *)v8 thumbnail];
    [(RFSummaryItemButtonCardSection *)v5 setThumbnail:thumbnail];

    [(RFSummaryItemButtonCardSection *)v5 setButtonItemsAreTrailing:[(SFCardSection *)v8 buttonItemsAreTrailing]];
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