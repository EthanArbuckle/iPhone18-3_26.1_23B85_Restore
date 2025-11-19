@interface IFTSchemaIFTCandidatePromptStatus
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTCandidatePromptStatus)initWithDictionary:(id)a3;
- (IFTSchemaIFTCandidatePromptStatus)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int64_t)picked;
- (unint64_t)hash;
- (void)deleteConfirmed;
- (void)deleteNotPrompted;
- (void)deletePicked;
- (void)setConfirmed:(BOOL)a3;
- (void)setNotPrompted:(BOOL)a3;
- (void)setPicked:(int64_t)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTCandidatePromptStatus

- (IFTSchemaIFTCandidatePromptStatus)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTCandidatePromptStatus;
  v5 = [(IFTSchemaIFTCandidatePromptStatus *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"notPrompted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTCandidatePromptStatus setNotPrompted:](v5, "setNotPrompted:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"confirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTCandidatePromptStatus setConfirmed:](v5, "setConfirmed:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"picked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTCandidatePromptStatus setPicked:](v5, "setPicked:", [v8 longLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTCandidatePromptStatus)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCandidatePromptStatus *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTCandidatePromptStatus *)self dictionaryRepresentation];
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
  whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  if (whichOneof_Candidatepromptstatus == 2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTCandidatePromptStatus confirmed](self, "confirmed")}];
    [v3 setObject:v5 forKeyedSubscript:@"confirmed"];

    whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  }

  if (whichOneof_Candidatepromptstatus == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTCandidatePromptStatus notPrompted](self, "notPrompted")}];
    [v3 setObject:v6 forKeyedSubscript:@"notPrompted"];

    whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  }

  if (whichOneof_Candidatepromptstatus == 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTCandidatePromptStatus picked](self, "picked")}];
    [v3 setObject:v7 forKeyedSubscript:@"picked"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  switch(whichOneof_Candidatepromptstatus)
  {
    case 3uLL:
      return 2654435761 * self->_picked;
    case 2uLL:
      v3 = 9;
      return 2654435761 * *(&self->super.super.super.isa + v3);
    case 1uLL:
      v3 = 8;
      return 2654435761 * *(&self->super.super.super.isa + v3);
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus, whichOneof_Candidatepromptstatus == objc_msgSend(v4, "whichOneof_Candidatepromptstatus")) && (notPrompted = self->_notPrompted, notPrompted == objc_msgSend(v4, "notPrompted")) && (confirmed = self->_confirmed, confirmed == objc_msgSend(v4, "confirmed")))
  {
    picked = self->_picked;
    v9 = picked == [v4 picked];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  v6 = v4;
  if (whichOneof_Candidatepromptstatus == 1)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  }

  if (whichOneof_Candidatepromptstatus == 2)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  }

  if (whichOneof_Candidatepromptstatus == 3)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (void)deletePicked
{
  if (self->_whichOneof_Candidatepromptstatus == 3)
  {
    self->_whichOneof_Candidatepromptstatus = 0;
    self->_picked = 0;
  }
}

- (int64_t)picked
{
  if (self->_whichOneof_Candidatepromptstatus == 3)
  {
    return self->_picked;
  }

  else
  {
    return 0;
  }
}

- (void)setPicked:(int64_t)a3
{
  self->_notPrompted = 0;
  self->_confirmed = 0;
  self->_whichOneof_Candidatepromptstatus = 3;
  self->_picked = a3;
}

- (void)deleteConfirmed
{
  if (self->_whichOneof_Candidatepromptstatus == 2)
  {
    self->_whichOneof_Candidatepromptstatus = 0;
    self->_confirmed = 0;
  }
}

- (void)setConfirmed:(BOOL)a3
{
  self->_notPrompted = 0;
  self->_picked = 0;
  self->_whichOneof_Candidatepromptstatus = 2;
  self->_confirmed = a3;
}

- (void)deleteNotPrompted
{
  if (self->_whichOneof_Candidatepromptstatus == 1)
  {
    self->_whichOneof_Candidatepromptstatus = 0;
    self->_notPrompted = 0;
  }
}

- (void)setNotPrompted:(BOOL)a3
{
  self->_confirmed = 0;
  self->_picked = 0;
  self->_whichOneof_Candidatepromptstatus = 1;
  self->_notPrompted = a3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end