@interface INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet

- (INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet;
  v5 = [(INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"peopleSuggesterScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet *)v5 setPeopleSuggesterScore:?];
    }

    v7 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet *)self peopleSuggesterScore];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"peopleSuggesterScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

  peopleSuggesterScore = self->_peopleSuggesterScore;
  if (peopleSuggesterScore >= 0.0)
  {
    v6 = peopleSuggesterScore;
  }

  else
  {
    v6 = -peopleSuggesterScore;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      result += v7;
    }
  }

  else
  {
    result -= fabs(v7);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (peopleSuggesterScore = self->_peopleSuggesterScore, [v4 peopleSuggesterScore], peopleSuggesterScore == v6))
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end