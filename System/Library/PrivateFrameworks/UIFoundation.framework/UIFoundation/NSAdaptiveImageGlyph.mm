@interface NSAdaptiveImageGlyph
- (CGSize)_imageSizeForAttributes:(id)a3;
- (NSAdaptiveImageGlyph)initWithCTAdaptiveImageGlyph:(id)a3;
- (NSAdaptiveImageGlyph)initWithCoder:(id)a3;
- (NSAdaptiveImageGlyph)initWithContentIdentifier:(id)a3;
- (NSAdaptiveImageGlyph)initWithFileWrapper:(id)a3;
- (NSAdaptiveImageGlyph)initWithImageContent:(id)a3;
- (NSTextAttachment)nominalTextAttachment;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSAdaptiveImageGlyph

- (NSAdaptiveImageGlyph)initWithImageContent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NSAdaptiveImageGlyph;
  v5 = [(NSAdaptiveImageGlyph *)&v10 init];
  if (v5 && (v6 = [objc_alloc(MEMORY[0x1E69655D8]) initWithImageContent:v4], CTAdaptiveImageGlyph = v5->_CTAdaptiveImageGlyph, v5->_CTAdaptiveImageGlyph = v6, CTAdaptiveImageGlyph, v5->_CTAdaptiveImageGlyph))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSAdaptiveImageGlyph)initWithContentIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NSAdaptiveImageGlyph;
  v5 = [(NSAdaptiveImageGlyph *)&v10 init];
  if (v5 && (v6 = [objc_alloc(MEMORY[0x1E69655D8]) initWithContentIdentifier:v4], CTAdaptiveImageGlyph = v5->_CTAdaptiveImageGlyph, v5->_CTAdaptiveImageGlyph = v6, CTAdaptiveImageGlyph, v5->_CTAdaptiveImageGlyph))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSAdaptiveImageGlyph)initWithCTAdaptiveImageGlyph:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [NSAdaptiveImageGlyph initWithCTAdaptiveImageGlyph:];
  }

  v5 = v4;
  v9.receiver = self;
  v9.super_class = NSAdaptiveImageGlyph;
  v6 = [(NSAdaptiveImageGlyph *)&v9 init];
  CTAdaptiveImageGlyph = v6->_CTAdaptiveImageGlyph;
  v6->_CTAdaptiveImageGlyph = v5;

  return v6;
}

- (NSAdaptiveImageGlyph)initWithFileWrapper:(id)a3
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
      v11 = [(NSAdaptiveImageGlyph *)self initWithImageContent:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSAdaptiveImageGlyph alloc];
  v5 = [self->_CTAdaptiveImageGlyph contentIdentifier];
  v6 = [(NSAdaptiveImageGlyph *)v4 initWithContentIdentifier:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    [self->_CTAdaptiveImageGlyph encodeWithCoder:v4];
  }
}

- (NSAdaptiveImageGlyph)initWithCoder:(id)a3
{
  v4 = a3;
  if (![v4 allowsKeyedCoding])
  {
    goto LABEL_6;
  }

  v5 = [objc_alloc(MEMORY[0x1E69655D8]) initWithCoder:v4];
  if (!v5 || (v10.receiver = self, v10.super_class = NSAdaptiveImageGlyph, v6 = [(NSAdaptiveImageGlyph *)&v10 init], (self = v6) == 0))
  {

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  CTAdaptiveImageGlyph = v6->_CTAdaptiveImageGlyph;
  v6->_CTAdaptiveImageGlyph = v5;

  self = self;
  v8 = self;
LABEL_7:

  return v8;
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

- (CGSize)_imageSizeForAttributes:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"NSFont"];
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