@interface GATSchemaGATClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATClientEvent)initWithDictionary:(id)dictionary;
- (GATSchemaGATClientEvent)initWithJSON:(id)n;
- (GATSchemaGATConfirmationSnippetPresented)confirmationSnippetPresented;
- (GATSchemaGATConfirmationSnippetUserActionEvent)confirmationSnippetUserAction;
- (GATSchemaGATConfirmationSnippetUserActioned)confirmationSnippetUserActioned;
- (GATSchemaGATCreateSessionContext)createSessionContext;
- (GATSchemaGATGenerativeRequestContext)generativeRequestContext;
- (GATSchemaGATImageResizingContext)imageResizingContext;
- (GATSchemaGATLoadScreenContentContext)loadScreenContentContext;
- (GATSchemaGATModelAgentCaptured)modelAgentCaptured;
- (GATSchemaGATNotForMeResponseReturned)notForMeResponseReturned;
- (GATSchemaGATPresentConfirmationSnippetEvent)confirmationSnippet;
- (GATSchemaGATRegisterMediaContext)registerMediaContext;
- (GATSchemaGATRequestContext)requestContext;
- (GATSchemaGATRichFormatResponseMetadataCaptured)responseMetadataCaptured;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteConfirmationSnippet;
- (void)deleteConfirmationSnippetPresented;
- (void)deleteConfirmationSnippetUserAction;
- (void)deleteConfirmationSnippetUserActioned;
- (void)deleteCreateSessionContext;
- (void)deleteGenerativeRequestContext;
- (void)deleteImageResizingContext;
- (void)deleteLoadScreenContentContext;
- (void)deleteModelAgentCaptured;
- (void)deleteNotForMeResponseReturned;
- (void)deleteRegisterMediaContext;
- (void)deleteRequestContext;
- (void)deleteResponseMetadataCaptured;
- (void)setConfirmationSnippet:(id)snippet;
- (void)setConfirmationSnippetPresented:(id)presented;
- (void)setConfirmationSnippetUserAction:(id)action;
- (void)setConfirmationSnippetUserActioned:(id)actioned;
- (void)setCreateSessionContext:(id)context;
- (void)setGenerativeRequestContext:(id)context;
- (void)setImageResizingContext:(id)context;
- (void)setLoadScreenContentContext:(id)context;
- (void)setModelAgentCaptured:(id)captured;
- (void)setNotForMeResponseReturned:(id)returned;
- (void)setRegisterMediaContext:(id)context;
- (void)setRequestContext:(id)context;
- (void)setResponseMetadataCaptured:(id)captured;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATClientEvent

- (GATSchemaGATClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = GATSchemaGATClientEvent;
  v5 = [(GATSchemaGATClientEvent *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GATSchemaGATClientEventMetadata alloc] initWithDictionary:v6];
      [(GATSchemaGATClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATRequestContext alloc] initWithDictionary:v8];
      [(GATSchemaGATClientEvent *)v5 setRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"loadScreenContentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GATSchemaGATLoadScreenContentContext alloc] initWithDictionary:v10];
      [(GATSchemaGATClientEvent *)v5 setLoadScreenContentContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"createSessionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[GATSchemaGATCreateSessionContext alloc] initWithDictionary:v12];
      [(GATSchemaGATClientEvent *)v5 setCreateSessionContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"generativeRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[GATSchemaGATGenerativeRequestContext alloc] initWithDictionary:v14];
      [(GATSchemaGATClientEvent *)v5 setGenerativeRequestContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"imageResizingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[GATSchemaGATImageResizingContext alloc] initWithDictionary:v16];
      [(GATSchemaGATClientEvent *)v5 setImageResizingContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"registerMediaContext"];
    objc_opt_class();
    v43 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[GATSchemaGATRegisterMediaContext alloc] initWithDictionary:v18];
      [(GATSchemaGATClientEvent *)v5 setRegisterMediaContext:v19];
    }

    v42 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"confirmationSnippet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[GATSchemaGATPresentConfirmationSnippetEvent alloc] initWithDictionary:v20];
      [(GATSchemaGATClientEvent *)v5 setConfirmationSnippet:v21];
    }

    v37 = v20;
    v41 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"confirmationSnippetUserAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[GATSchemaGATConfirmationSnippetUserActionEvent alloc] initWithDictionary:v22];
      [(GATSchemaGATClientEvent *)v5 setConfirmationSnippetUserAction:v23];
    }

    v40 = v10;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"confirmationSnippetPresented"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[GATSchemaGATConfirmationSnippetPresented alloc] initWithDictionary:v24];
      [(GATSchemaGATClientEvent *)v5 setConfirmationSnippetPresented:v25];
    }

    v38 = v16;
    v39 = v12;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"confirmationSnippetUserActioned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[GATSchemaGATConfirmationSnippetUserActioned alloc] initWithDictionary:v26];
      [(GATSchemaGATClientEvent *)v5 setConfirmationSnippetUserActioned:v27];
    }

    v28 = v14;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"notForMeResponseReturned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[GATSchemaGATNotForMeResponseReturned alloc] initWithDictionary:v29];
      [(GATSchemaGATClientEvent *)v5 setNotForMeResponseReturned:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"modelAgentCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[GATSchemaGATModelAgentCaptured alloc] initWithDictionary:v31];
      [(GATSchemaGATClientEvent *)v5 setModelAgentCaptured:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"responseMetadataCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[GATSchemaGATRichFormatResponseMetadataCaptured alloc] initWithDictionary:v33];
      [(GATSchemaGATClientEvent *)v5 setResponseMetadataCaptured:v34];
    }

    v35 = v5;
  }

  return v5;
}

