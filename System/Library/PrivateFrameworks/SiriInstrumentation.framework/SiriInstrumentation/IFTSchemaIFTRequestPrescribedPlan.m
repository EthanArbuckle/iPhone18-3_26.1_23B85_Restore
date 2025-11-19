@interface IFTSchemaIFTRequestPrescribedPlan
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTRequestPrescribedPlan)initWithDictionary:(id)a3;
- (IFTSchemaIFTRequestPrescribedPlan)initWithJSON:(id)a3;
- (IFTSchemaIFTRequestPrescribedPlanConvertTool)convertTool;
- (IFTSchemaIFTRequestPrescribedPlanKnowledgeTool)knowledgeTool;
- (IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool)openSuccessValueFromLatestRequestTool;
- (IFTSchemaIFTRequestPrescribedPlanOpenTool)openTool;
- (IFTSchemaIFTRequestPrescribedPlanSearchTool)searchTool;
- (IFTSchemaIFTRequestPrescribedPlanTextTool)textTool;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteConvertTool;
- (void)deleteKnowledgeTool;
- (void)deleteOpenSuccessValueFromLatestRequestTool;
- (void)deleteOpenTool;
- (void)deleteSearchTool;
- (void)deleteTextTool;
- (void)setConvertTool:(id)a3;
- (void)setKnowledgeTool:(id)a3;
- (void)setOpenSuccessValueFromLatestRequestTool:(id)a3;
- (void)setOpenTool:(id)a3;
- (void)setSearchTool:(id)a3;
- (void)setTextTool:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTRequestPrescribedPlan

