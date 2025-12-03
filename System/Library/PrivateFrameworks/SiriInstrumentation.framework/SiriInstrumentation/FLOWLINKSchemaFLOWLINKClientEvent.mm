@interface FLOWLINKSchemaFLOWLINKClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKActionConfirmationContext)actionConfirmationContext;
- (FLOWLINKSchemaFLOWLINKActionContext)linkActionContext;
- (FLOWLINKSchemaFLOWLINKActionConversionContext)actionConversionContext;
- (FLOWLINKSchemaFLOWLINKActionExecutionContext)actionExecutionContext;
- (FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext)actionParameterConfirmationContext;
- (FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext)actionParameterDisambiguationContext;
- (FLOWLINKSchemaFLOWLINKActionParametersUpdated)actionParameterUpdated;
- (FLOWLINKSchemaFLOWLINKActionPromptForValueContext)actionPromptForValueContext;
- (FLOWLINKSchemaFLOWLINKActionTier1)linkActionTier1;
- (FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContext)appShortcutFirstRunConfirmationContext;
- (FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed)appShortcutGeneralizedExecutionUsed;
- (FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed)autoShortcutTemplateUsed;
- (FLOWLINKSchemaFLOWLINKClientEvent)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKClientEvent)initWithJSON:(id)n;
- (FLOWLINKSchemaFLOWLINKEntityDisambiguationContext)entityDisambiguationContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteActionConfirmationContext;
- (void)deleteActionConversionContext;
- (void)deleteActionExecutionContext;
- (void)deleteActionParameterConfirmationContext;
- (void)deleteActionParameterDisambiguationContext;
- (void)deleteActionParameterUpdated;
- (void)deleteActionPromptForValueContext;
- (void)deleteAppShortcutFirstRunConfirmationContext;
- (void)deleteAppShortcutGeneralizedExecutionUsed;
- (void)deleteAutoShortcutTemplateUsed;
- (void)deleteEntityDisambiguationContext;
- (void)deleteLinkActionContext;
- (void)deleteLinkActionTier1;
- (void)setActionConfirmationContext:(id)context;
- (void)setActionConversionContext:(id)context;
- (void)setActionExecutionContext:(id)context;
- (void)setActionParameterConfirmationContext:(id)context;
- (void)setActionParameterDisambiguationContext:(id)context;
- (void)setActionParameterUpdated:(id)updated;
- (void)setActionPromptForValueContext:(id)context;
- (void)setAppShortcutFirstRunConfirmationContext:(id)context;
- (void)setAppShortcutGeneralizedExecutionUsed:(id)used;
- (void)setAutoShortcutTemplateUsed:(id)used;
- (void)setEntityDisambiguationContext:(id)context;
- (void)setLinkActionContext:(id)context;
- (void)setLinkActionTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKClientEvent

- (FLOWLINKSchemaFLOWLINKClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = FLOWLINKSchemaFLOWLINKClientEvent;
  v5 = [(FLOWLINKSchemaFLOWLINKClientEvent *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWEventMetadata alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkActionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWLINKSchemaFLOWLINKActionContext alloc] initWithDictionary:v8];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setLinkActionContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entityDisambiguationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWLINKSchemaFLOWLINKEntityDisambiguationContext alloc] initWithDictionary:v10];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setEntityDisambiguationContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"actionConversionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[FLOWLINKSchemaFLOWLINKActionConversionContext alloc] initWithDictionary:v12];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setActionConversionContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"actionExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[FLOWLINKSchemaFLOWLINKActionExecutionContext alloc] initWithDictionary:v14];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setActionExecutionContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"actionPromptForValueContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWLINKSchemaFLOWLINKActionPromptForValueContext alloc] initWithDictionary:v16];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setActionPromptForValueContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"actionParameterDisambiguationContext"];
    objc_opt_class();
    v43 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext alloc] initWithDictionary:v18];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setActionParameterDisambiguationContext:v19];
    }

    v42 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"actionParameterConfirmationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext alloc] initWithDictionary:v20];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setActionParameterConfirmationContext:v21];
    }

    v37 = v20;
    v41 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"actionConfirmationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[FLOWLINKSchemaFLOWLINKActionConfirmationContext alloc] initWithDictionary:v22];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setActionConfirmationContext:v23];
    }

    v40 = v10;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"autoShortcutTemplateUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed alloc] initWithDictionary:v24];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setAutoShortcutTemplateUsed:v25];
    }

    v38 = v16;
    v39 = v12;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"linkActionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[FLOWLINKSchemaFLOWLINKActionTier1 alloc] initWithDictionary:v26];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setLinkActionTier1:v27];
    }

    v28 = v14;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"actionParameterUpdated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[FLOWLINKSchemaFLOWLINKActionParametersUpdated alloc] initWithDictionary:v29];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setActionParameterUpdated:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"appShortcutFirstRunConfirmationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContext alloc] initWithDictionary:v31];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setAppShortcutFirstRunConfirmationContext:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"appShortcutGeneralizedExecutionUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed alloc] initWithDictionary:v33];
      [(FLOWLINKSchemaFLOWLINKClientEvent *)v5 setAppShortcutGeneralizedExecutionUsed:v34];
    }

    v35 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKClientEvent *)self dictionaryRepresentation];
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
  if (self->_actionConfirmationContext)
  {
    actionConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConfirmationContext];
    dictionaryRepresentation = [actionConfirmationContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionConfirmationContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionConfirmationContext"];
    }
  }

  if (self->_actionConversionContext)
  {
    actionConversionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConversionContext];
    dictionaryRepresentation2 = [actionConversionContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"actionConversionContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"actionConversionContext"];
    }
  }

  if (self->_actionExecutionContext)
  {
    actionExecutionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionExecutionContext];
    dictionaryRepresentation3 = [actionExecutionContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"actionExecutionContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"actionExecutionContext"];
    }
  }

  if (self->_actionParameterConfirmationContext)
  {
    actionParameterConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterConfirmationContext];
    dictionaryRepresentation4 = [actionParameterConfirmationContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"actionParameterConfirmationContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"actionParameterConfirmationContext"];
    }
  }

  if (self->_actionParameterDisambiguationContext)
  {
    actionParameterDisambiguationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterDisambiguationContext];
    dictionaryRepresentation5 = [actionParameterDisambiguationContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"actionParameterDisambiguationContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"actionParameterDisambiguationContext"];
    }
  }

  if (self->_actionParameterUpdated)
  {
    actionParameterUpdated = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterUpdated];
    dictionaryRepresentation6 = [actionParameterUpdated dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"actionParameterUpdated"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"actionParameterUpdated"];
    }
  }

  if (self->_actionPromptForValueContext)
  {
    actionPromptForValueContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionPromptForValueContext];
    dictionaryRepresentation7 = [actionPromptForValueContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"actionPromptForValueContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"actionPromptForValueContext"];
    }
  }

  if (self->_appShortcutFirstRunConfirmationContext)
  {
    appShortcutFirstRunConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutFirstRunConfirmationContext];
    dictionaryRepresentation8 = [appShortcutFirstRunConfirmationContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"appShortcutFirstRunConfirmationContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"appShortcutFirstRunConfirmationContext"];
    }
  }

  if (self->_appShortcutGeneralizedExecutionUsed)
  {
    appShortcutGeneralizedExecutionUsed = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutGeneralizedExecutionUsed];
    dictionaryRepresentation9 = [appShortcutGeneralizedExecutionUsed dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"appShortcutGeneralizedExecutionUsed"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"appShortcutGeneralizedExecutionUsed"];
    }
  }

  if (self->_autoShortcutTemplateUsed)
  {
    autoShortcutTemplateUsed = [(FLOWLINKSchemaFLOWLINKClientEvent *)self autoShortcutTemplateUsed];
    dictionaryRepresentation10 = [autoShortcutTemplateUsed dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"autoShortcutTemplateUsed"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"autoShortcutTemplateUsed"];
    }
  }

  if (self->_entityDisambiguationContext)
  {
    entityDisambiguationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self entityDisambiguationContext];
    dictionaryRepresentation11 = [entityDisambiguationContext dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"entityDisambiguationContext"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"entityDisambiguationContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
    dictionaryRepresentation12 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_linkActionContext)
  {
    linkActionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionContext];
    dictionaryRepresentation13 = [linkActionContext dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"linkActionContext"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"linkActionContext"];
    }
  }

  if (self->_linkActionTier1)
  {
    linkActionTier1 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionTier1];
    dictionaryRepresentation14 = [linkActionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"linkActionTier1"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"linkActionTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(FLOWSchemaFLOWEventMetadata *)self->_eventMetadata hash];
  v4 = [(FLOWLINKSchemaFLOWLINKActionContext *)self->_linkActionContext hash]^ v3;
  v5 = [(FLOWLINKSchemaFLOWLINKEntityDisambiguationContext *)self->_entityDisambiguationContext hash];
  v6 = v4 ^ v5 ^ [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self->_actionConversionContext hash];
  v7 = [(FLOWLINKSchemaFLOWLINKActionExecutionContext *)self->_actionExecutionContext hash];
  v8 = v7 ^ [(FLOWLINKSchemaFLOWLINKActionPromptForValueContext *)self->_actionPromptForValueContext hash];
  v9 = v6 ^ v8 ^ [(FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext *)self->_actionParameterDisambiguationContext hash];
  v10 = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext *)self->_actionParameterConfirmationContext hash];
  v11 = v10 ^ [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self->_actionConfirmationContext hash];
  v12 = v11 ^ [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)self->_autoShortcutTemplateUsed hash];
  v13 = v9 ^ v12 ^ [(FLOWLINKSchemaFLOWLINKActionTier1 *)self->_linkActionTier1 hash];
  v14 = [(FLOWLINKSchemaFLOWLINKActionParametersUpdated *)self->_actionParameterUpdated hash];
  v15 = v14 ^ [(FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContext *)self->_appShortcutFirstRunConfirmationContext hash];
  return v13 ^ v15 ^ [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)self->_appShortcutGeneralizedExecutionUsed hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_73;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_73;
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  eventMetadata3 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionContext];
  eventMetadata2 = [equalCopy linkActionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  linkActionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionContext];
  if (linkActionContext)
  {
    v14 = linkActionContext;
    linkActionContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionContext];
    linkActionContext3 = [equalCopy linkActionContext];
    v17 = [linkActionContext2 isEqual:linkActionContext3];

    if (!v17)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self entityDisambiguationContext];
  eventMetadata2 = [equalCopy entityDisambiguationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  entityDisambiguationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self entityDisambiguationContext];
  if (entityDisambiguationContext)
  {
    v19 = entityDisambiguationContext;
    entityDisambiguationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self entityDisambiguationContext];
    entityDisambiguationContext3 = [equalCopy entityDisambiguationContext];
    v22 = [entityDisambiguationContext2 isEqual:entityDisambiguationContext3];

    if (!v22)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConversionContext];
  eventMetadata2 = [equalCopy actionConversionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  actionConversionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConversionContext];
  if (actionConversionContext)
  {
    v24 = actionConversionContext;
    actionConversionContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConversionContext];
    actionConversionContext3 = [equalCopy actionConversionContext];
    v27 = [actionConversionContext2 isEqual:actionConversionContext3];

    if (!v27)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionExecutionContext];
  eventMetadata2 = [equalCopy actionExecutionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  actionExecutionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionExecutionContext];
  if (actionExecutionContext)
  {
    v29 = actionExecutionContext;
    actionExecutionContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionExecutionContext];
    actionExecutionContext3 = [equalCopy actionExecutionContext];
    v32 = [actionExecutionContext2 isEqual:actionExecutionContext3];

    if (!v32)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionPromptForValueContext];
  eventMetadata2 = [equalCopy actionPromptForValueContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  actionPromptForValueContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionPromptForValueContext];
  if (actionPromptForValueContext)
  {
    v34 = actionPromptForValueContext;
    actionPromptForValueContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionPromptForValueContext];
    actionPromptForValueContext3 = [equalCopy actionPromptForValueContext];
    v37 = [actionPromptForValueContext2 isEqual:actionPromptForValueContext3];

    if (!v37)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterDisambiguationContext];
  eventMetadata2 = [equalCopy actionParameterDisambiguationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  actionParameterDisambiguationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterDisambiguationContext];
  if (actionParameterDisambiguationContext)
  {
    v39 = actionParameterDisambiguationContext;
    actionParameterDisambiguationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterDisambiguationContext];
    actionParameterDisambiguationContext3 = [equalCopy actionParameterDisambiguationContext];
    v42 = [actionParameterDisambiguationContext2 isEqual:actionParameterDisambiguationContext3];

    if (!v42)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterConfirmationContext];
  eventMetadata2 = [equalCopy actionParameterConfirmationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  actionParameterConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterConfirmationContext];
  if (actionParameterConfirmationContext)
  {
    v44 = actionParameterConfirmationContext;
    actionParameterConfirmationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterConfirmationContext];
    actionParameterConfirmationContext3 = [equalCopy actionParameterConfirmationContext];
    v47 = [actionParameterConfirmationContext2 isEqual:actionParameterConfirmationContext3];

    if (!v47)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConfirmationContext];
  eventMetadata2 = [equalCopy actionConfirmationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  actionConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConfirmationContext];
  if (actionConfirmationContext)
  {
    v49 = actionConfirmationContext;
    actionConfirmationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConfirmationContext];
    actionConfirmationContext3 = [equalCopy actionConfirmationContext];
    v52 = [actionConfirmationContext2 isEqual:actionConfirmationContext3];

    if (!v52)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self autoShortcutTemplateUsed];
  eventMetadata2 = [equalCopy autoShortcutTemplateUsed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  autoShortcutTemplateUsed = [(FLOWLINKSchemaFLOWLINKClientEvent *)self autoShortcutTemplateUsed];
  if (autoShortcutTemplateUsed)
  {
    v54 = autoShortcutTemplateUsed;
    autoShortcutTemplateUsed2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self autoShortcutTemplateUsed];
    autoShortcutTemplateUsed3 = [equalCopy autoShortcutTemplateUsed];
    v57 = [autoShortcutTemplateUsed2 isEqual:autoShortcutTemplateUsed3];

    if (!v57)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionTier1];
  eventMetadata2 = [equalCopy linkActionTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  linkActionTier1 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionTier1];
  if (linkActionTier1)
  {
    v59 = linkActionTier1;
    linkActionTier12 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionTier1];
    linkActionTier13 = [equalCopy linkActionTier1];
    v62 = [linkActionTier12 isEqual:linkActionTier13];

    if (!v62)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterUpdated];
  eventMetadata2 = [equalCopy actionParameterUpdated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  actionParameterUpdated = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterUpdated];
  if (actionParameterUpdated)
  {
    v64 = actionParameterUpdated;
    actionParameterUpdated2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterUpdated];
    actionParameterUpdated3 = [equalCopy actionParameterUpdated];
    v67 = [actionParameterUpdated2 isEqual:actionParameterUpdated3];

    if (!v67)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutFirstRunConfirmationContext];
  eventMetadata2 = [equalCopy appShortcutFirstRunConfirmationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  appShortcutFirstRunConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutFirstRunConfirmationContext];
  if (appShortcutFirstRunConfirmationContext)
  {
    v69 = appShortcutFirstRunConfirmationContext;
    appShortcutFirstRunConfirmationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutFirstRunConfirmationContext];
    appShortcutFirstRunConfirmationContext3 = [equalCopy appShortcutFirstRunConfirmationContext];
    v72 = [appShortcutFirstRunConfirmationContext2 isEqual:appShortcutFirstRunConfirmationContext3];

    if (!v72)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutGeneralizedExecutionUsed];
  eventMetadata2 = [equalCopy appShortcutGeneralizedExecutionUsed];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    appShortcutGeneralizedExecutionUsed = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutGeneralizedExecutionUsed];
    if (!appShortcutGeneralizedExecutionUsed)
    {

LABEL_76:
      v78 = 1;
      goto LABEL_74;
    }

    v74 = appShortcutGeneralizedExecutionUsed;
    appShortcutGeneralizedExecutionUsed2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutGeneralizedExecutionUsed];
    appShortcutGeneralizedExecutionUsed3 = [equalCopy appShortcutGeneralizedExecutionUsed];
    v77 = [appShortcutGeneralizedExecutionUsed2 isEqual:appShortcutGeneralizedExecutionUsed3];

    if (v77)
    {
      goto LABEL_76;
    }
  }

  else
  {
LABEL_72:
  }

