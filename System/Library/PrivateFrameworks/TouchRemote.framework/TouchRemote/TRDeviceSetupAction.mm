@interface TRDeviceSetupAction
+ (id)actionWithActionType:(id)type parameters:(id)parameters;
+ (id)actionWithData:(id)data error:(id *)error supportsLegacy:(BOOL)legacy;
- (id)_initWithActionType:(id)type parameters:(id)parameters;
- (id)dataRepresentationWithError:(id *)error;
- (id)description;
- (id)propertyListRepresentation;
@end

@implementation TRDeviceSetupAction

- (id)_initWithActionType:(id)type parameters:(id)parameters
{
  typeCopy = type;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = TRDeviceSetupAction;
  v8 = [(TRDeviceSetupAction *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    actionType = v8->_actionType;
    v8->_actionType = v9;

    v11 = [parametersCopy copy];
    parameters = v8->_parameters;
    v8->_parameters = v11;
  }

  return v8;
}

+ (id)actionWithActionType:(id)type parameters:(id)parameters
{
  parametersCopy = parameters;
  typeCopy = type;
  v8 = [[self alloc] _initWithActionType:typeCopy parameters:parametersCopy];

  return v8;
}

- (id)propertyListRepresentation
{
  actionType = [(TRDeviceSetupAction *)self actionType];
  v4 = actionType;
  v5 = &stru_287F58968;
  if (actionType)
  {
    v5 = actionType;
  }

  v6 = v5;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v6 forKey:@"a2"];

  parameters = [(TRDeviceSetupAction *)self parameters];

  if (parameters)
  {
    parameters2 = [(TRDeviceSetupAction *)self parameters];
    [dictionary setObject:parameters2 forKey:@"p2"];
  }

  [dictionary setObject:&unk_287F62978 forKey:@"_v_"];
  v10 = [dictionary copy];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TRDeviceSetupAction;
  v4 = [(TRDeviceSetupAction *)&v9 description];
  actionType = [(TRDeviceSetupAction *)self actionType];
  parameters = [(TRDeviceSetupAction *)self parameters];
  v7 = [v3 stringWithFormat:@"%@ action: %@ paramaters: %@", v4, actionType, parameters];;

  return v7;
}

+ (id)actionWithData:(id)data error:(id *)error supportsLegacy:(BOOL)legacy
{
  legacyCopy = legacy;
  dataCopy = data;
  v9 = dataCopy;
  if (!dataCopy)
  {
    v18 = objc_alloc_init(self);
    goto LABEL_45;
  }

  v10 = dataCopy;
  tR_decompressedGzipData = [v10 TR_decompressedGzipData];
  v12 = tR_decompressedGzipData;
  if (tR_decompressedGzipData)
  {
    v13 = tR_decompressedGzipData;

    v10 = v13;
  }

  v14 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:error];
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
      if ([v17 length] && !legacyCopy && !v15)
      {
        v18 = 0;
LABEL_43:

        goto LABEL_44;
      }

      if (![v17 length] || !legacyCopy)
      {
        if ([v15 isEqualToString:@"connect"])
        {
          selfCopy = TRDeviceSetupConnectAction;
        }

        else if ([v15 isEqualToString:@"auth"])
        {
          selfCopy = TRDeviceSetupAuthenticateAction;
        }

        else if ([v15 isEqualToString:@"setup"])
        {
          selfCopy = TRDeviceSetupGeneralSetupAction;
        }

        else if ([v15 isEqualToString:@"finish"])
        {
          selfCopy = TRDeviceSetupFinishAction;
        }

        else if ([v15 isEqualToString:@"cancel"])
        {
          selfCopy = TRDeviceSetupCancelAction;
        }

        else
        {
          selfCopy = self;
        }

        v18 = [(__objc2_class *)selfCopy actionWithActionType:v15 parameters:v16];
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

- (id)dataRepresentationWithError:(id *)error
{
  v4 = MEMORY[0x277CCAC58];
  propertyListRepresentation = [(TRDeviceSetupAction *)self propertyListRepresentation];
  v6 = [v4 dataWithPropertyList:propertyListRepresentation format:200 options:0 error:error];
  tR_compressedGzipData = [v6 TR_compressedGzipData];

  return tR_compressedGzipData;
}

@end