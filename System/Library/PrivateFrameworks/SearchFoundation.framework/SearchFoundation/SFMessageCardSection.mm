@interface SFMessageCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMessageCardSection)initWithCoder:(id)a3;
- (SFMessageCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMessageCardSection

- (SFMessageCardSection)initWithProtobuf:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = SFMessageCardSection;
  v5 = [(SFCardSection *)&v40 init];
  if (v5)
  {
    v6 = [v4 punchoutOptions];
    if (v6)
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
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPunchout alloc] initWithProtobuf:*(*(&v36 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    [(SFCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(SFCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(SFCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 canBeHidden])
    {
      -[SFCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasTopPadding])
    {
      -[SFCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasBottomPadding])
    {
      -[SFCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(SFMessageCardSection *)v5 setType:v19];
    }

    if ([v4 separatorStyle])
    {
      -[SFCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [SFColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(SFColor *)v21 initWithProtobuf:v22];
      [(SFCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 messageText];

    if (v24)
    {
      v25 = [v4 messageText];
      [(SFMessageCardSection *)v5 setMessageText:v25];
    }

    if ([v4 messageStatus])
    {
      -[SFMessageCardSection setMessageStatus:](v5, "setMessageStatus:", [v4 messageStatus]);
    }

    if ([v4 messageServiceType])
    {
      -[SFMessageCardSection setMessageServiceType:](v5, "setMessageServiceType:", [v4 messageServiceType]);
    }

    v26 = [v4 audioMessageURL];

    if (v26)
    {
      v27 = [v4 audioMessageURL];
      v28 = _SFPBURLHandwrittenTranslator(v27);
      [(SFMessageCardSection *)v5 setAudioMessageURL:v28];
    }

    v29 = [v4 messageAttachment];

    if (v29)
    {
      v30 = [SFMessageAttachment alloc];
      v31 = [v4 messageAttachment];
      v32 = [(SFMessageAttachment *)v30 initWithProtobuf:v31];
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
  v4 = [(SFCardSection *)self punchoutOptions];
  v5 = [v4 hash];
  v6 = [(SFCardSection *)self punchoutPickerTitle];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFCardSection *)self punchoutPickerDismissText];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFCardSection *)self canBeHidden];
  v11 = v10 ^ [(SFCardSection *)self hasTopPadding]^ v3;
  v12 = [(SFCardSection *)self hasBottomPadding];
  v13 = [(SFMessageCardSection *)self type];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(SFCardSection *)self separatorStyle];
  v16 = [(SFCardSection *)self backgroundColor];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFMessageCardSection *)self messageText];
  v19 = v11 ^ v17 ^ [v18 hash];
  v20 = [(SFMessageCardSection *)self messageStatus];
  v21 = v20 ^ [(SFMessageCardSection *)self messageServiceType];
  v22 = [(SFMessageCardSection *)self audioMessageURL];
  v23 = v21 ^ [v22 hash];
  v24 = [(SFMessageCardSection *)self messageAttachment];
  v25 = v23 ^ [v24 hash];

  return v19 ^ v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFMessageCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v69.receiver = self;
      v69.super_class = SFMessageCardSection;
      if ([(SFCardSection *)&v69 isEqual:v4])
      {
        v5 = v4;
        v6 = [(SFCardSection *)self punchoutOptions];
        v7 = [(SFCardSection *)v5 punchoutOptions];
        if ((v6 != 0) == (v7 == 0))
        {
          v11 = 0;
LABEL_27:

          goto LABEL_28;
        }

        v8 = [(SFCardSection *)self punchoutOptions];
        if (v8)
        {
          v9 = [(SFCardSection *)self punchoutOptions];
          v10 = [(SFCardSection *)v5 punchoutOptions];
          if (![v9 isEqual:v10])
          {
            v11 = 0;
LABEL_25:

            goto LABEL_26;
          }

          v67 = v10;
          v68 = v9;
        }

        v12 = [(SFCardSection *)self punchoutPickerTitle];
        v13 = [(SFCardSection *)v5 punchoutPickerTitle];
        if ((v12 != 0) == (v13 == 0))
        {
          goto LABEL_23;
        }

        v14 = [(SFCardSection *)self punchoutPickerTitle];
        if (v14)
        {
          v15 = [(SFCardSection *)self punchoutPickerTitle];
          v64 = [(SFCardSection *)v5 punchoutPickerTitle];
          v65 = v15;
          if (![v15 isEqual:v64])
          {
            goto LABEL_21;
          }
        }

        v66 = v14;
        v16 = [(SFCardSection *)self punchoutPickerDismissText];
        v17 = [(SFCardSection *)v5 punchoutPickerDismissText];
        if ((v16 != 0) == (v17 == 0))
        {

          if (!v14)
          {
LABEL_22:

LABEL_23:
            v11 = 0;
            if (!v8)
            {
LABEL_26:

              goto LABEL_27;
            }

            goto LABEL_24;
          }

LABEL_21:

          goto LABEL_22;
        }

        v61 = v16;
        v62 = v17;
        v63 = [(SFCardSection *)self punchoutPickerDismissText];
        if (v63)
        {
          v18 = [(SFCardSection *)self punchoutPickerDismissText];
          v19 = [(SFCardSection *)v5 punchoutPickerDismissText];
          v60 = v18;
          v20 = v18;
          v16 = v19;
          if (![v20 isEqual:v19])
          {
LABEL_39:

LABEL_40:
            if (!v14)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        v22 = [(SFCardSection *)self canBeHidden];
        if (v22 == [(SFCardSection *)v5 canBeHidden])
        {
          v23 = [(SFCardSection *)self hasTopPadding];
          if (v23 == [(SFCardSection *)v5 hasTopPadding])
          {
            v24 = [(SFCardSection *)self hasBottomPadding];
            if (v24 == [(SFCardSection *)v5 hasBottomPadding])
            {
              v25 = [(SFMessageCardSection *)self type];
              v26 = [(SFMessageCardSection *)v5 type];
              if ((v25 != 0) != (v26 == 0))
              {
                v57 = v26;
                v58 = v25;
                [(SFMessageCardSection *)self type];
                v59 = v14 = v66;
                if (v59)
                {
                  v56 = [(SFMessageCardSection *)self type];
                  v55 = [(SFMessageCardSection *)v5 type];
                  if (![v56 isEqual:?])
                  {
                    goto LABEL_50;
                  }
                }

                v27 = [(SFCardSection *)self separatorStyle];
                if (v27 == [(SFCardSection *)v5 separatorStyle])
                {
                  v54 = [(SFCardSection *)self backgroundColor];
                  v28 = [(SFCardSection *)v5 backgroundColor];
                  if ((v54 != 0) != (v28 == 0))
                  {
                    v52 = v16;
                    v53 = v28;
                    v29 = [(SFCardSection *)self backgroundColor];
                    if (v29)
                    {
                      v30 = [(SFCardSection *)self backgroundColor];
                      v48 = [(SFCardSection *)v5 backgroundColor];
                      v49 = v30;
                      if (![v30 isEqual:?])
                      {
                        goto LABEL_57;
                      }
                    }

                    v51 = [(SFMessageCardSection *)self messageText];
                    v50 = [(SFMessageCardSection *)v5 messageText];
                    if ((v51 != 0) == (v50 == 0))
                    {

                      if (!v29)
                      {
LABEL_58:

                        v14 = v66;
                        v16 = v52;
LABEL_49:
                        if (!v59)
                        {
LABEL_51:

LABEL_38:
                          if (!v63)
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

                    v47 = [(SFMessageCardSection *)self messageText];
                    if (v47)
                    {
                      v31 = [(SFMessageCardSection *)self messageText];
                      v45 = [(SFMessageCardSection *)v5 messageText];
                      v46 = v31;
                      if (![v31 isEqual:?])
                      {
                        v11 = 0;
LABEL_68:

LABEL_69:
                        if (v29)
                        {
                        }

                        if (v59)
                        {
                        }

                        if (v63)
                        {
                        }

                        if (v66)
                        {
                        }

                        if (!v8)
                        {
                          goto LABEL_26;
                        }

LABEL_24:
                        v10 = v67;
                        v9 = v68;
                        goto LABEL_25;
                      }
                    }

                    v32 = [(SFMessageCardSection *)self messageStatus];
                    if (v32 == [(SFMessageCardSection *)v5 messageStatus])
                    {
                      v33 = [(SFMessageCardSection *)self messageServiceType];
                      if (v33 == [(SFMessageCardSection *)v5 messageServiceType])
                      {
                        v44 = [(SFMessageCardSection *)self audioMessageURL];
                        v43 = [(SFMessageCardSection *)v5 audioMessageURL];
                        if ((v44 != 0) != (v43 == 0))
                        {
                          v42 = [(SFMessageCardSection *)self audioMessageURL];
                          if (!v42 || (-[SFMessageCardSection audioMessageURL](self, "audioMessageURL"), v34 = objc_claimAutoreleasedReturnValue(), -[SFMessageCardSection audioMessageURL](v5, "audioMessageURL"), v38 = objc_claimAutoreleasedReturnValue(), v39 = v34, [v34 isEqual:?]))
                          {
                            v41 = [(SFMessageCardSection *)self messageAttachment];
                            v40 = [(SFMessageCardSection *)v5 messageAttachment];
                            if ((v41 != 0) == (v40 == 0))
                            {

                              v11 = 0;
                            }

                            else
                            {
                              v37 = [(SFMessageCardSection *)self messageAttachment];
                              if (v37)
                              {
                                v36 = [(SFMessageCardSection *)self messageAttachment];
                                v35 = [(SFMessageCardSection *)v5 messageAttachment];
                                v11 = [v36 isEqual:v35];
                              }

                              else
                              {

                                v11 = 1;
                              }
                            }

                            if (!v42)
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
                          if (!v47)
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

                v14 = v66;
                goto LABEL_49;
              }
            }
          }
        }

        v14 = v66;
        goto LABEL_38;
      }
    }

    v11 = 0;
  }

LABEL_28:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22.receiver = self;
  v22.super_class = SFMessageCardSection;
  v4 = [(SFCardSection *)&v22 copyWithZone:a3];
  v5 = [(SFCardSection *)self punchoutOptions];
  v6 = [v5 copy];
  [v4 setPunchoutOptions:v6];

  v7 = [(SFCardSection *)self punchoutPickerTitle];
  v8 = [v7 copy];
  [v4 setPunchoutPickerTitle:v8];

  v9 = [(SFCardSection *)self punchoutPickerDismissText];
  v10 = [v9 copy];
  [v4 setPunchoutPickerDismissText:v10];

  [v4 setCanBeHidden:{-[SFCardSection canBeHidden](self, "canBeHidden")}];
  [v4 setHasTopPadding:{-[SFCardSection hasTopPadding](self, "hasTopPadding")}];
  [v4 setHasBottomPadding:{-[SFCardSection hasBottomPadding](self, "hasBottomPadding")}];
  v11 = [(SFMessageCardSection *)self type];
  v12 = [v11 copy];
  [v4 setType:v12];

  [v4 setSeparatorStyle:{-[SFCardSection separatorStyle](self, "separatorStyle")}];
  v13 = [(SFCardSection *)self backgroundColor];
  v14 = [v13 copy];
  [v4 setBackgroundColor:v14];

  v15 = [(SFMessageCardSection *)self messageText];
  v16 = [v15 copy];
  [v4 setMessageText:v16];

  [v4 setMessageStatus:{-[SFMessageCardSection messageStatus](self, "messageStatus")}];
  [v4 setMessageServiceType:{-[SFMessageCardSection messageServiceType](self, "messageServiceType")}];
  v17 = [(SFMessageCardSection *)self audioMessageURL];
  v18 = [v17 copy];
  [v4 setAudioMessageURL:v18];

  v19 = [(SFMessageCardSection *)self messageAttachment];
  v20 = [v19 copy];
  [v4 setMessageAttachment:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMessageCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBMessageCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMessageCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBMessageCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFMessageCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (SFMessageCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v9];

    v10 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v10];

    v11 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v11];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    v12 = [(SFCardSection *)v8 type];
    [(SFMessageCardSection *)v5 setType:v12];

    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v13 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v13];

    v14 = [(SFCardSection *)v8 messageText];
    [(SFMessageCardSection *)v5 setMessageText:v14];

    [(SFMessageCardSection *)v5 setMessageStatus:[(SFCardSection *)v8 messageStatus]];
    [(SFMessageCardSection *)v5 setMessageServiceType:[(SFCardSection *)v8 messageServiceType]];
    v15 = [(SFCardSection *)v8 audioMessageURL];
    [(SFMessageCardSection *)v5 setAudioMessageURL:v15];

    v16 = [(SFCardSection *)v8 messageAttachment];
    [(SFMessageCardSection *)v5 setMessageAttachment:v16];

    v17 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v17];

    v18 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v18];

    v19 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v19];

    v20 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v20];

    v21 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v21];

    v22 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v22];

    v23 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v23];

    v24 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v24];

    v25 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v25];

    v26 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v26];

    v27 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v27];

    v28 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v28];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v29 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v29];

    v30 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v30];

    v31 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v31];

    v32 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v32];

    v33 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v33];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v34 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v34];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v35 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v35];

    v36 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v36];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v37 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v37];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v38 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v38];

    v39 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v39];

    v40 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v40];

    v41 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v41];
  }

  return v5;
}

@end