LABEL_73:
  v78 = 0;
LABEL_74:

  return v78;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  linkActionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionContext];

  if (linkActionContext)
  {
    linkActionContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionContext];
    PBDataWriterWriteSubmessage();
  }

  entityDisambiguationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self entityDisambiguationContext];

  if (entityDisambiguationContext)
  {
    entityDisambiguationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self entityDisambiguationContext];
    PBDataWriterWriteSubmessage();
  }

  actionConversionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConversionContext];

  if (actionConversionContext)
  {
    actionConversionContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConversionContext];
    PBDataWriterWriteSubmessage();
  }

  actionExecutionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionExecutionContext];

  if (actionExecutionContext)
  {
    actionExecutionContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  actionPromptForValueContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionPromptForValueContext];

  if (actionPromptForValueContext)
  {
    actionPromptForValueContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionPromptForValueContext];
    PBDataWriterWriteSubmessage();
  }

  actionParameterDisambiguationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterDisambiguationContext];

  if (actionParameterDisambiguationContext)
  {
    actionParameterDisambiguationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterDisambiguationContext];
    PBDataWriterWriteSubmessage();
  }

  actionParameterConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterConfirmationContext];

  if (actionParameterConfirmationContext)
  {
    actionParameterConfirmationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterConfirmationContext];
    PBDataWriterWriteSubmessage();
  }

  actionConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConfirmationContext];

  if (actionConfirmationContext)
  {
    actionConfirmationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConfirmationContext];
    PBDataWriterWriteSubmessage();
  }

  autoShortcutTemplateUsed = [(FLOWLINKSchemaFLOWLINKClientEvent *)self autoShortcutTemplateUsed];

  if (autoShortcutTemplateUsed)
  {
    autoShortcutTemplateUsed2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self autoShortcutTemplateUsed];
    PBDataWriterWriteSubmessage();
  }

  linkActionTier1 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionTier1];

  if (linkActionTier1)
  {
    linkActionTier12 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionTier1];
    PBDataWriterWriteSubmessage();
  }

  actionParameterUpdated = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterUpdated];

  if (actionParameterUpdated)
  {
    actionParameterUpdated2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterUpdated];
    PBDataWriterWriteSubmessage();
  }

  appShortcutFirstRunConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutFirstRunConfirmationContext];

  if (appShortcutFirstRunConfirmationContext)
  {
    appShortcutFirstRunConfirmationContext2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutFirstRunConfirmationContext];
    PBDataWriterWriteSubmessage();
  }

  appShortcutGeneralizedExecutionUsed = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutGeneralizedExecutionUsed];

  v31 = toCopy;
  if (appShortcutGeneralizedExecutionUsed)
  {
    appShortcutGeneralizedExecutionUsed2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutGeneralizedExecutionUsed];
    PBDataWriterWriteSubmessage();

    v31 = toCopy;
  }
}

