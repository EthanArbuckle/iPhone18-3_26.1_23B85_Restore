@interface FLOWSchemaFLOWLocationAccessPermissionPromptFailed
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWLocationAccessPermissionPromptFailed)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWLocationAccessPermissionPromptFailed)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWLocationAccessPermissionPromptFailed

- (FLOWSchemaFLOWLocationAccessPermissionPromptFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWLocationAccessPermissionPromptFailed;
  v5 = [(FLOWSchemaFLOWLocationAccessPermissionPromptFailed *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"failureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWLocationAccessPermissionPromptFailed setFailureReason:](v5, "setFailureReason:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWLocationAccessPermissionPromptFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWLocationAccessPermissionPromptFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWLocationAccessPermissionPromptFailed *)self dictionaryRepresentation];
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
    v4 = [(FLOWSchemaFLOWLocationAccessPermissionPromptFailed *)self failureReason]- 1;
    if (v4 > 4)
    {
      v5 = @"FLOWLOCATIONACCESSPERMISSIONFAILUREREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D59C0[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"failureReason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_failureReason;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (failureReason = self->_failureReason, failureReason == [v4 failureReason]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end