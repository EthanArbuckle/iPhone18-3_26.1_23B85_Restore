@interface GATSchemaGATClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (GATSchemaGATClientEvent)initWithDictionary:(id)a3;
- (GATSchemaGATClientEvent)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setConfirmationSnippet:(id)a3;
- (void)setConfirmationSnippetPresented:(id)a3;
- (void)setConfirmationSnippetUserAction:(id)a3;
- (void)setConfirmationSnippetUserActioned:(id)a3;
- (void)setCreateSessionContext:(id)a3;
- (void)setGenerativeRequestContext:(id)a3;
- (void)setImageResizingContext:(id)a3;
- (void)setLoadScreenContentContext:(id)a3;
- (void)setModelAgentCaptured:(id)a3;
- (void)setNotForMeResponseReturned:(id)a3;
- (void)setRegisterMediaContext:(id)a3;
- (void)setRequestContext:(id)a3;
- (void)setResponseMetadataCaptured:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GATSchemaGATClientEvent

- (GATSchemaGATClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = GATSchemaGATClientEvent;
  v5 = [(GATSchemaGATClientEvent *)&v44 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GATSchemaGATClientEventMetadata alloc] initWithDictionary:v6];
      [(GATSchemaGATClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATRequestContext alloc] initWithDictionary:v8];
      [(GATSchemaGATClientEvent *)v5 setRequestContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"loadScreenContentContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GATSchemaGATLoadScreenContentContext alloc] initWithDictionary:v10];
      [(GATSchemaGATClientEvent *)v5 setLoadScreenContentContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"createSessionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[GATSchemaGATCreateSessionContext alloc] initWithDictionary:v12];
      [(GATSchemaGATClientEvent *)v5 setCreateSessionContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"generativeRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[GATSchemaGATGenerativeRequestContext alloc] initWithDictionary:v14];
      [(GATSchemaGATClientEvent *)v5 setGenerativeRequestContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"imageResizingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[GATSchemaGATImageResizingContext alloc] initWithDictionary:v16];
      [(GATSchemaGATClientEvent *)v5 setImageResizingContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"registerMediaContext"];
    objc_opt_class();
    v43 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[GATSchemaGATRegisterMediaContext alloc] initWithDictionary:v18];
      [(GATSchemaGATClientEvent *)v5 setRegisterMediaContext:v19];
    }

    v42 = v6;
    v20 = [v4 objectForKeyedSubscript:@"confirmationSnippet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[GATSchemaGATPresentConfirmationSnippetEvent alloc] initWithDictionary:v20];
      [(GATSchemaGATClientEvent *)v5 setConfirmationSnippet:v21];
    }

    v37 = v20;
    v41 = v8;
    v22 = [v4 objectForKeyedSubscript:@"confirmationSnippetUserAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[GATSchemaGATConfirmationSnippetUserActionEvent alloc] initWithDictionary:v22];
      [(GATSchemaGATClientEvent *)v5 setConfirmationSnippetUserAction:v23];
    }

    v40 = v10;
    v24 = [v4 objectForKeyedSubscript:@"confirmationSnippetPresented"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[GATSchemaGATConfirmationSnippetPresented alloc] initWithDictionary:v24];
      [(GATSchemaGATClientEvent *)v5 setConfirmationSnippetPresented:v25];
    }

    v38 = v16;
    v39 = v12;
    v26 = [v4 objectForKeyedSubscript:@"confirmationSnippetUserActioned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[GATSchemaGATConfirmationSnippetUserActioned alloc] initWithDictionary:v26];
      [(GATSchemaGATClientEvent *)v5 setConfirmationSnippetUserActioned:v27];
    }

    v28 = v14;
    v29 = [v4 objectForKeyedSubscript:@"notForMeResponseReturned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[GATSchemaGATNotForMeResponseReturned alloc] initWithDictionary:v29];
      [(GATSchemaGATClientEvent *)v5 setNotForMeResponseReturned:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"modelAgentCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[GATSchemaGATModelAgentCaptured alloc] initWithDictionary:v31];
      [(GATSchemaGATClientEvent *)v5 setModelAgentCaptured:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"responseMetadataCaptured"];
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

- (GATSchemaGATClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GATSchemaGATClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GATSchemaGATClientEvent *)self dictionaryRepresentation];
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
  if (self->_confirmationSnippet)
  {
    v4 = [(GATSchemaGATClientEvent *)self confirmationSnippet];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"confirmationSnippet"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"confirmationSnippet"];
    }
  }

  if (self->_confirmationSnippetPresented)
  {
    v7 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"confirmationSnippetPresented"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"confirmationSnippetPresented"];
    }
  }

  if (self->_confirmationSnippetUserAction)
  {
    v10 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"confirmationSnippetUserAction"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"confirmationSnippetUserAction"];
    }
  }

  if (self->_confirmationSnippetUserActioned)
  {
    v13 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"confirmationSnippetUserActioned"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"confirmationSnippetUserActioned"];
    }
  }

  if (self->_createSessionContext)
  {
    v16 = [(GATSchemaGATClientEvent *)self createSessionContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"createSessionContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"createSessionContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v19 = [(GATSchemaGATClientEvent *)self eventMetadata];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_generativeRequestContext)
  {
    v22 = [(GATSchemaGATClientEvent *)self generativeRequestContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"generativeRequestContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"generativeRequestContext"];
    }
  }

  if (self->_imageResizingContext)
  {
    v25 = [(GATSchemaGATClientEvent *)self imageResizingContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"imageResizingContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"imageResizingContext"];
    }
  }

  if (self->_loadScreenContentContext)
  {
    v28 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"loadScreenContentContext"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"loadScreenContentContext"];
    }
  }

  if (self->_modelAgentCaptured)
  {
    v31 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"modelAgentCaptured"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"modelAgentCaptured"];
    }
  }

  if (self->_notForMeResponseReturned)
  {
    v34 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"notForMeResponseReturned"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"notForMeResponseReturned"];
    }
  }

  if (self->_registerMediaContext)
  {
    v37 = [(GATSchemaGATClientEvent *)self registerMediaContext];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"registerMediaContext"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"registerMediaContext"];
    }
  }

  if (self->_requestContext)
  {
    v40 = [(GATSchemaGATClientEvent *)self requestContext];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_responseMetadataCaptured)
  {
    v43 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"responseMetadataCaptured"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"responseMetadataCaptured"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_73;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_73;
  }

  v6 = [(GATSchemaGATClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v8 = [(GATSchemaGATClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(GATSchemaGATClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self requestContext];
  v7 = [v4 requestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v13 = [(GATSchemaGATClientEvent *)self requestContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(GATSchemaGATClientEvent *)self requestContext];
    v16 = [v4 requestContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
  v7 = [v4 loadScreenContentContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v18 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
    v21 = [v4 loadScreenContentContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self createSessionContext];
  v7 = [v4 createSessionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v23 = [(GATSchemaGATClientEvent *)self createSessionContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(GATSchemaGATClientEvent *)self createSessionContext];
    v26 = [v4 createSessionContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self generativeRequestContext];
  v7 = [v4 generativeRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v28 = [(GATSchemaGATClientEvent *)self generativeRequestContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(GATSchemaGATClientEvent *)self generativeRequestContext];
    v31 = [v4 generativeRequestContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self imageResizingContext];
  v7 = [v4 imageResizingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v33 = [(GATSchemaGATClientEvent *)self imageResizingContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(GATSchemaGATClientEvent *)self imageResizingContext];
    v36 = [v4 imageResizingContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self registerMediaContext];
  v7 = [v4 registerMediaContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v38 = [(GATSchemaGATClientEvent *)self registerMediaContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(GATSchemaGATClientEvent *)self registerMediaContext];
    v41 = [v4 registerMediaContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self confirmationSnippet];
  v7 = [v4 confirmationSnippet];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v43 = [(GATSchemaGATClientEvent *)self confirmationSnippet];
  if (v43)
  {
    v44 = v43;
    v45 = [(GATSchemaGATClientEvent *)self confirmationSnippet];
    v46 = [v4 confirmationSnippet];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
  v7 = [v4 confirmationSnippetUserAction];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v48 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
  if (v48)
  {
    v49 = v48;
    v50 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
    v51 = [v4 confirmationSnippetUserAction];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
  v7 = [v4 confirmationSnippetPresented];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v53 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
  if (v53)
  {
    v54 = v53;
    v55 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
    v56 = [v4 confirmationSnippetPresented];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
  v7 = [v4 confirmationSnippetUserActioned];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v58 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
  if (v58)
  {
    v59 = v58;
    v60 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
    v61 = [v4 confirmationSnippetUserActioned];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
  v7 = [v4 notForMeResponseReturned];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v63 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
  if (v63)
  {
    v64 = v63;
    v65 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
    v66 = [v4 notForMeResponseReturned];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
  v7 = [v4 modelAgentCaptured];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_72;
  }

  v68 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
  if (v68)
  {
    v69 = v68;
    v70 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
    v71 = [v4 modelAgentCaptured];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v6 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
  v7 = [v4 responseMetadataCaptured];
  if ((v6 != 0) != (v7 == 0))
  {
    v73 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
    if (!v73)
    {

LABEL_76:
      v78 = 1;
      goto LABEL_74;
    }

    v74 = v73;
    v75 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
    v76 = [v4 responseMetadataCaptured];
    v77 = [v75 isEqual:v76];

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

- (void)writeTo:(id)a3
{
  v33 = a3;
  v4 = [(GATSchemaGATClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(GATSchemaGATClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(GATSchemaGATClientEvent *)self requestContext];

  if (v6)
  {
    v7 = [(GATSchemaGATClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];

  if (v8)
  {
    v9 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(GATSchemaGATClientEvent *)self createSessionContext];

  if (v10)
  {
    v11 = [(GATSchemaGATClientEvent *)self createSessionContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(GATSchemaGATClientEvent *)self generativeRequestContext];

  if (v12)
  {
    v13 = [(GATSchemaGATClientEvent *)self generativeRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(GATSchemaGATClientEvent *)self imageResizingContext];

  if (v14)
  {
    v15 = [(GATSchemaGATClientEvent *)self imageResizingContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(GATSchemaGATClientEvent *)self registerMediaContext];

  if (v16)
  {
    v17 = [(GATSchemaGATClientEvent *)self registerMediaContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(GATSchemaGATClientEvent *)self confirmationSnippet];

  if (v18)
  {
    v19 = [(GATSchemaGATClientEvent *)self confirmationSnippet];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];

  if (v20)
  {
    v21 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];

  if (v22)
  {
    v23 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];

  if (v24)
  {
    v25 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];

  if (v26)
  {
    v27 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];

  if (v28)
  {
    v29 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];

  v31 = v33;
  if (v30)
  {
    v32 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
    PBDataWriterWriteSubmessage();

    v31 = v33;
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

- (void)setResponseMetadataCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  responseMetadataCaptured = self->_responseMetadataCaptured;
  self->_responseMetadataCaptured = v4;
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

- (void)setModelAgentCaptured:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  modelAgentCaptured = self->_modelAgentCaptured;
  self->_modelAgentCaptured = v4;
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

- (void)setNotForMeResponseReturned:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  notForMeResponseReturned = self->_notForMeResponseReturned;
  self->_notForMeResponseReturned = v4;
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

- (void)setConfirmationSnippetUserActioned:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  confirmationSnippetUserActioned = self->_confirmationSnippetUserActioned;
  self->_confirmationSnippetUserActioned = v4;
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

- (void)setConfirmationSnippetPresented:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  confirmationSnippetPresented = self->_confirmationSnippetPresented;
  self->_confirmationSnippetPresented = v4;
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

- (void)setConfirmationSnippetUserAction:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  confirmationSnippetUserAction = self->_confirmationSnippetUserAction;
  self->_confirmationSnippetUserAction = v4;
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

- (void)setConfirmationSnippet:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  confirmationSnippet = self->_confirmationSnippet;
  self->_confirmationSnippet = v4;
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

- (void)setRegisterMediaContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  registerMediaContext = self->_registerMediaContext;
  self->_registerMediaContext = v4;
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

- (void)setImageResizingContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  imageResizingContext = self->_imageResizingContext;
  self->_imageResizingContext = v4;
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

- (void)setGenerativeRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  generativeRequestContext = self->_generativeRequestContext;
  self->_generativeRequestContext = v4;
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

- (void)setCreateSessionContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  createSessionContext = self->_createSessionContext;
  self->_createSessionContext = v4;
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

- (void)setLoadScreenContentContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  loadScreenContentContext = self->_loadScreenContentContext;
  self->_loadScreenContentContext = v4;
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

- (void)setRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v17 = 0;
  }

  self->_whichEvent_Type = v17;
  requestContext = self->_requestContext;
  self->_requestContext = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(GATSchemaGATClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0xC)
  {
    return @"com.apple.aiml.siri.gat.GATClientEvent";
  }

  else
  {
    return off_1E78D6F18[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = GATSchemaGATClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v49 applySensitiveConditionsPolicy:v4];
  v6 = [(GATSchemaGATClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GATSchemaGATClientEvent *)self deleteEventMetadata];
  }

  v9 = [(GATSchemaGATClientEvent *)self requestContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GATSchemaGATClientEvent *)self deleteRequestContext];
  }

  v12 = [(GATSchemaGATClientEvent *)self loadScreenContentContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(GATSchemaGATClientEvent *)self deleteLoadScreenContentContext];
  }

  v15 = [(GATSchemaGATClientEvent *)self createSessionContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(GATSchemaGATClientEvent *)self deleteCreateSessionContext];
  }

  v18 = [(GATSchemaGATClientEvent *)self generativeRequestContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(GATSchemaGATClientEvent *)self deleteGenerativeRequestContext];
  }

  v21 = [(GATSchemaGATClientEvent *)self imageResizingContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(GATSchemaGATClientEvent *)self deleteImageResizingContext];
  }

  v24 = [(GATSchemaGATClientEvent *)self registerMediaContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(GATSchemaGATClientEvent *)self deleteRegisterMediaContext];
  }

  v27 = [(GATSchemaGATClientEvent *)self confirmationSnippet];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(GATSchemaGATClientEvent *)self deleteConfirmationSnippet];
  }

  v30 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserAction];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(GATSchemaGATClientEvent *)self deleteConfirmationSnippetUserAction];
  }

  v33 = [(GATSchemaGATClientEvent *)self confirmationSnippetPresented];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(GATSchemaGATClientEvent *)self deleteConfirmationSnippetPresented];
  }

  v36 = [(GATSchemaGATClientEvent *)self confirmationSnippetUserActioned];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(GATSchemaGATClientEvent *)self deleteConfirmationSnippetUserActioned];
  }

  v39 = [(GATSchemaGATClientEvent *)self notForMeResponseReturned];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(GATSchemaGATClientEvent *)self deleteNotForMeResponseReturned];
  }

  v42 = [(GATSchemaGATClientEvent *)self modelAgentCaptured];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(GATSchemaGATClientEvent *)self deleteModelAgentCaptured];
  }

  v45 = [(GATSchemaGATClientEvent *)self responseMetadataCaptured];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
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
  v2 = [(GATSchemaGATClientEvent *)self eventMetadata];
  v3 = [v2 gatId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 56;
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
  v2 = [(GATSchemaGATClientEvent *)self eventMetadata];
  v3 = [v2 gatId];

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
  v3 = [(GATSchemaGATClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9818[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E78E9880[a3 - 101];
  }
}

@end