- (void)deleteAppShortcutGeneralizedExecutionUsed
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_appShortcutGeneralizedExecutionUsed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed)appShortcutGeneralizedExecutionUsed
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_appShortcutGeneralizedExecutionUsed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppShortcutGeneralizedExecutionUsed:(id)used
{
  usedCopy = used;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  v17 = 112;
  if (!usedCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = usedCopy;
}

- (void)deleteAppShortcutFirstRunConfirmationContext
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_appShortcutFirstRunConfirmationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKAppShortcutFirstRunConfirmationContext)appShortcutFirstRunConfirmationContext
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_appShortcutFirstRunConfirmationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAppShortcutFirstRunConfirmationContext:(id)context
{
  contextCopy = context;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 111;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = contextCopy;
}

- (void)deleteActionParameterUpdated
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_actionParameterUpdated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionParametersUpdated)actionParameterUpdated
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_actionParameterUpdated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionParameterUpdated:(id)updated
{
  updatedCopy = updated;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 110;
  if (!updatedCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = updatedCopy;
}

- (void)deleteLinkActionTier1
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_linkActionTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionTier1)linkActionTier1
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_linkActionTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLinkActionTier1:(id)tier1
{
  tier1Copy = tier1;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 109;
  if (!tier1Copy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = tier1Copy;
}

- (void)deleteAutoShortcutTemplateUsed
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_autoShortcutTemplateUsed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed)autoShortcutTemplateUsed
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_autoShortcutTemplateUsed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAutoShortcutTemplateUsed:(id)used
{
  usedCopy = used;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 108;
  if (!usedCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = usedCopy;
}

- (void)deleteActionConfirmationContext
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_actionConfirmationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionConfirmationContext)actionConfirmationContext
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_actionConfirmationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionConfirmationContext:(id)context
{
  contextCopy = context;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 107;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = contextCopy;
}

- (void)deleteActionParameterConfirmationContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_actionParameterConfirmationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionParameterConfirmationContext)actionParameterConfirmationContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_actionParameterConfirmationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionParameterConfirmationContext:(id)context
{
  contextCopy = context;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 106;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = contextCopy;
}

- (void)deleteActionParameterDisambiguationContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_actionParameterDisambiguationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionParameterDisambiguationContext)actionParameterDisambiguationContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_actionParameterDisambiguationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionParameterDisambiguationContext:(id)context
{
  contextCopy = context;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 105;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = contextCopy;
}

- (void)deleteActionPromptForValueContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_actionPromptForValueContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionPromptForValueContext)actionPromptForValueContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_actionPromptForValueContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionPromptForValueContext:(id)context
{
  contextCopy = context;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 104;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = contextCopy;
}

- (void)deleteActionExecutionContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_actionExecutionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionExecutionContext)actionExecutionContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_actionExecutionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionExecutionContext:(id)context
{
  contextCopy = context;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 103;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = contextCopy;
}

- (void)deleteActionConversionContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_actionConversionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionConversionContext)actionConversionContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_actionConversionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionConversionContext:(id)context
{
  contextCopy = context;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 102;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = contextCopy;
}

- (void)deleteEntityDisambiguationContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_entityDisambiguationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKEntityDisambiguationContext)entityDisambiguationContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_entityDisambiguationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntityDisambiguationContext:(id)context
{
  contextCopy = context;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 101;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = contextCopy;
}

- (void)deleteLinkActionContext
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_linkActionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWLINKSchemaFLOWLINKActionContext)linkActionContext
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_linkActionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLinkActionContext:(id)context
{
  contextCopy = context;
  entityDisambiguationContext = self->_entityDisambiguationContext;
  self->_entityDisambiguationContext = 0;

  actionConversionContext = self->_actionConversionContext;
  self->_actionConversionContext = 0;

  actionExecutionContext = self->_actionExecutionContext;
  self->_actionExecutionContext = 0;

  actionPromptForValueContext = self->_actionPromptForValueContext;
  self->_actionPromptForValueContext = 0;

  actionParameterDisambiguationContext = self->_actionParameterDisambiguationContext;
  self->_actionParameterDisambiguationContext = 0;

  actionParameterConfirmationContext = self->_actionParameterConfirmationContext;
  self->_actionParameterConfirmationContext = 0;

  actionConfirmationContext = self->_actionConfirmationContext;
  self->_actionConfirmationContext = 0;

  autoShortcutTemplateUsed = self->_autoShortcutTemplateUsed;
  self->_autoShortcutTemplateUsed = 0;

  linkActionTier1 = self->_linkActionTier1;
  self->_linkActionTier1 = 0;

  actionParameterUpdated = self->_actionParameterUpdated;
  self->_actionParameterUpdated = 0;

  appShortcutFirstRunConfirmationContext = self->_appShortcutFirstRunConfirmationContext;
  self->_appShortcutFirstRunConfirmationContext = 0;

  appShortcutGeneralizedExecutionUsed = self->_appShortcutGeneralizedExecutionUsed;
  self->_appShortcutGeneralizedExecutionUsed = 0;

  v17 = 100;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  linkActionContext = self->_linkActionContext;
  self->_linkActionContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(FLOWLINKSchemaFLOWLINKClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 100 > 0xC)
  {
    return @"com.apple.aiml.siri.flow.link.FLOWLINKClientEvent";
  }

  else
  {
    return off_1E78D4E50[whichEvent_Type - 100];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v49.receiver = self;
  v49.super_class = FLOWLINKSchemaFLOWLINKClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v49 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteEventMetadata];
  }

  linkActionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionContext];
  v10 = [linkActionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteLinkActionContext];
  }

  entityDisambiguationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self entityDisambiguationContext];
  v13 = [entityDisambiguationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteEntityDisambiguationContext];
  }

  actionConversionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConversionContext];
  v16 = [actionConversionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteActionConversionContext];
  }

  actionExecutionContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionExecutionContext];
  v19 = [actionExecutionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteActionExecutionContext];
  }

  actionPromptForValueContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionPromptForValueContext];
  v22 = [actionPromptForValueContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteActionPromptForValueContext];
  }

  actionParameterDisambiguationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterDisambiguationContext];
  v25 = [actionParameterDisambiguationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteActionParameterDisambiguationContext];
  }

  actionParameterConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterConfirmationContext];
  v28 = [actionParameterConfirmationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteActionParameterConfirmationContext];
  }

  actionConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionConfirmationContext];
  v31 = [actionConfirmationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteActionConfirmationContext];
  }

  autoShortcutTemplateUsed = [(FLOWLINKSchemaFLOWLINKClientEvent *)self autoShortcutTemplateUsed];
  v34 = [autoShortcutTemplateUsed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteAutoShortcutTemplateUsed];
  }

  linkActionTier1 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self linkActionTier1];
  v37 = [linkActionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteLinkActionTier1];
  }

  actionParameterUpdated = [(FLOWLINKSchemaFLOWLINKClientEvent *)self actionParameterUpdated];
  v40 = [actionParameterUpdated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteActionParameterUpdated];
  }

  appShortcutFirstRunConfirmationContext = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutFirstRunConfirmationContext];
  v43 = [appShortcutFirstRunConfirmationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteAppShortcutFirstRunConfirmationContext];
  }

  appShortcutGeneralizedExecutionUsed = [(FLOWLINKSchemaFLOWLINKClientEvent *)self appShortcutGeneralizedExecutionUsed];
  v46 = [appShortcutGeneralizedExecutionUsed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(FLOWLINKSchemaFLOWLINKClientEvent *)self deleteAppShortcutGeneralizedExecutionUsed];
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
  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
  flowId = [eventMetadata flowId];

  if (flowId && ([flowId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(flowId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 3;
  }

  else
  {
    eventMetadata2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      flowId = requestId;
    }

    else
    {
      eventMetadata3 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
      flowId = [eventMetadata3 subRequestId];

      if (flowId)
      {
        value = [flowId value];
        if (value)
        {
          value2 = [flowId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
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
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
  flowId = [eventMetadata flowId];

  if (flowId)
  {
    value = [flowId value];
    if (value)
    {
      v6 = value;
      value2 = [flowId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        flowId = requestId;
LABEL_11:
        value5 = flowId;
        flowId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(FLOWLINKSchemaFLOWLINKClientEvent *)self eventMetadata];
  flowId = [eventMetadata3 subRequestId];

  if (flowId)
  {
    value5 = [flowId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [flowId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(FLOWLINKSchemaFLOWLINKClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 100 > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9748[whichEvent_Type - 100]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 100 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E78E97B0[tag - 100];
  }
}

@end