- (IFTSchemaIFTRequestPrescribedPlan)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = IFTSchemaIFTRequestPrescribedPlan;
  v5 = [(IFTSchemaIFTRequestPrescribedPlan *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"searchTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTRequestPrescribedPlanSearchTool alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setSearchTool:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"textTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTRequestPrescribedPlanTextTool alloc] initWithDictionary:v8];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setTextTool:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"convertTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTRequestPrescribedPlanConvertTool alloc] initWithDictionary:v10];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setConvertTool:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"knowledgeTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTRequestPrescribedPlanKnowledgeTool alloc] initWithDictionary:v12];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setKnowledgeTool:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"openTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTRequestPrescribedPlanOpenTool alloc] initWithDictionary:v14];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setOpenTool:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"openSuccessValueFromLatestRequestTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool alloc] initWithDictionary:v16];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setOpenSuccessValueFromLatestRequestTool:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRequestPrescribedPlan)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequestPrescribedPlan *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTRequestPrescribedPlan *)self dictionaryRepresentation];
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
  if (self->_convertTool)
  {
    v4 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"convertTool"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"convertTool"];
    }
  }

  if (self->_knowledgeTool)
  {
    v7 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"knowledgeTool"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"knowledgeTool"];
    }
  }

  if (self->_openSuccessValueFromLatestRequestTool)
  {
    v10 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"openSuccessValueFromLatestRequestTool"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"openSuccessValueFromLatestRequestTool"];
    }
  }

  if (self->_openTool)
  {
    v13 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"openTool"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"openTool"];
    }
  }

  if (self->_searchTool)
  {
    v16 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"searchTool"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"searchTool"];
    }
  }

  if (self->_textTool)
  {
    v19 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"textTool"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"textTool"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTRequestPrescribedPlanSearchTool *)self->_searchTool hash];
  v4 = [(IFTSchemaIFTRequestPrescribedPlanTextTool *)self->_textTool hash]^ v3;
  v5 = [(IFTSchemaIFTRequestPrescribedPlanConvertTool *)self->_convertTool hash];
  v6 = v4 ^ v5 ^ [(IFTSchemaIFTRequestPrescribedPlanKnowledgeTool *)self->_knowledgeTool hash];
  v7 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self->_openTool hash];
  return v6 ^ v7 ^ [(IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool *)self->_openSuccessValueFromLatestRequestTool hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichOneof_Requestprescribedplan = self->_whichOneof_Requestprescribedplan;
  if (whichOneof_Requestprescribedplan != [v4 whichOneof_Requestprescribedplan])
  {
    goto LABEL_33;
  }

  v6 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
  v7 = [v4 searchTool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v8 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
    v11 = [v4 searchTool];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
  v7 = [v4 textTool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v13 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
    v16 = [v4 textTool];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
  v7 = [v4 convertTool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v18 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
    v21 = [v4 convertTool];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
  v7 = [v4 knowledgeTool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v23 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
  if (v23)
  {
    v24 = v23;
    v25 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
    v26 = [v4 knowledgeTool];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
  v7 = [v4 openTool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v28 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
  if (v28)
  {
    v29 = v28;
    v30 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
    v31 = [v4 openTool];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
  v7 = [v4 openSuccessValueFromLatestRequestTool];
  if ((v6 != 0) != (v7 == 0))
  {
    v33 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
    if (!v33)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = v33;
    v35 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
    v36 = [v4 openSuccessValueFromLatestRequestTool];
    v37 = [v35 isEqual:v36];

    if (v37)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];

  if (v4)
  {
    v5 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];

  if (v6)
  {
    v7 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];

  if (v8)
  {
    v9 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];

  if (v10)
  {
    v11 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];

  if (v12)
  {
    v13 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];

  v15 = v17;
  if (v14)
  {
    v16 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
    PBDataWriterWriteSubmessage();

    v15 = v17;
  }
}

- (void)deleteOpenSuccessValueFromLatestRequestTool
{
  if (self->_whichOneof_Requestprescribedplan == 6)
  {
    self->_whichOneof_Requestprescribedplan = 0;
    self->_openSuccessValueFromLatestRequestTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool)openSuccessValueFromLatestRequestTool
{
  if (self->_whichOneof_Requestprescribedplan == 6)
  {
    v3 = self->_openSuccessValueFromLatestRequestTool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenSuccessValueFromLatestRequestTool:(id)a3
{
  v4 = a3;
  searchTool = self->_searchTool;
  self->_searchTool = 0;

  textTool = self->_textTool;
  self->_textTool = 0;

  convertTool = self->_convertTool;
  self->_convertTool = 0;

  knowledgeTool = self->_knowledgeTool;
  self->_knowledgeTool = 0;

  openTool = self->_openTool;
  self->_openTool = 0;

  v10 = 6;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichOneof_Requestprescribedplan = v10;
  openSuccessValueFromLatestRequestTool = self->_openSuccessValueFromLatestRequestTool;
  self->_openSuccessValueFromLatestRequestTool = v4;
}

- (void)deleteOpenTool
{
  if (self->_whichOneof_Requestprescribedplan == 5)
  {
    self->_whichOneof_Requestprescribedplan = 0;
    self->_openTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestPrescribedPlanOpenTool)openTool
{
  if (self->_whichOneof_Requestprescribedplan == 5)
  {
    v3 = self->_openTool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpenTool:(id)a3
{
  v4 = a3;
  searchTool = self->_searchTool;
  self->_searchTool = 0;

  textTool = self->_textTool;
  self->_textTool = 0;

  convertTool = self->_convertTool;
  self->_convertTool = 0;

  knowledgeTool = self->_knowledgeTool;
  self->_knowledgeTool = 0;

  openSuccessValueFromLatestRequestTool = self->_openSuccessValueFromLatestRequestTool;
  self->_openSuccessValueFromLatestRequestTool = 0;

  v10 = 5;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichOneof_Requestprescribedplan = v10;
  openTool = self->_openTool;
  self->_openTool = v4;
}

- (void)deleteKnowledgeTool
{
  if (self->_whichOneof_Requestprescribedplan == 4)
  {
    self->_whichOneof_Requestprescribedplan = 0;
    self->_knowledgeTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestPrescribedPlanKnowledgeTool)knowledgeTool
{
  if (self->_whichOneof_Requestprescribedplan == 4)
  {
    v3 = self->_knowledgeTool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setKnowledgeTool:(id)a3
{
  v4 = a3;
  searchTool = self->_searchTool;
  self->_searchTool = 0;

  textTool = self->_textTool;
  self->_textTool = 0;

  convertTool = self->_convertTool;
  self->_convertTool = 0;

  openTool = self->_openTool;
  self->_openTool = 0;

  openSuccessValueFromLatestRequestTool = self->_openSuccessValueFromLatestRequestTool;
  self->_openSuccessValueFromLatestRequestTool = 0;

  self->_whichOneof_Requestprescribedplan = 4 * (v4 != 0);
  knowledgeTool = self->_knowledgeTool;
  self->_knowledgeTool = v4;
}

- (void)deleteConvertTool
{
  if (self->_whichOneof_Requestprescribedplan == 3)
  {
    self->_whichOneof_Requestprescribedplan = 0;
    self->_convertTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestPrescribedPlanConvertTool)convertTool
{
  if (self->_whichOneof_Requestprescribedplan == 3)
  {
    v3 = self->_convertTool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConvertTool:(id)a3
{
  v4 = a3;
  searchTool = self->_searchTool;
  self->_searchTool = 0;

  textTool = self->_textTool;
  self->_textTool = 0;

  knowledgeTool = self->_knowledgeTool;
  self->_knowledgeTool = 0;

  openTool = self->_openTool;
  self->_openTool = 0;

  openSuccessValueFromLatestRequestTool = self->_openSuccessValueFromLatestRequestTool;
  self->_openSuccessValueFromLatestRequestTool = 0;

  v10 = 3;
  if (!v4)
  {
    v10 = 0;
  }

  self->_whichOneof_Requestprescribedplan = v10;
  convertTool = self->_convertTool;
  self->_convertTool = v4;
}

- (void)deleteTextTool
{
  if (self->_whichOneof_Requestprescribedplan == 2)
  {
    self->_whichOneof_Requestprescribedplan = 0;
    self->_textTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestPrescribedPlanTextTool)textTool
{
  if (self->_whichOneof_Requestprescribedplan == 2)
  {
    v3 = self->_textTool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTextTool:(id)a3
{
  v4 = a3;
  searchTool = self->_searchTool;
  self->_searchTool = 0;

  convertTool = self->_convertTool;
  self->_convertTool = 0;

  knowledgeTool = self->_knowledgeTool;
  self->_knowledgeTool = 0;

  openTool = self->_openTool;
  self->_openTool = 0;

  openSuccessValueFromLatestRequestTool = self->_openSuccessValueFromLatestRequestTool;
  self->_openSuccessValueFromLatestRequestTool = 0;

  self->_whichOneof_Requestprescribedplan = 2 * (v4 != 0);
  textTool = self->_textTool;
  self->_textTool = v4;
}

- (void)deleteSearchTool
{
  if (self->_whichOneof_Requestprescribedplan == 1)
  {
    self->_whichOneof_Requestprescribedplan = 0;
    self->_searchTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestPrescribedPlanSearchTool)searchTool
{
  if (self->_whichOneof_Requestprescribedplan == 1)
  {
    v3 = self->_searchTool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchTool:(id)a3
{
  v4 = a3;
  textTool = self->_textTool;
  self->_textTool = 0;

  convertTool = self->_convertTool;
  self->_convertTool = 0;

  knowledgeTool = self->_knowledgeTool;
  self->_knowledgeTool = 0;

  openTool = self->_openTool;
  self->_openTool = 0;

  openSuccessValueFromLatestRequestTool = self->_openSuccessValueFromLatestRequestTool;
  self->_openSuccessValueFromLatestRequestTool = 0;

  self->_whichOneof_Requestprescribedplan = v4 != 0;
  searchTool = self->_searchTool;
  self->_searchTool = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = IFTSchemaIFTRequestPrescribedPlan;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteSearchTool];
  }

  v9 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteTextTool];
  }

  v12 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteConvertTool];
  }

  v15 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteKnowledgeTool];
  }

  v18 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteOpenTool];
  }

  v21 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteOpenSuccessValueFromLatestRequestTool];
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