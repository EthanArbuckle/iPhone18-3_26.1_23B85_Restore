@interface SetupSchemaProvisionalSiriSetupStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupStarted)initWithDictionary:(id)a3;
- (SetupSchemaProvisionalSiriSetupStarted)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SetupSchemaProvisionalSiriSetupStarted

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    exists = self->_exists;
    PBDataWriterWriteBOOLField();
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
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [v4 exists]))
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SetupSchemaProvisionalSiriSetupStarted exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  [(SetupSchemaProvisionalSiriSetupStarted *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SetupSchemaProvisionalSiriSetupStarted *)self dictionaryRepresentation];
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

- (SetupSchemaProvisionalSiriSetupStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SetupSchemaProvisionalSiriSetupStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SetupSchemaProvisionalSiriSetupStarted;
  v5 = [(SetupSchemaProvisionalSiriSetupStarted *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
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