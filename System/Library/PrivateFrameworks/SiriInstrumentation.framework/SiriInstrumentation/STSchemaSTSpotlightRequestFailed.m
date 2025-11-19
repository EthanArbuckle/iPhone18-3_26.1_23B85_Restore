@interface STSchemaSTSpotlightRequestFailed
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (STSchemaSTSpotlightRequestFailed)initWithDictionary:(id)a3;
- (STSchemaSTSpotlightRequestFailed)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation STSchemaSTSpotlightRequestFailed

- (STSchemaSTSpotlightRequestFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STSchemaSTSpotlightRequestFailed;
  v5 = [(STSchemaSTSpotlightRequestFailed *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTSpotlightRequestFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"stError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[STSchemaSTFailureError alloc] initWithDictionary:v7];
      [(STSchemaSTSpotlightRequestFailed *)v5 setStError:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (STSchemaSTSpotlightRequestFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(STSchemaSTSpotlightRequestFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(STSchemaSTSpotlightRequestFailed *)self dictionaryRepresentation];
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
    v4 = [(STSchemaSTSpotlightRequestFailed *)self reason];
    v5 = @"STSPOTLIGHTFAILUREREASON_UNKNOWN";
    if (v4 == 1)
    {
      v5 = @"STSPOTLIGHTFAILUREREASON_TIMEOUT";
    }

    if (v4 == 2)
    {
      v6 = @"STSPOTLIGHTFAILUREREASON_SEARCHD_UNAVAILABLE";
    }

    else
    {
      v6 = v5;
    }

    [v3 setObject:v6 forKeyedSubscript:@"reason"];
  }

  if (self->_stError)
  {
    v7 = [(STSchemaSTSpotlightRequestFailed *)self stError];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"stError"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"stError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_reason;
  }

  else
  {
    v2 = 0;
  }

  return [(STSchemaSTFailureError *)self->_stError hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (reason = self->_reason, reason == [v4 reason]))
      {
        v6 = [(STSchemaSTSpotlightRequestFailed *)self stError];
        v7 = [v4 stError];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(STSchemaSTSpotlightRequestFailed *)self stError];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(STSchemaSTSpotlightRequestFailed *)self stError];
          v12 = [v4 stError];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(STSchemaSTSpotlightRequestFailed *)self stError];

  v5 = v7;
  if (v4)
  {
    v6 = [(STSchemaSTSpotlightRequestFailed *)self stError];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = STSchemaSTSpotlightRequestFailed;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(STSchemaSTSpotlightRequestFailed *)self stError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(STSchemaSTSpotlightRequestFailed *)self deleteStError];
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