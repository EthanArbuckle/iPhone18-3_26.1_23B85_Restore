@interface RFSimpleItemRichCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSimpleItemRichCardSection)initWithCoder:(id)a3;
- (RFSimpleItemRichCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSimpleItemRichCardSection

- (RFSimpleItemRichCardSection)initWithProtobuf:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61.receiver = self;
  v61.super_class = RFSimpleItemRichCardSection;
  v5 = [(SFCardSection *)&v61 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFSimpleItemRichCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSimpleItemRichCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 text_3s];
    if (v14)
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
    v16 = [v4 text_3s];
    v17 = [v16 countByEnumeratingWithState:&v57 objects:v63 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v57 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v18);
    }

    [(RFSimpleItemRichCardSection *)v5 setText_3:v15];
    v22 = [v4 text];

    if (v22)
    {
      v23 = [RFTextProperty alloc];
      v24 = [v4 text];
      v25 = [(RFTextProperty *)v23 initWithProtobuf:v24];
      [(RFSimpleItemRichCardSection *)v5 setText_4:v25];
    }

    v26 = [v4 text_5s];
    if (v26)
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
    v28 = [v4 text_5s];
    v29 = [v28 countByEnumeratingWithState:&v53 objects:v62 count:16];
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
            objc_enumerationMutation(v28);
          }

          v33 = [[RFTextProperty alloc] initWithProtobuf:*(*(&v53 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v30);
    }

    [(RFSimpleItemRichCardSection *)v5 setText_5:v27];
    v34 = [v4 text];

    if (v34)
    {
      v35 = [RFTextProperty alloc];
      v36 = [v4 text];
      v37 = [(RFTextProperty *)v35 initWithProtobuf:v36];
      [(RFSimpleItemRichCardSection *)v5 setText_6:v37];
    }

    v38 = [v4 text];

    if (v38)
    {
      v39 = [RFTextProperty alloc];
      v40 = [v4 text];
      v41 = [(RFTextProperty *)v39 initWithProtobuf:v40];
      [(RFSimpleItemRichCardSection *)v5 setText_7:v41];
    }

    v42 = [v4 text];

    if (v42)
    {
      v43 = [RFTextProperty alloc];
      v44 = [v4 text];
      v45 = [(RFTextProperty *)v43 initWithProtobuf:v44];
      [(RFSimpleItemRichCardSection *)v5 setText_8:v45];
    }

    v46 = [v4 thumbnail];

    if (v46)
    {
      v47 = [RFVisualProperty alloc];
      v48 = [v4 thumbnail];
      v49 = [(RFVisualProperty *)v47 initWithProtobuf:v48];
      [(RFSimpleItemRichCardSection *)v5 setThumbnail:v49];
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v23.receiver = self;
  v23.super_class = RFSimpleItemRichCardSection;
  v3 = [(SFCardSection *)&v23 hash];
  v4 = [(RFSimpleItemRichCardSection *)self text];
  v5 = [v4 hash];
  v6 = [(RFSimpleItemRichCardSection *)self text];
  v7 = v5 ^ [v6 hash];
  v8 = [(RFSimpleItemRichCardSection *)self text];
  v9 = v7 ^ [v8 hash];
  v10 = [(RFSimpleItemRichCardSection *)self text];
  v11 = v9 ^ [v10 hash];
  v12 = [(RFSimpleItemRichCardSection *)self text];
  v22 = v11 ^ [v12 hash] ^ v3;
  v13 = [(RFSimpleItemRichCardSection *)self text];
  v14 = [v13 hash];
  v15 = [(RFSimpleItemRichCardSection *)self text];
  v16 = v14 ^ [v15 hash];
  v17 = [(RFSimpleItemRichCardSection *)self text];
  v18 = v16 ^ [v17 hash];
  v19 = [(RFSimpleItemRichCardSection *)self thumbnail];
  v20 = v18 ^ [v19 hash];

  return v22 ^ v20;
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
    if ([(RFSimpleItemRichCardSection *)v4 isMemberOfClass:objc_opt_class()])
    {
      v81.receiver = self;
      v81.super_class = RFSimpleItemRichCardSection;
      if ([(SFCardSection *)&v81 isEqual:v4])
      {
        v5 = v4;
        v6 = [(RFSimpleItemRichCardSection *)self text];
        v7 = [(RFSimpleItemRichCardSection *)v5 text];
        if ((v6 != 0) == (v7 == 0))
        {
          v11 = 0;
LABEL_51:

          goto LABEL_52;
        }

        v8 = [(RFSimpleItemRichCardSection *)self text];
        if (v8)
        {
          v9 = [(RFSimpleItemRichCardSection *)self text];
          v10 = [(RFSimpleItemRichCardSection *)v5 text];
          if (![v9 isEqual:v10])
          {
            v11 = 0;
LABEL_49:

            goto LABEL_50;
          }

          v79 = v10;
          v80 = v9;
        }

        v12 = [(RFSimpleItemRichCardSection *)self text];
        v13 = [(RFSimpleItemRichCardSection *)v5 text];
        if ((v12 != 0) == (v13 == 0))
        {
          goto LABEL_47;
        }

        v14 = [(RFSimpleItemRichCardSection *)self text];
        if (v14)
        {
          v15 = [(RFSimpleItemRichCardSection *)self text];
          v76 = [(RFSimpleItemRichCardSection *)v5 text];
          v77 = v15;
          if (![v15 isEqual:v76])
          {
LABEL_45:

LABEL_46:
            goto LABEL_47;
          }
        }

        v78 = v14;
        v16 = [(RFSimpleItemRichCardSection *)self text];
        v17 = [(RFSimpleItemRichCardSection *)v5 text];
        if ((v16 != 0) == (v17 == 0))
        {

          if (!v14)
          {
LABEL_47:

            v11 = 0;
            if (!v8)
            {
LABEL_50:

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        v73 = v16;
        v74 = v17;
        v75 = [(RFSimpleItemRichCardSection *)self text];
        if (v75)
        {
          v18 = [(RFSimpleItemRichCardSection *)self text];
          v71 = [(RFSimpleItemRichCardSection *)v5 text];
          v72 = v18;
          if (![v18 isEqual:v71])
          {
LABEL_43:

LABEL_44:
            if (!v14)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }
        }

        v19 = [(RFSimpleItemRichCardSection *)self text];
        v20 = [(RFSimpleItemRichCardSection *)v5 text];
        if ((v19 != 0) == (v20 == 0))
        {

          goto LABEL_42;
        }

        v69 = v20;
        v70 = v19;
        v21 = [(RFSimpleItemRichCardSection *)self text];
        if (v21)
        {
          v22 = [(RFSimpleItemRichCardSection *)self text];
          v66 = [(RFSimpleItemRichCardSection *)v5 text];
          v67 = v22;
          if (![v22 isEqual:?])
          {
            goto LABEL_40;
          }
        }

        v68 = v21;
        v23 = [(RFSimpleItemRichCardSection *)self text];
        v24 = [(RFSimpleItemRichCardSection *)v5 text];
        if ((v23 != 0) == (v24 == 0))
        {

          goto LABEL_39;
        }

        v64 = v23;
        v65 = v24;
        v25 = [(RFSimpleItemRichCardSection *)self text];
        if (v25)
        {
          v26 = [(RFSimpleItemRichCardSection *)self text];
          v61 = [(RFSimpleItemRichCardSection *)v5 text];
          v62 = v26;
          if (![v26 isEqual:?])
          {
LABEL_37:

LABEL_38:
LABEL_39:
            v21 = v68;
            if (!v68)
            {
LABEL_41:

LABEL_42:
              v14 = v78;
              if (!v75)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

LABEL_40:

            goto LABEL_41;
          }
        }

        v63 = v25;
        v27 = [(RFSimpleItemRichCardSection *)self text];
        v28 = [(RFSimpleItemRichCardSection *)v5 text];
        if ((v27 != 0) == (v28 == 0))
        {

          v25 = v63;
          if (!v63)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v59 = v28;
        v60 = [(RFSimpleItemRichCardSection *)self text];
        if (v60)
        {
          v29 = [(RFSimpleItemRichCardSection *)self text];
          v56 = [(RFSimpleItemRichCardSection *)v5 text];
          v57 = v29;
          v30 = v29;
          v31 = v63;
          if (![v30 isEqual:?])
          {
            goto LABEL_59;
          }
        }

        v58 = v27;
        v33 = [(RFSimpleItemRichCardSection *)self text];
        v34 = [(RFSimpleItemRichCardSection *)v5 text];
        if ((v33 != 0) == (v34 == 0))
        {

          v31 = v63;
          v27 = v58;
          if (!v60)
          {
            v38 = v68;
LABEL_60:

            if (v31)
            {
            }

            v14 = v78;
            if (v38)
            {
            }

            if (v75)
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

        v54 = v34;
        v55 = v33;
        v53 = [(RFSimpleItemRichCardSection *)self text];
        if (v53)
        {
          v35 = [(RFSimpleItemRichCardSection *)self text];
          v50 = [(RFSimpleItemRichCardSection *)v5 text];
          v51 = v35;
          if (![v35 isEqual:?])
          {
            v11 = 0;
            v36 = v60;
            v37 = v53;
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

            if (v75)
            {
            }

            if (v78)
            {
            }

            if (!v8)
            {
              goto LABEL_50;
            }

LABEL_48:
            v10 = v79;
            v9 = v80;
            goto LABEL_49;
          }
        }

        v39 = [(RFSimpleItemRichCardSection *)self text];
        v52 = [(RFSimpleItemRichCardSection *)v5 text];
        if ((v39 != 0) == (v52 == 0))
        {

          v11 = 0;
          goto LABEL_82;
        }

        v49 = [(RFSimpleItemRichCardSection *)self text];
        if (!v49 || (-[RFSimpleItemRichCardSection text](self, "text"), v40 = objc_claimAutoreleasedReturnValue(), -[RFSimpleItemRichCardSection text](v5, "text"), v45 = objc_claimAutoreleasedReturnValue(), v46 = v40, [v40 isEqual:?]))
        {
          v48 = [(RFSimpleItemRichCardSection *)self thumbnail];
          v47 = [(RFSimpleItemRichCardSection *)v5 thumbnail];
          if ((v48 != 0) == (v47 == 0))
          {

            v11 = 0;
          }

          else
          {
            v41 = [(RFSimpleItemRichCardSection *)self thumbnail];
            if (v41)
            {
              v42 = v41;
              v44 = [(RFSimpleItemRichCardSection *)self thumbnail];
              v43 = [(RFSimpleItemRichCardSection *)v5 thumbnail];
              v11 = [v44 isEqual:v43];
            }

            else
            {

              v11 = 1;
            }
          }

          if (!v49)
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
        v36 = v60;
        v37 = v53;
        if (!v53)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v24.receiver = self;
  v24.super_class = RFSimpleItemRichCardSection;
  v4 = [(SFCardSection *)&v24 copyWithZone:a3];
  v5 = [(RFSimpleItemRichCardSection *)self text];
  v6 = [v5 copy];
  [v4 setText_1:v6];

  v7 = [(RFSimpleItemRichCardSection *)self text];
  v8 = [v7 copy];
  [v4 setText_2:v8];

  v9 = [(RFSimpleItemRichCardSection *)self text];
  v10 = [v9 copy];
  [v4 setText_3:v10];

  v11 = [(RFSimpleItemRichCardSection *)self text];
  v12 = [v11 copy];
  [v4 setText_4:v12];

  v13 = [(RFSimpleItemRichCardSection *)self text];
  v14 = [v13 copy];
  [v4 setText_5:v14];

  v15 = [(RFSimpleItemRichCardSection *)self text];
  v16 = [v15 copy];
  [v4 setText_6:v16];

  v17 = [(RFSimpleItemRichCardSection *)self text];
  v18 = [v17 copy];
  [v4 setText_7:v18];

  v19 = [(RFSimpleItemRichCardSection *)self text];
  v20 = [v19 copy];
  [v4 setText_8:v20];

  v21 = [(RFSimpleItemRichCardSection *)self thumbnail];
  v22 = [v21 copy];
  [v4 setThumbnail:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSimpleItemRichCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSimpleItemRichCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFSimpleItemRichCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFSimpleItemRichCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFSimpleItemRichCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichCardSection *)v5 setText_1:v9];

    v10 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichCardSection *)v5 setText_2:v10];

    v11 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichCardSection *)v5 setText_3:v11];

    v12 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichCardSection *)v5 setText_4:v12];

    v13 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichCardSection *)v5 setText_5:v13];

    v14 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichCardSection *)v5 setText_6:v14];

    v15 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichCardSection *)v5 setText_7:v15];

    v16 = [(SFCardSection *)v8 text];
    [(RFSimpleItemRichCardSection *)v5 setText_8:v16];

    v17 = [(SFCardSection *)v8 thumbnail];
    [(RFSimpleItemRichCardSection *)v5 setThumbnail:v17];

    v18 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v18];

    v19 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v19];

    v20 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v20];

    v21 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v21];

    v22 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v22];

    v23 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v23];

    v24 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v24];

    v25 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v25];

    v26 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v26];

    v27 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v27];

    v28 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v28];

    v29 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v29];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v30 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v30];

    v31 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v31];

    v32 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v32];

    v33 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v33];

    v34 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v34];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v35 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v35];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v36 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v36];

    v37 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v37];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v38 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v38];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v39 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v39];

    v40 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v40];

    v41 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v41];

    v42 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v42];
  }

  return v5;
}

@end