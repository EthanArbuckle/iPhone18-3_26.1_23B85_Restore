@interface SetupSchemaProvisionalSiriSetupStep
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupStep)initWithDictionary:(id)a3;
- (SetupSchemaProvisionalSiriSetupStep)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SetupSchemaProvisionalSiriSetupStep

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    MEMORY[0x2821A42D8](a3, self->_page, 1);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((v4[12] & 1) == (*&self->_has & 1))
    {
      if ((*&self->_has & 1) == 0 || (page = self->_page, page == [v4 page]))
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKeyedSubscript:@"page"];
  }

  [(SetupSchemaProvisionalSiriSetupStep *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SetupSchemaProvisionalSiriSetupStep *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SetupSchemaProvisionalSiriSetupStep)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupStep *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SetupSchemaProvisionalSiriSetupStep)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SetupSchemaProvisionalSiriSetupStep;
  v5 = [(SetupSchemaProvisionalSiriSetupStep *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"page"];
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