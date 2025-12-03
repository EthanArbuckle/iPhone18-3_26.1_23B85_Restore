@interface IFTSchemaIFTRequestPrescribedPlan
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTRequestPrescribedPlan)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTRequestPrescribedPlan)initWithJSON:(id)n;
- (IFTSchemaIFTRequestPrescribedPlanConvertTool)convertTool;
- (IFTSchemaIFTRequestPrescribedPlanKnowledgeTool)knowledgeTool;
- (IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool)openSuccessValueFromLatestRequestTool;
- (IFTSchemaIFTRequestPrescribedPlanOpenTool)openTool;
- (IFTSchemaIFTRequestPrescribedPlanSearchTool)searchTool;
- (IFTSchemaIFTRequestPrescribedPlanTextTool)textTool;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteConvertTool;
- (void)deleteKnowledgeTool;
- (void)deleteOpenSuccessValueFromLatestRequestTool;
- (void)deleteOpenTool;
- (void)deleteSearchTool;
- (void)deleteTextTool;
- (void)setConvertTool:(id)tool;
- (void)setKnowledgeTool:(id)tool;
- (void)setOpenSuccessValueFromLatestRequestTool:(id)tool;
- (void)setOpenTool:(id)tool;
- (void)setSearchTool:(id)tool;
- (void)setTextTool:(id)tool;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTRequestPrescribedPlan

- (IFTSchemaIFTRequestPrescribedPlan)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = IFTSchemaIFTRequestPrescribedPlan;
  v5 = [(IFTSchemaIFTRequestPrescribedPlan *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTRequestPrescribedPlanSearchTool alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setSearchTool:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"textTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTRequestPrescribedPlanTextTool alloc] initWithDictionary:v8];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setTextTool:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"convertTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTRequestPrescribedPlanConvertTool alloc] initWithDictionary:v10];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setConvertTool:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"knowledgeTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTRequestPrescribedPlanKnowledgeTool alloc] initWithDictionary:v12];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setKnowledgeTool:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"openTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTRequestPrescribedPlanOpenTool alloc] initWithDictionary:v14];
      [(IFTSchemaIFTRequestPrescribedPlan *)v5 setOpenTool:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"openSuccessValueFromLatestRequestTool"];
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

