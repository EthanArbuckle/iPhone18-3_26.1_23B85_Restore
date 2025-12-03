@interface RSSSchemaRSSClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RSSSchemaRSSClientEventMetadata)initWithDictionary:(id)dictionary;
- (RSSSchemaRSSClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation RSSSchemaRSSClientEventMetadata

- (RSSSchemaRSSClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RSSSchemaRSSClientEventMetadata;
  v5 = [(RSSSchemaRSSClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rssId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RSSSchemaRSSClientEventMetadata *)v5 setRssId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (RSSSchemaRSSClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RSSSchemaRSSClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RSSSchemaRSSClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_rssId)
  {
    rssId = [(RSSSchemaRSSClientEventMetadata *)self rssId];
    dictionaryRepresentation = [rssId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"rssId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"rssId"];
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
    rssId = [(RSSSchemaRSSClientEventMetadata *)self rssId];
    rssId2 = [equalCopy rssId];
    v7 = rssId2;
    if ((rssId != 0) != (rssId2 == 0))
    {
      rssId3 = [(RSSSchemaRSSClientEventMetadata *)self rssId];
      if (!rssId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = rssId3;
      rssId4 = [(RSSSchemaRSSClientEventMetadata *)self rssId];
      rssId5 = [equalCopy rssId];
      v12 = [rssId4 isEqual:rssId5];

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
  rssId = [(RSSSchemaRSSClientEventMetadata *)self rssId];

  if (rssId)
  {
    rssId2 = [(RSSSchemaRSSClientEventMetadata *)self rssId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = RSSSchemaRSSClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(RSSSchemaRSSClientEventMetadata *)self rssId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(RSSSchemaRSSClientEventMetadata *)self deleteRssId];
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