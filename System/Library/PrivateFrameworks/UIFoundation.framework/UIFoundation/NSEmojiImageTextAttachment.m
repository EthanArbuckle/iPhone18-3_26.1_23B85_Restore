@interface NSEmojiImageTextAttachment
+ (BOOL)_readsEmojiImageTextAttachmentFromDocumentFormats;
+ (id)_UTIForEmojiImage;
+ (void)initialize;
+ (void)setEmojiImageTextAttachment:(id)a3 forContentIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSEmojiImageTextAttachment)initWithAdaptiveImageGlyph:(id)a3;
- (NSEmojiImageTextAttachment)initWithData:(id)a3;
- (NSEmojiImageTextAttachment)initWithFileWrapper:(id)a3;
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
  if (objc_opt_class() == a1 && [a1 _readsEmojiImageTextAttachmentFromDocumentFormats])
  {
    v4 = [a1 _UTIForEmojiImage];
    v3 = [v4 identifier];
    [NSTextAttachment registerTextAttachmentClass:a1 forFileType:v3];
  }
}

+ (void)setEmojiImageTextAttachment:(id)a3 forContentIdentifier:(id)a4
{
  v5 = setEmojiImageTextAttachment_forContentIdentifier__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    +[NSEmojiImageTextAttachment setEmojiImageTextAttachment:forContentIdentifier:];
  }

  v8 = _emojiTextAttachmentCache;
  v9 = [v7 contents];
  [v8 setObject:v7 forKey:v6 cost:{objc_msgSend(v9, "length")}];
}

uint64_t __79__NSEmojiImageTextAttachment_setEmojiImageTextAttachment_forContentIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _emojiTextAttachmentCache;
  _emojiTextAttachmentCache = v0;

  v2 = _emojiTextAttachmentCache;

  return [v2 setTotalCostLimit:0x400000];
}

- (NSEmojiImageTextAttachment)initWithAdaptiveImageGlyph:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v5 contentIdentifier];
    v8 = [v6 emojiImageTextAttachmentForContentIdentifier:v7];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v11 = [v5 imageContent];
      v12 = +[NSAdaptiveImageGlyph contentType];
      v13 = [v12 identifier];
      v18.receiver = self;
      v18.super_class = NSEmojiImageTextAttachment;
      v14 = [(NSTextAttachment *)&v18 initWithData:v11 ofType:v13];

      if (v14)
      {
        objc_storeStrong(&v14->_glyph, a3);
        v15 = objc_opt_class();
        v16 = [(NSAdaptiveImageGlyph *)v14->_glyph contentIdentifier];
        [v15 setEmojiImageTextAttachment:v14 forContentIdentifier:v16];
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

- (NSEmojiImageTextAttachment)initWithData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(NSEmojiImageTextAttachment *)self initWithData:a2];
  }

  v6 = [[NSAdaptiveImageGlyph alloc] initWithImageContent:v5];
  v7 = [(NSEmojiImageTextAttachment *)self initWithAdaptiveImageGlyph:v6];

  return v7;
}

- (NSEmojiImageTextAttachment)initWithFileWrapper:(id)a3
{
  v4 = a3;
  v5 = [v4 preferredFilename];
  v6 = [v5 pathExtension];

  if (v6)
  {
    v7 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v6];
    v8 = +[NSAdaptiveImageGlyph contentType];
    v9 = [v7 isEqual:v8];

    if (!v9)
    {
      v12 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v10 = [v4 regularFileContents];
    if (v10)
    {
      v11 = [(NSEmojiImageTextAttachment *)self initWithData:v10];
      if (v11)
      {
        self = v11;
        v12 = self;
LABEL_10:

        goto LABEL_11;
      }

      self = 0;
    }

    v12 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSAdaptiveImageGlyph *)self->_glyph contentIdentifier];
      v6 = [(NSEmojiImageTextAttachment *)v4 contentIdentifier];
      v7 = [v5 isEqualToString:v6];
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
  v2 = [(NSAdaptiveImageGlyph *)self->_glyph contentIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)initWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"NSEmojiImageTextAttachment.m" lineNumber:104 description:{@"%@: initializer called with invalid data %@", objc_opt_class(), 0}];
}

@end