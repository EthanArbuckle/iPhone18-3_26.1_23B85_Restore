@interface NSAdaptiveImageGlyph
- (CGSize)_imageSizeForAttributes:(id)attributes;
- (NSAdaptiveImageGlyph)initWithCTAdaptiveImageGlyph:(id)glyph;
- (NSAdaptiveImageGlyph)initWithCoder:(id)coder;
- (NSAdaptiveImageGlyph)initWithContentIdentifier:(id)identifier;
- (NSAdaptiveImageGlyph)initWithFileWrapper:(id)wrapper;
- (NSAdaptiveImageGlyph)initWithImageContent:(id)content;
- (NSTextAttachment)nominalTextAttachment;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSAdaptiveImageGlyph

- (NSAdaptiveImageGlyph)initWithImageContent:(id)content
{
  contentCopy = content;
  v10.receiver = self;
  v10.super_class = NSAdaptiveImageGlyph;
  v5 = [(NSAdaptiveImageGlyph *)&v10 init];
  if (v5 && (v6 = [objc_alloc(MEMORY[0x1E69655D8]) initWithImageContent:contentCopy], CTAdaptiveImageGlyph = v5->_CTAdaptiveImageGlyph, v5->_CTAdaptiveImageGlyph = v6, CTAdaptiveImageGlyph, v5->_CTAdaptiveImageGlyph))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSAdaptiveImageGlyph)initWithContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = NSAdaptiveImageGlyph;
  v5 = [(NSAdaptiveImageGlyph *)&v10 init];
  if (v5 && (v6 = [objc_alloc(MEMORY[0x1E69655D8]) initWithContentIdentifier:identifierCopy], CTAdaptiveImageGlyph = v5->_CTAdaptiveImageGlyph, v5->_CTAdaptiveImageGlyph = v6, CTAdaptiveImageGlyph, v5->_CTAdaptiveImageGlyph))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSAdaptiveImageGlyph)initWithCTAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (!glyphCopy)
  {
    [NSAdaptiveImageGlyph initWithCTAdaptiveImageGlyph:];
  }

  v5 = glyphCopy;
  v9.receiver = self;
  v9.super_class = NSAdaptiveImageGlyph;
  v6 = [(NSAdaptiveImageGlyph *)&v9 init];
  CTAdaptiveImageGlyph = v6->_CTAdaptiveImageGlyph;
  v6->_CTAdaptiveImageGlyph = v5;

  return v6;
}

- (NSAdaptiveImageGlyph)initWithFileWrapper:(id)wrapper
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
      v11 = [(NSAdaptiveImageGlyph *)self initWithImageContent:regularFileContents];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSAdaptiveImageGlyph alloc];
  contentIdentifier = [self->_CTAdaptiveImageGlyph contentIdentifier];
  v6 = [(NSAdaptiveImageGlyph *)v4 initWithContentIdentifier:contentIdentifier];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [self->_CTAdaptiveImageGlyph encodeWithCoder:coderCopy];
  }
}

- (NSAdaptiveImageGlyph)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (![coderCopy allowsKeyedCoding])
  {
    goto LABEL_6;
  }

  v5 = [objc_alloc(MEMORY[0x1E69655D8]) initWithCoder:coderCopy];
  if (!v5 || (v10.receiver = self, v10.super_class = NSAdaptiveImageGlyph, v6 = [(NSAdaptiveImageGlyph *)&v10 init], (self = v6) == 0))
  {

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  CTAdaptiveImageGlyph = v6->_CTAdaptiveImageGlyph;
  v6->_CTAdaptiveImageGlyph = v5;

  self = self;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (NSTextAttachment)nominalTextAttachment
{
  CTAdaptiveImageGlyph = self->_CTAdaptiveImageGlyph;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__NSAdaptiveImageGlyph_nominalTextAttachment__block_invoke;
  v5[3] = &unk_1E7267018;
  v5[4] = self;
  v3 = [CTAdaptiveImageGlyph _nominalTextAttachmentCreatingIfNeededUsingBlock:v5];

  return v3;
}

NSTextAttachment *__45__NSAdaptiveImageGlyph_nominalTextAttachment__block_invoke(uint64_t a1)
{
  v2 = [NSTextAttachment alloc];
  v3 = [*(a1 + 32) imageContent];
  v4 = +[NSAdaptiveImageGlyph contentType];
  v5 = [v4 identifier];
  v6 = [(NSTextAttachment *)v2 initWithData:v3 ofType:v5];

  return v6;
}

- (CGSize)_imageSizeForAttributes:(id)attributes
{
  v4 = [attributes objectForKeyedSubscript:@"NSFont"];
  if (!v4)
  {
    v4 = NSDefaultFont();
  }

  [v4 ascender];
  v6 = v5;
  [v4 descender];
  [self->_CTAdaptiveImageGlyph _imageSizeForProposedSize:v6 - v7 scaleFactor:v6 - v7, 1.0];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end