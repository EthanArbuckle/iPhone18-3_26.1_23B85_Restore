@interface IFTSchemaIFTSystemRequirement
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTSystemRequirement)initWithDictionary:(id)a3;
- (IFTSchemaIFTSystemRequirement)initWithJSON:(id)a3;
- (IFTSchemaIFTSystemRequirementAuthenticationRequest)userAuthenticationRequired;
- (IFTSchemaIFTSystemRequirementProtectedAppRequest)protectedAppApprovalRequired;
- (IFTSchemaIFTSystemRequirementUserLocationForSystemRequest)userLocationForSystemRequired;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAppLaunchRequired:(BOOL)a3;
- (void)setAuthenticationRequired:(BOOL)a3;
- (void)setCarBluetoothIncompatible:(BOOL)a3;
- (void)setCarPlayIncompatible:(BOOL)a3;
- (void)setDeviceUnlockRequired:(BOOL)a3;
- (void)setProtectedAppApprovalRequired:(id)a3;
- (void)setUserAuthenticationRequired:(id)a3;
- (void)setUserLocationForSystemRequired:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSystemRequirement

- (IFTSchemaIFTSystemRequirement)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = IFTSchemaIFTSystemRequirement;
  v5 = [(IFTSchemaIFTSystemRequirement *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"deviceUnlockRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setDeviceUnlockRequired:](v5, "setDeviceUnlockRequired:", [v6 BOOLValue]);
    }

    v19 = v6;
    v7 = [v4 objectForKeyedSubscript:@"authenticationRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setAuthenticationRequired:](v5, "setAuthenticationRequired:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"appLaunchRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setAppLaunchRequired:](v5, "setAppLaunchRequired:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"carPlayIncompatible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setCarPlayIncompatible:](v5, "setCarPlayIncompatible:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"carBluetoothIncompatible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirement setCarBluetoothIncompatible:](v5, "setCarBluetoothIncompatible:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"protectedAppApprovalRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTSystemRequirementProtectedAppRequest alloc] initWithDictionary:v11];
      [(IFTSchemaIFTSystemRequirement *)v5 setProtectedAppApprovalRequired:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"userAuthenticationRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[IFTSchemaIFTSystemRequirementAuthenticationRequest alloc] initWithDictionary:v13];
      [(IFTSchemaIFTSystemRequirement *)v5 setUserAuthenticationRequired:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"userLocationForSystemRequired"];
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

- (IFTSchemaIFTSystemRequirement)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemRequirement *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSystemRequirement *)self dictionaryRepresentation];
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
  whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  if (whichOneof_Systemrequirement == 3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement appLaunchRequired](self, "appLaunchRequired")}];
    [v3 setObject:v5 forKeyedSubscript:@"appLaunchRequired"];

    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement authenticationRequired](self, "authenticationRequired")}];
    [v3 setObject:v6 forKeyedSubscript:@"authenticationRequired"];

    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement carBluetoothIncompatible](self, "carBluetoothIncompatible")}];
    [v3 setObject:v7 forKeyedSubscript:@"carBluetoothIncompatible"];

    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement carPlayIncompatible](self, "carPlayIncompatible")}];
    [v3 setObject:v8 forKeyedSubscript:@"carPlayIncompatible"];

    whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  }

  if (whichOneof_Systemrequirement == 1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirement deviceUnlockRequired](self, "deviceUnlockRequired")}];
    [v3 setObject:v9 forKeyedSubscript:@"deviceUnlockRequired"];
  }

  if (self->_protectedAppApprovalRequired)
  {
    v10 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"protectedAppApprovalRequired"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"protectedAppApprovalRequired"];
    }
  }

  if (self->_userAuthenticationRequired)
  {
    v13 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"userAuthenticationRequired"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"userAuthenticationRequired"];
    }
  }

  if (self->_userLocationForSystemRequired)
  {
    v16 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"userLocationForSystemRequired"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"userLocationForSystemRequired"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Systemrequirement = self->_whichOneof_Systemrequirement;
  if (whichOneof_Systemrequirement != [v4 whichOneof_Systemrequirement])
  {
    goto LABEL_23;
  }

  deviceUnlockRequired = self->_deviceUnlockRequired;
  if (deviceUnlockRequired != [v4 deviceUnlockRequired])
  {
    goto LABEL_23;
  }

  authenticationRequired = self->_authenticationRequired;
  if (authenticationRequired != [v4 authenticationRequired])
  {
    goto LABEL_23;
  }

  appLaunchRequired = self->_appLaunchRequired;
  if (appLaunchRequired != [v4 appLaunchRequired])
  {
    goto LABEL_23;
  }

  carPlayIncompatible = self->_carPlayIncompatible;
  if (carPlayIncompatible != [v4 carPlayIncompatible])
  {
    goto LABEL_23;
  }

  carBluetoothIncompatible = self->_carBluetoothIncompatible;
  if (carBluetoothIncompatible != [v4 carBluetoothIncompatible])
  {
    goto LABEL_23;
  }

  v11 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
  v12 = [v4 protectedAppApprovalRequired];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
    v16 = [v4 protectedAppApprovalRequired];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v11 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
  v12 = [v4 userAuthenticationRequired];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
    v21 = [v4 userAuthenticationRequired];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v11 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
  v12 = [v4 userLocationForSystemRequired];
  if ((v11 != 0) != (v12 == 0))
  {
    v23 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
    v26 = [v4 userLocationForSystemRequired];
    v27 = [v25 isEqual:v26];

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

- (void)writeTo:(id)a3
{
  v12 = a3;
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

  v5 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];

  if (v5)
  {
    v6 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];

  if (v7)
  {
    v8 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];

  v10 = v12;
  if (v9)
  {
    v11 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
    PBDataWriterWriteSubmessage();

    v10 = v12;
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

- (void)setUserLocationForSystemRequired:(id)a3
{
  v4 = a3;
  self->_deviceUnlockRequired = 0;
  self->_authenticationRequired = 0;
  self->_appLaunchRequired = 0;
  self->_carPlayIncompatible = 0;
  self->_carBluetoothIncompatible = 0;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = 0;

  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = 0;

  self->_whichOneof_Systemrequirement = 8 * (v4 != 0);
  userLocationForSystemRequired = self->_userLocationForSystemRequired;
  self->_userLocationForSystemRequired = v4;
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

- (void)setUserAuthenticationRequired:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichOneof_Systemrequirement = v7;
  userAuthenticationRequired = self->_userAuthenticationRequired;
  self->_userAuthenticationRequired = v4;
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

- (void)setProtectedAppApprovalRequired:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichOneof_Systemrequirement = v7;
  protectedAppApprovalRequired = self->_protectedAppApprovalRequired;
  self->_protectedAppApprovalRequired = v4;
}

- (void)deleteCarBluetoothIncompatible
{
  if (self->_whichOneof_Systemrequirement == 5)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_carBluetoothIncompatible = 0;
  }
}

- (void)setCarBluetoothIncompatible:(BOOL)a3
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
  self->_carBluetoothIncompatible = a3;
}

- (void)deleteCarPlayIncompatible
{
  if (self->_whichOneof_Systemrequirement == 4)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_carPlayIncompatible = 0;
  }
}

