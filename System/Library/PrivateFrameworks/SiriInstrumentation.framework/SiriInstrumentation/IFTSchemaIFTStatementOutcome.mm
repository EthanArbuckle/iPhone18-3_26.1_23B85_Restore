@interface IFTSchemaIFTStatementOutcome
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionConfirmation)actionConfirmation;
- (IFTSchemaIFTActionFailure)failure;
- (IFTSchemaIFTActionRequirement)actionRequirement;
- (IFTSchemaIFTActionSuccess)success;
- (IFTSchemaIFTParameterCandidatesNotFound)parameterCandidatesNotFounds;
- (IFTSchemaIFTParameterConfirmation)parameterConfirmation;
- (IFTSchemaIFTParameterDisambiguation)parameterDisambiguation;
- (IFTSchemaIFTParameterNeedsValue)parameterNeedsValue;
- (IFTSchemaIFTParameterNotAllowed)parameterNotAllowed;
- (IFTSchemaIFTStatementOutcome)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTStatementOutcome)initWithJSON:(id)n;
- (IFTSchemaIFTToolDisambiguation)toolDisambiguation;
- (IFTSchemaIFTValueDisambiguation)valueDisambiguation;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteActionConfirmation;
- (void)deleteActionRequirement;
- (void)deleteFailure;
- (void)deleteParameterCandidatesNotFounds;
- (void)deleteParameterConfirmation;
- (void)deleteParameterDisambiguation;
- (void)deleteParameterNeedsValue;
- (void)deleteParameterNotAllowed;
- (void)deleteSuccess;
- (void)deleteToolDisambiguation;
- (void)deleteValueDisambiguation;
- (void)setActionConfirmation:(id)confirmation;
- (void)setActionRequirement:(id)requirement;
- (void)setFailure:(id)failure;
- (void)setParameterCandidatesNotFounds:(id)founds;
- (void)setParameterConfirmation:(id)confirmation;
- (void)setParameterDisambiguation:(id)disambiguation;
- (void)setParameterNeedsValue:(id)value;
- (void)setParameterNotAllowed:(id)allowed;
- (void)setSuccess:(id)success;
- (void)setToolDisambiguation:(id)disambiguation;
- (void)setValueDisambiguation:(id)disambiguation;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTStatementOutcome

- (IFTSchemaIFTStatementOutcome)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = IFTSchemaIFTStatementOutcome;
  v5 = [(IFTSchemaIFTStatementOutcome *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"success"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTActionSuccess alloc] initWithDictionary:v6];
      [(IFTSchemaIFTStatementOutcome *)v5 setSuccess:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"actionConfirmation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTActionConfirmation alloc] initWithDictionary:v8];
      [(IFTSchemaIFTStatementOutcome *)v5 setActionConfirmation:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"parameterNeedsValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTParameterNeedsValue alloc] initWithDictionary:v10];
      [(IFTSchemaIFTStatementOutcome *)v5 setParameterNeedsValue:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"parameterConfirmation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTParameterConfirmation alloc] initWithDictionary:v12];
      [(IFTSchemaIFTStatementOutcome *)v5 setParameterConfirmation:v13];
    }

    v32 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"parameterDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTParameterDisambiguation alloc] initWithDictionary:v14];
      [(IFTSchemaIFTStatementOutcome *)v5 setParameterDisambiguation:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"parameterNotAllowed", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTParameterNotAllowed alloc] initWithDictionary:v16];
      [(IFTSchemaIFTStatementOutcome *)v5 setParameterNotAllowed:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"parameterCandidatesNotFounds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IFTSchemaIFTParameterCandidatesNotFound alloc] initWithDictionary:v18];
      [(IFTSchemaIFTStatementOutcome *)v5 setParameterCandidatesNotFounds:v19];
    }

    v33 = v10;
    v34 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"actionRequirement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[IFTSchemaIFTActionRequirement alloc] initWithDictionary:v20];
      [(IFTSchemaIFTStatementOutcome *)v5 setActionRequirement:v21];
    }

    v22 = v8;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"toolDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[IFTSchemaIFTToolDisambiguation alloc] initWithDictionary:v23];
      [(IFTSchemaIFTStatementOutcome *)v5 setToolDisambiguation:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"failure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[IFTSchemaIFTActionFailure alloc] initWithDictionary:v25];
      [(IFTSchemaIFTStatementOutcome *)v5 setFailure:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"valueDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[IFTSchemaIFTValueDisambiguation alloc] initWithDictionary:v27];
      [(IFTSchemaIFTStatementOutcome *)v5 setValueDisambiguation:v28];
    }

    v29 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStatementOutcome)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStatementOutcome *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTStatementOutcome *)self dictionaryRepresentation];
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
  if (self->_actionConfirmation)
  {
    actionConfirmation = [(IFTSchemaIFTStatementOutcome *)self actionConfirmation];
    dictionaryRepresentation = [actionConfirmation dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionConfirmation"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionConfirmation"];
    }
  }

  if (self->_actionRequirement)
  {
    actionRequirement = [(IFTSchemaIFTStatementOutcome *)self actionRequirement];
    dictionaryRepresentation2 = [actionRequirement dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"actionRequirement"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"actionRequirement"];
    }
  }

  if (self->_failure)
  {
    failure = [(IFTSchemaIFTStatementOutcome *)self failure];
    dictionaryRepresentation3 = [failure dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"failure"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"failure"];
    }
  }

  if (self->_parameterCandidatesNotFounds)
  {
    parameterCandidatesNotFounds = [(IFTSchemaIFTStatementOutcome *)self parameterCandidatesNotFounds];
    dictionaryRepresentation4 = [parameterCandidatesNotFounds dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"parameterCandidatesNotFounds"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"parameterCandidatesNotFounds"];
    }
  }

  if (self->_parameterConfirmation)
  {
    parameterConfirmation = [(IFTSchemaIFTStatementOutcome *)self parameterConfirmation];
    dictionaryRepresentation5 = [parameterConfirmation dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"parameterConfirmation"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"parameterConfirmation"];
    }
  }

  if (self->_parameterDisambiguation)
  {
    parameterDisambiguation = [(IFTSchemaIFTStatementOutcome *)self parameterDisambiguation];
    dictionaryRepresentation6 = [parameterDisambiguation dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"parameterDisambiguation"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"parameterDisambiguation"];
    }
  }

  if (self->_parameterNeedsValue)
  {
    parameterNeedsValue = [(IFTSchemaIFTStatementOutcome *)self parameterNeedsValue];
    dictionaryRepresentation7 = [parameterNeedsValue dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"parameterNeedsValue"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"parameterNeedsValue"];
    }
  }

  if (self->_parameterNotAllowed)
  {
    parameterNotAllowed = [(IFTSchemaIFTStatementOutcome *)self parameterNotAllowed];
    dictionaryRepresentation8 = [parameterNotAllowed dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"parameterNotAllowed"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"parameterNotAllowed"];
    }
  }

  if (self->_success)
  {
    success = [(IFTSchemaIFTStatementOutcome *)self success];
    dictionaryRepresentation9 = [success dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"success"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"success"];
    }
  }

  if (self->_toolDisambiguation)
  {
    toolDisambiguation = [(IFTSchemaIFTStatementOutcome *)self toolDisambiguation];
    dictionaryRepresentation10 = [toolDisambiguation dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"toolDisambiguation"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"toolDisambiguation"];
    }
  }

  if (self->_valueDisambiguation)
  {
    valueDisambiguation = [(IFTSchemaIFTStatementOutcome *)self valueDisambiguation];
    dictionaryRepresentation11 = [valueDisambiguation dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"valueDisambiguation"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"valueDisambiguation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTActionSuccess *)self->_success hash];
  v4 = [(IFTSchemaIFTActionConfirmation *)self->_actionConfirmation hash]^ v3;
  v5 = [(IFTSchemaIFTParameterNeedsValue *)self->_parameterNeedsValue hash];
  v6 = v4 ^ v5 ^ [(IFTSchemaIFTParameterConfirmation *)self->_parameterConfirmation hash];
  v7 = [(IFTSchemaIFTParameterDisambiguation *)self->_parameterDisambiguation hash];
  v8 = v7 ^ [(IFTSchemaIFTParameterNotAllowed *)self->_parameterNotAllowed hash];
  v9 = v6 ^ v8 ^ [(IFTSchemaIFTParameterCandidatesNotFound *)self->_parameterCandidatesNotFounds hash];
  v10 = [(IFTSchemaIFTActionRequirement *)self->_actionRequirement hash];
  v11 = v10 ^ [(IFTSchemaIFTToolDisambiguation *)self->_toolDisambiguation hash];
  v12 = v11 ^ [(IFTSchemaIFTActionFailure *)self->_failure hash];
  return v9 ^ v12 ^ [(IFTSchemaIFTValueDisambiguation *)self->_valueDisambiguation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  whichOneof_Statementoutcome = self->_whichOneof_Statementoutcome;
  if (whichOneof_Statementoutcome != [equalCopy whichOneof_Statementoutcome])
  {
    goto LABEL_58;
  }

  success = [(IFTSchemaIFTStatementOutcome *)self success];
  success2 = [equalCopy success];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  success3 = [(IFTSchemaIFTStatementOutcome *)self success];
  if (success3)
  {
    v9 = success3;
    success4 = [(IFTSchemaIFTStatementOutcome *)self success];
    success5 = [equalCopy success];
    v12 = [success4 isEqual:success5];

    if (!v12)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self actionConfirmation];
  success2 = [equalCopy actionConfirmation];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  actionConfirmation = [(IFTSchemaIFTStatementOutcome *)self actionConfirmation];
  if (actionConfirmation)
  {
    v14 = actionConfirmation;
    actionConfirmation2 = [(IFTSchemaIFTStatementOutcome *)self actionConfirmation];
    actionConfirmation3 = [equalCopy actionConfirmation];
    v17 = [actionConfirmation2 isEqual:actionConfirmation3];

    if (!v17)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self parameterNeedsValue];
  success2 = [equalCopy parameterNeedsValue];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  parameterNeedsValue = [(IFTSchemaIFTStatementOutcome *)self parameterNeedsValue];
  if (parameterNeedsValue)
  {
    v19 = parameterNeedsValue;
    parameterNeedsValue2 = [(IFTSchemaIFTStatementOutcome *)self parameterNeedsValue];
    parameterNeedsValue3 = [equalCopy parameterNeedsValue];
    v22 = [parameterNeedsValue2 isEqual:parameterNeedsValue3];

    if (!v22)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self parameterConfirmation];
  success2 = [equalCopy parameterConfirmation];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  parameterConfirmation = [(IFTSchemaIFTStatementOutcome *)self parameterConfirmation];
  if (parameterConfirmation)
  {
    v24 = parameterConfirmation;
    parameterConfirmation2 = [(IFTSchemaIFTStatementOutcome *)self parameterConfirmation];
    parameterConfirmation3 = [equalCopy parameterConfirmation];
    v27 = [parameterConfirmation2 isEqual:parameterConfirmation3];

    if (!v27)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self parameterDisambiguation];
  success2 = [equalCopy parameterDisambiguation];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  parameterDisambiguation = [(IFTSchemaIFTStatementOutcome *)self parameterDisambiguation];
  if (parameterDisambiguation)
  {
    v29 = parameterDisambiguation;
    parameterDisambiguation2 = [(IFTSchemaIFTStatementOutcome *)self parameterDisambiguation];
    parameterDisambiguation3 = [equalCopy parameterDisambiguation];
    v32 = [parameterDisambiguation2 isEqual:parameterDisambiguation3];

    if (!v32)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self parameterNotAllowed];
  success2 = [equalCopy parameterNotAllowed];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  parameterNotAllowed = [(IFTSchemaIFTStatementOutcome *)self parameterNotAllowed];
  if (parameterNotAllowed)
  {
    v34 = parameterNotAllowed;
    parameterNotAllowed2 = [(IFTSchemaIFTStatementOutcome *)self parameterNotAllowed];
    parameterNotAllowed3 = [equalCopy parameterNotAllowed];
    v37 = [parameterNotAllowed2 isEqual:parameterNotAllowed3];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self parameterCandidatesNotFounds];
  success2 = [equalCopy parameterCandidatesNotFounds];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  parameterCandidatesNotFounds = [(IFTSchemaIFTStatementOutcome *)self parameterCandidatesNotFounds];
  if (parameterCandidatesNotFounds)
  {
    v39 = parameterCandidatesNotFounds;
    parameterCandidatesNotFounds2 = [(IFTSchemaIFTStatementOutcome *)self parameterCandidatesNotFounds];
    parameterCandidatesNotFounds3 = [equalCopy parameterCandidatesNotFounds];
    v42 = [parameterCandidatesNotFounds2 isEqual:parameterCandidatesNotFounds3];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self actionRequirement];
  success2 = [equalCopy actionRequirement];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  actionRequirement = [(IFTSchemaIFTStatementOutcome *)self actionRequirement];
  if (actionRequirement)
  {
    v44 = actionRequirement;
    actionRequirement2 = [(IFTSchemaIFTStatementOutcome *)self actionRequirement];
    actionRequirement3 = [equalCopy actionRequirement];
    v47 = [actionRequirement2 isEqual:actionRequirement3];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self toolDisambiguation];
  success2 = [equalCopy toolDisambiguation];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  toolDisambiguation = [(IFTSchemaIFTStatementOutcome *)self toolDisambiguation];
  if (toolDisambiguation)
  {
    v49 = toolDisambiguation;
    toolDisambiguation2 = [(IFTSchemaIFTStatementOutcome *)self toolDisambiguation];
    toolDisambiguation3 = [equalCopy toolDisambiguation];
    v52 = [toolDisambiguation2 isEqual:toolDisambiguation3];

    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self failure];
  success2 = [equalCopy failure];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_57;
  }

  failure = [(IFTSchemaIFTStatementOutcome *)self failure];
  if (failure)
  {
    v54 = failure;
    failure2 = [(IFTSchemaIFTStatementOutcome *)self failure];
    failure3 = [equalCopy failure];
    v57 = [failure2 isEqual:failure3];

    if (!v57)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  success = [(IFTSchemaIFTStatementOutcome *)self valueDisambiguation];
  success2 = [equalCopy valueDisambiguation];
  if ((success != 0) != (success2 == 0))
  {
    valueDisambiguation = [(IFTSchemaIFTStatementOutcome *)self valueDisambiguation];
    if (!valueDisambiguation)
    {

LABEL_61:
      v63 = 1;
      goto LABEL_59;
    }

    v59 = valueDisambiguation;
    valueDisambiguation2 = [(IFTSchemaIFTStatementOutcome *)self valueDisambiguation];
    valueDisambiguation3 = [equalCopy valueDisambiguation];
    v62 = [valueDisambiguation2 isEqual:valueDisambiguation3];

    if (v62)
    {
      goto LABEL_61;
    }
  }

  else
  {
LABEL_57:
  }

LABEL_58:
  v63 = 0;
LABEL_59:

  return v63;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  success = [(IFTSchemaIFTStatementOutcome *)self success];

  if (success)
  {
    success2 = [(IFTSchemaIFTStatementOutcome *)self success];
    PBDataWriterWriteSubmessage();
  }

  actionConfirmation = [(IFTSchemaIFTStatementOutcome *)self actionConfirmation];

  if (actionConfirmation)
  {
    actionConfirmation2 = [(IFTSchemaIFTStatementOutcome *)self actionConfirmation];
    PBDataWriterWriteSubmessage();
  }

  parameterNeedsValue = [(IFTSchemaIFTStatementOutcome *)self parameterNeedsValue];

  if (parameterNeedsValue)
  {
    parameterNeedsValue2 = [(IFTSchemaIFTStatementOutcome *)self parameterNeedsValue];
    PBDataWriterWriteSubmessage();
  }

  parameterConfirmation = [(IFTSchemaIFTStatementOutcome *)self parameterConfirmation];

  if (parameterConfirmation)
  {
    parameterConfirmation2 = [(IFTSchemaIFTStatementOutcome *)self parameterConfirmation];
    PBDataWriterWriteSubmessage();
  }

  parameterDisambiguation = [(IFTSchemaIFTStatementOutcome *)self parameterDisambiguation];

  if (parameterDisambiguation)
  {
    parameterDisambiguation2 = [(IFTSchemaIFTStatementOutcome *)self parameterDisambiguation];
    PBDataWriterWriteSubmessage();
  }

  parameterNotAllowed = [(IFTSchemaIFTStatementOutcome *)self parameterNotAllowed];

  if (parameterNotAllowed)
  {
    parameterNotAllowed2 = [(IFTSchemaIFTStatementOutcome *)self parameterNotAllowed];
    PBDataWriterWriteSubmessage();
  }

  parameterCandidatesNotFounds = [(IFTSchemaIFTStatementOutcome *)self parameterCandidatesNotFounds];

  if (parameterCandidatesNotFounds)
  {
    parameterCandidatesNotFounds2 = [(IFTSchemaIFTStatementOutcome *)self parameterCandidatesNotFounds];
    PBDataWriterWriteSubmessage();
  }

  actionRequirement = [(IFTSchemaIFTStatementOutcome *)self actionRequirement];

  if (actionRequirement)
  {
    actionRequirement2 = [(IFTSchemaIFTStatementOutcome *)self actionRequirement];
    PBDataWriterWriteSubmessage();
  }

  toolDisambiguation = [(IFTSchemaIFTStatementOutcome *)self toolDisambiguation];

  if (toolDisambiguation)
  {
    toolDisambiguation2 = [(IFTSchemaIFTStatementOutcome *)self toolDisambiguation];
    PBDataWriterWriteSubmessage();
  }

  failure = [(IFTSchemaIFTStatementOutcome *)self failure];

  if (failure)
  {
    failure2 = [(IFTSchemaIFTStatementOutcome *)self failure];
    PBDataWriterWriteSubmessage();
  }

  valueDisambiguation = [(IFTSchemaIFTStatementOutcome *)self valueDisambiguation];

  v25 = toCopy;
  if (valueDisambiguation)
  {
    valueDisambiguation2 = [(IFTSchemaIFTStatementOutcome *)self valueDisambiguation];
    PBDataWriterWriteSubmessage();

    v25 = toCopy;
  }
}

- (void)deleteValueDisambiguation
{
  if (self->_whichOneof_Statementoutcome == 11)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_valueDisambiguation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTValueDisambiguation)valueDisambiguation
{
  if (self->_whichOneof_Statementoutcome == 11)
  {
    v3 = self->_valueDisambiguation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setValueDisambiguation:(id)disambiguation
{
  disambiguationCopy = disambiguation;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  v15 = 11;
  if (!disambiguationCopy)
  {
    v15 = 0;
  }

  self->_whichOneof_Statementoutcome = v15;
  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = disambiguationCopy;
}

- (void)deleteFailure
{
  if (self->_whichOneof_Statementoutcome == 10)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_failure = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTActionFailure)failure
{
  if (self->_whichOneof_Statementoutcome == 10)
  {
    v3 = self->_failure;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailure:(id)failure
{
  failureCopy = failure;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  v15 = 10;
  if (!failureCopy)
  {
    v15 = 0;
  }

  self->_whichOneof_Statementoutcome = v15;
  failure = self->_failure;
  self->_failure = failureCopy;
}

- (void)deleteToolDisambiguation
{
  if (self->_whichOneof_Statementoutcome == 9)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_toolDisambiguation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTToolDisambiguation)toolDisambiguation
{
  if (self->_whichOneof_Statementoutcome == 9)
  {
    v3 = self->_toolDisambiguation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToolDisambiguation:(id)disambiguation
{
  disambiguationCopy = disambiguation;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  v15 = 9;
  if (!disambiguationCopy)
  {
    v15 = 0;
  }

  self->_whichOneof_Statementoutcome = v15;
  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = disambiguationCopy;
}

- (void)deleteActionRequirement
{
  if (self->_whichOneof_Statementoutcome == 8)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_actionRequirement = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTActionRequirement)actionRequirement
{
  if (self->_whichOneof_Statementoutcome == 8)
  {
    v3 = self->_actionRequirement;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionRequirement:(id)requirement
{
  requirementCopy = requirement;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  self->_whichOneof_Statementoutcome = 8 * (requirementCopy != 0);
  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = requirementCopy;
}

- (void)deleteParameterCandidatesNotFounds
{
  if (self->_whichOneof_Statementoutcome == 7)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_parameterCandidatesNotFounds = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTParameterCandidatesNotFound)parameterCandidatesNotFounds
{
  if (self->_whichOneof_Statementoutcome == 7)
  {
    v3 = self->_parameterCandidatesNotFounds;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParameterCandidatesNotFounds:(id)founds
{
  foundsCopy = founds;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  v15 = 7;
  if (!foundsCopy)
  {
    v15 = 0;
  }

  self->_whichOneof_Statementoutcome = v15;
  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = foundsCopy;
}

- (void)deleteParameterNotAllowed
{
  if (self->_whichOneof_Statementoutcome == 6)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_parameterNotAllowed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTParameterNotAllowed)parameterNotAllowed
{
  if (self->_whichOneof_Statementoutcome == 6)
  {
    v3 = self->_parameterNotAllowed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParameterNotAllowed:(id)allowed
{
  allowedCopy = allowed;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  v15 = 6;
  if (!allowedCopy)
  {
    v15 = 0;
  }

  self->_whichOneof_Statementoutcome = v15;
  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = allowedCopy;
}

- (void)deleteParameterDisambiguation
{
  if (self->_whichOneof_Statementoutcome == 5)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_parameterDisambiguation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTParameterDisambiguation)parameterDisambiguation
{
  if (self->_whichOneof_Statementoutcome == 5)
  {
    v3 = self->_parameterDisambiguation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParameterDisambiguation:(id)disambiguation
{
  disambiguationCopy = disambiguation;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  v15 = 5;
  if (!disambiguationCopy)
  {
    v15 = 0;
  }

  self->_whichOneof_Statementoutcome = v15;
  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = disambiguationCopy;
}

- (void)deleteParameterConfirmation
{
  if (self->_whichOneof_Statementoutcome == 4)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_parameterConfirmation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTParameterConfirmation)parameterConfirmation
{
  if (self->_whichOneof_Statementoutcome == 4)
  {
    v3 = self->_parameterConfirmation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParameterConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  self->_whichOneof_Statementoutcome = 4 * (confirmationCopy != 0);
  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = confirmationCopy;
}

- (void)deleteParameterNeedsValue
{
  if (self->_whichOneof_Statementoutcome == 3)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_parameterNeedsValue = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTParameterNeedsValue)parameterNeedsValue
{
  if (self->_whichOneof_Statementoutcome == 3)
  {
    v3 = self->_parameterNeedsValue;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParameterNeedsValue:(id)value
{
  valueCopy = value;
  success = self->_success;
  self->_success = 0;

  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  v15 = 3;
  if (!valueCopy)
  {
    v15 = 0;
  }

  self->_whichOneof_Statementoutcome = v15;
  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = valueCopy;
}

- (void)deleteActionConfirmation
{
  if (self->_whichOneof_Statementoutcome == 2)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_actionConfirmation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTActionConfirmation)actionConfirmation
{
  if (self->_whichOneof_Statementoutcome == 2)
  {
    v3 = self->_actionConfirmation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  success = self->_success;
  self->_success = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  self->_whichOneof_Statementoutcome = 2 * (confirmationCopy != 0);
  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = confirmationCopy;
}

- (void)deleteSuccess
{
  if (self->_whichOneof_Statementoutcome == 1)
  {
    self->_whichOneof_Statementoutcome = 0;
    self->_success = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTActionSuccess)success
{
  if (self->_whichOneof_Statementoutcome == 1)
  {
    v3 = self->_success;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSuccess:(id)success
{
  successCopy = success;
  actionConfirmation = self->_actionConfirmation;
  self->_actionConfirmation = 0;

  parameterNeedsValue = self->_parameterNeedsValue;
  self->_parameterNeedsValue = 0;

  parameterConfirmation = self->_parameterConfirmation;
  self->_parameterConfirmation = 0;

  parameterDisambiguation = self->_parameterDisambiguation;
  self->_parameterDisambiguation = 0;

  parameterNotAllowed = self->_parameterNotAllowed;
  self->_parameterNotAllowed = 0;

  parameterCandidatesNotFounds = self->_parameterCandidatesNotFounds;
  self->_parameterCandidatesNotFounds = 0;

  actionRequirement = self->_actionRequirement;
  self->_actionRequirement = 0;

  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  failure = self->_failure;
  self->_failure = 0;

  valueDisambiguation = self->_valueDisambiguation;
  self->_valueDisambiguation = 0;

  self->_whichOneof_Statementoutcome = successCopy != 0;
  success = self->_success;
  self->_success = successCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v40.receiver = self;
  v40.super_class = IFTSchemaIFTStatementOutcome;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:policyCopy];
  success = [(IFTSchemaIFTStatementOutcome *)self success];
  v7 = [success applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteSuccess];
  }

  actionConfirmation = [(IFTSchemaIFTStatementOutcome *)self actionConfirmation];
  v10 = [actionConfirmation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteActionConfirmation];
  }

  parameterNeedsValue = [(IFTSchemaIFTStatementOutcome *)self parameterNeedsValue];
  v13 = [parameterNeedsValue applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteParameterNeedsValue];
  }

  parameterConfirmation = [(IFTSchemaIFTStatementOutcome *)self parameterConfirmation];
  v16 = [parameterConfirmation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteParameterConfirmation];
  }

  parameterDisambiguation = [(IFTSchemaIFTStatementOutcome *)self parameterDisambiguation];
  v19 = [parameterDisambiguation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteParameterDisambiguation];
  }

  parameterNotAllowed = [(IFTSchemaIFTStatementOutcome *)self parameterNotAllowed];
  v22 = [parameterNotAllowed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteParameterNotAllowed];
  }

  parameterCandidatesNotFounds = [(IFTSchemaIFTStatementOutcome *)self parameterCandidatesNotFounds];
  v25 = [parameterCandidatesNotFounds applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteParameterCandidatesNotFounds];
  }

  actionRequirement = [(IFTSchemaIFTStatementOutcome *)self actionRequirement];
  v28 = [actionRequirement applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteActionRequirement];
  }

  toolDisambiguation = [(IFTSchemaIFTStatementOutcome *)self toolDisambiguation];
  v31 = [toolDisambiguation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteToolDisambiguation];
  }

  failure = [(IFTSchemaIFTStatementOutcome *)self failure];
  v34 = [failure applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteFailure];
  }

  valueDisambiguation = [(IFTSchemaIFTStatementOutcome *)self valueDisambiguation];
  v37 = [valueDisambiguation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(IFTSchemaIFTStatementOutcome *)self deleteValueDisambiguation];
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