- (GATSchemaGATClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATClientEvent *)self dictionaryRepresentation];
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
  if (self->_confirmationSnippet)
  {
    confirmationSnippet = [(GATSchemaGATClientEvent *)self confirmationSnippet];
    dictionaryRepresentation = [confirmationSnippet dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"confirmationSnippet"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"confirmationSnippet"];
    }
  }

  if (self->_confirmationSnippetPresented)
  {
    confirmationSnippetPresented = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
    dictionaryRepresentation2 = [confirmationSnippetPresented dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"confirmationSnippetPresented"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"confirmationSnippetPresented"];
    }
  }

  if (self->_confirmationSnippetUserAction)
  {
    confirmationSnippetUserAction = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
    dictionaryRepresentation3 = [confirmationSnippetUserAction dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"confirmationSnippetUserAction"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"confirmationSnippetUserAction"];
    }
  }

  if (self->_confirmationSnippetUserActioned)
  {
    confirmationSnippetUserActioned = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
    dictionaryRepresentation4 = [confirmationSnippetUserActioned dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"confirmationSnippetUserActioned"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"confirmationSnippetUserActioned"];
    }
  }

  if (self->_createSessionContext)
  {
    createSessionContext = [(GATSchemaGATClientEvent *)self createSessionContext];
    dictionaryRepresentation5 = [createSessionContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"createSessionContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"createSessionContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(GATSchemaGATClientEvent *)self eventMetadata];
    dictionaryRepresentation6 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_generativeRequestContext)
  {
    generativeRequestContext = [(GATSchemaGATClientEvent *)self generativeRequestContext];
    dictionaryRepresentation7 = [generativeRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"generativeRequestContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"generativeRequestContext"];
    }
  }

  if (self->_imageResizingContext)
  {
    imageResizingContext = [(GATSchemaGATClientEvent *)self imageResizingContext];
    dictionaryRepresentation8 = [imageResizingContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"imageResizingContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"imageResizingContext"];
    }
  }

  if (self->_loadScreenContentContext)
  {
    loadScreenContentContext = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
    dictionaryRepresentation9 = [loadScreenContentContext dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"loadScreenContentContext"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"loadScreenContentContext"];
    }
  }

  if (self->_modelAgentCaptured)
  {
    modelAgentCaptured = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
    dictionaryRepresentation10 = [modelAgentCaptured dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"modelAgentCaptured"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"modelAgentCaptured"];
    }
  }

  if (self->_notForMeResponseReturned)
  {
    notForMeResponseReturned = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
    dictionaryRepresentation11 = [notForMeResponseReturned dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"notForMeResponseReturned"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"notForMeResponseReturned"];
    }
  }

  if (self->_registerMediaContext)
  {
    registerMediaContext = [(GATSchemaGATClientEvent *)self registerMediaContext];
    dictionaryRepresentation12 = [registerMediaContext dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"registerMediaContext"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"registerMediaContext"];
    }
  }

  if (self->_requestContext)
  {
    requestContext = [(GATSchemaGATClientEvent *)self requestContext];
    dictionaryRepresentation13 = [requestContext dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_responseMetadataCaptured)
  {
    responseMetadataCaptured = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
    dictionaryRepresentation14 = [responseMetadataCaptured dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"responseMetadataCaptured"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"responseMetadataCaptured"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GATSchemaGATClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(GATSchemaGATRequestContext *)self->_requestContext hash]^ v3;
  v5 = [(GATSchemaGATLoadScreenContentContext *)self->_loadScreenContentContext hash];
  v6 = v4 ^ v5 ^ [(GATSchemaGATCreateSessionContext *)self->_createSessionContext hash];
  v7 = [(GATSchemaGATGenerativeRequestContext *)self->_generativeRequestContext hash];
  v8 = v7 ^ [(GATSchemaGATImageResizingContext *)self->_imageResizingContext hash];
  v9 = v6 ^ v8 ^ [(GATSchemaGATRegisterMediaContext *)self->_registerMediaContext hash];
  v10 = [(GATSchemaGATPresentConfirmationSnippetEvent *)self->_confirmationSnippet hash];
  v11 = v10 ^ [(GATSchemaGATConfirmationSnippetUserActionEvent *)self->_confirmationSnippetUserAction hash];
  v12 = v11 ^ [(GATSchemaGATConfirmationSnippetPresented *)self->_confirmationSnippetPresented hash];
  v13 = v9 ^ v12 ^ [(GATSchemaGATConfirmationSnippetUserActioned *)self->_confirmationSnippetUserActioned hash];
  v14 = [(GATSchemaGATNotForMeResponseReturned *)self->_notForMeResponseReturned hash];
  v15 = v14 ^ [(GATSchemaGATModelAgentCaptured *)self->_modelAgentCaptured hash];
  return v13 ^ v15 ^ [(GATSchemaGATRichFormatResponseMetadataCaptured *)self->_responseMetadataCaptured hash];
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

  eventMetadata = [(GATSchemaGATClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  eventMetadata3 = [(GATSchemaGATClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(GATSchemaGATClientEvent *)self eventMetadata];
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

  eventMetadata = [(GATSchemaGATClientEvent *)self requestContext];
  eventMetadata2 = [equalCopy requestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  requestContext = [(GATSchemaGATClientEvent *)self requestContext];
  if (requestContext)
  {
    v14 = requestContext;
    requestContext2 = [(GATSchemaGATClientEvent *)self requestContext];
    requestContext3 = [equalCopy requestContext];
    v17 = [requestContext2 isEqual:requestContext3];

    if (!v17)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
  eventMetadata2 = [equalCopy loadScreenContentContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  loadScreenContentContext = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
  if (loadScreenContentContext)
  {
    v19 = loadScreenContentContext;
    loadScreenContentContext2 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
    loadScreenContentContext3 = [equalCopy loadScreenContentContext];
    v22 = [loadScreenContentContext2 isEqual:loadScreenContentContext3];

    if (!v22)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self createSessionContext];
  eventMetadata2 = [equalCopy createSessionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  createSessionContext = [(GATSchemaGATClientEvent *)self createSessionContext];
  if (createSessionContext)
  {
    v24 = createSessionContext;
    createSessionContext2 = [(GATSchemaGATClientEvent *)self createSessionContext];
    createSessionContext3 = [equalCopy createSessionContext];
    v27 = [createSessionContext2 isEqual:createSessionContext3];

    if (!v27)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self generativeRequestContext];
  eventMetadata2 = [equalCopy generativeRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  generativeRequestContext = [(GATSchemaGATClientEvent *)self generativeRequestContext];
  if (generativeRequestContext)
  {
    v29 = generativeRequestContext;
    generativeRequestContext2 = [(GATSchemaGATClientEvent *)self generativeRequestContext];
    generativeRequestContext3 = [equalCopy generativeRequestContext];
    v32 = [generativeRequestContext2 isEqual:generativeRequestContext3];

    if (!v32)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self imageResizingContext];
  eventMetadata2 = [equalCopy imageResizingContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  imageResizingContext = [(GATSchemaGATClientEvent *)self imageResizingContext];
  if (imageResizingContext)
  {
    v34 = imageResizingContext;
    imageResizingContext2 = [(GATSchemaGATClientEvent *)self imageResizingContext];
    imageResizingContext3 = [equalCopy imageResizingContext];
    v37 = [imageResizingContext2 isEqual:imageResizingContext3];

    if (!v37)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self registerMediaContext];
  eventMetadata2 = [equalCopy registerMediaContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  registerMediaContext = [(GATSchemaGATClientEvent *)self registerMediaContext];
  if (registerMediaContext)
  {
    v39 = registerMediaContext;
    registerMediaContext2 = [(GATSchemaGATClientEvent *)self registerMediaContext];
    registerMediaContext3 = [equalCopy registerMediaContext];
    v42 = [registerMediaContext2 isEqual:registerMediaContext3];

    if (!v42)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self confirmationSnippet];
  eventMetadata2 = [equalCopy confirmationSnippet];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  confirmationSnippet = [(GATSchemaGATClientEvent *)self confirmationSnippet];
  if (confirmationSnippet)
  {
    v44 = confirmationSnippet;
    confirmationSnippet2 = [(GATSchemaGATClientEvent *)self confirmationSnippet];
    confirmationSnippet3 = [equalCopy confirmationSnippet];
    v47 = [confirmationSnippet2 isEqual:confirmationSnippet3];

    if (!v47)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
  eventMetadata2 = [equalCopy confirmationSnippetUserAction];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  confirmationSnippetUserAction = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
  if (confirmationSnippetUserAction)
  {
    v49 = confirmationSnippetUserAction;
    confirmationSnippetUserAction2 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
    confirmationSnippetUserAction3 = [equalCopy confirmationSnippetUserAction];
    v52 = [confirmationSnippetUserAction2 isEqual:confirmationSnippetUserAction3];

    if (!v52)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
  eventMetadata2 = [equalCopy confirmationSnippetPresented];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  confirmationSnippetPresented = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
  if (confirmationSnippetPresented)
  {
    v54 = confirmationSnippetPresented;
    confirmationSnippetPresented2 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
    confirmationSnippetPresented3 = [equalCopy confirmationSnippetPresented];
    v57 = [confirmationSnippetPresented2 isEqual:confirmationSnippetPresented3];

    if (!v57)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
  eventMetadata2 = [equalCopy confirmationSnippetUserActioned];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  confirmationSnippetUserActioned = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
  if (confirmationSnippetUserActioned)
  {
    v59 = confirmationSnippetUserActioned;
    confirmationSnippetUserActioned2 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
    confirmationSnippetUserActioned3 = [equalCopy confirmationSnippetUserActioned];
    v62 = [confirmationSnippetUserActioned2 isEqual:confirmationSnippetUserActioned3];

    if (!v62)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
  eventMetadata2 = [equalCopy notForMeResponseReturned];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  notForMeResponseReturned = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
  if (notForMeResponseReturned)
  {
    v64 = notForMeResponseReturned;
    notForMeResponseReturned2 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
    notForMeResponseReturned3 = [equalCopy notForMeResponseReturned];
    v67 = [notForMeResponseReturned2 isEqual:notForMeResponseReturned3];

    if (!v67)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
  eventMetadata2 = [equalCopy modelAgentCaptured];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_72;
  }

  modelAgentCaptured = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
  if (modelAgentCaptured)
  {
    v69 = modelAgentCaptured;
    modelAgentCaptured2 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
    modelAgentCaptured3 = [equalCopy modelAgentCaptured];
    v72 = [modelAgentCaptured2 isEqual:modelAgentCaptured3];

    if (!v72)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  eventMetadata = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
  eventMetadata2 = [equalCopy responseMetadataCaptured];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    responseMetadataCaptured = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
    if (!responseMetadataCaptured)
    {

LABEL_76:
      v78 = 1;
      goto LABEL_74;
    }

    v74 = responseMetadataCaptured;
    responseMetadataCaptured2 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
    responseMetadataCaptured3 = [equalCopy responseMetadataCaptured];
    v77 = [responseMetadataCaptured2 isEqual:responseMetadataCaptured3];

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
  eventMetadata = [(GATSchemaGATClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(GATSchemaGATClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  requestContext = [(GATSchemaGATClientEvent *)self requestContext];

  if (requestContext)
  {
    requestContext2 = [(GATSchemaGATClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  loadScreenContentContext = [(GATSchemaGATClientEvent *)self loadScreenContentContext];

  if (loadScreenContentContext)
  {
    loadScreenContentContext2 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
    PBDataWriterWriteSubmessage();
  }

  createSessionContext = [(GATSchemaGATClientEvent *)self createSessionContext];

  if (createSessionContext)
  {
    createSessionContext2 = [(GATSchemaGATClientEvent *)self createSessionContext];
    PBDataWriterWriteSubmessage();
  }

  generativeRequestContext = [(GATSchemaGATClientEvent *)self generativeRequestContext];

  if (generativeRequestContext)
  {
    generativeRequestContext2 = [(GATSchemaGATClientEvent *)self generativeRequestContext];
    PBDataWriterWriteSubmessage();
  }

  imageResizingContext = [(GATSchemaGATClientEvent *)self imageResizingContext];

  if (imageResizingContext)
  {
    imageResizingContext2 = [(GATSchemaGATClientEvent *)self imageResizingContext];
    PBDataWriterWriteSubmessage();
  }

  registerMediaContext = [(GATSchemaGATClientEvent *)self registerMediaContext];

  if (registerMediaContext)
  {
    registerMediaContext2 = [(GATSchemaGATClientEvent *)self registerMediaContext];
    PBDataWriterWriteSubmessage();
  }

  confirmationSnippet = [(GATSchemaGATClientEvent *)self confirmationSnippet];

  if (confirmationSnippet)
  {
    confirmationSnippet2 = [(GATSchemaGATClientEvent *)self confirmationSnippet];
    PBDataWriterWriteSubmessage();
  }

  confirmationSnippetUserAction = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];

  if (confirmationSnippetUserAction)
  {
    confirmationSnippetUserAction2 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
    PBDataWriterWriteSubmessage();
  }

  confirmationSnippetPresented = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];

  if (confirmationSnippetPresented)
  {
    confirmationSnippetPresented2 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
    PBDataWriterWriteSubmessage();
  }

  confirmationSnippetUserActioned = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];

  if (confirmationSnippetUserActioned)
  {
    confirmationSnippetUserActioned2 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
    PBDataWriterWriteSubmessage();
  }

  notForMeResponseReturned = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];

  if (notForMeResponseReturned)
  {
    notForMeResponseReturned2 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
    PBDataWriterWriteSubmessage();
  }

  modelAgentCaptured = [(GATSchemaGATClientEvent *)self modelAgentCaptured];

  if (modelAgentCaptured)
  {
    modelAgentCaptured2 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
    PBDataWriterWriteSubmessage();
  }

  responseMetadataCaptured = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];

  v31 = toCopy;
  if (responseMetadataCaptured)
  {
    responseMetadataCaptured2 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
    PBDataWriterWriteSubmessage();

    v31 = toCopy;
  }
}

- (void)deleteResponseMetadataCaptured
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_responseMetadataCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRichFormatResponseMetadataCaptured)responseMetadataCaptured
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_responseMetadataCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResponseMetadataCaptured:(id)captured
{
  capturedCopy = captured;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  v17 = 113;
  if (!capturedCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = capturedCopy;
}

- (void)deleteModelAgentCaptured
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_modelAgentCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATModelAgentCaptured)modelAgentCaptured
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_modelAgentCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setModelAgentCaptured:(id)captured
{
  capturedCopy = captured;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 112;
  if (!capturedCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = capturedCopy;
}

- (void)deleteNotForMeResponseReturned
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_notForMeResponseReturned = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATNotForMeResponseReturned)notForMeResponseReturned
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_notForMeResponseReturned;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNotForMeResponseReturned:(id)returned
{
  returnedCopy = returned;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 111;
  if (!returnedCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = returnedCopy;
}

- (void)deleteConfirmationSnippetUserActioned
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_confirmationSnippetUserActioned = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATConfirmationSnippetUserActioned)confirmationSnippetUserActioned
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_confirmationSnippetUserActioned;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConfirmationSnippetUserActioned:(id)actioned
{
  actionedCopy = actioned;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 110;
  if (!actionedCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = actionedCopy;
}

- (void)deleteConfirmationSnippetPresented
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_confirmationSnippetPresented = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATConfirmationSnippetPresented)confirmationSnippetPresented
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_confirmationSnippetPresented;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConfirmationSnippetPresented:(id)presented
{
  presentedCopy = presented;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 109;
  if (!presentedCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = presentedCopy;
}

- (void)deleteConfirmationSnippetUserAction
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_confirmationSnippetUserAction = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATConfirmationSnippetUserActionEvent)confirmationSnippetUserAction
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_confirmationSnippetUserAction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConfirmationSnippetUserAction:(id)action
{
  actionCopy = action;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 108;
  if (!actionCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = actionCopy;
}

- (void)deleteConfirmationSnippet
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_confirmationSnippet = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATPresentConfirmationSnippetEvent)confirmationSnippet
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_confirmationSnippet;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConfirmationSnippet:(id)snippet
{
  snippetCopy = snippet;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 107;
  if (!snippetCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = snippetCopy;
}

- (void)deleteRegisterMediaContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_registerMediaContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRegisterMediaContext)registerMediaContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_registerMediaContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRegisterMediaContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 106;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = contextCopy;
}

- (void)deleteImageResizingContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_imageResizingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATImageResizingContext)imageResizingContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_imageResizingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImageResizingContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 105;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = contextCopy;
}

- (void)deleteGenerativeRequestContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_generativeRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATGenerativeRequestContext)generativeRequestContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_generativeRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGenerativeRequestContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 104;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = contextCopy;
}

- (void)deleteCreateSessionContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_createSessionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATCreateSessionContext)createSessionContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_createSessionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCreateSessionContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 103;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = contextCopy;
}

- (void)deleteLoadScreenContentContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_loadScreenContentContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATLoadScreenContentContext)loadScreenContentContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_loadScreenContentContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLoadScreenContentContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 102;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = contextCopy;
}

- (void)deleteRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_requestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GATSchemaGATRequestContext)requestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_requestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestContext:(id)context
{
  contextCopy = context;
  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = 0;

  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = 0;

  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = 0;

  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = 0;

  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = 0;

  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = 0;

  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = 0;

  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = 0;

  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = 0;

  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = 0;

  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = 0;

  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = 0;

  v17 = 101;
  if (!contextCopy)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  requestContext = self->_requestContext;
  self->_requestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(GATSchemaGATClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0xC)
  {
    return @"com.apple.aiml.siri.gat.GATClientEvent";
  }

  else
  {
    return off_1E78D6F18[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v49.receiver = self;
  v49.super_class = GATSchemaGATClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v49 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(GATSchemaGATClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GATSchemaGATClientEvent *)self deleteEventMetadata];
  }

  requestContext = [(GATSchemaGATClientEvent *)self requestContext];
  v10 = [requestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GATSchemaGATClientEvent *)self deleteRequestContext];
  }

  loadScreenContentContext = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
  v13 = [loadScreenContentContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GATSchemaGATClientEvent *)self deleteLoadScreenContentContext];
  }

  createSessionContext = [(GATSchemaGATClientEvent *)self createSessionContext];
  v16 = [createSessionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(GATSchemaGATClientEvent *)self deleteCreateSessionContext];
  }

  generativeRequestContext = [(GATSchemaGATClientEvent *)self generativeRequestContext];
  v19 = [generativeRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(GATSchemaGATClientEvent *)self deleteGenerativeRequestContext];
  }

  imageResizingContext = [(GATSchemaGATClientEvent *)self imageResizingContext];
  v22 = [imageResizingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(GATSchemaGATClientEvent *)self deleteImageResizingContext];
  }

  registerMediaContext = [(GATSchemaGATClientEvent *)self registerMediaContext];
  v25 = [registerMediaContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(GATSchemaGATClientEvent *)self deleteRegisterMediaContext];
  }

  confirmationSnippet = [(GATSchemaGATClientEvent *)self confirmationSnippet];
  v28 = [confirmationSnippet applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(GATSchemaGATClientEvent *)self deleteConfirmationSnippet];
  }

  confirmationSnippetUserAction = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
  v31 = [confirmationSnippetUserAction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(GATSchemaGATClientEvent *)self deleteConfirmationSnippetUserAction];
  }

  confirmationSnippetPresented = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
  v34 = [confirmationSnippetPresented applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(GATSchemaGATClientEvent *)self deleteConfirmationSnippetPresented];
  }

  confirmationSnippetUserActioned = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
  v37 = [confirmationSnippetUserActioned applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(GATSchemaGATClientEvent *)self deleteConfirmationSnippetUserActioned];
  }

  notForMeResponseReturned = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
  v40 = [notForMeResponseReturned applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(GATSchemaGATClientEvent *)self deleteNotForMeResponseReturned];
  }

  modelAgentCaptured = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
  v43 = [modelAgentCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(GATSchemaGATClientEvent *)self deleteModelAgentCaptured];
  }

  responseMetadataCaptured = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
  v46 = [responseMetadataCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(GATSchemaGATClientEvent *)self deleteResponseMetadataCaptured];
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
  eventMetadata = [(GATSchemaGATClientEvent *)self eventMetadata];
  gatId = [eventMetadata gatId];

  if (gatId)
  {
    value = [gatId value];
    if (value)
    {
      value2 = [gatId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 56;
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
  eventMetadata = [(GATSchemaGATClientEvent *)self eventMetadata];
  gatId = [eventMetadata gatId];

  if (!gatId)
  {
    goto LABEL_5;
  }

  value = [gatId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [gatId value];
  v6 = [value2 length];

  if (v6)
  {
    value = gatId;
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
  whichEvent_Type = [(GATSchemaGATClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9818[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E78E9880[tag - 101];
  }
}

@end