@interface TRDeviceSetupAction
+ (id)actionWithActionType:(id)a3 parameters:(id)a4;
+ (id)actionWithData:(id)a3 error:(id *)a4 supportsLegacy:(BOOL)a5;
- (id)_initWithActionType:(id)a3 parameters:(id)a4;
- (id)dataRepresentationWithError:(id *)a3;
- (id)description;
- (id)propertyListRepresentation;
@end

@implementation TRDeviceSetupAction

- (id)_initWithActionType:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TRDeviceSetupAction;
  v8 = [(TRDeviceSetupAction *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    actionType = v8->_actionType;
    v8->_actionType = v9;

    v11 = [v7 copy];
    parameters = v8->_parameters;
    v8->_parameters = v11;
  }

  return v8;
}

+ (id)actionWithActionType:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithActionType:v7 parameters:v6];

  return v8;
}

- (id)propertyListRepresentation
{
  v3 = [(TRDeviceSetupAction *)self actionType];
  v4 = v3;
  v5 = &stru_287F58968;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:v6 forKey:@"a2"];

  v8 = [(TRDeviceSetupAction *)self parameters];

  if (v8)
  {
    v9 = [(TRDeviceSetupAction *)self parameters];
    [v7 setObject:v9 forKey:@"p2"];
  }

  [v7 setObject:&unk_287F62978 forKey:@"_v_"];
  v10 = [v7 copy];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TRDeviceSetupAction;
  v4 = [(TRDeviceSetupAction *)&v9 description];
  v5 = [(TRDeviceSetupAction *)self actionType];
  v6 = [(TRDeviceSetupAction *)self parameters];
  v7 = [v3 stringWithFormat:@"%@ action: %@ paramaters: %@", v4, v5, v6];;

  return v7;
}

+ (id)actionWithData:(id)a3 error:(id *)a4 supportsLegacy:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    v18 = objc_alloc_init(a1);
    goto LABEL_45;
  }

  v10 = v8;
  v11 = [v10 TR_decompressedGzipData];
  v12 = v11;
  if (v11)
  {
    v13 = v11;

    v10 = v13;
  }

  v14 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:a4];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 objectForKeyedSubscript:@"a2"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v15 = 0;
      }

      v16 = [v14 objectForKeyedSubscript:@"p2"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v16 = 0;
      }

      v17 = [v14 objectForKeyedSubscript:@"a"];
      if ([v17 length] && !v5 && !v15)
      {
        v18 = 0;
LABEL_43:

        goto LABEL_44;
      }

      if (![v17 length] || !v5)
      {
        if ([v15 isEqualToString:@"connect"])
        {
          v21 = TRDeviceSetupConnectAction;
        }

        else if ([v15 isEqualToString:@"auth"])
        {
          v21 = TRDeviceSetupAuthenticateAction;
        }

        else if ([v15 isEqualToString:@"setup"])
        {
          v21 = TRDeviceSetupGeneralSetupAction;
        }

        else if ([v15 isEqualToString:@"finish"])
        {
          v21 = TRDeviceSetupFinishAction;
        }

        else if ([v15 isEqualToString:@"cancel"])
        {
          v21 = TRDeviceSetupCancelAction;
        }

        else
        {
          v21 = a1;
        }

        v18 = [(__objc2_class *)v21 actionWithActionType:v15 parameters:v16];
        goto LABEL_43;
      }

      v19 = [v14 objectForKeyedSubscript:@"p"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v19 = 0;
      }

      if ([v17 isEqualToString:@"auth"])
      {
        v20 = off_279DCE6A8;
      }

      else if ([v17 isEqualToString:@"setup"])
      {
        v20 = off_279DCE6C0;
      }

      else if ([v17 isEqualToString:@"cancel"])
      {
        v20 = off_279DCE6B0;
      }

      else
      {
        if (![v17 isEqualToString:@"finish"])
        {
          v18 = 0;
          goto LABEL_37;
        }

        v20 = off_279DCE6B8;
      }

      v18 = [(__objc2_class *)*v20 actionWithActionType:v17 parameters:v19];
LABEL_37:

      goto LABEL_43;
    }
  }

  v18 = 0;
LABEL_44:

LABEL_45:

  return v18;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v4 = MEMORY[0x277CCAC58];
  v5 = [(TRDeviceSetupAction *)self propertyListRepresentation];
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:a3];
  v7 = [v6 TR_compressedGzipData];

  return v7;
}

@end