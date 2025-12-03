@interface SISchemaAnnounceEnabledStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaAnnounceEnabledStatus)initWithDictionary:(id)dictionary;
- (SISchemaAnnounceEnabledStatus)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAnnounceCallsEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation SISchemaAnnounceEnabledStatus

- (SISchemaAnnounceEnabledStatus)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaAnnounceEnabledStatus;
  v5 = [(SISchemaAnnounceEnabledStatus *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"announceMessagesEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnnounceEnabledStatus setAnnounceMessagesEnabled:](v5, "setAnnounceMessagesEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"announceCallsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnnounceEnabledStatus setAnnounceCallsEnabled:](v5, "setAnnounceCallsEnabled:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"announceNotifications"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaAnnounceNotifications alloc] initWithDictionary:v8];
      [(SISchemaAnnounceEnabledStatus *)v5 setAnnounceNotifications:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaAnnounceEnabledStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaAnnounceEnabledStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaAnnounceEnabledStatus *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaAnnounceEnabledStatus announceCallsEnabled](self, "announceCallsEnabled")}];
    [dictionary setObject:v5 forKeyedSubscript:@"announceCallsEnabled"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaAnnounceEnabledStatus announceMessagesEnabled](self, "announceMessagesEnabled")}];
    [dictionary setObject:v6 forKeyedSubscript:@"announceMessagesEnabled"];
  }

  if (self->_announceNotifications)
  {
    announceNotifications = [(SISchemaAnnounceEnabledStatus *)self announceNotifications];
    dictionaryRepresentation = [announceNotifications dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"announceNotifications"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"announceNotifications"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_announceMessagesEnabled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SISchemaAnnounceNotifications *)self->_announceNotifications hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_announceCallsEnabled;
  return v7 ^ v6 ^ [(SISchemaAnnounceNotifications *)self->_announceNotifications hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    announceMessagesEnabled = self->_announceMessagesEnabled;
    if (announceMessagesEnabled != [equalCopy announceMessagesEnabled])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (announceCallsEnabled = self->_announceCallsEnabled, announceCallsEnabled == [equalCopy announceCallsEnabled]))
    {
      announceNotifications = [(SISchemaAnnounceEnabledStatus *)self announceNotifications];
      announceNotifications2 = [equalCopy announceNotifications];
      v12 = announceNotifications2;
      if ((announceNotifications != 0) != (announceNotifications2 == 0))
      {
        announceNotifications3 = [(SISchemaAnnounceEnabledStatus *)self announceNotifications];
        if (!announceNotifications3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = announceNotifications3;
        announceNotifications4 = [(SISchemaAnnounceEnabledStatus *)self announceNotifications];
        announceNotifications5 = [equalCopy announceNotifications];
        v17 = [announceNotifications4 isEqual:announceNotifications5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  announceNotifications = [(SISchemaAnnounceEnabledStatus *)self announceNotifications];

  v6 = toCopy;
  if (announceNotifications)
  {
    announceNotifications2 = [(SISchemaAnnounceEnabledStatus *)self announceNotifications];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasAnnounceCallsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaAnnounceEnabledStatus;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaAnnounceEnabledStatus *)self announceNotifications:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaAnnounceEnabledStatus *)self deleteAnnounceNotifications];
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