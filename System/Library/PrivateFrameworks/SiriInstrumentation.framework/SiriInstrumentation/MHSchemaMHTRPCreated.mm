@interface MHSchemaMHTRPCreated
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHTRPCreated)initWithDictionary:(id)dictionary;
- (MHSchemaMHTRPCreated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHTRPCreated

- (MHSchemaMHTRPCreated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MHSchemaMHTRPCreated;
  v5 = [(MHSchemaMHTRPCreated *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHTRPCreated *)v5 setTrpId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MHSchemaMHTRPCreated *)v5 setResultCandidateId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (MHSchemaMHTRPCreated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHTRPCreated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHTRPCreated *)self dictionaryRepresentation];
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
  if (self->_resultCandidateId)
  {
    resultCandidateId = [(MHSchemaMHTRPCreated *)self resultCandidateId];
    v5 = [resultCandidateId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_trpId)
  {
    trpId = [(MHSchemaMHTRPCreated *)self trpId];
    dictionaryRepresentation = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"trpId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  trpId = [(MHSchemaMHTRPCreated *)self trpId];
  trpId2 = [equalCopy trpId];
  if ((trpId != 0) == (trpId2 == 0))
  {
    goto LABEL_11;
  }

  trpId3 = [(MHSchemaMHTRPCreated *)self trpId];
  if (trpId3)
  {
    v8 = trpId3;
    trpId4 = [(MHSchemaMHTRPCreated *)self trpId];
    trpId5 = [equalCopy trpId];
    v11 = [trpId4 isEqual:trpId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  trpId = [(MHSchemaMHTRPCreated *)self resultCandidateId];
  trpId2 = [equalCopy resultCandidateId];
  if ((trpId != 0) != (trpId2 == 0))
  {
    resultCandidateId = [(MHSchemaMHTRPCreated *)self resultCandidateId];
    if (!resultCandidateId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = resultCandidateId;
    resultCandidateId2 = [(MHSchemaMHTRPCreated *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  trpId = [(MHSchemaMHTRPCreated *)self trpId];

  if (trpId)
  {
    trpId2 = [(MHSchemaMHTRPCreated *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(MHSchemaMHTRPCreated *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHTRPCreated;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHTRPCreated *)self trpId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(MHSchemaMHTRPCreated *)self deleteTrpId];
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