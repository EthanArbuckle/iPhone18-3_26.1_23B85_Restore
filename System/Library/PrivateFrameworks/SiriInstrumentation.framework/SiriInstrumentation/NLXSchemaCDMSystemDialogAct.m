@interface NLXSchemaCDMSystemDialogAct
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMSystemDialogAct)initWithDictionary:(id)a3;
- (NLXSchemaCDMSystemDialogAct)initWithJSON:(id)a3;
- (NLXSchemaCDMSystemGaveOptions)gaveOptions;
- (NLXSchemaCDMSystemInformed)informed;
- (NLXSchemaCDMSystemOffered)offered;
- (NLXSchemaCDMSystemPrompted)prompted;
- (NLXSchemaCDMSystemReportedFailure)reportedFailure;
- (NLXSchemaCDMSystemReportedSuccess)reportedSuccess;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteGaveOptions;
- (void)deleteInformed;
- (void)deleteOffered;
- (void)deletePrompted;
- (void)deleteReportedFailure;
- (void)deleteReportedSuccess;
- (void)setGaveOptions:(id)a3;
- (void)setInformed:(id)a3;
- (void)setOffered:(id)a3;
- (void)setPrompted:(id)a3;
- (void)setReportedFailure:(id)a3;
- (void)setReportedSuccess:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMSystemDialogAct

