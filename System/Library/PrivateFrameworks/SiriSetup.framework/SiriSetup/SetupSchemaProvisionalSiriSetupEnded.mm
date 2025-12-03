@interface SetupSchemaProvisionalSiriSetupEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupEnded)initWithDictionary:(id)dictionary;
- (SetupSchemaProvisionalSiriSetupEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasDismissed:(BOOL)dismissed;
- (void)writeTo:(id)to;
@end

@implementation SetupSchemaProvisionalSiriSetupEnded

- (void)setHasDismissed:(BOOL)dismissed
{
  if (dismissed)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    siriEnabled = self->_siriEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    dismissed = self->_dismissed;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[12];
  if ((v6 & 1) != (*&has & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    siriEnabled = self->_siriEnabled;
    if (siriEnabled != [equalCopy siriEnabled])
    {
LABEL_10:
      v9 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[12];
  }

  if (((v6 ^ *&has) & 2) != 0)
  {
    goto LABEL_10;
  }

  if ((*&has & 2) != 0)
  {
    dismissed = self->_dismissed;
    if (dismissed != [equalCopy dismissed])
    {
      goto LABEL_10;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_siriEnabled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_dismissed;
  return v3 ^ v2;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SetupSchemaProvisionalSiriSetupEnded dismissed](self, "dismissed")}];
    [dictionary setObject:v5 forKeyedSubscript:@"dismissed"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SetupSchemaProvisionalSiriSetupEnded siriEnabled](self, "siriEnabled")}];
    [dictionary setObject:v6 forKeyedSubscript:@"siriEnabled"];
  }

  [(SetupSchemaProvisionalSiriSetupEnded *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SetupSchemaProvisionalSiriSetupEnded *)self dictionaryRepresentation];
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

- (SetupSchemaProvisionalSiriSetupEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SetupSchemaProvisionalSiriSetupEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SetupSchemaProvisionalSiriSetupEnded;
  v5 = [(SetupSchemaProvisionalSiriSetupEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SetupSchemaProvisionalSiriSetupEnded setSiriEnabled:](v5, "setSiriEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"dismissed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SetupSchemaProvisionalSiriSetupEnded setDismissed:](v5, "setDismissed:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

@end