@interface RFMapCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapCardSection)initWithCoder:(id)a3;
- (RFMapCardSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFMapCardSection

- (RFMapCardSection)initWithProtobuf:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = RFMapCardSection;
  v5 = [(SFCardSection *)&v47 init];
  if (v5)
  {
    if ([v4 sizeFormat])
    {
      -[RFMapCardSection setSizeFormat:](v5, "setSizeFormat:", [v4 sizeFormat]);
    }

    v6 = [v4 markers];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = [v4 markers];
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[RFMapMarker alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v10);
    }

    [(RFMapCardSection *)v5 setMarkers:v7];
    v14 = [v4 annotations];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = [v4 annotations];
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[RFMapAnnotation alloc] initWithProtobuf:*(*(&v39 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v18);
    }

    [(RFMapCardSection *)v5 setAnnotations:v15];
    v22 = [v4 polylines];
    v34 = v5;
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = [v4 polylines];
    v25 = [v24 countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v36;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[SFLatLng alloc] initWithProtobuf:*(*(&v35 + 1) + 8 * k)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v26);
    }

    v5 = v34;
    [(RFMapCardSection *)v34 setPolyline:v23];
    [v4 cameraDistance];
    if (v30 != 0.0)
    {
      [v4 cameraDistance];
      [(RFMapCardSection *)v34 setCameraDistance:?];
    }

    if ([v4 showsUserLocation])
    {
      -[RFMapCardSection setShowsUserLocation:](v34, "setShowsUserLocation:", [v4 showsUserLocation]);
    }

    v31 = v34;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v18.receiver = self;
  v18.super_class = RFMapCardSection;
  v3 = [(SFCardSection *)&v18 hash];
  v4 = [(RFMapCardSection *)self sizeFormat];
  v5 = [(RFMapCardSection *)self markers];
  v6 = v4 ^ [v5 hash];
  v7 = [(RFMapCardSection *)self annotations];
  v8 = v6 ^ [v7 hash];
  v9 = [(RFMapCardSection *)self polyline];
  v10 = v8 ^ [v9 hash];
  [(RFMapCardSection *)self cameraDistance];
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  *v12.i64 = round(v11);
  *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = (*vbslq_s8(vnegq_f64(v14), v13, v12).i64 * 2654435760.0) + vcvtd_n_u64_f64(v11 - *v12.i64, 0x40uLL);
  v16 = v3 ^ v10 ^ [(RFMapCardSection *)self showsUserLocation];

  return v16 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if ([(RFMapCardSection *)v5 isMemberOfClass:objc_opt_class()])
    {
      v40.receiver = self;
      v40.super_class = RFMapCardSection;
      if ([(SFCardSection *)&v40 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFMapCardSection *)self sizeFormat];
        if (v7 != [(RFMapCardSection *)v6 sizeFormat])
        {
          LOBYTE(v12) = 0;
LABEL_40:

          goto LABEL_41;
        }

        v8 = [(RFMapCardSection *)self markers];
        v9 = [(RFMapCardSection *)v6 markers];
        if ((v8 != 0) == (v9 == 0))
        {
          LOBYTE(v12) = 0;
LABEL_39:

          goto LABEL_40;
        }

        v10 = [(RFMapCardSection *)self markers];
        if (v10)
        {
          v11 = [(RFMapCardSection *)self markers];
          v3 = [(RFMapCardSection *)v6 markers];
          if (![v11 isEqual:v3])
          {
            LOBYTE(v12) = 0;
            goto LABEL_37;
          }

          v39 = v11;
        }

        v13 = [(RFMapCardSection *)self annotations];
        v14 = [(RFMapCardSection *)v6 annotations];
        v15 = v14;
        if ((v13 != 0) == (v14 == 0))
        {

          LOBYTE(v12) = 0;
          goto LABEL_36;
        }

        v16 = [(RFMapCardSection *)self annotations];
        if (v16)
        {
          v33 = v15;
          v17 = v13;
          v18 = [(RFMapCardSection *)self annotations];
          v35 = [(RFMapCardSection *)v6 annotations];
          v36 = v18;
          if (![v18 isEqual:?])
          {
            LOBYTE(v12) = 0;
            v13 = v17;
            v15 = v33;
            goto LABEL_34;
          }

          v37 = v16;
          v38 = v3;
          v13 = v17;
          v15 = v33;
        }

        else
        {
          v37 = 0;
          v38 = v3;
        }

        v19 = [(RFMapCardSection *)self polyline];
        v20 = [(RFMapCardSection *)v6 polyline];
        if ((v19 != 0) == (v20 == 0))
        {

          LOBYTE(v12) = 0;
          v16 = v37;
          v3 = v38;
          if (!v37)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v31 = v20;
        v32 = v19;
        [(RFMapCardSection *)self polyline];
        v34 = v16 = v37;
        if (v34)
        {
          v21 = [(RFMapCardSection *)self polyline];
          [(RFMapCardSection *)v6 polyline];
          v30 = v29 = v21;
          v22 = [v21 isEqual:?];
          v3 = v38;
          if (!v22)
          {
            LOBYTE(v12) = 0;
            v23 = v30;
            goto LABEL_32;
          }
        }

        else
        {
          v3 = v38;
        }

        [(RFMapCardSection *)self cameraDistance];
        v25 = v24;
        [(RFMapCardSection *)v6 cameraDistance];
        if (vabdd_f64(v25, v26) >= 2.22044605e-16)
        {
          LOBYTE(v12) = 0;
        }

        else
        {
          v27 = [(RFMapCardSection *)self showsUserLocation];
          v12 = v27 ^ [(RFMapCardSection *)v6 showsUserLocation]^ 1;
        }

        v23 = v30;
        if (!v34)
        {
LABEL_33:

          if (!v37)
          {
LABEL_35:

LABEL_36:
            v11 = v39;
            if (!v10)
            {
LABEL_38:

              goto LABEL_39;
            }

LABEL_37:

            goto LABEL_38;
          }

LABEL_34:

          goto LABEL_35;
        }

LABEL_32:

        goto LABEL_33;
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_41:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RFMapCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:a3];
  [v4 setSizeFormat:-[RFMapCardSection sizeFormat](self, "sizeFormat")];
  v5 = [(RFMapCardSection *)self markers];
  v6 = [v5 copy];
  [v4 setMarkers:v6];

  v7 = [(RFMapCardSection *)self annotations];
  v8 = [v7 copy];
  [v4 setAnnotations:v8];

  v9 = [(RFMapCardSection *)self polyline];
  v10 = [v9 copy];
  [v4 setPolyline:v10];

  [(RFMapCardSection *)self cameraDistance];
  [v4 setCameraDistance:?];
  [v4 setShowsUserLocation:{-[RFMapCardSection showsUserLocation](self, "showsUserLocation")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapCardSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapCardSection alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapCardSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RFMapCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:a3];
}

- (RFMapCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFCardSection *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RFMapCardSection *)v5 setSizeFormat:[(SFCardSection *)v8 sizeFormat]];
    v9 = [(SFCardSection *)v8 markers];
    [(RFMapCardSection *)v5 setMarkers:v9];

    v10 = [(SFCardSection *)v8 annotations];
    [(RFMapCardSection *)v5 setAnnotations:v10];

    v11 = [(SFCardSection *)v8 polyline];
    [(RFMapCardSection *)v5 setPolyline:v11];

    [(SFCardSection *)v8 cameraDistance];
    [(RFMapCardSection *)v5 setCameraDistance:?];
    [(RFMapCardSection *)v5 setShowsUserLocation:[(SFCardSection *)v8 showsUserLocation]];
    v12 = [(SFCardSection *)v8 nextCard];
    [(SFCardSection *)v5 setNextCard:v12];

    v13 = [(SFCardSection *)v8 commands];
    [(SFCardSection *)v5 setCommands:v13];

    v14 = [(SFCardSection *)v8 parameterKeyPaths];
    [(SFCardSection *)v5 setParameterKeyPaths:v14];

    v15 = [(SFCardSection *)v8 cardSectionId];
    [(SFCardSection *)v5 setCardSectionId:v15];

    v16 = [(SFCardSection *)v8 resultIdentifier];
    [(SFCardSection *)v5 setResultIdentifier:v16];

    v17 = [(SFCardSection *)v8 userReportRequest];
    [(SFCardSection *)v5 setUserReportRequest:v17];

    v18 = [(SFCardSection *)v8 command];
    [(SFCardSection *)v5 setCommand:v18];

    v19 = [(SFCardSection *)v8 previewCommand];
    [(SFCardSection *)v5 setPreviewCommand:v19];

    v20 = [(SFCardSection *)v8 previewButtonItems];
    [(SFCardSection *)v5 setPreviewButtonItems:v20];

    v21 = [(SFCardSection *)v8 cardSectionDetail];
    [(SFCardSection *)v5 setCardSectionDetail:v21];

    v22 = [(SFCardSection *)v8 previewButtonItemsTitle];
    [(SFCardSection *)v5 setPreviewButtonItemsTitle:v22];

    v23 = [(SFCardSection *)v8 backgroundColor];
    [(SFCardSection *)v5 setBackgroundColor:v23];

    [(SFCardSection *)v5 setShouldHideInAmbientMode:[(SFCardSection *)v8 shouldHideInAmbientMode]];
    v24 = [(SFCardSection *)v8 leadingSwipeButtonItems];
    [(SFCardSection *)v5 setLeadingSwipeButtonItems:v24];

    v25 = [(SFCardSection *)v8 trailingSwipeButtonItems];
    [(SFCardSection *)v5 setTrailingSwipeButtonItems:v25];

    v26 = [(SFCardSection *)v8 punchoutOptions];
    [(SFCardSection *)v5 setPunchoutOptions:v26];

    v27 = [(SFCardSection *)v8 punchoutPickerTitle];
    [(SFCardSection *)v5 setPunchoutPickerTitle:v27];

    v28 = [(SFCardSection *)v8 punchoutPickerDismissText];
    [(SFCardSection *)v5 setPunchoutPickerDismissText:v28];

    [(SFCardSection *)v5 setCanBeHidden:[(SFCardSection *)v8 canBeHidden]];
    [(SFCardSection *)v5 setHasTopPadding:[(SFCardSection *)v8 hasTopPadding]];
    [(SFCardSection *)v5 setHasBottomPadding:[(SFCardSection *)v8 hasBottomPadding]];
    [(SFCardSection *)v5 setSeparatorStyle:[(SFCardSection *)v8 separatorStyle]];
    v29 = [(SFCardSection *)v8 referencedCommands];
    [(SFCardSection *)v5 setReferencedCommands:v29];

    [(SFCardSection *)v5 setForceEnable3DTouch:[(SFCardSection *)v8 forceEnable3DTouch]];
    [(SFCardSection *)v5 setShouldShowInSmartDialog:[(SFCardSection *)v8 shouldShowInSmartDialog]];
    v30 = [(SFCardSection *)v8 appEntityAnnotation];
    [(SFCardSection *)v5 setAppEntityAnnotation:v30];

    v31 = [(SFCardSection *)v8 emphasisSubjectId];
    [(SFCardSection *)v5 setEmphasisSubjectId:v31];

    [(SFCardSection *)v5 setIncreasedContrastMode:[(SFCardSection *)v8 increasedContrastMode]];
    v32 = [(SFCardSection *)v8 secondaryCommand];
    [(SFCardSection *)v5 setSecondaryCommand:v32];

    [(SFCardSection *)v5 setRequiredLevelOfDetail:[(SFCardSection *)v8 requiredLevelOfDetail]];
    v33 = [(SFCardSection *)v8 racFeedbackSubfeatureId];
    [(SFCardSection *)v5 setRacFeedbackSubfeatureId:v33];

    v34 = [(SFCardSection *)v8 racFeedbackLoggingContent];
    [(SFCardSection *)v5 setRacFeedbackLoggingContent:v34];

    v35 = [(SFCardSection *)v8 copyableItems];
    [(SFCardSection *)v5 setCopyableItems:v35];

    v36 = [(SFCardSection *)v8 applicationBundleIdentifier];
    [(SFCardSection *)v5 setApplicationBundleIdentifier:v36];
  }

  return v5;
}

@end