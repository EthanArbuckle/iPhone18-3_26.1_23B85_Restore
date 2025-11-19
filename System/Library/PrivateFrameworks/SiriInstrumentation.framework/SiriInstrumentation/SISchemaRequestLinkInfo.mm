@interface SISchemaRequestLinkInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaRequestLinkInfo)initWithDictionary:(id)a3;
- (SISchemaRequestLinkInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaRequestLinkInfo

- (SISchemaRequestLinkInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SISchemaRequestLinkInfo;
  v5 = [(SISchemaRequestLinkInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"component"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaRequestLinkInfo setComponent:](v5, "setComponent:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(SISchemaRequestLinkInfo *)v5 setUuid:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaRequestLinkInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaRequestLinkInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaRequestLinkInfo *)self dictionaryRepresentation];
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
    v4 = [(SISchemaRequestLinkInfo *)self component]- 1;
    if (v4 > 0x41)
    {
      v5 = @"COMPONENTNAME_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E6218[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"component"];
  }

  if (self->_uuid)
  {
    v6 = [(SISchemaRequestLinkInfo *)self uuid];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"uuid"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"uuid"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_component;
  }

  else
  {
    v2 = 0;
  }

  return [(SISchemaUUID *)self->_uuid hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (component = self->_component, component == [v4 component]))
      {
        v6 = [(SISchemaRequestLinkInfo *)self uuid];
        v7 = [v4 uuid];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(SISchemaRequestLinkInfo *)self uuid];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(SISchemaRequestLinkInfo *)self uuid];
          v12 = [v4 uuid];
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

  v4 = [(SISchemaRequestLinkInfo *)self uuid];

  v5 = v7;
  if (v4)
  {
    v6 = [(SISchemaRequestLinkInfo *)self uuid];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaRequestLinkInfo;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaRequestLinkInfo *)self uuid:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaRequestLinkInfo *)self deleteUuid];
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