@interface SetupSchemaProvisionalSiriSetupStep
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupStep)initWithDictionary:(id)dictionary;
- (SetupSchemaProvisionalSiriSetupStep)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SetupSchemaProvisionalSiriSetupStep

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    MEMORY[0x2821A42D8](to, self->_page, 1);
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
      if ((*&self->_has & 1) == 0 || (page = self->_page, page == [equalCopy page]))
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
    return 2654435761 * self->_page;
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
    v4 = [(SetupSchemaProvisionalSiriSetupStep *)self page]- 1;
    if (v4 > 6)
    {
      v5 = @"SIRISETUPPAGE_UNKNOWN";
    }

    else
    {
      v5 = off_279C4A130[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"page"];
  }

  [(SetupSchemaProvisionalSiriSetupStep *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SetupSchemaProvisionalSiriSetupStep *)self dictionaryRepresentation];
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

- (SetupSchemaProvisionalSiriSetupStep)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupStep *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SetupSchemaProvisionalSiriSetupStep)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SetupSchemaProvisionalSiriSetupStep;
  v5 = [(SetupSchemaProvisionalSiriSetupStep *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"page"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SetupSchemaProvisionalSiriSetupStep setPage:](v5, "setPage:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

@end