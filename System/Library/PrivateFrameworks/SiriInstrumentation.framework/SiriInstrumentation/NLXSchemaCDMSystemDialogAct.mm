@interface NLXSchemaCDMSystemDialogAct
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSystemDialogAct)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSystemDialogAct)initWithJSON:(id)n;
- (NLXSchemaCDMSystemGaveOptions)gaveOptions;
- (NLXSchemaCDMSystemInformed)informed;
- (NLXSchemaCDMSystemOffered)offered;
- (NLXSchemaCDMSystemPrompted)prompted;
- (NLXSchemaCDMSystemReportedFailure)reportedFailure;
- (NLXSchemaCDMSystemReportedSuccess)reportedSuccess;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteGaveOptions;
- (void)deleteInformed;
- (void)deleteOffered;
- (void)deletePrompted;
- (void)deleteReportedFailure;
- (void)deleteReportedSuccess;
- (void)setGaveOptions:(id)options;
- (void)setInformed:(id)informed;
- (void)setOffered:(id)offered;
- (void)setPrompted:(id)prompted;
- (void)setReportedFailure:(id)failure;
- (void)setReportedSuccess:(id)success;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSystemDialogAct

- (NLXSchemaCDMSystemDialogAct)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = NLXSchemaCDMSystemDialogAct;
  v5 = [(NLXSchemaCDMSystemDialogAct *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSystemDialogAct *)v5 setId:v7];
    }

    v24 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(NLXSchemaCDMSystemDialogAct *)v5 setLinkId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"prompted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMSystemPrompted alloc] initWithDictionary:v10];
      [(NLXSchemaCDMSystemDialogAct *)v5 setPrompted:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"offered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaCDMSystemOffered alloc] initWithDictionary:v12];
      [(NLXSchemaCDMSystemDialogAct *)v5 setOffered:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"gaveOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaCDMSystemGaveOptions alloc] initWithDictionary:v14];
      [(NLXSchemaCDMSystemDialogAct *)v5 setGaveOptions:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"informed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NLXSchemaCDMSystemInformed alloc] initWithDictionary:v16];
      [(NLXSchemaCDMSystemDialogAct *)v5 setInformed:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"reportedSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NLXSchemaCDMSystemReportedSuccess alloc] initWithDictionary:v18];
      [(NLXSchemaCDMSystemDialogAct *)v5 setReportedSuccess:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"reportedFailure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NLXSchemaCDMSystemReportedFailure alloc] initWithDictionary:v20];
      [(NLXSchemaCDMSystemDialogAct *)v5 setReportedFailure:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSystemDialogAct)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSystemDialogAct *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSystemDialogAct *)self dictionaryRepresentation];
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
  if (self->_gaveOptions)
  {
    gaveOptions = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
    dictionaryRepresentation = [gaveOptions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"gaveOptions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"gaveOptions"];
    }
  }

  if (self->_id)
  {
    v7 = [(NLXSchemaCDMSystemDialogAct *)self id];
    dictionaryRepresentation2 = [v7 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"id"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"id"];
    }
  }

  if (self->_informed)
  {
    informed = [(NLXSchemaCDMSystemDialogAct *)self informed];
    dictionaryRepresentation3 = [informed dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"informed"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"informed"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(NLXSchemaCDMSystemDialogAct *)self linkId];
    dictionaryRepresentation4 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_offered)
  {
    offered = [(NLXSchemaCDMSystemDialogAct *)self offered];
    dictionaryRepresentation5 = [offered dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"offered"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"offered"];
    }
  }

  if (self->_prompted)
  {
    prompted = [(NLXSchemaCDMSystemDialogAct *)self prompted];
    dictionaryRepresentation6 = [prompted dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"prompted"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"prompted"];
    }
  }

  if (self->_reportedFailure)
  {
    reportedFailure = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
    dictionaryRepresentation7 = [reportedFailure dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"reportedFailure"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"reportedFailure"];
    }
  }

  if (self->_reportedSuccess)
  {
    reportedSuccess = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
    dictionaryRepresentation8 = [reportedSuccess dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"reportedSuccess"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"reportedSuccess"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_id hash];
  v4 = [(SISchemaUUID *)self->_linkId hash]^ v3;
  v5 = [(NLXSchemaCDMSystemPrompted *)self->_prompted hash];
  v6 = v4 ^ v5 ^ [(NLXSchemaCDMSystemOffered *)self->_offered hash];
  v7 = [(NLXSchemaCDMSystemGaveOptions *)self->_gaveOptions hash];
  v8 = v7 ^ [(NLXSchemaCDMSystemInformed *)self->_informed hash];
  v9 = v6 ^ v8 ^ [(NLXSchemaCDMSystemReportedSuccess *)self->_reportedSuccess hash];
  return v9 ^ [(NLXSchemaCDMSystemReportedFailure *)self->_reportedFailure hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichSystemdialogacttype = self->_whichSystemdialogacttype;
  if (whichSystemdialogacttype != [equalCopy whichSystemdialogacttype])
  {
    goto LABEL_43;
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self id];
  linkId2 = [equalCopy id];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_42;
  }

  v8 = [(NLXSchemaCDMSystemDialogAct *)self id];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLXSchemaCDMSystemDialogAct *)self id];
    v11 = [equalCopy id];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_42;
  }

  linkId3 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
  if (linkId3)
  {
    v14 = linkId3;
    linkId4 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
    linkId5 = [equalCopy linkId];
    v17 = [linkId4 isEqual:linkId5];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self prompted];
  linkId2 = [equalCopy prompted];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_42;
  }

  prompted = [(NLXSchemaCDMSystemDialogAct *)self prompted];
  if (prompted)
  {
    v19 = prompted;
    prompted2 = [(NLXSchemaCDMSystemDialogAct *)self prompted];
    prompted3 = [equalCopy prompted];
    v22 = [prompted2 isEqual:prompted3];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self offered];
  linkId2 = [equalCopy offered];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_42;
  }

  offered = [(NLXSchemaCDMSystemDialogAct *)self offered];
  if (offered)
  {
    v24 = offered;
    offered2 = [(NLXSchemaCDMSystemDialogAct *)self offered];
    offered3 = [equalCopy offered];
    v27 = [offered2 isEqual:offered3];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
  linkId2 = [equalCopy gaveOptions];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_42;
  }

  gaveOptions = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
  if (gaveOptions)
  {
    v29 = gaveOptions;
    gaveOptions2 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
    gaveOptions3 = [equalCopy gaveOptions];
    v32 = [gaveOptions2 isEqual:gaveOptions3];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self informed];
  linkId2 = [equalCopy informed];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_42;
  }

  informed = [(NLXSchemaCDMSystemDialogAct *)self informed];
  if (informed)
  {
    v34 = informed;
    informed2 = [(NLXSchemaCDMSystemDialogAct *)self informed];
    informed3 = [equalCopy informed];
    v37 = [informed2 isEqual:informed3];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
  linkId2 = [equalCopy reportedSuccess];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_42;
  }

  reportedSuccess = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
  if (reportedSuccess)
  {
    v39 = reportedSuccess;
    reportedSuccess2 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
    reportedSuccess3 = [equalCopy reportedSuccess];
    v42 = [reportedSuccess2 isEqual:reportedSuccess3];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
  linkId2 = [equalCopy reportedFailure];
  if ((linkId != 0) != (linkId2 == 0))
  {
    reportedFailure = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
    if (!reportedFailure)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = reportedFailure;
    reportedFailure2 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
    reportedFailure3 = [equalCopy reportedFailure];
    v47 = [reportedFailure2 isEqual:reportedFailure3];

    if (v47)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_42:
  }

LABEL_43:
  v48 = 0;
LABEL_44:

  return v48;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(NLXSchemaCDMSystemDialogAct *)self id];

  if (v4)
  {
    v5 = [(NLXSchemaCDMSystemDialogAct *)self id];
    PBDataWriterWriteSubmessage();
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self linkId];

  if (linkId)
  {
    linkId2 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  prompted = [(NLXSchemaCDMSystemDialogAct *)self prompted];

  if (prompted)
  {
    prompted2 = [(NLXSchemaCDMSystemDialogAct *)self prompted];
    PBDataWriterWriteSubmessage();
  }

  offered = [(NLXSchemaCDMSystemDialogAct *)self offered];

  if (offered)
  {
    offered2 = [(NLXSchemaCDMSystemDialogAct *)self offered];
    PBDataWriterWriteSubmessage();
  }

  gaveOptions = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];

  if (gaveOptions)
  {
    gaveOptions2 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
    PBDataWriterWriteSubmessage();
  }

  informed = [(NLXSchemaCDMSystemDialogAct *)self informed];

  if (informed)
  {
    informed2 = [(NLXSchemaCDMSystemDialogAct *)self informed];
    PBDataWriterWriteSubmessage();
  }

  reportedSuccess = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];

  if (reportedSuccess)
  {
    reportedSuccess2 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
    PBDataWriterWriteSubmessage();
  }

  reportedFailure = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];

  v19 = toCopy;
  if (reportedFailure)
  {
    reportedFailure2 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
  }
}

