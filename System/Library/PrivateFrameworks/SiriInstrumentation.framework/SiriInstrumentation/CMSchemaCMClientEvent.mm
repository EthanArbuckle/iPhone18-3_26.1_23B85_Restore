@interface CMSchemaCMClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (CMSchemaCMClientEvent)initWithDictionary:(id)dictionary;
- (CMSchemaCMClientEvent)initWithJSON:(id)n;
- (CMSchemaCMInsertContext)insertContext;
- (CMSchemaCMSearchContext)searchContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteInsertContext;
- (void)deleteSearchContext;
- (void)setInsertContext:(id)context;
- (void)setSearchContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation CMSchemaCMClientEvent

- (CMSchemaCMClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CMSchemaCMClientEvent;
  v5 = [(CMSchemaCMClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CMSchemaCMClientEventMetadata alloc] initWithDictionary:v6];
      [(CMSchemaCMClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"searchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CMSchemaCMSearchContext alloc] initWithDictionary:v8];
      [(CMSchemaCMClientEvent *)v5 setSearchContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"insertContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CMSchemaCMInsertContext alloc] initWithDictionary:v10];
      [(CMSchemaCMClientEvent *)v5 setInsertContext:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (CMSchemaCMClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CMSchemaCMClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CMSchemaCMClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(CMSchemaCMClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_insertContext)
  {
    insertContext = [(CMSchemaCMClientEvent *)self insertContext];
    dictionaryRepresentation2 = [insertContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"insertContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"insertContext"];
    }
  }

  if (self->_searchContext)
  {
    searchContext = [(CMSchemaCMClientEvent *)self searchContext];
    dictionaryRepresentation3 = [searchContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"searchContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"searchContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(CMSchemaCMClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CMSchemaCMSearchContext *)self->_searchContext hash]^ v3;
  return v4 ^ [(CMSchemaCMInsertContext *)self->_insertContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_18;
  }

  eventMetadata = [(CMSchemaCMClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(CMSchemaCMClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(CMSchemaCMClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(CMSchemaCMClientEvent *)self searchContext];
  eventMetadata2 = [equalCopy searchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  searchContext = [(CMSchemaCMClientEvent *)self searchContext];
  if (searchContext)
  {
    v14 = searchContext;
    searchContext2 = [(CMSchemaCMClientEvent *)self searchContext];
    searchContext3 = [equalCopy searchContext];
    v17 = [searchContext2 isEqual:searchContext3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(CMSchemaCMClientEvent *)self insertContext];
  eventMetadata2 = [equalCopy insertContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    insertContext = [(CMSchemaCMClientEvent *)self insertContext];
    if (!insertContext)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = insertContext;
    insertContext2 = [(CMSchemaCMClientEvent *)self insertContext];
    insertContext3 = [equalCopy insertContext];
    v22 = [insertContext2 isEqual:insertContext3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(CMSchemaCMClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(CMSchemaCMClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  searchContext = [(CMSchemaCMClientEvent *)self searchContext];

  if (searchContext)
  {
    searchContext2 = [(CMSchemaCMClientEvent *)self searchContext];
    PBDataWriterWriteSubmessage();
  }

  insertContext = [(CMSchemaCMClientEvent *)self insertContext];

  v9 = toCopy;
  if (insertContext)
  {
    insertContext2 = [(CMSchemaCMClientEvent *)self insertContext];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteInsertContext
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_insertContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CMSchemaCMInsertContext)insertContext
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_insertContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInsertContext:(id)context
{
  contextCopy = context;
  searchContext = self->_searchContext;
  self->_searchContext = 0;

  v6 = 3;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  insertContext = self->_insertContext;
  self->_insertContext = contextCopy;
}

- (void)deleteSearchContext
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_searchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CMSchemaCMSearchContext)searchContext
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_searchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchContext:(id)context
{
  contextCopy = context;
  insertContext = self->_insertContext;
  self->_insertContext = 0;

  self->_whichEvent_Type = 2 * (contextCopy != 0);
  searchContext = self->_searchContext;
  self->_searchContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(CMSchemaCMClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.cm.CMClientEvent";
  if (whichEvent_Type == 3)
  {
    v3 = @"com.apple.aiml.siri.cm.CMClientEvent.CMInsertContext";
  }

  if (whichEvent_Type == 2)
  {
    return @"com.apple.aiml.siri.cm.CMClientEvent.CMSearchContext";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = CMSchemaCMClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(CMSchemaCMClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CMSchemaCMClientEvent *)self deleteEventMetadata];
  }

  searchContext = [(CMSchemaCMClientEvent *)self searchContext];
  v10 = [searchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CMSchemaCMClientEvent *)self deleteSearchContext];
  }

  insertContext = [(CMSchemaCMClientEvent *)self insertContext];
  v13 = [insertContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CMSchemaCMClientEvent *)self deleteInsertContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  eventMetadata = [(CMSchemaCMClientEvent *)self eventMetadata];
  cmId = [eventMetadata cmId];

  if (cmId)
  {
    value = [cmId value];
    if (value)
    {
      value2 = [cmId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 47;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(CMSchemaCMClientEvent *)self eventMetadata];
  cmId = [eventMetadata cmId];

  if (!cmId)
  {
    goto LABEL_5;
  }

  value = [cmId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [cmId value];
  v6 = [value2 length];

  if (v6)
  {
    value = cmId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(CMSchemaCMClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 2)
  {
    v4 = &OBJC_IVAR___CMSchemaCMClientEvent__searchContext;
    goto LABEL_5;
  }

  if (whichEvent_Type == 3)
  {
    v4 = &OBJC_IVAR___CMSchemaCMClientEvent__insertContext;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  v3 = @"insertContext";
  if (tag != 3)
  {
    v3 = 0;
  }

  if (tag == 2)
  {
    return @"searchContext";
  }

  else
  {
    return v3;
  }
}

@end