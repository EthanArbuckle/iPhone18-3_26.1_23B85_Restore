@interface IFTSchemaIFTAppRequirement
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTAppRequirement)initWithDictionary:(id)a3;
- (IFTSchemaIFTAppRequirement)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAccountSetupRequired;
- (void)deleteSignInRequired;
- (void)deleteUserConfirmationRequired;
- (void)setAccountSetupRequired:(BOOL)a3;
- (void)setSignInRequired:(BOOL)a3;
- (void)setUserConfirmationRequired:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTAppRequirement

- (IFTSchemaIFTAppRequirement)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTAppRequirement;
  v5 = [(IFTSchemaIFTAppRequirement *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"signInRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAppRequirement setSignInRequired:](v5, "setSignInRequired:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"accountSetupRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAppRequirement setAccountSetupRequired:](v5, "setAccountSetupRequired:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"userConfirmationRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTAppRequirement setUserConfirmationRequired:](v5, "setUserConfirmationRequired:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTAppRequirement)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTAppRequirement *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTAppRequirement *)self dictionaryRepresentation];
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
  whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  if (whichOneof_Apprequirement == 2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAppRequirement accountSetupRequired](self, "accountSetupRequired")}];
    [v3 setObject:v5 forKeyedSubscript:@"accountSetupRequired"];

    whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  }

  if (whichOneof_Apprequirement == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAppRequirement signInRequired](self, "signInRequired")}];
    [v3 setObject:v6 forKeyedSubscript:@"signInRequired"];

    whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  }

  if (whichOneof_Apprequirement == 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTAppRequirement userConfirmationRequired](self, "userConfirmationRequired")}];
    [v3 setObject:v7 forKeyedSubscript:@"userConfirmationRequired"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (whichOneof_Apprequirement = self->_whichOneof_Apprequirement, whichOneof_Apprequirement == objc_msgSend(v4, "whichOneof_Apprequirement")) && (signInRequired = self->_signInRequired, signInRequired == objc_msgSend(v4, "signInRequired")) && (accountSetupRequired = self->_accountSetupRequired, accountSetupRequired == objc_msgSend(v4, "accountSetupRequired")))
  {
    userConfirmationRequired = self->_userConfirmationRequired;
    v9 = userConfirmationRequired == [v4 userConfirmationRequired];
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
  whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  v6 = v4;
  if (whichOneof_Apprequirement == 1)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  }

  if (whichOneof_Apprequirement == 2)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    whichOneof_Apprequirement = self->_whichOneof_Apprequirement;
  }

  if (whichOneof_Apprequirement == 3)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
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

- (void)setUserConfirmationRequired:(BOOL)a3
{
  self->_signInRequired = 0;
  self->_accountSetupRequired = 0;
  self->_whichOneof_Apprequirement = 3;
  self->_userConfirmationRequired = a3;
}

- (void)deleteAccountSetupRequired
{
  if (self->_whichOneof_Apprequirement == 2)
  {
    self->_whichOneof_Apprequirement = 0;
    self->_accountSetupRequired = 0;
  }
}

- (void)setAccountSetupRequired:(BOOL)a3
{
  self->_signInRequired = 0;
  self->_userConfirmationRequired = 0;
  self->_whichOneof_Apprequirement = 2;
  self->_accountSetupRequired = a3;
}

- (void)deleteSignInRequired
{
  if (self->_whichOneof_Apprequirement == 1)
  {
    self->_whichOneof_Apprequirement = 0;
    self->_signInRequired = 0;
  }
}

- (void)setSignInRequired:(BOOL)a3
{
  self->_accountSetupRequired = 0;
  self->_userConfirmationRequired = 0;
  self->_whichOneof_Apprequirement = 1;
  self->_signInRequired = a3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end