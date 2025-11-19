@interface RRSchemaProvisionalRRAnnotation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RRSchemaProvisionalRRAnnotation)initWithDictionary:(id)a3;
- (RRSchemaProvisionalRRAnnotation)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasAnnotationAddedTimestampInSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RRSchemaProvisionalRRAnnotation

- (RRSchemaProvisionalRRAnnotation)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RRSchemaProvisionalRRAnnotation;
  v5 = [(RRSchemaProvisionalRRAnnotation *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRRAnnotation setName:](v5, "setName:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"annotationAddedTimestampInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRRAnnotation setAnnotationAddedTimestampInSeconds:](v5, "setAnnotationAddedTimestampInSeconds:", [v7 unsignedLongLongValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRRAnnotation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRRAnnotation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RRSchemaProvisionalRRAnnotation *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RRSchemaProvisionalRRAnnotation annotationAddedTimestampInSeconds](self, "annotationAddedTimestampInSeconds")}];
    [v3 setObject:v5 forKeyedSubscript:@"annotationAddedTimestampInSeconds"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(RRSchemaProvisionalRRAnnotation *)self name]- 1;
    if (v6 > 4)
    {
      v7 = @"RRANNOTATIONNAME_UNKNOWN";
    }

    else
    {
      v7 = off_1E8651D58[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"name"];
  }

  [(RRSchemaProvisionalRRAnnotation *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_name;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761u * self->_annotationAddedTimestampInSeconds;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[24];
  if ((v6 & 1) != (*&has & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    name = self->_name;
    if (name != [v4 name])
    {
LABEL_10:
      v9 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[24];
  }

  if (((v6 ^ *&has) & 2) != 0)
  {
    goto LABEL_10;
  }

  if ((*&has & 2) != 0)
  {
    annotationAddedTimestampInSeconds = self->_annotationAddedTimestampInSeconds;
    if (annotationAddedTimestampInSeconds != [v4 annotationAddedTimestampInSeconds])
    {
      goto LABEL_10;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    name = self->_name;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    annotationAddedTimestampInSeconds = self->_annotationAddedTimestampInSeconds;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }
}

- (void)setHasAnnotationAddedTimestampInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end