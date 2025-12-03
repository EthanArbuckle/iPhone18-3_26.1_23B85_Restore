@interface IFTSchemaIFTCandidatePromptStatus
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCandidatePromptStatus)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTCandidatePromptStatus)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int64_t)picked;
- (unint64_t)hash;
- (void)deleteConfirmed;
- (void)deleteNotPrompted;
- (void)deletePicked;
- (void)setConfirmed:(BOOL)confirmed;
- (void)setNotPrompted:(BOOL)prompted;
- (void)setPicked:(int64_t)picked;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTCandidatePromptStatus

- (IFTSchemaIFTCandidatePromptStatus)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTCandidatePromptStatus;
  v5 = [(IFTSchemaIFTCandidatePromptStatus *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"notPrompted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTCandidatePromptStatus setNotPrompted:](v5, "setNotPrompted:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"confirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTCandidatePromptStatus setConfirmed:](v5, "setConfirmed:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"picked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTCandidatePromptStatus setPicked:](v5, "setPicked:", [v8 longLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTCandidatePromptStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCandidatePromptStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTCandidatePromptStatus *)self dictionaryRepresentation];
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
  whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  if (whichOneof_Candidatepromptstatus == 2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTCandidatePromptStatus confirmed](self, "confirmed")}];
    [dictionary setObject:v5 forKeyedSubscript:@"confirmed"];

    whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  }

  if (whichOneof_Candidatepromptstatus == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTCandidatePromptStatus notPrompted](self, "notPrompted")}];
    [dictionary setObject:v6 forKeyedSubscript:@"notPrompted"];

    whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  }

  if (whichOneof_Candidatepromptstatus == 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTCandidatePromptStatus picked](self, "picked")}];
    [dictionary setObject:v7 forKeyedSubscript:@"picked"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus, whichOneof_Candidatepromptstatus == objc_msgSend(equalCopy, "whichOneof_Candidatepromptstatus")) && (notPrompted = self->_notPrompted, notPrompted == objc_msgSend(equalCopy, "notPrompted")) && (confirmed = self->_confirmed, confirmed == objc_msgSend(equalCopy, "confirmed")))
  {
    picked = self->_picked;
    v9 = picked == [equalCopy picked];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  v6 = toCopy;
  if (whichOneof_Candidatepromptstatus == 1)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  }

  if (whichOneof_Candidatepromptstatus == 2)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    whichOneof_Candidatepromptstatus = self->_whichOneof_Candidatepromptstatus;
  }

  if (whichOneof_Candidatepromptstatus == 3)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
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

- (void)setPicked:(int64_t)picked
{
  self->_notPrompted = 0;
  self->_confirmed = 0;
  self->_whichOneof_Candidatepromptstatus = 3;
  self->_picked = picked;
}

- (void)deleteConfirmed
{
  if (self->_whichOneof_Candidatepromptstatus == 2)
  {
    self->_whichOneof_Candidatepromptstatus = 0;
    self->_confirmed = 0;
  }
}

- (void)setConfirmed:(BOOL)confirmed
{
  self->_notPrompted = 0;
  self->_picked = 0;
  self->_whichOneof_Candidatepromptstatus = 2;
  self->_confirmed = confirmed;
}

- (void)deleteNotPrompted
{
  if (self->_whichOneof_Candidatepromptstatus == 1)
  {
    self->_whichOneof_Candidatepromptstatus = 0;
    self->_notPrompted = 0;
  }
}

- (void)setNotPrompted:(BOOL)prompted
{
  self->_confirmed = 0;
  self->_picked = 0;
  self->_whichOneof_Candidatepromptstatus = 1;
  self->_notPrompted = prompted;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end