- (void)deleteReportedFailure
{
  if (self->_whichSystemdialogacttype == 8)
  {
    self->_whichSystemdialogacttype = 0;
    self->_reportedFailure = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSystemReportedFailure)reportedFailure
{
  if (self->_whichSystemdialogacttype == 8)
  {
    v3 = self->_reportedFailure;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setReportedFailure:(id)failure
{
  failureCopy = failure;
  prompted = self->_prompted;
  self->_prompted = 0;

  offered = self->_offered;
  self->_offered = 0;

  gaveOptions = self->_gaveOptions;
  self->_gaveOptions = 0;

  informed = self->_informed;
  self->_informed = 0;

  reportedSuccess = self->_reportedSuccess;
  self->_reportedSuccess = 0;

  self->_whichSystemdialogacttype = 8 * (failureCopy != 0);
  reportedFailure = self->_reportedFailure;
  self->_reportedFailure = failureCopy;
}

- (void)deleteReportedSuccess
{
  if (self->_whichSystemdialogacttype == 7)
  {
    self->_whichSystemdialogacttype = 0;
    self->_reportedSuccess = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSystemReportedSuccess)reportedSuccess
{
  if (self->_whichSystemdialogacttype == 7)
  {
    v3 = self->_reportedSuccess;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setReportedSuccess:(id)success
{
  successCopy = success;
  prompted = self->_prompted;
  self->_prompted = 0;

  offered = self->_offered;
  self->_offered = 0;

  gaveOptions = self->_gaveOptions;
  self->_gaveOptions = 0;

  informed = self->_informed;
  self->_informed = 0;

  reportedFailure = self->_reportedFailure;
  self->_reportedFailure = 0;

  v10 = 7;
  if (!successCopy)
  {
    v10 = 0;
  }

  self->_whichSystemdialogacttype = v10;
  reportedSuccess = self->_reportedSuccess;
  self->_reportedSuccess = successCopy;
}

- (void)deleteInformed
{
  if (self->_whichSystemdialogacttype == 6)
  {
    self->_whichSystemdialogacttype = 0;
    self->_informed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSystemInformed)informed
{
  if (self->_whichSystemdialogacttype == 6)
  {
    v3 = self->_informed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInformed:(id)informed
{
  informedCopy = informed;
  prompted = self->_prompted;
  self->_prompted = 0;

  offered = self->_offered;
  self->_offered = 0;

  gaveOptions = self->_gaveOptions;
  self->_gaveOptions = 0;

  reportedSuccess = self->_reportedSuccess;
  self->_reportedSuccess = 0;

  reportedFailure = self->_reportedFailure;
  self->_reportedFailure = 0;

  v10 = 6;
  if (!informedCopy)
  {
    v10 = 0;
  }

  self->_whichSystemdialogacttype = v10;
  informed = self->_informed;
  self->_informed = informedCopy;
}

- (void)deleteGaveOptions
{
  if (self->_whichSystemdialogacttype == 5)
  {
    self->_whichSystemdialogacttype = 0;
    self->_gaveOptions = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSystemGaveOptions)gaveOptions
{
  if (self->_whichSystemdialogacttype == 5)
  {
    v3 = self->_gaveOptions;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGaveOptions:(id)options
{
  optionsCopy = options;
  prompted = self->_prompted;
  self->_prompted = 0;

  offered = self->_offered;
  self->_offered = 0;

  informed = self->_informed;
  self->_informed = 0;

  reportedSuccess = self->_reportedSuccess;
  self->_reportedSuccess = 0;

  reportedFailure = self->_reportedFailure;
  self->_reportedFailure = 0;

  v10 = 5;
  if (!optionsCopy)
  {
    v10 = 0;
  }

  self->_whichSystemdialogacttype = v10;
  gaveOptions = self->_gaveOptions;
  self->_gaveOptions = optionsCopy;
}

- (void)deleteOffered
{
  if (self->_whichSystemdialogacttype == 4)
  {
    self->_whichSystemdialogacttype = 0;
    self->_offered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSystemOffered)offered
{
  if (self->_whichSystemdialogacttype == 4)
  {
    v3 = self->_offered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOffered:(id)offered
{
  offeredCopy = offered;
  prompted = self->_prompted;
  self->_prompted = 0;

  gaveOptions = self->_gaveOptions;
  self->_gaveOptions = 0;

  informed = self->_informed;
  self->_informed = 0;

  reportedSuccess = self->_reportedSuccess;
  self->_reportedSuccess = 0;

  reportedFailure = self->_reportedFailure;
  self->_reportedFailure = 0;

  self->_whichSystemdialogacttype = 4 * (offeredCopy != 0);
  offered = self->_offered;
  self->_offered = offeredCopy;
}

- (void)deletePrompted
{
  if (self->_whichSystemdialogacttype == 3)
  {
    self->_whichSystemdialogacttype = 0;
    self->_prompted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSystemPrompted)prompted
{
  if (self->_whichSystemdialogacttype == 3)
  {
    v3 = self->_prompted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrompted:(id)prompted
{
  promptedCopy = prompted;
  offered = self->_offered;
  self->_offered = 0;

  gaveOptions = self->_gaveOptions;
  self->_gaveOptions = 0;

  informed = self->_informed;
  self->_informed = 0;

  reportedSuccess = self->_reportedSuccess;
  self->_reportedSuccess = 0;

  reportedFailure = self->_reportedFailure;
  self->_reportedFailure = 0;

  v10 = 3;
  if (!promptedCopy)
  {
    v10 = 0;
  }

  self->_whichSystemdialogacttype = v10;
  prompted = self->_prompted;
  self->_prompted = promptedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v31.receiver = self;
  v31.super_class = NLXSchemaCDMSystemDialogAct;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMSystemDialogAct *)self id];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteId];
  }

  linkId = [(NLXSchemaCDMSystemDialogAct *)self linkId];
  v10 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteLinkId];
  }

  prompted = [(NLXSchemaCDMSystemDialogAct *)self prompted];
  v13 = [prompted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deletePrompted];
  }

  offered = [(NLXSchemaCDMSystemDialogAct *)self offered];
  v16 = [offered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteOffered];
  }

  gaveOptions = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
  v19 = [gaveOptions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteGaveOptions];
  }

  informed = [(NLXSchemaCDMSystemDialogAct *)self informed];
  v22 = [informed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteInformed];
  }

  reportedSuccess = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
  v25 = [reportedSuccess applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteReportedSuccess];
  }

  reportedFailure = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
  v28 = [reportedFailure applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteReportedFailure];
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