@interface SLDCollaborationAttributionViewRenderer
+ (id)accessibilityLabelForTag:(id)tag;
+ (id)collaboratorsStringForTag:(id)tag prefixingWith:(BOOL)with;
- (BOOL)shouldShowLabels;
- (BOOL)shouldShowSubtitle;
- (CGImage)newAvatarImage;
- (CGImage)newAvatarImageForRecipientDrawingMetadata:(id)metadata allowMonogram:(BOOL)monogram;
- (CGImage)newGroupPhotoImageFromFileURL:(id)l;
- (CGImage)newImageFromData:(id)data;
- (CGImage)newMonogramImageForContact:(id)contact;
- (CGImage)newSnowglobeImageWithCGImages:(id)images;
- (CGRect)drawAvatarWithImageRef:(CGImage *)ref inContext:(CGContext *)context;
- (CGRect)drawGenericGlyphInContext:(CGContext *)context;
- (SLDCollaborationAttributionViewRenderer)initWithStyle:(id)style tag:(id)tag;
- (double)heightForLine:(__CTLine *)line withOptions:(unint64_t)options;
- (id)collaboratorsString;
- (id)withCollaboratorsString;
- (void)drawLine:(__CTLine *)line inRect:(CGRect)rect inContext:(CGContext *)context;
- (void)renderInContext:(CGContext *)context;
@end

@implementation SLDCollaborationAttributionViewRenderer

- (SLDCollaborationAttributionViewRenderer)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = SLDCollaborationAttributionViewRenderer;
  v9 = [(SLDCollaborationAttributionViewRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, style);
    objc_storeStrong(&v10->_slotTag, tag);
    v10->_RTL = [styleCopy layoutDirection] == 1;
    v11 = [[SLCollaborationAttributionViewMetricsProvider alloc] initWithSlotStyle:styleCopy tag:tagCopy];
    metricsProvider = v10->_metricsProvider;
    v10->_metricsProvider = v11;
  }

  return v10;
}

