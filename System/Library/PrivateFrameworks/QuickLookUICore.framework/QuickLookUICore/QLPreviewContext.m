@interface QLPreviewContext
- (BOOL)isEqual:(id)a3;
- (QLPreviewContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLPreviewContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(QLPreviewContext *)self thumbnailGenerator];
    v7 = [v5 thumbnailGenerator];
    v8 = __18__QLItem_isEqual___block_invoke(v7, v6, v7);

    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = [(QLPreviewContext *)self previewTitle];
    v10 = [v5 previewTitle];
    v11 = __18__QLItem_isEqual___block_invoke(v10, v9, v10);

    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = [(QLPreviewContext *)self contentType];
    v13 = [v5 contentType];
    v14 = __18__QLItem_isEqual___block_invoke(v13, v12, v13);

    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = [(QLPreviewContext *)self originalContentType];
    v16 = [v5 originalContentType];
    v17 = __18__QLItem_isEqual___block_invoke(v16, v15, v16);

    if (!v17)
    {
      goto LABEL_21;
    }

    v18 = [(QLPreviewContext *)self canBeEdited];
    if (v18 != [v5 canBeEdited])
    {
      goto LABEL_21;
    }

    v19 = [(QLPreviewContext *)self canBeShared];
    if (v19 != [v5 canBeShared])
    {
      goto LABEL_21;
    }

    v20 = [(QLPreviewContext *)self editedFileBehavior];
    if (v20 != [v5 editedFileBehavior])
    {
      goto LABEL_21;
    }

    v21 = [(QLPreviewContext *)self previewItemType];
    if (v21 != [v5 previewItemType])
    {
      goto LABEL_21;
    }

    v22 = [(QLPreviewContext *)self backgroundColor];
    v23 = [v5 backgroundColor];
    v24 = __18__QLItem_isEqual___block_invoke(v23, v22, v23);

    if (!v24)
    {
      goto LABEL_21;
    }

    v25 = [(QLPreviewContext *)self password];
    v26 = [v5 password];
    v27 = __18__QLItem_isEqual___block_invoke(v26, v25, v26);

    if (!v27)
    {
      goto LABEL_21;
    }

    v28 = [(QLPreviewContext *)self itemSize];
    v29 = [v5 itemSize];
    v30 = __18__QLItem_isEqual___block_invoke(v29, v28, v29);

    if (!v30)
    {
      goto LABEL_21;
    }

    v31 = [(QLPreviewContext *)self processIdentifier];
    if (v31 != [v5 processIdentifier])
    {
      goto LABEL_21;
    }

    v32 = [(QLPreviewContext *)self clientPreviewOptions];
    v33 = [v5 clientPreviewOptions];
    v34 = __18__QLItem_isEqual___block_invoke(v33, v32, v33);

    if (!v34)
    {
      goto LABEL_21;
    }

    v35 = [(QLPreviewContext *)self clientPreviewItemDisplayState];
    v36 = [v5 clientPreviewItemDisplayState];
    v37 = __18__QLItem_isEqual___block_invoke(v36, v35, v36);

    if (!v37)
    {
      goto LABEL_21;
    }

    v38 = [(QLPreviewContext *)self stringEncoding];
    if (v38 != [v5 stringEncoding])
    {
      goto LABEL_21;
    }

    v39 = [(QLPreviewContext *)self attachments];
    v40 = [v5 attachments];
    v41 = __18__QLItem_isEqual___block_invoke(v40, v39, v40);

    if (!v41)
    {
      goto LABEL_21;
    }

    v42 = [(QLPreviewContext *)self bitmapFormat];
    v43 = [v5 bitmapFormat];
    v44 = __18__QLItem_isEqual___block_invoke(v43, v42, v43);

    if (v44)
    {
      v45 = [(QLPreviewContext *)self viewDynamicRange];
      v46 = v45 == [v5 viewDynamicRange];
    }

    else
    {
LABEL_21:
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (void)encodeWithCoder:(id)a3
{
  v27 = a3;
  v4 = [(QLPreviewContext *)self thumbnailGenerator];

  if (v4)
  {
    v5 = [(QLPreviewContext *)self thumbnailGenerator];
    [v27 encodeObject:v5 forKey:@"thumbnailGenerator"];
  }

  v6 = [(QLPreviewContext *)self previewTitle];

  if (v6)
  {
    v7 = [(QLPreviewContext *)self previewTitle];
    [v27 encodeObject:v7 forKey:@"previewTitle"];
  }

  v8 = [(QLPreviewContext *)self contentType];

  if (v8)
  {
    v9 = [(QLPreviewContext *)self contentType];
    [v27 encodeObject:v9 forKey:@"contentType"];
  }

  v10 = [(QLPreviewContext *)self originalContentType];

  if (v10)
  {
    v11 = [(QLPreviewContext *)self originalContentType];
    [v27 encodeObject:v11 forKey:@"originalContentType"];
  }

  v12 = [(QLPreviewContext *)self itemSize];

  if (v12)
  {
    v13 = [(QLPreviewContext *)self itemSize];
    [v27 encodeObject:v13 forKey:@"itemSize"];
  }

  v14 = [(QLPreviewContext *)self backgroundColor];

  if (v14)
  {
    v15 = [(QLPreviewContext *)self backgroundColor];
    [v27 encodeObject:v15 forKey:@"backgroundColor"];
  }

  v16 = [(QLPreviewContext *)self password];

  if (v16)
  {
    v17 = [(QLPreviewContext *)self password];
    [v27 encodeObject:v17 forKey:@"password"];
  }

  v18 = [(QLPreviewContext *)self clientPreviewOptions];

  if (v18)
  {
    v19 = [(QLPreviewContext *)self clientPreviewOptions];
    [v27 encodeObject:v19 forKey:@"clientPreviewOptions"];
  }

  v20 = [(QLPreviewContext *)self clientPreviewItemDisplayState];

  if (v20)
  {
    v21 = [(QLPreviewContext *)self clientPreviewItemDisplayState];
    [v27 encodeObject:v21 forKey:@"clientPreviewItemDisplayState"];
  }

  [v27 encodeInteger:-[QLPreviewContext previewItemType](self forKey:{"previewItemType"), @"previewItemType"}];
  [v27 encodeBool:-[QLPreviewContext canBeEdited](self forKey:{"canBeEdited"), @"canBeEdited"}];
  [v27 encodeBool:-[QLPreviewContext canBeShared](self forKey:{"canBeShared"), @"canBeShared"}];
  [v27 encodeInteger:-[QLPreviewContext editedFileBehavior](self forKey:{"editedFileBehavior"), @"editedFileBehavior"}];
  v22 = [MEMORY[0x277CCAC38] processInfo];
  [v27 encodeInteger:objc_msgSend(v22 forKey:{"processIdentifier"), @"processIdentifier"}];

  [v27 encodeInteger:-[QLPreviewContext stringEncoding](self forKey:{"stringEncoding"), @"stringEncoding"}];
  v23 = [(QLPreviewContext *)self attachments];

  if (v23)
  {
    v24 = [(QLPreviewContext *)self attachments];
    [v27 encodeObject:v24 forKey:@"attachments"];
  }

  v25 = [(QLPreviewContext *)self bitmapFormat];

  if (v25)
  {
    v26 = [(QLPreviewContext *)self bitmapFormat];
    [v27 encodeObject:v26 forKey:@"bitmapFormat"];
  }

  [v27 encodeInteger:-[QLPreviewContext viewDynamicRange](self forKey:{"viewDynamicRange"), @"viewDynamicRange"}];
}

- (QLPreviewContext)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = QLPreviewContext;
  v5 = [(QLPreviewContext *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailGenerator"];
    thumbnailGenerator = v5->_thumbnailGenerator;
    v5->_thumbnailGenerator = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewTitle"];
    previewTitle = v5->_previewTitle;
    v5->_previewTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalContentType"];
    originalContentType = v5->_originalContentType;
    v5->_originalContentType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemSize"];
    itemSize = v5->_itemSize;
    v5->_itemSize = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    password = v5->_password;
    v5->_password = v18;

    v5->_previewItemType = [v4 decodeIntegerForKey:@"previewItemType"];
    v5->_canBeEdited = [v4 decodeBoolForKey:@"canBeEdited"];
    v5->_canBeShared = [v4 decodeBoolForKey:@"canBeShared"];
    v5->_editedFileBehavior = [v4 decodeIntegerForKey:@"editedFileBehavior"];
    v5->_processIdentifier = [v4 decodeIntegerForKey:@"processIdentifier"];
    v20 = +[QLItem customExtensionCommunicationEncodedClasses];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"clientPreviewOptions"];
    clientPreviewOptions = v5->_clientPreviewOptions;
    v5->_clientPreviewOptions = v21;

    v23 = +[QLItem customExtensionCommunicationEncodedClasses];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"clientPreviewItemDisplayState"];
    clientPreviewItemDisplayState = v5->_clientPreviewItemDisplayState;
    v5->_clientPreviewItemDisplayState = v24;

    v5->_stringEncoding = [v4 decodeIntegerForKey:@"stringEncoding"];
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bitmapFormat"];
    bitmapFormat = v5->_bitmapFormat;
    v5->_bitmapFormat = v31;

    v5->_viewDynamicRange = [v4 decodeIntegerForKey:@"viewDynamicRange"];
    v33 = v5;
  }

  return v5;
}

@end