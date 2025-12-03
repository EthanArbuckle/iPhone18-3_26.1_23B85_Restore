@interface IFTSchemaIFTSystemRequirement
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTSystemRequirement)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemRequirement)initWithJSON:(id)n;
- (IFTSchemaIFTSystemRequirementAuthenticationRequest)userAuthenticationRequired;
- (IFTSchemaIFTSystemRequirementProtectedAppRequest)protectedAppApprovalRequired;
- (IFTSchemaIFTSystemRequirementUserLocationForSystemRequest)userLocationForSystemRequired;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAppLaunchRequired;
- (void)deleteAuthenticationRequired;
- (void)deleteCarBluetoothIncompatible;
- (void)deleteCarPlayIncompatible;
- (void)deleteDeviceUnlockRequired;
- (void)deleteProtectedAppApprovalRequired;
- (void)deleteUserAuthenticationRequired;
- (void)deleteUserLocationForSystemRequired;
- (void)setAppLaunchRequired:(BOOL)required;
- (void)setAuthenticationRequired:(BOOL)required;
- (void)setCarBluetoothIncompatible:(BOOL)incompatible;
- (void)setCarPlayIncompatible:(BOOL)incompatible;
- (void)setDeviceUnlockRequired:(BOOL)required;
- (void)setProtectedAppApprovalRequired:(id)required;
- (void)setUserAuthenticationRequired:(id)required;
- (void)setUserLocationForSystemRequired:(id)required;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemRequirement

- (IFTSchemaIFTSystemRequirement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = IFTSchemaIFTSystemRequirement;
  v5 = [(IFTSchemaIFTSystemRequirement *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceUnlockRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setDeviceUnlockRequired:](v5, "setDeviceUnlockRequired:", [v6 BOOLValue]);
    }

    v19 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"authenticationRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setAuthenticationRequired:](v5, "setAuthenticationRequired:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appLaunchRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setAppLaunchRequired:](v5, "setAppLaunchRequired:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"carPlayIncompatible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setCarPlayIncompatible:](v5, "setCarPlayIncompatible:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"carBluetoothIncompatible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setCarBluetoothIncompatible:](v5, "setCarBluetoothIncompatible:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"protectedAppApprovalRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTSystemRequirementProtectedAppRequest alloc] initWithDictionary:v11];
      [(IFTSchemaIFTSystemRequirement *)v5 setProtectedAppApprovalRequired:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"userAuthenticationRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[IFTSchemaIFTSystemRequirementAuthenticationRequest alloc] initWithDictionary:v13];
      [(IFTSchemaIFTSystemRequirement *)v5 setUserAuthenticationRequired:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"userLocationForSystemRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[IFTSchemaIFTSystemRequirementUserLocationForSystemRequest alloc] initWithDictionary:v15];
      [(IFTSchemaIFTSystemRequirement *)v5 setUserLocationForSystemRequired:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemRequirement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemRequirement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemRequirement *)self dictionaryRepresentation];
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
  whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  if (whichOneof_Systemrequirement == 3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement appLaunchRequired](self, "appLaunchRequired")}];
    [dictionary setObject:v5 forKeyedSubscript:@"appLaunchRequired"];

    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement authenticationRequired](self, "authenticationRequired")}];
    [dictionary setObject:v6 forKeyedSubscript:@"authenticationRequired"];

    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement carBluetoothIncompatible](self, "carBluetoothIncompatible")}];
    [dictionary setObject:v7 forKeyedSubscript:@"carBluetoothIncompatible"];

    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement carPlayIncompatible](self, "carPlayIncompatible")}];
    [dictionary setObject:v8 forKeyedSubscript:@"carPlayIncompatible"];

    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement deviceUnlockRequired](self, "deviceUnlockRequired")}];
    [dictionary setObject:v9 forKeyedSubscript:@"deviceUnlockRequired"];
  }

  if (self->_protectedAppApprovalRequired)
  {
    protectedAppApprovalRequired = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
    dictionaryRepresentation = [protectedAppApprovalRequired dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"protectedAppApprovalRequired"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"protectedAppApprovalRequired"];
    }
  }

  if (self->_userAuthenticationRequired)
  {
    userAuthenticationRequired = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
    dictionaryRepresentation2 = [userAuthenticationRequired dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"userAuthenticationRequired"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"userAuthenticationRequired"];
    }
  }

  if (self->_userLocationForSystemRequired)
  {
    userLocationForSystemRequired = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
    dictionaryRepresentation3 = [userLocationForSystemRequired dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"userLocationForSystemRequired"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"userLocationForSystemRequired"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = self->_whichOneof_Systemrequirement - 1;
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2654435761 * *(&self->super.super.super.isa + *off_1E78D85A0[v3]);
  }

  v5 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self->_protectedAppApprovalRequired hash]^ v4;
  v6 = [(IFTSchemaIFTSystemRequirementAuthenticationRequest *)self->_userAuthenticationRequired hash];
  return v5 ^ v6 ^ [(IFTSchemaIFTSystemRequirementUserLocationForSystemRequest *)self->_userLocationForSystemRequired hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  if (whichOneof_Systemrequirement != [equalCopy whichOneof_Systemrequirement])
  {
    goto LABEL_23;
  }

  deviceUnlockRequired = self->_deviceUnlockRequired;
  if (deviceUnlockRequired != [equalCopy deviceUnlockRequired])
  {
    goto LABEL_23;
  }

  authenticationRequired = self->_authenticationRequired;
  if (authenticationRequired != [equalCopy authenticationRequired])
  {
    goto LABEL_23;
  }

  appLaunchRequired = self->_appLaunchRequired;
  if (appLaunchRequired != [equalCopy appLaunchRequired])
  {
    goto LABEL_23;
  }

  carPlayIncompatible = self->_carPlayIncompatible;
  if (carPlayIncompatible != [equalCopy carPlayIncompatible])
  {
    goto LABEL_23;
  }

  carBluetoothIncompatible = self->_carBluetoothIncompatible;
  if (carBluetoothIncompatible != [equalCopy carBluetoothIncompatible])
  {
    goto LABEL_23;
  }

  protectedAppApprovalRequired = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
  protectedAppApprovalRequired2 = [equalCopy protectedAppApprovalRequired];
  if ((protectedAppApprovalRequired != 0) == (protectedAppApprovalRequired2 == 0))
  {
    goto LABEL_22;
  }

  protectedAppApprovalRequired3 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
  if (protectedAppApprovalRequired3)
  {
    v14 = protectedAppApprovalRequired3;
    protectedAppApprovalRequired4 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
    protectedAppApprovalRequired5 = [equalCopy protectedAppApprovalRequired];
    v17 = [protectedAppApprovalRequired4 isEqual:protectedAppApprovalRequired5];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  protectedAppApprovalRequired = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
  protectedAppApprovalRequired2 = [equalCopy userAuthenticationRequired];
  if ((protectedAppApprovalRequired != 0) == (protectedAppApprovalRequired2 == 0))
  {
    goto LABEL_22;
  }

  userAuthenticationRequired = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
  if (userAuthenticationRequired)
  {
    v19 = userAuthenticationRequired;
    userAuthenticationRequired2 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
    userAuthenticationRequired3 = [equalCopy userAuthenticationRequired];
    v22 = [userAuthenticationRequired2 isEqual:userAuthenticationRequired3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  protectedAppApprovalRequired = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
  protectedAppApprovalRequired2 = [equalCopy userLocationForSystemRequired];
  if ((protectedAppApprovalRequired != 0) != (protectedAppApprovalRequired2 == 0))
  {
    userLocationForSystemRequired = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
    if (!userLocationForSystemRequired)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = userLocationForSystemRequired;
    userLocationForSystemRequired2 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
    userLocationForSystemRequired3 = [equalCopy userLocationForSystemRequired];
    v27 = [userLocationForSystemRequired2 isEqual:userLocationForSystemRequired3];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  if (whichOneof_Systemrequirement == 1)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 2)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 3)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 4)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 5)
  {
    PBDataWriterWriteBOOLField();
  }

  protectedAppApprovalRequired = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];

  if (protectedAppApprovalRequired)
  {
    protectedAppApprovalRequired2 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
    PBDataWriterWriteSubmessage();
  }

  userAuthenticationRequired = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];

  if (userAuthenticationRequired)
  {
    userAuthenticationRequired2 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
    PBDataWriterWriteSubmessage();
  }

  userLocationForSystemRequired = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];

  v10 = toCopy;
  if (userLocationForSystemRequired)
  {
    userLocationForSystemRequired2 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (void)deleteUserLocationForSystemRequired
{
  if (self->_whichOneof_Systemrequirement == 8)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_userLocationForSystemRequired = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSystemRequirementUserLocationForSystemRequest)userLocationForSystemRequired
{
  if (self->_whichOneof_Systemrequirement == 8)
  {
    v3 = self->_userLocationForSystemRequired;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserLocationForSystemRequired:(id)required
{
  requiredCopy = required;
  self->_deviceUnlockRequired = 0;
  self->_authenticationRequired = 0;
  self->_appLaunchRequired = 0;
  self->_carPlayIncompatible = 0;
  self->_carBluetoothIncompatible = 0;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = 0;

  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = 0;

  self->_whichOneof_Systemrequirement = 8 * (requiredCopy != 0);
  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = requiredCopy;
}

- (void)deleteUserAuthenticationRequired
{
  if (self->_whichOneof_Systemrequirement == 7)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_userAuthenticationRequired = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSystemRequirementAuthenticationRequest)userAuthenticationRequired
{
  if (self->_whichOneof_Systemrequirement == 7)
  {
    v3 = self->_userAuthenticationRequired;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserAuthenticationRequired:(id)required
{
  requiredCopy = required;
  self->_deviceUnlockRequired = 0;
  self->_authenticationRequired = 0;
  self->_appLaunchRequired = 0;
  self->_carPlayIncompatible = 0;
  self->_carBluetoothIncompatible = 0;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = 0;

  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = 0;

  v7 = 7;
  if (!requiredCopy)
  {
    v7 = 0;
  }

  self->_whichOneof_Systemrequirement = v7;
  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = requiredCopy;
}

- (void)deleteProtectedAppApprovalRequired
{
  if (self->_whichOneof_Systemrequirement == 6)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_protectedAppApprovalRequired = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSystemRequirementProtectedAppRequest)protectedAppApprovalRequired
{
  if (self->_whichOneof_Systemrequirement == 6)
  {
    v3 = self->_protectedAppApprovalRequired;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setProtectedAppApprovalRequired:(id)required
{
  requiredCopy = required;
  self->_deviceUnlockRequired = 0;
  self->_authenticationRequired = 0;
  self->_appLaunchRequired = 0;
  self->_carPlayIncompatible = 0;
  self->_carBluetoothIncompatible = 0;
  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = 0;

  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = 0;

  v7 = 6;
  if (!requiredCopy)
  {
    v7 = 0;
  }

  self->_whichOneof_Systemrequirement = v7;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = requiredCopy;
}

- (void)deleteCarBluetoothIncompatible
{
  if (self->_whichOneof_Systemrequirement == 5)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_carBluetoothIncompatible = 0;
  }
}

- (void)setCarBluetoothIncompatible:(BOOL)incompatible
{
  self->_deviceUnlockRequired = 0;
  self->_authenticationRequired = 0;
  self->_appLaunchRequired = 0;
  self->_carPlayIncompatible = 0;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = 0;

  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = 0;

  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = 0;

  self->_whichOneof_Systemrequirement = 5;
  self->_carBluetoothIncompatible = incompatible;
}

- (void)deleteCarPlayIncompatible
{
  if (self->_whichOneof_Systemrequirement == 4)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_carPlayIncompatible = 0;
  }
}

- (void)setCarPlayIncompatible:(BOOL)incompatible
{
  self->_deviceUnlockRequired = 0;
  self->_authenticationRequired = 0;
  self->_appLaunchRequired = 0;
  self->_carBluetoothIncompatible = 0;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = 0;

  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = 0;

  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = 0;

  self->_whichOneof_Systemrequirement = 4;
  self->_carPlayIncompatible = incompatible;
}

- (void)deleteAppLaunchRequired
{
  if (self->_whichOneof_Systemrequirement == 3)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_appLaunchRequired = 0;
  }
}

- (void)setAppLaunchRequired:(BOOL)required
{
  self->_deviceUnlockRequired = 0;
  self->_authenticationRequired = 0;
  self->_carPlayIncompatible = 0;
  self->_carBluetoothIncompatible = 0;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = 0;

  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = 0;

  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = 0;

  self->_whichOneof_Systemrequirement = 3;
  self->_appLaunchRequired = required;
}

- (void)deleteAuthenticationRequired
{
  if (self->_whichOneof_Systemrequirement == 2)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_authenticationRequired = 0;
  }
}

- (void)setAuthenticationRequired:(BOOL)required
{
  self->_deviceUnlockRequired = 0;
  self->_appLaunchRequired = 0;
  self->_carPlayIncompatible = 0;
  self->_carBluetoothIncompatible = 0;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = 0;

  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = 0;

  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = 0;

  self->_whichOneof_Systemrequirement = 2;
  self->_authenticationRequired = required;
}

- (void)deleteDeviceUnlockRequired
{
  if (self->_whichOneof_Systemrequirement == 1)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_deviceUnlockRequired = 0;
  }
}

- (void)setDeviceUnlockRequired:(BOOL)required
{
  self->_authenticationRequired = 0;
  self->_appLaunchRequired = 0;
  self->_carPlayIncompatible = 0;
  self->_carBluetoothIncompatible = 0;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = 0;

  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = 0;

  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = 0;

  self->_whichOneof_Systemrequirement = 1;
  self->_deviceUnlockRequired = required;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTSystemRequirement;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  protectedAppApprovalRequired = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
  v7 = [protectedAppApprovalRequired applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTSystemRequirement *)self deleteProtectedAppApprovalRequired];
  }

  userAuthenticationRequired = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
  v10 = [userAuthenticationRequired applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTSystemRequirement *)self deleteUserAuthenticationRequired];
  }

  userLocationForSystemRequired = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
  v13 = [userLocationForSystemRequired applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTSystemRequirement *)self deleteUserLocationForSystemRequired];
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