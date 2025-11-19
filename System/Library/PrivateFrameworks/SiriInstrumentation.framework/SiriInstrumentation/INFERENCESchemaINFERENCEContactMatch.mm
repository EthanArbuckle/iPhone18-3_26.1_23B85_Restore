@interface INFERENCESchemaINFERENCEContactMatch
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEContactMatch)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEContactMatch)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsShownToUser:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEContactMatch

- (INFERENCESchemaINFERENCEContactMatch)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INFERENCESchemaINFERENCEContactMatch;
  v5 = [(INFERENCESchemaINFERENCEContactMatch *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contactValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEContact alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setContactValue:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"contactSignalSet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEContactSignalSet alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setContactSignalSet:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"backgroundSignalSet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEBackgroundContactSignalSet alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setBackgroundSignalSet:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"featureSet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[INFERENCESchemaINFERENCEContactFeatureSet alloc] initWithDictionary:v12];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setFeatureSet:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setScore:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"isShownToUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactMatch setIsShownToUser:](v5, "setIsShownToUser:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactMatch)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactMatch *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEContactMatch *)self dictionaryRepresentation];
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
  if (self->_backgroundSignalSet)
  {
    v4 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"backgroundSignalSet"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"backgroundSignalSet"];
    }
  }

  if (self->_contactSignalSet)
  {
    v7 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"contactSignalSet"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"contactSignalSet"];
    }
  }

  if (self->_contactValue)
  {
    v10 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"contactValue"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"contactValue"];
    }
  }

  if (self->_featureSet)
  {
    v13 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"featureSet"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"featureSet"];
    }
  }

  v16 = *(&self->_isShownToUser + 1);
  if ((v16 & 2) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactMatch isShownToUser](self, "isShownToUser")}];
    [v3 setObject:v17 forKeyedSubscript:@"isShownToUser"];

    v16 = *(&self->_isShownToUser + 1);
  }

  if (v16)
  {
    v18 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactMatch *)self score];
    v19 = [v18 numberWithFloat:?];
    [v3 setObject:v19 forKeyedSubscript:@"score"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCEContact *)self->_contactValue hash];
  v4 = [(INFERENCESchemaINFERENCEContactSignalSet *)self->_contactSignalSet hash];
  v5 = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self->_backgroundSignalSet hash];
  v6 = [(INFERENCESchemaINFERENCEContactFeatureSet *)self->_featureSet hash];
  if (*(&self->_isShownToUser + 1))
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v11 = score;
    }

    else
    {
      v11 = -score;
    }

    *v7.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v8, v7).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*(&self->_isShownToUser + 1) & 2) != 0)
  {
    v14 = 2654435761 * self->_isShownToUser;
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
  v6 = [v4 contactValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
    v10 = [v4 contactValue];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
  v6 = [v4 contactSignalSet];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
  if (v12)
  {
    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
    v15 = [v4 contactSignalSet];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
  v6 = [v4 backgroundSignalSet];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
  if (v17)
  {
    v18 = v17;
    v19 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
    v20 = [v4 backgroundSignalSet];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
  v6 = [v4 featureSet];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
  if (v22)
  {
    v23 = v22;
    v24 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
    v25 = [v4 featureSet];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v29 = *(&self->_isShownToUser + 1);
  v30 = v4[45];
  if ((v29 & 1) == (v30 & 1))
  {
    if (v29)
    {
      score = self->_score;
      [v4 score];
      if (score != v32)
      {
        goto LABEL_22;
      }

      v29 = *(&self->_isShownToUser + 1);
      v30 = v4[45];
    }

    v33 = (v29 >> 1) & 1;
    if (v33 == ((v30 >> 1) & 1))
    {
      if (!v33 || (isShownToUser = self->_isShownToUser, isShownToUser == [v4 isShownToUser]))
      {
        v27 = 1;
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];

  if (v6)
  {
    v7 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];

  if (v8)
  {
    v9 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];

  if (v10)
  {
    v11 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
    PBDataWriterWriteSubmessage();
  }

  v12 = *(&self->_isShownToUser + 1);
  if (v12)
  {
    PBDataWriterWriteFloatField();
    v12 = *(&self->_isShownToUser + 1);
  }

  v13 = v14;
  if ((v12 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v13 = v14;
  }
}

- (void)setHasIsShownToUser:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isShownToUser + 1) = *(&self->_isShownToUser + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = INFERENCESchemaINFERENCEContactMatch;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEContactMatch *)self deleteContactValue];
  }

  v9 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(INFERENCESchemaINFERENCEContactMatch *)self deleteContactSignalSet];
  }

  v12 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(INFERENCESchemaINFERENCEContactMatch *)self deleteBackgroundSignalSet];
  }

  v15 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(INFERENCESchemaINFERENCEContactMatch *)self deleteFeatureSet];
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