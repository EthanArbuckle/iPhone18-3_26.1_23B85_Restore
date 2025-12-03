@interface QLPreviewContext
- (BOOL)isEqual:(id)equal;
- (QLPreviewContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLPreviewContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    thumbnailGenerator = [(QLPreviewContext *)self thumbnailGenerator];
    thumbnailGenerator2 = [v5 thumbnailGenerator];
    v8 = __18__QLItem_isEqual___block_invoke(thumbnailGenerator2, thumbnailGenerator, thumbnailGenerator2);

    if (!v8)
    {
      goto LABEL_21;
    }

    previewTitle = [(QLPreviewContext *)self previewTitle];
    previewTitle2 = [v5 previewTitle];
    v11 = __18__QLItem_isEqual___block_invoke(previewTitle2, previewTitle, previewTitle2);

    if (!v11)
    {
      goto LABEL_21;
    }

    contentType = [(QLPreviewContext *)self contentType];
    contentType2 = [v5 contentType];
    v14 = __18__QLItem_isEqual___block_invoke(contentType2, contentType, contentType2);

    if (!v14)
    {
      goto LABEL_21;
    }

    originalContentType = [(QLPreviewContext *)self originalContentType];
    originalContentType2 = [v5 originalContentType];
    v17 = __18__QLItem_isEqual___block_invoke(originalContentType2, originalContentType, originalContentType2);

    if (!v17)
    {
      goto LABEL_21;
    }

    canBeEdited = [(QLPreviewContext *)self canBeEdited];
    if (canBeEdited != [v5 canBeEdited])
    {
      goto LABEL_21;
    }

    canBeShared = [(QLPreviewContext *)self canBeShared];
    if (canBeShared != [v5 canBeShared])
    {
      goto LABEL_21;
    }

    editedFileBehavior = [(QLPreviewContext *)self editedFileBehavior];
    if (editedFileBehavior != [v5 editedFileBehavior])
    {
      goto LABEL_21;
    }

    previewItemType = [(QLPreviewContext *)self previewItemType];
    if (previewItemType != [v5 previewItemType])
    {
      goto LABEL_21;
    }

    backgroundColor = [(QLPreviewContext *)self backgroundColor];
    backgroundColor2 = [v5 backgroundColor];
    v24 = __18__QLItem_isEqual___block_invoke(backgroundColor2, backgroundColor, backgroundColor2);

    if (!v24)
    {
      goto LABEL_21;
    }

    password = [(QLPreviewContext *)self password];
    password2 = [v5 password];
    v27 = __18__QLItem_isEqual___block_invoke(password2, password, password2);

    if (!v27)
    {
      goto LABEL_21;
    }

    itemSize = [(QLPreviewContext *)self itemSize];
    itemSize2 = [v5 itemSize];
    v30 = __18__QLItem_isEqual___block_invoke(itemSize2, itemSize, itemSize2);

    if (!v30)
    {
      goto LABEL_21;
    }

    processIdentifier = [(QLPreviewContext *)self processIdentifier];
    if (processIdentifier != [v5 processIdentifier])
    {
      goto LABEL_21;
    }

    clientPreviewOptions = [(QLPreviewContext *)self clientPreviewOptions];
    clientPreviewOptions2 = [v5 clientPreviewOptions];
    v34 = __18__QLItem_isEqual___block_invoke(clientPreviewOptions2, clientPreviewOptions, clientPreviewOptions2);

    if (!v34)
    {
      goto LABEL_21;
    }

    clientPreviewItemDisplayState = [(QLPreviewContext *)self clientPreviewItemDisplayState];
    clientPreviewItemDisplayState2 = [v5 clientPreviewItemDisplayState];
    v37 = __18__QLItem_isEqual___block_invoke(clientPreviewItemDisplayState2, clientPreviewItemDisplayState, clientPreviewItemDisplayState2);

    if (!v37)
    {
      goto LABEL_21;
    }

    stringEncoding = [(QLPreviewContext *)self stringEncoding];
    if (stringEncoding != [v5 stringEncoding])
    {
      goto LABEL_21;
    }

    attachments = [(QLPreviewContext *)self attachments];
    attachments2 = [v5 attachments];
    v41 = __18__QLItem_isEqual___block_invoke(attachments2, attachments, attachments2);

    if (!v41)
    {
      goto LABEL_21;
    }

    bitmapFormat = [(QLPreviewContext *)self bitmapFormat];
    bitmapFormat2 = [v5 bitmapFormat];
    v44 = __18__QLItem_isEqual___block_invoke(bitmapFormat2, bitmapFormat, bitmapFormat2);

    if (v44)
    {
      viewDynamicRange = [(QLPreviewContext *)self viewDynamicRange];
      v46 = viewDynamicRange == [v5 viewDynamicRange];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  thumbnailGenerator = [(QLPreviewContext *)self thumbnailGenerator];

  if (thumbnailGenerator)
  {
    thumbnailGenerator2 = [(QLPreviewContext *)self thumbnailGenerator];
    [coderCopy encodeObject:thumbnailGenerator2 forKey:@"thumbnailGenerator"];
  }

  previewTitle = [(QLPreviewContext *)self previewTitle];

  if (previewTitle)
  {
    previewTitle2 = [(QLPreviewContext *)self previewTitle];
    [coderCopy encodeObject:previewTitle2 forKey:@"previewTitle"];
  }

  contentType = [(QLPreviewContext *)self contentType];

  if (contentType)
  {
    contentType2 = [(QLPreviewContext *)self contentType];
    [coderCopy encodeObject:contentType2 forKey:@"contentType"];
  }

  originalContentType = [(QLPreviewContext *)self originalContentType];

  if (originalContentType)
  {
    originalContentType2 = [(QLPreviewContext *)self originalContentType];
    [coderCopy encodeObject:originalContentType2 forKey:@"originalContentType"];
  }

  itemSize = [(QLPreviewContext *)self itemSize];

  if (itemSize)
  {
    itemSize2 = [(QLPreviewContext *)self itemSize];
    [coderCopy encodeObject:itemSize2 forKey:@"itemSize"];
  }

  backgroundColor = [(QLPreviewContext *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(QLPreviewContext *)self backgroundColor];
    [coderCopy encodeObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  password = [(QLPreviewContext *)self password];

  if (password)
  {
    password2 = [(QLPreviewContext *)self password];
    [coderCopy encodeObject:password2 forKey:@"password"];
  }

  clientPreviewOptions = [(QLPreviewContext *)self clientPreviewOptions];

  if (clientPreviewOptions)
  {
    clientPreviewOptions2 = [(QLPreviewContext *)self clientPreviewOptions];
    [coderCopy encodeObject:clientPreviewOptions2 forKey:@"clientPreviewOptions"];
  }

  clientPreviewItemDisplayState = [(QLPreviewContext *)self clientPreviewItemDisplayState];

  if (clientPreviewItemDisplayState)
  {
    clientPreviewItemDisplayState2 = [(QLPreviewContext *)self clientPreviewItemDisplayState];
    [coderCopy encodeObject:clientPreviewItemDisplayState2 forKey:@"clientPreviewItemDisplayState"];
  }

  [coderCopy encodeInteger:-[QLPreviewContext previewItemType](self forKey:{"previewItemType"), @"previewItemType"}];
  [coderCopy encodeBool:-[QLPreviewContext canBeEdited](self forKey:{"canBeEdited"), @"canBeEdited"}];
  [coderCopy encodeBool:-[QLPreviewContext canBeShared](self forKey:{"canBeShared"), @"canBeShared"}];
  [coderCopy encodeInteger:-[QLPreviewContext editedFileBehavior](self forKey:{"editedFileBehavior"), @"editedFileBehavior"}];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [coderCopy encodeInteger:objc_msgSend(processInfo forKey:{"processIdentifier"), @"processIdentifier"}];

  [coderCopy encodeInteger:-[QLPreviewContext stringEncoding](self forKey:{"stringEncoding"), @"stringEncoding"}];
  attachments = [(QLPreviewContext *)self attachments];

  if (attachments)
  {
    attachments2 = [(QLPreviewContext *)self attachments];
    [coderCopy encodeObject:attachments2 forKey:@"attachments"];
  }

  bitmapFormat = [(QLPreviewContext *)self bitmapFormat];

  if (bitmapFormat)
  {
    bitmapFormat2 = [(QLPreviewContext *)self bitmapFormat];
    [coderCopy encodeObject:bitmapFormat2 forKey:@"bitmapFormat"];
  }

  [coderCopy encodeInteger:-[QLPreviewContext viewDynamicRange](self forKey:{"viewDynamicRange"), @"viewDynamicRange"}];
}

- (QLPreviewContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = QLPreviewContext;
  v5 = [(QLPreviewContext *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailGenerator"];
    thumbnailGenerator = v5->_thumbnailGenerator;
    v5->_thumbnailGenerator = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewTitle"];
    previewTitle = v5->_previewTitle;
    v5->_previewTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalContentType"];
    originalContentType = v5->_originalContentType;
    v5->_originalContentType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemSize"];
    itemSize = v5->_itemSize;
    v5->_itemSize = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    password = v5->_password;
    v5->_password = v18;

    v5->_previewItemType = [coderCopy decodeIntegerForKey:@"previewItemType"];
    v5->_canBeEdited = [coderCopy decodeBoolForKey:@"canBeEdited"];
    v5->_canBeShared = [coderCopy decodeBoolForKey:@"canBeShared"];
    v5->_editedFileBehavior = [coderCopy decodeIntegerForKey:@"editedFileBehavior"];
    v5->_processIdentifier = [coderCopy decodeIntegerForKey:@"processIdentifier"];
    v20 = +[QLItem customExtensionCommunicationEncodedClasses];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"clientPreviewOptions"];
    clientPreviewOptions = v5->_clientPreviewOptions;
    v5->_clientPreviewOptions = v21;

    v23 = +[QLItem customExtensionCommunicationEncodedClasses];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"clientPreviewItemDisplayState"];
    clientPreviewItemDisplayState = v5->_clientPreviewItemDisplayState;
    v5->_clientPreviewItemDisplayState = v24;

    v5->_stringEncoding = [coderCopy decodeIntegerForKey:@"stringEncoding"];
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bitmapFormat"];
    bitmapFormat = v5->_bitmapFormat;
    v5->_bitmapFormat = v31;

    v5->_viewDynamicRange = [coderCopy decodeIntegerForKey:@"viewDynamicRange"];
    v33 = v5;
  }

  return v5;
}

@end