- (void)setCarPlayIncompatible:(BOOL)a3
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
  self->_carPlayIncompatible = a3;
}

- (void)deleteAppLaunchRequired
{
  if (self->_whichOneof_Systemrequirement == 3)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_appLaunchRequired = 0;
  }
}

- (void)setAppLaunchRequired:(BOOL)a3
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
  self->_appLaunchRequired = a3;
}

- (void)deleteAuthenticationRequired
{
  if (self->_whichOneof_Systemrequirement == 2)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_authenticationRequired = 0;
  }
}

- (void)setAuthenticationRequired:(BOOL)a3
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
  self->_authenticationRequired = a3;
}

- (void)deleteDeviceUnlockRequired
{
  if (self->_whichOneof_Systemrequirement == 1)
  {
    self->_whichOneof_Systemrequirement = 0;
    self->_deviceUnlockRequired = 0;
  }
}

- (void)setDeviceUnlockRequired:(BOOL)a3
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
  self->_deviceUnlockRequired = a3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTSystemRequirement;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTSystemRequirement *)self protectedAppApprovalRequired];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTSystemRequirement *)self deleteProtectedAppApprovalRequired];
  }

  v9 = [(IFTSchemaIFTSystemRequirement *)self userAuthenticationRequired];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTSystemRequirement *)self deleteUserAuthenticationRequired];
  }

  v12 = [(IFTSchemaIFTSystemRequirement *)self userLocationForSystemRequired];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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