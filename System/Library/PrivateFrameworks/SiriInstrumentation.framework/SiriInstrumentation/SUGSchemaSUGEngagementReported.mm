@interface SUGSchemaSUGEngagementReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUGSchemaSUGEngagementReported)initWithDictionary:(id)a3;
- (SUGSchemaSUGEngagementReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SUGSchemaSUGEngagementReported

- (SUGSchemaSUGEngagementReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUGSchemaSUGEngagementReported;
  v5 = [(SUGSchemaSUGEngagementReported *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"performedTimeSince1970InMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGEngagementReported setPerformedTimeSince1970InMs:](v5, "setPerformedTimeSince1970InMs:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"userStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SUGSchemaSUGUserStatistics alloc] initWithDictionary:v7];
      [(SUGSchemaSUGEngagementReported *)v5 setUserStatistics:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"interaction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SUGSchemaSUGInteraction alloc] initWithDictionary:v9];
      [(SUGSchemaSUGEngagementReported *)v5 setInteraction:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SUGSchemaSUGEngagementReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUGSchemaSUGEngagementReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUGSchemaSUGEngagementReported *)self dictionaryRepresentation];
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
  if (self->_interaction)
  {
    v4 = [(SUGSchemaSUGEngagementReported *)self interaction];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"interaction"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"interaction"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SUGSchemaSUGEngagementReported performedTimeSince1970InMs](self, "performedTimeSince1970InMs")}];
    [v3 setObject:v7 forKeyedSubscript:@"performedTimeSince1970InMs"];
  }

  if (self->_userStatistics)
  {
    v8 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"userStatistics"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"userStatistics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_performedTimeSince1970InMs;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SUGSchemaSUGUserStatistics *)self->_userStatistics hash]^ v3;
  return v4 ^ [(SUGSchemaSUGInteraction *)self->_interaction hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    performedTimeSince1970InMs = self->_performedTimeSince1970InMs;
    if (performedTimeSince1970InMs != [v4 performedTimeSince1970InMs])
    {
      goto LABEL_15;
    }
  }

  v6 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
  v7 = [v4 userStatistics];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
  if (v8)
  {
    v9 = v8;
    v10 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
    v11 = [v4 userStatistics];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(SUGSchemaSUGEngagementReported *)self interaction];
  v7 = [v4 interaction];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(SUGSchemaSUGEngagementReported *)self interaction];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SUGSchemaSUGEngagementReported *)self interaction];
    v16 = [v4 interaction];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v4 = [(SUGSchemaSUGEngagementReported *)self userStatistics];

  if (v4)
  {
    v5 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SUGSchemaSUGEngagementReported *)self interaction];

  v7 = v9;
  if (v6)
  {
    v8 = [(SUGSchemaSUGEngagementReported *)self interaction];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUGSchemaSUGEngagementReported;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SUGSchemaSUGEngagementReported *)self userStatistics];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SUGSchemaSUGEngagementReported *)self deleteUserStatistics];
  }

  v9 = [(SUGSchemaSUGEngagementReported *)self interaction];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SUGSchemaSUGEngagementReported *)self deleteInteraction];
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