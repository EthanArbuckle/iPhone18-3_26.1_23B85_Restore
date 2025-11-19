@interface GATSchemaGATRichFormatResponseSegment
- (BOOL)isEqual:(id)a3;
- (GATSchemaGATFileMetadata)file;
- (GATSchemaGATImageMetadata)image;
- (GATSchemaGATRichFormatResponseSegment)initWithDictionary:(id)a3;
- (GATSchemaGATRichFormatResponseSegment)initWithJSON:(id)a3;
- (GATSchemaGATTextMetadata)text;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFile;
- (void)deleteImage;
- (void)deleteText;
- (void)setFile:(id)a3;
- (void)setImage:(id)a3;
- (void)setText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GATSchemaGATRichFormatResponseSegment

- (GATSchemaGATRichFormatResponseSegment)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GATSchemaGATRichFormatResponseSegment;
  v5 = [(GATSchemaGATRichFormatResponseSegment *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATRichFormatResponseSegment setMediaType:](v5, "setMediaType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[GATSchemaGATImageMetadata alloc] initWithDictionary:v7];
      [(GATSchemaGATRichFormatResponseSegment *)v5 setImage:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"file"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[GATSchemaGATFileMetadata alloc] initWithDictionary:v9];
      [(GATSchemaGATRichFormatResponseSegment *)v5 setFile:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[GATSchemaGATTextMetadata alloc] initWithDictionary:v11];
      [(GATSchemaGATRichFormatResponseSegment *)v5 setText:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"mimeType"];
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

- (GATSchemaGATRichFormatResponseSegment)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GATSchemaGATRichFormatResponseSegment *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GATSchemaGATRichFormatResponseSegment *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_file)
  {
    v4 = [(GATSchemaGATRichFormatResponseSegment *)self file];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"file"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"file"];
    }
  }

  if (self->_image)
  {
    v7 = [(GATSchemaGATRichFormatResponseSegment *)self image];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"image"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"image"];
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

    [v3 setObject:v11 forKeyedSubscript:@"mediaType"];
  }

  if (self->_mimeType)
  {
    v12 = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"mimeType"];
  }

  if (self->_text)
  {
    v14 = [(GATSchemaGATRichFormatResponseSegment *)self text];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"text"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"text"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  whichPayload = self->_whichPayload;
  if (whichPayload != [v4 whichPayload])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    mediaType = self->_mediaType;
    if (mediaType != [v4 mediaType])
    {
      goto LABEL_26;
    }
  }

  v7 = [(GATSchemaGATRichFormatResponseSegment *)self image];
  v8 = [v4 image];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v9 = [(GATSchemaGATRichFormatResponseSegment *)self image];
  if (v9)
  {
    v10 = v9;
    v11 = [(GATSchemaGATRichFormatResponseSegment *)self image];
    v12 = [v4 image];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(GATSchemaGATRichFormatResponseSegment *)self file];
  v8 = [v4 file];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v14 = [(GATSchemaGATRichFormatResponseSegment *)self file];
  if (v14)
  {
    v15 = v14;
    v16 = [(GATSchemaGATRichFormatResponseSegment *)self file];
    v17 = [v4 file];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(GATSchemaGATRichFormatResponseSegment *)self text];
  v8 = [v4 text];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(GATSchemaGATRichFormatResponseSegment *)self text];
  if (v19)
  {
    v20 = v19;
    v21 = [(GATSchemaGATRichFormatResponseSegment *)self text];
    v22 = [v4 text];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v7 = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];
  v8 = [v4 mimeType];
  if ((v7 != 0) != (v8 == 0))
  {
    v24 = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];
    v27 = [v4 mimeType];
    v28 = [v26 isEqual:v27];

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

- (void)writeTo:(id)a3
{
  v12 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(GATSchemaGATRichFormatResponseSegment *)self image];

  if (v4)
  {
    v5 = [(GATSchemaGATRichFormatResponseSegment *)self image];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(GATSchemaGATRichFormatResponseSegment *)self file];

  if (v6)
  {
    v7 = [(GATSchemaGATRichFormatResponseSegment *)self file];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(GATSchemaGATRichFormatResponseSegment *)self text];

  if (v8)
  {
    v9 = [(GATSchemaGATRichFormatResponseSegment *)self text];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(GATSchemaGATRichFormatResponseSegment *)self mimeType];

  v11 = v12;
  if (v10)
  {
    PBDataWriterWriteStringField();
    v11 = v12;
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

- (void)setText:(id)a3
{
  v4 = a3;
  image = self->_image;
  self->_image = 0;

  file = self->_file;
  self->_file = 0;

  self->_whichPayload = 4 * (v4 != 0);
  text = self->_text;
  self->_text = v4;
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

- (void)setFile:(id)a3
{
  v4 = a3;
  image = self->_image;
  self->_image = 0;

  text = self->_text;
  self->_text = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichPayload = v7;
  file = self->_file;
  self->_file = v4;
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

- (void)setImage:(id)a3
{
  v4 = a3;
  file = self->_file;
  self->_file = 0;

  text = self->_text;
  self->_text = 0;

  self->_whichPayload = 2 * (v4 != 0);
  image = self->_image;
  self->_image = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = GATSchemaGATRichFormatResponseSegment;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(GATSchemaGATRichFormatResponseSegment *)self image];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GATSchemaGATRichFormatResponseSegment *)self deleteImage];
  }

  v9 = [(GATSchemaGATRichFormatResponseSegment *)self file];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GATSchemaGATRichFormatResponseSegment *)self deleteFile];
  }

  v12 = [(GATSchemaGATRichFormatResponseSegment *)self text];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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