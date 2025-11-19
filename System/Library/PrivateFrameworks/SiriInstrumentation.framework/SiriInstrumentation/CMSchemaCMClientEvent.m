@interface CMSchemaCMClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CMSchemaCMClientEvent)initWithDictionary:(id)a3;
- (CMSchemaCMClientEvent)initWithJSON:(id)a3;
- (CMSchemaCMInsertContext)insertContext;
- (CMSchemaCMSearchContext)searchContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteInsertContext;
- (void)deleteSearchContext;
- (void)setInsertContext:(id)a3;
- (void)setSearchContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CMSchemaCMClientEvent

- (CMSchemaCMClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CMSchemaCMClientEvent;
  v5 = [(CMSchemaCMClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CMSchemaCMClientEventMetadata alloc] initWithDictionary:v6];
      [(CMSchemaCMClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"searchContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CMSchemaCMSearchContext alloc] initWithDictionary:v8];
      [(CMSchemaCMClientEvent *)v5 setSearchContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"insertContext"];
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

- (CMSchemaCMClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CMSchemaCMClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CMSchemaCMClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    v4 = [(CMSchemaCMClientEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_insertContext)
  {
    v7 = [(CMSchemaCMClientEvent *)self insertContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"insertContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"insertContext"];
    }
  }

  if (self->_searchContext)
  {
    v10 = [(CMSchemaCMClientEvent *)self searchContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"searchContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"searchContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CMSchemaCMClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CMSchemaCMSearchContext *)self->_searchContext hash]^ v3;
  return v4 ^ [(CMSchemaCMInsertContext *)self->_insertContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_18;
  }

  v6 = [(CMSchemaCMClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(CMSchemaCMClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(CMSchemaCMClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(CMSchemaCMClientEvent *)self searchContext];
  v7 = [v4 searchContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(CMSchemaCMClientEvent *)self searchContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(CMSchemaCMClientEvent *)self searchContext];
    v16 = [v4 searchContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(CMSchemaCMClientEvent *)self insertContext];
  v7 = [v4 insertContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(CMSchemaCMClientEvent *)self insertContext];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(CMSchemaCMClientEvent *)self insertContext];
    v21 = [v4 insertContext];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(CMSchemaCMClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(CMSchemaCMClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CMSchemaCMClientEvent *)self searchContext];

  if (v6)
  {
    v7 = [(CMSchemaCMClientEvent *)self searchContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CMSchemaCMClientEvent *)self insertContext];

  v9 = v11;
  if (v8)
  {
    v10 = [(CMSchemaCMClientEvent *)self insertContext];
    PBDataWriterWriteSubmessage();

    v9 = v11;
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

- (void)setInsertContext:(id)a3
{
  v4 = a3;
  searchContext = self->_searchContext;
  self->_searchContext = 0;

  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  insertContext = self->_insertContext;
  self->_insertContext = v4;
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

- (void)setSearchContext:(id)a3
{
  v4 = a3;
  insertContext = self->_insertContext;
  self->_insertContext = 0;

  self->_whichEvent_Type = 2 * (v4 != 0);
  searchContext = self->_searchContext;
  self->_searchContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(CMSchemaCMClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.cm.CMClientEvent";
  if (v2 == 3)
  {
    v3 = @"com.apple.aiml.siri.cm.CMClientEvent.CMInsertContext";
  }

  if (v2 == 2)
  {
    return @"com.apple.aiml.siri.cm.CMClientEvent.CMSearchContext";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CMSchemaCMClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(CMSchemaCMClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CMSchemaCMClientEvent *)self deleteEventMetadata];
  }

  v9 = [(CMSchemaCMClientEvent *)self searchContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CMSchemaCMClientEvent *)self deleteSearchContext];
  }

  v12 = [(CMSchemaCMClientEvent *)self insertContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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
  v2 = [(CMSchemaCMClientEvent *)self eventMetadata];
  v3 = [v2 cmId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 47;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(CMSchemaCMClientEvent *)self eventMetadata];
  v3 = [v2 cmId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(CMSchemaCMClientEvent *)self whichEvent_Type];
  if (v3 == 2)
  {
    v4 = &OBJC_IVAR___CMSchemaCMClientEvent__searchContext;
    goto LABEL_5;
  }

  if (v3 == 3)
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

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  v3 = @"insertContext";
  if (a3 != 3)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return @"searchContext";
  }

  else
  {
    return v3;
  }
}

@end