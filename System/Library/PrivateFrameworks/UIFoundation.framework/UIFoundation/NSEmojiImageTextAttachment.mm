@interface NSEmojiImageTextAttachment
+ (BOOL)_readsEmojiImageTextAttachmentFromDocumentFormats;
+ (id)_UTIForEmojiImage;
+ (void)initialize;
+ (void)setEmojiImageTextAttachment:(id)attachment forContentIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSEmojiImageTextAttachment)initWithAdaptiveImageGlyph:(id)glyph;
- (NSEmojiImageTextAttachment)initWithData:(id)data;
- (NSEmojiImageTextAttachment)initWithFileWrapper:(id)wrapper;
- (unint64_t)hash;
@end

@implementation NSEmojiImageTextAttachment

+ (BOOL)_readsEmojiImageTextAttachmentFromDocumentFormats
{
  if (_readsEmojiImageTextAttachmentFromDocumentFormats_onceToken != -1)
  {
    +[NSEmojiImageTextAttachment _readsEmojiImageTextAttachmentFromDocumentFormats];
  }

  return _readsEmojiImageTextAttachmentFromDocumentFormats__readsEmojiImageTextAttachmentFromDocumentFormats;
}

void __79__NSEmojiImageTextAttachment__readsEmojiImageTextAttachmentFromDocumentFormats__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v0 valueForKey:@"_NSReadsEmojiImageTextAttachmentFromDocumentFormats"];

  if (v2)
  {
    v1 = [v2 BOOLValue];
  }

  else
  {
    v1 = +[NSAdaptiveImageGlyph prefersEmojiImageTextAttachment];
  }

  _readsEmojiImageTextAttachmentFromDocumentFormats__readsEmojiImageTextAttachmentFromDocumentFormats = v1;
}

+ (id)_UTIForEmojiImage
{
  if (_UTIForEmojiImage_onceToken != -1)
  {
    +[NSEmojiImageTextAttachment _UTIForEmojiImage];
  }

  v3 = _UTIForEmojiImage_utType;

  return v3;
}

uint64_t __47__NSEmojiImageTextAttachment__UTIForEmojiImage__block_invoke()
{
  _UTIForEmojiImage_utType = [MEMORY[0x1E6982C40] exportedTypeWithIdentifier:@"com.apple.emojiimage" conformingToType:*MEMORY[0x1E6982E00]];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)initialize
{
  if (objc_opt_class() == self && [self _readsEmojiImageTextAttachmentFromDocumentFormats])
  {
    _UTIForEmojiImage = [self _UTIForEmojiImage];
    identifier = [_UTIForEmojiImage identifier];
    [NSTextAttachment registerTextAttachmentClass:self forFileType:identifier];
  }
}

+ (void)setEmojiImageTextAttachment:(id)attachment forContentIdentifier:(id)identifier
{
  v5 = setEmojiImageTextAttachment_forContentIdentifier__onceToken;
  identifierCopy = identifier;
  attachmentCopy = attachment;
  if (v5 != -1)
  {
    +[NSEmojiImageTextAttachment setEmojiImageTextAttachment:forContentIdentifier:];
  }

  v8 = _emojiTextAttachmentCache;
  contents = [attachmentCopy contents];
  [v8 setObject:attachmentCopy forKey:identifierCopy cost:{objc_msgSend(contents, "length")}];
}

uint64_t __79__NSEmojiImageTextAttachment_setEmojiImageTextAttachment_forContentIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _emojiTextAttachmentCache;
  _emojiTextAttachmentCache = v0;

  v2 = _emojiTextAttachmentCache;

  return [v2 setTotalCostLimit:0x400000];
}

- (NSEmojiImageTextAttachment)initWithAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (glyphCopy)
  {
    v6 = objc_opt_class();
    contentIdentifier = [glyphCopy contentIdentifier];
    v8 = [v6 emojiImageTextAttachmentForContentIdentifier:contentIdentifier];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      imageContent = [glyphCopy imageContent];
      v12 = +[NSAdaptiveImageGlyph contentType];
      identifier = [v12 identifier];
      v18.receiver = self;
      v18.super_class = NSEmojiImageTextAttachment;
      v14 = [(NSTextAttachment *)&v18 initWithData:imageContent ofType:identifier];

      if (v14)
      {
        objc_storeStrong(&v14->_glyph, glyph);
        v15 = objc_opt_class();
        contentIdentifier2 = [(NSAdaptiveImageGlyph *)v14->_glyph contentIdentifier];
        [v15 setEmojiImageTextAttachment:v14 forContentIdentifier:contentIdentifier2];
      }

      v9 = v14;
      self = v9;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSEmojiImageTextAttachment)initWithData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [(NSEmojiImageTextAttachment *)self initWithData:a2];
  }

  v6 = [[NSAdaptiveImageGlyph alloc] initWithImageContent:dataCopy];
  v7 = [(NSEmojiImageTextAttachment *)self initWithAdaptiveImageGlyph:v6];

  return v7;
}

- (NSEmojiImageTextAttachment)initWithFileWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  preferredFilename = [wrapperCopy preferredFilename];
  pathExtension = [preferredFilename pathExtension];

  if (pathExtension)
  {
    v7 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
    v8 = +[NSAdaptiveImageGlyph contentType];
    v9 = [v7 isEqual:v8];

    if (!v9)
    {
      selfCopy = 0;
LABEL_11:

      goto LABEL_12;
    }

    regularFileContents = [wrapperCopy regularFileContents];
    if (regularFileContents)
    {
      v11 = [(NSEmojiImageTextAttachment *)self initWithData:regularFileContents];
      if (v11)
      {
        self = v11;
        selfCopy = self;
LABEL_10:

        goto LABEL_11;
      }

      self = 0;
    }

    selfCopy = 0;
    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contentIdentifier = [(NSAdaptiveImageGlyph *)self->_glyph contentIdentifier];
      contentIdentifier2 = [(NSEmojiImageTextAttachment *)equalCopy contentIdentifier];
      v7 = [contentIdentifier isEqualToString:contentIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  contentIdentifier = [(NSAdaptiveImageGlyph *)self->_glyph contentIdentifier];
  v3 = [contentIdentifier hash];

  return v3;
}

- (void)initWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"NSEmojiImageTextAttachment.m" lineNumber:104 description:{@"%@: initializer called with invalid data %@", objc_opt_class(), 0}];
}

@end