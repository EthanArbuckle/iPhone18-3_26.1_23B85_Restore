@interface SetupSchemaProvisionalSiriSetupEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupEnded)initWithDictionary:(id)a3;
- (SetupSchemaProvisionalSiriSetupEnded)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasDismissed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SetupSchemaProvisionalSiriSetupEnded

- (void)setHasDismissed:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    siriEnabled = self->_siriEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    dismissed = self->_dismissed;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[12];
  if ((v6 & 1) != (*&has & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    siriEnabled = self->_siriEnabled;
    if (siriEnabled != [v4 siriEnabled])
    {
LABEL_10:
      v9 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[12];
  }

  if (((v6 ^ *&has) & 2) != 0)
  {
    goto LABEL_10;
  }

  if ((*&has & 2) != 0)
  {
    dismissed = self->_dismissed;
    if (dismissed != [v4 dismissed])
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SetupSchemaProvisionalSiriSetupEnded dismissed](self, "dismissed")}];
    [v3 setObject:v5 forKeyedSubscript:@"dismissed"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SetupSchemaProvisionalSiriSetupEnded siriEnabled](self, "siriEnabled")}];
    [v3 setObject:v6 forKeyedSubscript:@"siriEnabled"];
  }

  [(SetupSchemaProvisionalSiriSetupEnded *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SetupSchemaProvisionalSiriSetupEnded *)self dictionaryRepresentation];
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

- (SetupSchemaProvisionalSiriSetupEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SetupSchemaProvisionalSiriSetupEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SetupSchemaProvisionalSiriSetupEnded;
  v5 = [(SetupSchemaProvisionalSiriSetupEnded *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SetupSchemaProvisionalSiriSetupEnded setSiriEnabled:](v5, "setSiriEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"dismissed"];
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