- (NLXSchemaCDMSystemDialogAct)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NLXSchemaCDMSystemDialogAct;
  v5 = [(NLXSchemaCDMSystemDialogAct *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSystemDialogAct *)v5 setId:v7];
    }

    v24 = v6;
    v8 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(NLXSchemaCDMSystemDialogAct *)v5 setLinkId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"prompted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMSystemPrompted alloc] initWithDictionary:v10];
      [(NLXSchemaCDMSystemDialogAct *)v5 setPrompted:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"offered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaCDMSystemOffered alloc] initWithDictionary:v12];
      [(NLXSchemaCDMSystemDialogAct *)v5 setOffered:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"gaveOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaCDMSystemGaveOptions alloc] initWithDictionary:v14];
      [(NLXSchemaCDMSystemDialogAct *)v5 setGaveOptions:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"informed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NLXSchemaCDMSystemInformed alloc] initWithDictionary:v16];
      [(NLXSchemaCDMSystemDialogAct *)v5 setInformed:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"reportedSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NLXSchemaCDMSystemReportedSuccess alloc] initWithDictionary:v18];
      [(NLXSchemaCDMSystemDialogAct *)v5 setReportedSuccess:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"reportedFailure"];
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

- (NLXSchemaCDMSystemDialogAct)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSystemDialogAct *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMSystemDialogAct *)self dictionaryRepresentation];
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
  if (self->_gaveOptions)
  {
    v4 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"gaveOptions"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"gaveOptions"];
    }
  }

  if (self->_id)
  {
    v7 = [(NLXSchemaCDMSystemDialogAct *)self id];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"id"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"id"];
    }
  }

  if (self->_informed)
  {
    v10 = [(NLXSchemaCDMSystemDialogAct *)self informed];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"informed"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"informed"];
    }
  }

  if (self->_linkId)
  {
    v13 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_offered)
  {
    v16 = [(NLXSchemaCDMSystemDialogAct *)self offered];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"offered"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"offered"];
    }
  }

  if (self->_prompted)
  {
    v19 = [(NLXSchemaCDMSystemDialogAct *)self prompted];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"prompted"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"prompted"];
    }
  }

  if (self->_reportedFailure)
  {
    v22 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"reportedFailure"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"reportedFailure"];
    }
  }

  if (self->_reportedSuccess)
  {
    v25 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"reportedSuccess"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"reportedSuccess"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichSystemdialogacttype = self->_whichSystemdialogacttype;
  if (whichSystemdialogacttype != [v4 whichSystemdialogacttype])
  {
    goto LABEL_43;
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self id];
  v7 = [v4 id];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v8 = [(NLXSchemaCDMSystemDialogAct *)self id];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLXSchemaCDMSystemDialogAct *)self id];
    v11 = [v4 id];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
  v7 = [v4 linkId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v13 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
  if (v13)
  {
    v14 = v13;
    v15 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
    v16 = [v4 linkId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self prompted];
  v7 = [v4 prompted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v18 = [(NLXSchemaCDMSystemDialogAct *)self prompted];
  if (v18)
  {
    v19 = v18;
    v20 = [(NLXSchemaCDMSystemDialogAct *)self prompted];
    v21 = [v4 prompted];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self offered];
  v7 = [v4 offered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v23 = [(NLXSchemaCDMSystemDialogAct *)self offered];
  if (v23)
  {
    v24 = v23;
    v25 = [(NLXSchemaCDMSystemDialogAct *)self offered];
    v26 = [v4 offered];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
  v7 = [v4 gaveOptions];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v28 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
  if (v28)
  {
    v29 = v28;
    v30 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
    v31 = [v4 gaveOptions];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self informed];
  v7 = [v4 informed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v33 = [(NLXSchemaCDMSystemDialogAct *)self informed];
  if (v33)
  {
    v34 = v33;
    v35 = [(NLXSchemaCDMSystemDialogAct *)self informed];
    v36 = [v4 informed];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
  v7 = [v4 reportedSuccess];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_42;
  }

  v38 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
  if (v38)
  {
    v39 = v38;
    v40 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
    v41 = [v4 reportedSuccess];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
  v7 = [v4 reportedFailure];
  if ((v6 != 0) != (v7 == 0))
  {
    v43 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
    if (!v43)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = v43;
    v45 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
    v46 = [v4 reportedFailure];
    v47 = [v45 isEqual:v46];

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

- (void)writeTo:(id)a3
{
  v21 = a3;
  v4 = [(NLXSchemaCDMSystemDialogAct *)self id];

  if (v4)
  {
    v5 = [(NLXSchemaCDMSystemDialogAct *)self id];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaCDMSystemDialogAct *)self linkId];

  if (v6)
  {
    v7 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NLXSchemaCDMSystemDialogAct *)self prompted];

  if (v8)
  {
    v9 = [(NLXSchemaCDMSystemDialogAct *)self prompted];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(NLXSchemaCDMSystemDialogAct *)self offered];

  if (v10)
  {
    v11 = [(NLXSchemaCDMSystemDialogAct *)self offered];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];

  if (v12)
  {
    v13 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(NLXSchemaCDMSystemDialogAct *)self informed];

  if (v14)
  {
    v15 = [(NLXSchemaCDMSystemDialogAct *)self informed];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];

  if (v16)
  {
    v17 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];

  v19 = v21;
  if (v18)
  {
    v20 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
    PBDataWriterWriteSubmessage();

    v19 = v21;
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

- (void)setReportedFailure:(id)a3
{
  v4 = a3;
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

  self->_whichSystemdialogacttype = 8 * (v4 != 0);
  reportedFailure = self->_reportedFailure;
  self->_reportedFailure = v4;
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

- (void)setReportedSuccess:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichSystemdialogacttype = v10;
  reportedSuccess = self->_reportedSuccess;
  self->_reportedSuccess = v4;
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

- (void)setInformed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichSystemdialogacttype = v10;
  informed = self->_informed;
  self->_informed = v4;
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

- (void)setGaveOptions:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichSystemdialogacttype = v10;
  gaveOptions = self->_gaveOptions;
  self->_gaveOptions = v4;
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

- (void)setOffered:(id)a3
{
  v4 = a3;
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

  self->_whichSystemdialogacttype = 4 * (v4 != 0);
  offered = self->_offered;
  self->_offered = v4;
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

- (void)setPrompted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichSystemdialogacttype = v10;
  prompted = self->_prompted;
  self->_prompted = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = NLXSchemaCDMSystemDialogAct;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMSystemDialogAct *)self id];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteId];
  }

  v9 = [(NLXSchemaCDMSystemDialogAct *)self linkId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteLinkId];
  }

  v12 = [(NLXSchemaCDMSystemDialogAct *)self prompted];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deletePrompted];
  }

  v15 = [(NLXSchemaCDMSystemDialogAct *)self offered];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteOffered];
  }

  v18 = [(NLXSchemaCDMSystemDialogAct *)self gaveOptions];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteGaveOptions];
  }

  v21 = [(NLXSchemaCDMSystemDialogAct *)self informed];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteInformed];
  }

  v24 = [(NLXSchemaCDMSystemDialogAct *)self reportedSuccess];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(NLXSchemaCDMSystemDialogAct *)self deleteReportedSuccess];
  }

  v27 = [(NLXSchemaCDMSystemDialogAct *)self reportedFailure];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
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