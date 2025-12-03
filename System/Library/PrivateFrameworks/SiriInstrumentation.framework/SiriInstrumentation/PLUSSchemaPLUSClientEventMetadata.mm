@interface PLUSSchemaPLUSClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSClientEventMetadata)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSClientEventMetadata

- (PLUSSchemaPLUSClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSClientEventMetadata;
  v5 = [(PLUSSchemaPLUSClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"plusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSClientEventMetadata *)v5 setPlusId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_plusId)
  {
    plusId = [(PLUSSchemaPLUSClientEventMetadata *)self plusId];
    dictionaryRepresentation = [plusId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"plusId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"plusId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    plusId = [(PLUSSchemaPLUSClientEventMetadata *)self plusId];
    plusId2 = [equalCopy plusId];
    v7 = plusId2;
    if ((plusId != 0) != (plusId2 == 0))
    {
      plusId3 = [(PLUSSchemaPLUSClientEventMetadata *)self plusId];
      if (!plusId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = plusId3;
      plusId4 = [(PLUSSchemaPLUSClientEventMetadata *)self plusId];
      plusId5 = [equalCopy plusId];
      v12 = [plusId4 isEqual:plusId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  plusId = [(PLUSSchemaPLUSClientEventMetadata *)self plusId];

  if (plusId)
  {
    plusId2 = [(PLUSSchemaPLUSClientEventMetadata *)self plusId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSClientEventMetadata *)self plusId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PLUSSchemaPLUSClientEventMetadata *)self deletePlusId];
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