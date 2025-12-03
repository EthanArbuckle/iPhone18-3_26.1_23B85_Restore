@interface GATSchemaGATRichFormatResponseSegment
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATFileMetadata)file;
- (GATSchemaGATImageMetadata)image;
- (GATSchemaGATRichFormatResponseSegment)initWithDictionary:(id)dictionary;
- (GATSchemaGATRichFormatResponseSegment)initWithJSON:(id)n;
- (GATSchemaGATTextMetadata)text;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFile;
- (void)deleteImage;
- (void)deleteText;
- (void)setFile:(id)file;
- (void)setImage:(id)image;
- (void)setText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATRichFormatResponseSegment

- (GATSchemaGATRichFormatResponseSegment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = GATSchemaGATRichFormatResponseSegment;
  v5 = [(GATSchemaGATRichFormatResponseSegment *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATRichFormatResponseSegment setMediaType:](v5, "setMediaType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[GATSchemaGATImageMetadata alloc] initWithDictionary:v7];
      [(GATSchemaGATRichFormatResponseSegment *)v5 setImage:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"file"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[GATSchemaGATFileMetadata alloc] initWithDictionary:v9];
      [(GATSchemaGATRichFormatResponseSegment *)v5 setFile:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[GATSchemaGATTextMetadata alloc] initWithDictionary:v11];
      [(GATSchemaGATRichFormatResponseSegment *)v5 setText:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"mimeType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(GATSchemaGATRichFormatResponseSegment *)v5 setMimeType:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (GATSchemaGATRichFormatResponseSegment)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATRichFormatResponseSegment *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATRichFormatResponseSegment *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_file)
  {
    file = [(GATSchemaGATRichFormatResponseSegment *)self file];
    dictionaryRepresentation = [file dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"file"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"file"];
    }
  }

  if (self->_image)
  {
    image = [(GATSchemaGATRichFormatResponseSegment *)self image];
    dictionaryRepresentation2 = [image dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"image"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"image"];
    }
  }

  if (*&self->_has)
  {
    v10 = [(GATSchemaGATRichFormatResponseSegment *)self mediaType]- 1;
    if (v10 > 3)
    {
      v11 = @"GATGENERALMEDIATYPE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D7348[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"mediaType"];
  }

  if (self->_mimeType)
  {
    mimeType = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];
    v13 = [mimeType copy];
    [dictionary setObject:v13 forKeyedSubscript:@"mimeType"];
  }

  if (self->_text)
  {
    text = [(GATSchemaGATRichFormatResponseSegment *)self text];
    dictionaryRepresentation3 = [text dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_mediaType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(GATSchemaGATImageMetadata *)self->_image hash]^ v3;
  v5 = [(GATSchemaGATFileMetadata *)self->_file hash];
  v6 = v4 ^ v5 ^ [(GATSchemaGATTextMetadata *)self->_text hash];
  return v6 ^ [(NSString *)self->_mimeType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  whichPayload = self->_whichPayload;
  if (whichPayload != [equalCopy whichPayload])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    mediaType = self->_mediaType;
    if (mediaType != [equalCopy mediaType])
    {
      goto LABEL_26;
    }
  }

  image = [(GATSchemaGATRichFormatResponseSegment *)self image];
  image2 = [equalCopy image];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_25;
  }

  image3 = [(GATSchemaGATRichFormatResponseSegment *)self image];
  if (image3)
  {
    v10 = image3;
    image4 = [(GATSchemaGATRichFormatResponseSegment *)self image];
    image5 = [equalCopy image];
    v13 = [image4 isEqual:image5];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  image = [(GATSchemaGATRichFormatResponseSegment *)self file];
  image2 = [equalCopy file];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_25;
  }

  file = [(GATSchemaGATRichFormatResponseSegment *)self file];
  if (file)
  {
    v15 = file;
    file2 = [(GATSchemaGATRichFormatResponseSegment *)self file];
    file3 = [equalCopy file];
    v18 = [file2 isEqual:file3];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  image = [(GATSchemaGATRichFormatResponseSegment *)self text];
  image2 = [equalCopy text];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_25;
  }

  text = [(GATSchemaGATRichFormatResponseSegment *)self text];
  if (text)
  {
    v20 = text;
    text2 = [(GATSchemaGATRichFormatResponseSegment *)self text];
    text3 = [equalCopy text];
    v23 = [text2 isEqual:text3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  image = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];
  image2 = [equalCopy mimeType];
  if ((image != 0) != (image2 == 0))
  {
    mimeType = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];
    if (!mimeType)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = mimeType;
    mimeType2 = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];
    mimeType3 = [equalCopy mimeType];
    v28 = [mimeType2 isEqual:mimeType3];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  image = [(GATSchemaGATRichFormatResponseSegment *)self image];

  if (image)
  {
    image2 = [(GATSchemaGATRichFormatResponseSegment *)self image];
    PBDataWriterWriteSubmessage();
  }

  file = [(GATSchemaGATRichFormatResponseSegment *)self file];

  if (file)
  {
    file2 = [(GATSchemaGATRichFormatResponseSegment *)self file];
    PBDataWriterWriteSubmessage();
  }

  text = [(GATSchemaGATRichFormatResponseSegment *)self text];

  if (text)
  {
    text2 = [(GATSchemaGATRichFormatResponseSegment *)self text];
    PBDataWriterWriteSubmessage();
  }

  mimeType = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];

  v11 = toCopy;
  if (mimeType)
  {
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

- (void)deleteText
{
  if (self->_whichPayload == 4)
  {
    self->_whichPayload = 0;
    self->_text = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATTextMetadata)text
{
  if (self->_whichPayload == 4)
  {
    v3 = self->_text;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setText:(id)text
{
  textCopy = text;
  image = self->_image;
  self->_image = 0;

  file = self->_file;
  self->_file = 0;

  self->_whichPayload = 4 * (textCopy != 0);
  text = self->_text;
  self->_text = textCopy;
}

- (void)deleteFile
{
  if (self->_whichPayload == 3)
  {
    self->_whichPayload = 0;
    self->_file = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATFileMetadata)file
{
  if (self->_whichPayload == 3)
  {
    v3 = self->_file;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFile:(id)file
{
  fileCopy = file;
  image = self->_image;
  self->_image = 0;

  text = self->_text;
  self->_text = 0;

  v7 = 3;
  if (!fileCopy)
  {
    v7 = 0;
  }

  self->_whichPayload = v7;
  file = self->_file;
  self->_file = fileCopy;
}

- (void)deleteImage
{
  if (self->_whichPayload == 2)
  {
    self->_whichPayload = 0;
    self->_image = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATImageMetadata)image
{
  if (self->_whichPayload == 2)
  {
    v3 = self->_image;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  file = self->_file;
  self->_file = 0;

  text = self->_text;
  self->_text = 0;

  self->_whichPayload = 2 * (imageCopy != 0);
  image = self->_image;
  self->_image = imageCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = GATSchemaGATRichFormatResponseSegment;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  image = [(GATSchemaGATRichFormatResponseSegment *)self image];
  v7 = [image applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GATSchemaGATRichFormatResponseSegment *)self deleteImage];
  }

  file = [(GATSchemaGATRichFormatResponseSegment *)self file];
  v10 = [file applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GATSchemaGATRichFormatResponseSegment *)self deleteFile];
  }

  text = [(GATSchemaGATRichFormatResponseSegment *)self text];
  v13 = [text applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GATSchemaGATRichFormatResponseSegment *)self deleteText];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end