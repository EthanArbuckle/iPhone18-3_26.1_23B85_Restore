@interface RGSiriSchemaRGClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RGSiriSchemaRGClientEventMetadata)initWithDictionary:(id)a3;
- (RGSiriSchemaRGClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RGSiriSchemaRGClientEventMetadata

- (RGSiriSchemaRGClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RGSiriSchemaRGClientEventMetadata;
  v5 = [(RGSiriSchemaRGClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"rgId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(RGSiriSchemaRGClientEventMetadata *)v5 setRgId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RGSiriSchemaRGClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ifRequestId)
  {
    v4 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"ifRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"ifRequestId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RGSiriSchemaRGClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [v3 setObject:v7 forKeyedSubscript:@"postingSpanId"];
  }

  if (self->_rgId)
  {
    v8 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"rgId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"rgId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifRequestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_postingSpanId;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaUUID *)self->_rgId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
  v6 = [v4 ifRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
    v10 = [v4 ifRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    postingSpanId = self->_postingSpanId;
    if (postingSpanId != [v4 postingSpanId])
    {
      goto LABEL_15;
    }
  }

  v5 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
  v6 = [v4 rgId];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
    v16 = [v4 rgId];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];

  if (v4)
  {
    v5 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v6 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];

  v7 = v9;
  if (v6)
  {
    v8 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RGSiriSchemaRGClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(RGSiriSchemaRGClientEventMetadata *)self ifRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RGSiriSchemaRGClientEventMetadata *)self deleteIfRequestId];
  }

  v9 = [(RGSiriSchemaRGClientEventMetadata *)self rgId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RGSiriSchemaRGClientEventMetadata *)self deleteRgId];
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