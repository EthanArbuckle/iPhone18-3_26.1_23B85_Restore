@interface SetupSchemaProvisionalSiriSetupStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupStarted)initWithDictionary:(id)dictionary;
- (SetupSchemaProvisionalSiriSetupStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SetupSchemaProvisionalSiriSetupStarted

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    exists = self->_exists;
    PBDataWriterWriteBOOLField();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((equalCopy[12] & 1) == (*&self->_has & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [equalCopy exists]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_exists;
  }

  else
  {
    return 0;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SetupSchemaProvisionalSiriSetupStarted exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  [(SetupSchemaProvisionalSiriSetupStarted *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SetupSchemaProvisionalSiriSetupStarted *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SetupSchemaProvisionalSiriSetupStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SetupSchemaProvisionalSiriSetupStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SetupSchemaProvisionalSiriSetupStarted;
  v5 = [(SetupSchemaProvisionalSiriSetupStarted *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SetupSchemaProvisionalSiriSetupStarted setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

@end