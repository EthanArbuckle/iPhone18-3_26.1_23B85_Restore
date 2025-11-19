@interface PLUSSchemaPLUSTMDCGroundTruthGenerated
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSTMDCGroundTruthGenerated)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSTMDCGroundTruthGenerated)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSTMDCGroundTruthGenerated

- (PLUSSchemaPLUSTMDCGroundTruthGenerated)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSTMDCGroundTruthGenerated;
  v5 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalPlusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)v5 setOriginalPlusId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"groundTruth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSTMDCGroundTruth alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)v5 setGroundTruth:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)v5 setOriginalRequestId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSTMDCGroundTruthGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self dictionaryRepresentation];
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
  if (self->_groundTruth)
  {
    v4 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"groundTruth"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"groundTruth"];
    }
  }

  if (self->_originalPlusId)
  {
    v7 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"originalPlusId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"originalPlusId"];
    }
  }

  if (self->_originalRequestId)
  {
    v10 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"originalRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalPlusId hash];
  v4 = [(PLUSSchemaPLUSTMDCGroundTruth *)self->_groundTruth hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_originalRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
  v6 = [v4 originalPlusId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
    v10 = [v4 originalPlusId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
  v6 = [v4 groundTruth];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
    v15 = [v4 groundTruth];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
  v6 = [v4 originalRequestId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
    v20 = [v4 originalRequestId];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];

  if (v6)
  {
    v7 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];

  v9 = v11;
  if (v8)
  {
    v10 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PLUSSchemaPLUSTMDCGroundTruthGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalPlusId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self deleteOriginalPlusId];
  }

  v9 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self groundTruth];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self deleteGroundTruth];
  }

  v12 = [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self originalRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PLUSSchemaPLUSTMDCGroundTruthGenerated *)self deleteOriginalRequestId];
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