- (void)renderInContext:(CGContext *)context
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = SLDaemonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v71 = 138412290;
    selfCopy5 = self;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[%@] SLDCollaborationAttributionViewRenderer about to render.", &v71, 0xCu);
  }

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  newAvatarImage = [(SLDCollaborationAttributionViewRenderer *)self newAvatarImage];
  if (newAvatarImage)
  {
    v11 = newAvatarImage;
    [(SLDCollaborationAttributionViewRenderer *)self drawAvatarWithImageRef:newAvatarImage inContext:context];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    CFRelease(v11);
  }

  else
  {
    slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
    v21 = -[SLDCollaborationAttributionViewRenderer shouldShowGenericIconIfApplicableForVariant:](self, "shouldShowGenericIconIfApplicableForVariant:", [slotTag variant]);

    v22 = SLDaemonLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v23)
      {
        v71 = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_231772000, v22, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Showing generic glyph because avatar image was nil.", &v71, 0xCu);
      }

      [(SLDCollaborationAttributionViewRenderer *)self drawGenericGlyphInContext:context];
      v13 = v24;
      v15 = v25;
      v17 = v26;
      v19 = v27;
    }

    else
    {
      if (v23)
      {
        v71 = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_231772000, v22, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Not drawing an avatar because avatar image was nil and generic icon was not supported for the current variant.", &v71, 0xCu);
      }

      v19 = v9;
      v17 = v8;
      v15 = v7;
      v13 = v6;
    }
  }

  if ([(SLDCollaborationAttributionViewRenderer *)self shouldShowLabels])
  {
    slotTag2 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
    if ([slotTag2 variant] == 2)
    {
    }

    else
    {
      slotTag3 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
      variant = [slotTag3 variant];

      if (variant != 5)
      {
        slotTag4 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
        title = [slotTag4 title];

        if (title)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    title = [(SLDCollaborationAttributionViewRenderer *)self collaboratorsString];
    if (title)
    {
LABEL_17:
      metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
      v33 = [metricsProvider singleLineTitleForString:title];

      goto LABEL_20;
    }

LABEL_19:
    v33 = 0;
LABEL_20:
    if ([(SLDCollaborationAttributionViewRenderer *)self shouldShowSubtitle])
    {
      withCollaboratorsString = [(SLDCollaborationAttributionViewRenderer *)self withCollaboratorsString];
      if (withCollaboratorsString)
      {
        metricsProvider2 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
        v37 = [metricsProvider2 singleLineSubtitleForString:withCollaboratorsString];
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    v78.origin.x = v13;
    v78.origin.y = v15;
    v78.size.width = v17;
    v78.size.height = v19;
    v80.origin.x = v6;
    v80.origin.y = v7;
    v80.size.width = v8;
    v80.size.height = v9;
    v38 = 0.0;
    if (!CGRectEqualToRect(v78, v80))
    {
      metricsProvider3 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
      [metricsProvider3 avatarLabelSpace];
      v38 = v40;
    }

    v79.origin.x = v13;
    v79.origin.y = v15;
    v79.size.width = v17;
    v79.size.height = v19;
    MaxX = CGRectGetMaxX(v79);
    [(SLDCollaborationAttributionViewRenderer *)self heightForLine:v33 withOptions:8];
    v43 = v42;
    [(SLDCollaborationAttributionViewRenderer *)self heightForLine:v37 withOptions:8];
    v45 = v44;
    v46 = v43 + v44;
    if (v44 > 0.0)
    {
      metricsProvider4 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
      [metricsProvider4 titleSubtitleSpace];
      v46 = v46 + v48;
    }

    v49 = v38 + MaxX;
    if (v46 >= v19)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = (v19 - v46) * 0.5;
    }

    if (v33)
    {
      metricsProvider5 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
      [metricsProvider5 drawingSize];
      v53 = v52 - v49;

      [(SLDCollaborationAttributionViewRenderer *)self drawLine:v33 inRect:context inContext:v49, v50, v53, v43];
      if (v37)
      {
LABEL_35:
        metricsProvider6 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
        [metricsProvider6 titleSubtitleSpace];
        v56 = v43 + v50 + v55;
        metricsProvider7 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
        [metricsProvider7 drawingSize];
        v59 = v58 - v49;

        [(SLDCollaborationAttributionViewRenderer *)self drawLine:v37 inRect:context inContext:v49, v56, v59, v45];
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v60 = SLDaemonLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        slotTag5 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
        conversationDrawingMetadata = [slotTag5 conversationDrawingMetadata];
        slotTag6 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
        collaboratorDisplayNames = [slotTag6 collaboratorDisplayNames];
        v71 = 138412802;
        selfCopy5 = self;
        v73 = 2112;
        v74 = conversationDrawingMetadata;
        v75 = 2112;
        v76 = collaboratorDisplayNames;
        _os_log_impl(&dword_231772000, v60, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer failed to draw a title. conversationMetadata:%@ collaborationDisplayNames:%@.", &v71, 0x20u);
      }

      if (v37)
      {
        goto LABEL_35;
      }
    }

    v65 = SLDaemonLogHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      slotTag7 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
      conversationDrawingMetadata2 = [slotTag7 conversationDrawingMetadata];
      slotTag8 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
      collaboratorDisplayNames2 = [slotTag8 collaboratorDisplayNames];
      v71 = 138412802;
      selfCopy5 = self;
      v73 = 2112;
      v74 = conversationDrawingMetadata2;
      v75 = 2112;
      v76 = collaboratorDisplayNames2;
      _os_log_impl(&dword_231772000, v65, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer failed to draw a subtitle. conversationMetadata:%@ collaborationDisplayNames:%@.", &v71, 0x20u);
    }

    goto LABEL_42;
  }

LABEL_43:
  v70 = *MEMORY[0x277D85DE8];
}

- (CGImage)newGroupPhotoImageFromFileURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:&v11];
    v6 = v11;
    if (v5)
    {
      v7 = SLDCreateGroupPhotoImageWithData(v5);
    }

    else
    {
      v8 = SLDaemonLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy = self;
        v14 = 2112;
        v15 = lCopy;
        v16 = 2112;
        v17 = v6;
        _os_log_error_impl(&dword_231772000, v8, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewRenderer failed to retrieve group photo data from file URL %@. error: %@", buf, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (CGImage)newSnowglobeImageWithCGImages:(id)images
{
  v26[1] = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  maxContacts = [MEMORY[0x277CFBF18] maxContacts];
  v6 = imagesCopy;
  if ([imagesCopy count] > maxContacts)
  {
    v6 = [imagesCopy subarrayWithRange:{0, objc_msgSend(MEMORY[0x277CFBF18], "maxContacts")}];
  }

  v7 = [v6 count];
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  if (v8 >= 0x200)
  {
    v11 = 512;
  }

  else
  {
    v11 = v8;
  }

  bzero(v26 - v9, v11);
  if ([v6 count])
  {
    v12 = 0;
    do
    {
      v13 = [v6 objectAtIndexedSubscript:v12];
      *&v10[8 * v12] = v13;

      ++v12;
    }

    while ([v6 count] > v12);
  }

  metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider avatarDiameter];
  v16 = v15;

  v17 = MEMORY[0x277CFBF10];
  slotStyle = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  v19 = [v17 renderingScopeWithPointSize:-[SLDCollaborationAttributionViewRenderer isRTL](self scale:"isRTL") rightToLeft:0 style:0 color:{v16, v16, objc_msgSend(slotStyle, "displayScale")}];

  v20 = MEMORY[0x277CFBF20];
  v21 = [v6 count];
  v22 = [v20 imageForAvatarImages:v10 badgeImages:0 badgeTypes:MEMORY[0x277CBEBF8] rect:v21 itemCount:v19 scope:{0.0, 0.0, v16, v16}];
  CFRetain(v22);
  if (!v22)
  {
    v23 = SLDaemonLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(SLDCollaborationAttributionViewRenderer *)self newSnowglobeImageWithCGImages:imagesCopy, v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (CGImage)newImageFromData:(id)data
{
  if (!data)
  {
    return 0;
  }

  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];

  v6 = CFDataCreate(0, bytes, v5);
  v7 = CGDataProviderCreateWithCFData(v6);
  ImageAtIndex = v7;
  if (v7)
  {
    v9 = CGImageSourceCreateWithDataProvider(v7, 0);
    CFRelease(ImageAtIndex);
    if (v9)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, 0);
      CFRelease(v9);
    }

    else
    {
      ImageAtIndex = 0;
    }
  }

  CFRelease(v6);
  return ImageAtIndex;
}

- (CGImage)newMonogramImageForContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
LABEL_6:
    Image = 0;
    goto LABEL_7;
  }

  slotStyle = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  displayScale = [slotStyle displayScale];

  metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider avatarDiameter];
  v9 = v8;

  v10 = v9 * displayScale;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = vcvtpd_s64_f64(v10);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v14 = CGBitmapContextCreate(0, v12, v12, 8uLL, AlignedBytesPerRow, DeviceRGB, 1u);
  slotStyle2 = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  SLDRenderContactMonogramInContextAtRect(slotStyle2, contactCopy, v14, 0, v10, 0.0, 0.0, v10, v10);

  Image = CGBitmapContextCreateImage(v14);
  CGContextRelease(v14);
  CGColorSpaceRelease(DeviceRGB);
  if (!Image)
  {
    v17 = SLDaemonLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationAttributionViewRenderer newMonogramImageForContact:];
    }

    goto LABEL_6;
  }