- (IFTSchemaIFTRequestPrescribedPlan)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequestPrescribedPlan *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTRequestPrescribedPlan *)self dictionaryRepresentation];
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
  if (self->_convertTool)
  {
    convertTool = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
    dictionaryRepresentation = [convertTool dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"convertTool"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"convertTool"];
    }
  }

  if (self->_knowledgeTool)
  {
    knowledgeTool = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
    dictionaryRepresentation2 = [knowledgeTool dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"knowledgeTool"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"knowledgeTool"];
    }
  }

  if (self->_openSuccessValueFromLatestRequestTool)
  {
    openSuccessValueFromLatestRequestTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
    dictionaryRepresentation3 = [openSuccessValueFromLatestRequestTool dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"openSuccessValueFromLatestRequestTool"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"openSuccessValueFromLatestRequestTool"];
    }
  }

  if (self->_openTool)
  {
    openTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
    dictionaryRepresentation4 = [openTool dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"openTool"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"openTool"];
    }
  }

  if (self->_searchTool)
  {
    searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
    dictionaryRepresentation5 = [searchTool dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"searchTool"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"searchTool"];
    }
  }

  if (self->_textTool)
  {
    textTool = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
    dictionaryRepresentation6 = [textTool dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"textTool"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"textTool"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichOneof_Requestprescribedplan = self->_whichOneof_Requestprescribedplan;
  if (whichOneof_Requestprescribedplan != [equalCopy whichOneof_Requestprescribedplan])
  {
    goto LABEL_33;
  }

  searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
  searchTool2 = [equalCopy searchTool];
  if ((searchTool != 0) == (searchTool2 == 0))
  {
    goto LABEL_32;
  }

  searchTool3 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
  if (searchTool3)
  {
    v9 = searchTool3;
    searchTool4 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
    searchTool5 = [equalCopy searchTool];
    v12 = [searchTool4 isEqual:searchTool5];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
  searchTool2 = [equalCopy textTool];
  if ((searchTool != 0) == (searchTool2 == 0))
  {
    goto LABEL_32;
  }

  textTool = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
  if (textTool)
  {
    v14 = textTool;
    textTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
    textTool3 = [equalCopy textTool];
    v17 = [textTool2 isEqual:textTool3];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
  searchTool2 = [equalCopy convertTool];
  if ((searchTool != 0) == (searchTool2 == 0))
  {
    goto LABEL_32;
  }

  convertTool = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
  if (convertTool)
  {
    v19 = convertTool;
    convertTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
    convertTool3 = [equalCopy convertTool];
    v22 = [convertTool2 isEqual:convertTool3];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
  searchTool2 = [equalCopy knowledgeTool];
  if ((searchTool != 0) == (searchTool2 == 0))
  {
    goto LABEL_32;
  }

  knowledgeTool = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
  if (knowledgeTool)
  {
    v24 = knowledgeTool;
    knowledgeTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
    knowledgeTool3 = [equalCopy knowledgeTool];
    v27 = [knowledgeTool2 isEqual:knowledgeTool3];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
  searchTool2 = [equalCopy openTool];
  if ((searchTool != 0) == (searchTool2 == 0))
  {
    goto LABEL_32;
  }

  openTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
  if (openTool)
  {
    v29 = openTool;
    openTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
    openTool3 = [equalCopy openTool];
    v32 = [openTool2 isEqual:openTool3];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
  searchTool2 = [equalCopy openSuccessValueFromLatestRequestTool];
  if ((searchTool != 0) != (searchTool2 == 0))
  {
    openSuccessValueFromLatestRequestTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
    if (!openSuccessValueFromLatestRequestTool)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = openSuccessValueFromLatestRequestTool;
    openSuccessValueFromLatestRequestTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
    openSuccessValueFromLatestRequestTool3 = [equalCopy openSuccessValueFromLatestRequestTool];
    v37 = [openSuccessValueFromLatestRequestTool2 isEqual:openSuccessValueFromLatestRequestTool3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];

  if (searchTool)
  {
    searchTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
    PBDataWriterWriteSubmessage();
  }

  textTool = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];

  if (textTool)
  {
    textTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
    PBDataWriterWriteSubmessage();
  }

  convertTool = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];

  if (convertTool)
  {
    convertTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
    PBDataWriterWriteSubmessage();
  }

  knowledgeTool = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];

  if (knowledgeTool)
  {
    knowledgeTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
    PBDataWriterWriteSubmessage();
  }

  openTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];

  if (openTool)
  {
    openTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
    PBDataWriterWriteSubmessage();
  }

  openSuccessValueFromLatestRequestTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];

  v15 = toCopy;
  if (openSuccessValueFromLatestRequestTool)
  {
    openSuccessValueFromLatestRequestTool2 = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
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

- (void)setOpenSuccessValueFromLatestRequestTool:(id)tool
{
  toolCopy = tool;
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
  if (!toolCopy)
  {
    v10 = 0;
  }

  self->_whichOneof_Requestprescribedplan = v10;
  openSuccessValueFromLatestRequestTool = self->_openSuccessValueFromLatestRequestTool;
  self->_openSuccessValueFromLatestRequestTool = toolCopy;
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

- (void)setOpenTool:(id)tool
{
  toolCopy = tool;
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
  if (!toolCopy)
  {
    v10 = 0;
  }

  self->_whichOneof_Requestprescribedplan = v10;
  openTool = self->_openTool;
  self->_openTool = toolCopy;
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

- (void)setKnowledgeTool:(id)tool
{
  toolCopy = tool;
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

  self->_whichOneof_Requestprescribedplan = 4 * (toolCopy != 0);
  knowledgeTool = self->_knowledgeTool;
  self->_knowledgeTool = toolCopy;
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

- (void)setConvertTool:(id)tool
{
  toolCopy = tool;
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
  if (!toolCopy)
  {
    v10 = 0;
  }

  self->_whichOneof_Requestprescribedplan = v10;
  convertTool = self->_convertTool;
  self->_convertTool = toolCopy;
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

- (void)setTextTool:(id)tool
{
  toolCopy = tool;
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

  self->_whichOneof_Requestprescribedplan = 2 * (toolCopy != 0);
  textTool = self->_textTool;
  self->_textTool = toolCopy;
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

- (void)setSearchTool:(id)tool
{
  toolCopy = tool;
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

  self->_whichOneof_Requestprescribedplan = toolCopy != 0;
  searchTool = self->_searchTool;
  self->_searchTool = toolCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = IFTSchemaIFTRequestPrescribedPlan;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  searchTool = [(IFTSchemaIFTRequestPrescribedPlan *)self searchTool];
  v7 = [searchTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteSearchTool];
  }

  textTool = [(IFTSchemaIFTRequestPrescribedPlan *)self textTool];
  v10 = [textTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteTextTool];
  }

  convertTool = [(IFTSchemaIFTRequestPrescribedPlan *)self convertTool];
  v13 = [convertTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteConvertTool];
  }

  knowledgeTool = [(IFTSchemaIFTRequestPrescribedPlan *)self knowledgeTool];
  v16 = [knowledgeTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteKnowledgeTool];
  }

  openTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openTool];
  v19 = [openTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTRequestPrescribedPlan *)self deleteOpenTool];
  }

  openSuccessValueFromLatestRequestTool = [(IFTSchemaIFTRequestPrescribedPlan *)self openSuccessValueFromLatestRequestTool];
  v22 = [openSuccessValueFromLatestRequestTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
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