@interface RFMapCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapCardSection)initWithCoder:(id)coder;
- (RFMapCardSection)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFMapCardSection

- (RFMapCardSection)initWithProtobuf:(id)protobuf
{
  v51 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v47.receiver = self;
  v47.super_class = RFMapCardSection;
  v5 = [(SFCardSection *)&v47 init];
  if (v5)
  {
    if ([protobufCopy sizeFormat])
    {
      -[RFMapCardSection setSizeFormat:](v5, "setSizeFormat:", [protobufCopy sizeFormat]);
    }

    markers = [protobufCopy markers];
    if (markers)
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
    markers2 = [protobufCopy markers];
    v9 = [markers2 countByEnumeratingWithState:&v43 objects:v50 count:16];
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
            objc_enumerationMutation(markers2);
          }

          v13 = [[RFMapMarker alloc] initWithProtobuf:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [markers2 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v10);
    }

    [(RFMapCardSection *)v5 setMarkers:v7];
    annotations = [protobufCopy annotations];
    if (annotations)
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
    annotations2 = [protobufCopy annotations];
    v17 = [annotations2 countByEnumeratingWithState:&v39 objects:v49 count:16];
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
            objc_enumerationMutation(annotations2);
          }

          v21 = [[RFMapAnnotation alloc] initWithProtobuf:*(*(&v39 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [annotations2 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v18);
    }

    [(RFMapCardSection *)v5 setAnnotations:v15];
    polylines = [protobufCopy polylines];
    v34 = v5;
    if (polylines)
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
    polylines2 = [protobufCopy polylines];
    v25 = [polylines2 countByEnumeratingWithState:&v35 objects:v48 count:16];
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
            objc_enumerationMutation(polylines2);
          }

          v29 = [[SFLatLng alloc] initWithProtobuf:*(*(&v35 + 1) + 8 * k)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [polylines2 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v26);
    }

    v5 = v34;
    [(RFMapCardSection *)v34 setPolyline:v23];
    [protobufCopy cameraDistance];
    if (v30 != 0.0)
    {
      [protobufCopy cameraDistance];
      [(RFMapCardSection *)v34 setCameraDistance:?];
    }

    if ([protobufCopy showsUserLocation])
    {
      -[RFMapCardSection setShowsUserLocation:](v34, "setShowsUserLocation:", [protobufCopy showsUserLocation]);
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
  sizeFormat = [(RFMapCardSection *)self sizeFormat];
  markers = [(RFMapCardSection *)self markers];
  v6 = sizeFormat ^ [markers hash];
  annotations = [(RFMapCardSection *)self annotations];
  v8 = v6 ^ [annotations hash];
  polyline = [(RFMapCardSection *)self polyline];
  v10 = v8 ^ [polyline hash];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if ([(RFMapCardSection *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v40.receiver = self;
      v40.super_class = RFMapCardSection;
      if ([(SFCardSection *)&v40 isEqual:equalCopy])
      {
        v6 = equalCopy;
        sizeFormat = [(RFMapCardSection *)self sizeFormat];
        if (sizeFormat != [(RFMapCardSection *)v6 sizeFormat])
        {
          LOBYTE(v12) = 0;
LABEL_40:

          goto LABEL_41;
        }

        markers = [(RFMapCardSection *)self markers];
        markers2 = [(RFMapCardSection *)v6 markers];
        if ((markers != 0) == (markers2 == 0))
        {
          LOBYTE(v12) = 0;
LABEL_39:

          goto LABEL_40;
        }

        markers3 = [(RFMapCardSection *)self markers];
        if (markers3)
        {
          markers4 = [(RFMapCardSection *)self markers];
          markers5 = [(RFMapCardSection *)v6 markers];
          if (![markers4 isEqual:markers5])
          {
            LOBYTE(v12) = 0;
            goto LABEL_37;
          }

          v39 = markers4;
        }

        annotations = [(RFMapCardSection *)self annotations];
        annotations2 = [(RFMapCardSection *)v6 annotations];
        v15 = annotations2;
        if ((annotations != 0) == (annotations2 == 0))
        {

          LOBYTE(v12) = 0;
          goto LABEL_36;
        }

        annotations3 = [(RFMapCardSection *)self annotations];
        if (annotations3)
        {
          v33 = v15;
          v17 = annotations;
          annotations4 = [(RFMapCardSection *)self annotations];
          annotations5 = [(RFMapCardSection *)v6 annotations];
          v36 = annotations4;
          if (![annotations4 isEqual:?])
          {
            LOBYTE(v12) = 0;
            annotations = v17;
            v15 = v33;
            goto LABEL_34;
          }

          v37 = annotations3;
          v38 = markers5;
          annotations = v17;
          v15 = v33;
        }

        else
        {
          v37 = 0;
          v38 = markers5;
        }

        polyline = [(RFMapCardSection *)self polyline];
        polyline2 = [(RFMapCardSection *)v6 polyline];
        if ((polyline != 0) == (polyline2 == 0))
        {

          LOBYTE(v12) = 0;
          annotations3 = v37;
          markers5 = v38;
          if (!v37)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v31 = polyline2;
        v32 = polyline;
        [(RFMapCardSection *)self polyline];
        v34 = annotations3 = v37;
        if (v34)
        {
          polyline3 = [(RFMapCardSection *)self polyline];
          [(RFMapCardSection *)v6 polyline];
          v30 = v29 = polyline3;
          v22 = [polyline3 isEqual:?];
          markers5 = v38;
          if (!v22)
          {
            LOBYTE(v12) = 0;
            v23 = v30;
            goto LABEL_32;
          }
        }

        else
        {
          markers5 = v38;
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
          showsUserLocation = [(RFMapCardSection *)self showsUserLocation];
          v12 = showsUserLocation ^ [(RFMapCardSection *)v6 showsUserLocation]^ 1;
        }

        v23 = v30;
        if (!v34)
        {
LABEL_33:

          if (!v37)
          {
LABEL_35:

LABEL_36:
            markers4 = v39;
            if (!markers3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RFMapCardSection;
  v4 = [(SFCardSection *)&v12 copyWithZone:zone];
  [v4 setSizeFormat:-[RFMapCardSection sizeFormat](self, "sizeFormat")];
  markers = [(RFMapCardSection *)self markers];
  v6 = [markers copy];
  [v4 setMarkers:v6];

  annotations = [(RFMapCardSection *)self annotations];
  v8 = [annotations copy];
  [v4 setAnnotations:v8];

  polyline = [(RFMapCardSection *)self polyline];
  v10 = [polyline copy];
  [v4 setPolyline:v10];

  [(RFMapCardSection *)self cameraDistance];
  [v4 setCameraDistance:?];
  [v4 setShowsUserLocation:{-[RFMapCardSection showsUserLocation](self, "showsUserLocation")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapCardSection alloc] initWithFacade:self];
  jsonData = [(_SFPBRFMapCardSection *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapCardSection alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFMapCardSection *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RFMapCardSection;
  [(SFCardSection *)&v3 encodeWithCoder:coder];
}

- (RFMapCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCardSection *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCardSection alloc] initWithData:v6];
  v8 = [[SFCardSection alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RFMapCardSection *)v5 setSizeFormat:[(SFCardSection *)v8 sizeFormat]];
    markers = [(SFCardSection *)v8 markers];
    [(RFMapCardSection *)v5 setMarkers:markers];

    annotations = [(SFCardSection *)v8 annotations];
    [(RFMapCardSection *)v5 setAnnotations:annotations];

    polyline = [(SFCardSection *)v8 polyline];
    [(RFMapCardSection *)v5 setPolyline:polyline];

    [(SFCardSection *)v8 cameraDistance];
    [(RFMapCardSection *)v5 setCameraDistance:?];
    [(RFMapCardSection *)v5 setShowsUserLocation:[(SFCardSection *)v8 showsUserLocation]];
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