LABEL_7:

  return Image;
}

- (CGImage)newAvatarImageForRecipientDrawingMetadata:(id)metadata allowMonogram:(BOOL)monogram
{
  monogramCopy = monogram;
  v18 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  contact = [metadataCopy contact];
  if (!contact)
  {
    contactImageData = SLDaemonLogHandle();
    if (os_log_type_enabled(contactImageData, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = metadataCopy;
      _os_log_impl(&dword_231772000, contactImageData, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because recipient contact was nil. %@.", &v14, 0x16u);
    }

    goto LABEL_15;
  }

  contactImageData = [metadataCopy contactImageData];
  if (!contactImageData)
  {
    if (monogramCopy)
    {
LABEL_11:
      v9 = [(SLDCollaborationAttributionViewRenderer *)self newMonogramImageForContact:contact];
      goto LABEL_16;
    }

    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = metadataCopy;
      _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because there was no contact photo and monograms aren't allowed. %@.", &v14, 0x16u);
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = [(SLDCollaborationAttributionViewRenderer *)self newImageFromData:contactImageData];
  if (!v9 && monogramCopy)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationAttributionViewRenderer newAvatarImageForRecipientDrawingMetadata:allowMonogram:];
    }

    goto LABEL_11;
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (CGImage)newAvatarImage
{
  v31 = *MEMORY[0x277D85DE8];
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  isPlaceholder = [slotTag isPlaceholder];

  if (isPlaceholder)
  {
    conversationDrawingMetadata = SLDaemonLogHandle();
    if (os_log_type_enabled(conversationDrawingMetadata, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_231772000, conversationDrawingMetadata, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because slot tag isPlaceholder was YES.", buf, 0xCu);
    }

    goto LABEL_24;
  }

  slotTag2 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  conversationDrawingMetadata = [slotTag2 conversationDrawingMetadata];

  slotTag3 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  v8 = -[SLDCollaborationAttributionViewRenderer shouldShowSnowglobeIfApplicableForVariant:](self, "shouldShowSnowglobeIfApplicableForVariant:", [slotTag3 variant]);

  slotTag4 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  v10 = -[SLDCollaborationAttributionViewRenderer shouldShowMonogramIfApplicableForVariant:](self, "shouldShowMonogramIfApplicableForVariant:", [slotTag4 variant]);

  if ([conversationDrawingMetadata count]== 1)
  {
    firstObject = [conversationDrawingMetadata firstObject];
    v12 = [(SLDCollaborationAttributionViewRenderer *)self newAvatarImageForConversationDrawingMetadata:firstObject allowSnowglobe:v8 allowMonogram:v10];

    goto LABEL_25;
  }

  if ([conversationDrawingMetadata count]< 2)
  {
    v20 = SLDaemonLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v21 = "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because slot tag conversationDrawingMetadata was empty.";
LABEL_22:
      _os_log_impl(&dword_231772000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
    }

LABEL_23:

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  if (!v8)
  {
    v20 = SLDaemonLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v21 = "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because snowglobes were not allowed for the current variant.";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  conversationDrawingMetadata = conversationDrawingMetadata;
  v14 = [conversationDrawingMetadata countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(conversationDrawingMetadata);
        }

        v18 = [(SLDCollaborationAttributionViewRenderer *)self newAvatarImageForConversationDrawingMetadata:*(*(&v24 + 1) + 8 * i) allowSnowglobe:0 allowMonogram:1, v24];
        if (v18)
        {
          v19 = v18;
          [v13 addObject:v18];
          CFRelease(v19);
        }
      }

      v15 = [conversationDrawingMetadata countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v15);
  }

  v12 = [(SLDCollaborationAttributionViewRenderer *)self newSnowglobeImageWithCGImages:v13];
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (CGRect)drawGenericGlyphInContext:(CGContext *)context
{
  metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider drawingSize];
  v7 = v6;
  v9 = v8;

  slotStyle = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  displayScale = [slotStyle displayScale];

  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  placeholderGlyphConfiguration = [slotTag placeholderGlyphConfiguration];

  coreUISize = [placeholderGlyphConfiguration coreUISize];
  weight = [placeholderGlyphConfiguration weight];
  [placeholderGlyphConfiguration pointSize];
  if (v16 > 0.0)
  {
    [placeholderGlyphConfiguration pointSize];
    v19 = v20;
  }

  else
  {
    metricsProvider2 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
    [metricsProvider2 avatarDiameter];
    v19 = SLRoundToScale(v18, displayScale);
  }

  if (!weight)
  {
    weight = 4;
  }

  slotStyle2 = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  v22 = SLDSystemVectorGlyphWithSlotStyle(slotStyle2, @"person.crop.circle.badge.checkmark", coreUISize, weight, v19);

  v23 = objc_alloc(MEMORY[0x277D77800]);
  slotStyle3 = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  v25 = [v23 initWithVectorGlyph:v22 tintColor:{objc_msgSend(slotStyle3, "tintColor")}];

  [v22 contentBoundsUnrounded];
  v27 = v26;
  [v22 alignmentRectUnrounded];
  v29 = v27 - v28;
  [v22 baselineOffsetUnrounded];
  v31 = v29 - v30;
  [v22 capHeightUnrounded];
  v33 = (v31 + v31 - v32) * 0.5;
  [v22 contentBoundsUnrounded];
  v35 = (v7 - v34) * 0.5;
  [v22 contentBoundsUnrounded];
  v37 = (v9 - v36) * 0.5;
  [v22 contentBoundsUnrounded];
  v39 = v38;
  [v22 contentBoundsUnrounded];
  v41 = v40;
  [v22 contentBoundsUnrounded];
  v43 = v37 + v42 * 0.5 - v33;
  [v22 alignmentRectUnrounded];
  v45 = v35 + v44;
  [v22 alignmentRectUnrounded];
  v47 = v46 + v43;
  v48 = SLRoundToScale(v45, displayScale);
  v49 = SLRoundToScale(v47, displayScale);
  v50 = v35 + v48 - v45;
  v51 = v43 + v49 - v47;
  CGContextSaveGState(context);
  [v25 drawInContext:context atPoint:{v50, v51}];
  CGContextRestoreGState(context);

  v52 = v50;
  v53 = v51;
  v54 = v39;
  v55 = v41;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (CGRect)drawAvatarWithImageRef:(CGImage *)ref inContext:(CGContext *)context
{
  metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider avatarDiameter];
  v9 = v8;

  metricsProvider2 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider2 drawingSize];
  v12 = v11 - v9;

  CGImageRetain(ref);
  CGContextSaveGState(context);
  metricsProvider3 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider3 drawingSize];
  CGContextTranslateCTM(context, 0.0, v14);

  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextBeginPath(context);
  v19.origin.x = 0.0;
  v19.origin.y = v12;
  v19.size.width = v9;
  v19.size.height = v9;
  CGContextAddEllipseInRect(context, v19);
  CGContextClip(context);
  CGContextClosePath(context);
  v20.origin.x = 0.0;
  v20.origin.y = v12;
  v20.size.width = v9;
  v20.size.height = v9;
  CGContextDrawImage(context, v20, ref);
  CGContextRestoreGState(context);
  CGImageRelease(ref);
  v15 = 0.0;
  v16 = v12;
  v17 = v9;
  v18 = v9;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (id)accessibilityLabelForTag:(id)tag
{
  tagCopy = tag;
  if ((![tagCopy variant] || objc_msgSend(tagCopy, "variant") == 3) && (objc_msgSend(tagCopy, "collaboratorDisplayNames"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = [SLDCollaborationAttributionViewRenderer collaboratorsStringForTag:tagCopy prefixingWith:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldShowSubtitle
{
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  variant = [slotTag variant];
  if (variant)
  {
    slotTag2 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
    if ([slotTag2 variant] != 3)
    {
      v6 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  slotTag3 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  collaboratorDisplayNames = [slotTag3 collaboratorDisplayNames];
  v6 = [collaboratorDisplayNames count] != 0;

  if (variant)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (BOOL)shouldShowLabels
{
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  if ([slotTag variant] == 1)
  {
    v4 = 0;
  }

  else
  {
    slotTag2 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
    v4 = [slotTag2 variant] != 4;
  }

  return v4;
}

- (double)heightForLine:(__CTLine *)line withOptions:(unint64_t)options
{
  if (!line)
  {
    return 0.0;
  }

  v5 = 0.0;
  ascent = 0.0;
  CTLineGetTypographicBounds(line, &ascent, &v5, 0);
  return ascent + v5;
}

- (id)collaboratorsString
{
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  v3 = [SLDCollaborationAttributionViewRenderer collaboratorsStringForTag:slotTag prefixingWith:0];

  return v3;
}

- (id)withCollaboratorsString
{
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  v3 = [SLDCollaborationAttributionViewRenderer collaboratorsStringForTag:slotTag prefixingWith:1];

  return v3;
}

+ (id)collaboratorsStringForTag:(id)tag prefixingWith:(BOOL)with
{
  collaboratorDisplayNames = [tag collaboratorDisplayNames];
  v6 = [collaboratorDisplayNames mutableCopy];

  if (![v6 count])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = SLFrameworkBundle();
    v14 = v13;
    if (with)
    {
      v15 = @"With nobody";
    }

    else
    {
      v15 = @"nobody";
    }

    v19 = [v13 localizedStringForKey:v15 value:&stru_28468DAB8 table:@"SocialLayer"];
    firstObject2 = [v12 stringWithFormat:v19];
    goto LABEL_26;
  }

  if ([v6 count] != 1)
  {
    if ([v6 count] == 2)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = SLFrameworkBundle();
      v14 = v17;
      if (with)
      {
        v18 = @"With %@ and %@";
      }

      else
      {
        v18 = @"%@ and %@";
      }

      v19 = [v17 localizedStringForKey:v18 value:&stru_28468DAB8 table:@"SocialLayer"];
      v24 = [v6 objectAtIndexedSubscript:0];
      v25 = [v6 objectAtIndexedSubscript:1];
      [v16 stringWithFormat:v19, v24, v25, v29];
    }

    else
    {
      v20 = [v6 count];
      v21 = MEMORY[0x277CCACA8];
      v22 = SLFrameworkBundle();
      v14 = v22;
      if (v20 == 3)
      {
        if (with)
        {
          v23 = @"With %@, %@ & %@";
        }

        else
        {
          v23 = @"%@, %@ & %@";
        }

        v19 = [v22 localizedStringForKey:v23 value:&stru_28468DAB8 table:@"SocialLayer"];
        v24 = [v6 objectAtIndexedSubscript:0];
        v25 = [v6 objectAtIndexedSubscript:1];
        v27 = [v6 objectAtIndexedSubscript:2];
        firstObject2 = [v21 stringWithFormat:v19, v24, v25, v27];

        goto LABEL_25;
      }

      if (with)
      {
        v26 = @"WITH_@_@_AND_N_OTHERS_FORMAT";
      }

      else
      {
        v26 = @"@_@_AND_N_OTHERS_FORMAT";
      }

      v19 = [v22 localizedStringForKey:v26 value:&stru_28468DAB8 table:@"SocialLayer"];
      v24 = [v6 objectAtIndexedSubscript:0];
      v25 = [v6 objectAtIndexedSubscript:1];
      [v21 stringWithFormat:v19, v24, v25, objc_msgSend(v6, "count") - 2];
    }
    firstObject2 = ;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  if (with)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = SLFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"With %@" value:&stru_28468DAB8 table:@"SocialLayer"];
    firstObject = [v6 firstObject];
    firstObject2 = [v7 stringWithFormat:v9, firstObject];
  }

  else
  {
    firstObject2 = [v6 firstObject];
  }

LABEL_27:

  return firstObject2;
}

- (void)drawLine:(__CTLine *)line inRect:(CGRect)rect inContext:(CGContext *)context
{
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextSetFontRenderingStyle();
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, 1.0, -1.0);
  v9 = v10;
  CGContextSetTextMatrix(context, &v9);
  BoundsWithOptions = CTLineGetBoundsWithOptions(line, 8uLL);
  CGContextTranslateCTM(context, x, BoundsWithOptions.origin.y + y + BoundsWithOptions.size.height);
  CTLineDraw(line, context);
  CGContextRestoreGState(context);
}

- (void)newSnowglobeImageWithCGImages:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewRenderer Had images, but the snowglobe image ref was still nil. cgImages.count: %li", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)newMonogramImageForContact:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[%@] SLDCollaborationAttributionViewRenderer Had a contact, but the monogram image ref was still nil. contact: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)newAvatarImageForRecipientDrawingMetadata:allowMonogram:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[%@] SLDCollaborationAttributionViewRenderer Had contact image data, but avatar image was still nil. Falling back to monogram. %@.");
  v2 = *MEMORY[0x277D85DE8];
}

@end