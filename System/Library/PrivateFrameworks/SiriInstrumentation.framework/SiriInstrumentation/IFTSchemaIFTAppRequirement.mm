@interface IFTSchemaIFTAppRequirement
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTAppRequirement)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTAppRequirement)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAccountSetupRequired;
- (void)deleteSignInRequired;
- (void)deleteUserConfirmationRequired;
- (void)setAccountSetupRequired:(BOOL)required;
- (void)setSignInRequired:(BOOL)required;
- (void)setUserConfirmationRequired:(BOOL)required;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTAppRequirement

- (IFTSchemaIFTAppRequirement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTAppRequirement;
  v5 = [(IFTSchemaIFTAppRequirement *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"signInRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAppRequirement setSignInRequired:](v5, "setSignInRequired:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"accountSetupRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAppRequirement setAccountSetupRequired:](v5, "setAccountSetupRequired:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userConfirmationRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAppRequirement setUserConfirmationRequired:](v5, "setUserConfirmationRequired:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTAppRequirement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTAppRequirement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTAppRequirement *)self dictionaryRepresentation];
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
  whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  if (whichOneof_Apprequirement == 2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAppRequirement accountSetupRequired](self, "accountSetupRequired")}];
    [dictionary setObject:v5 forKeyedSubscript:@"accountSetupRequired"];

    whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  }

  if (whichOneof_Apprequirement == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAppRequirement signInRequired](self, "signInRequired")}];
    [dictionary setObject:v6 forKeyedSubscript:@"signInRequired"];

    whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  }

  if (whichOneof_Apprequirement == 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAppRequirement userConfirmationRequired](self, "userConfirmationRequired")}];
    [dictionary setObject:v7 forKeyedSubscript:@"userConfirmationRequired"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v2 = self->_whichOneof_Apprequirement - 1;
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return 2654435761 * *(&self->super.super.super.isa + *off_1E78D81D8[v2]);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (whichOneof_Apprequirement = self->_whichOneof_Apprequirement, whichOneof_Apprequirement == objc_msgSend(equalCopy, "whichOneof_Apprequirement")) && (signInRequired = self->_signInRequired, signInRequired == objc_msgSend(equalCopy, "signInRequired")) && (accountSetupRequired = self->_accountSetupRequired, accountSetupRequired == objc_msgSend(equalCopy, "accountSetupRequired")))
  {
    userConfirmationRequired = self->_userConfirmationRequired;
    v9 = userConfirmationRequired == [equalCopy userConfirmationRequired];
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
  whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  v6 = toCopy;
  if (whichOneof_Apprequirement == 1)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  }

  if (whichOneof_Apprequirement == 2)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  }

  if (whichOneof_Apprequirement == 3)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)deleteUserConfirmationRequired
{
  if (self->_whichOneof_Apprequirement == 3)
  {
    self->_whichOneof_Apprequirement = 0;
    self->_userConfirmationRequired = 0;
  }
}

- (void)setUserConfirmationRequired:(BOOL)required
{
  self->_signInRequired = 0;
  self->_accountSetupRequired = 0;
  self->_whichOneof_Apprequirement = 3;
  self->_userConfirmationRequired = required;
}

- (void)deleteAccountSetupRequired
{
  if (self->_whichOneof_Apprequirement == 2)
  {
    self->_whichOneof_Apprequirement = 0;
    self->_accountSetupRequired = 0;
  }
}

- (void)setAccountSetupRequired:(BOOL)required
{
  self->_signInRequired = 0;
  self->_userConfirmationRequired = 0;
  self->_whichOneof_Apprequirement = 2;
  self->_accountSetupRequired = required;
}

- (void)deleteSignInRequired
{
  if (self->_whichOneof_Apprequirement == 1)
  {
    self->_whichOneof_Apprequirement = 0;
    self->_signInRequired = 0;
  }
}

- (void)setSignInRequired:(BOOL)required
{
  self->_accountSetupRequired = 0;
  self->_userConfirmationRequired = 0;
  self->_whichOneof_Apprequirement = 1;
  self->_signInRequired = required;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end