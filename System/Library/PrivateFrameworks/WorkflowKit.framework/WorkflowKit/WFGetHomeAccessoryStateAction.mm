@interface WFGetHomeAccessoryStateAction
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (NSString)homeIdentifier;
- (id)characteristic;
- (id)home;
- (id)homeName;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)outputContentClasses;
- (id)outputMeasurementUnitType;
- (void)dealloc;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)updateCharacteristicsEnumeration;
- (void)wasAddedToWorkflow:(id)workflow;
- (void)wasAddedToWorkflowByUser:(id)user;
@end

@implementation WFGetHomeAccessoryStateAction

- (void)updateCharacteristicsEnumeration
{
  v6 = [(WFAction *)self parameterForKey:@"WFHMCharacteristic"];
  v3 = [(WFAction *)self parameterStateForKey:@"WFHMService"];
  service = [v3 service];
  homeIdentifier = [v3 homeIdentifier];
  [v6 setService:service homeIdentifier:homeIdentifier];
}

- (id)characteristic
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHMCharacteristic"];
  characteristic = [v2 characteristic];

  return characteristic;
}

- (id)homeName
{
  home = [(WFGetHomeAccessoryStateAction *)self home];
  name = [home name];

  return name;
}

- (id)home
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHMService"];
  homeIdentifier = [v2 homeIdentifier];

  if (homeIdentifier)
  {
    v4 = +[WFHomeManager sharedManager];
    homeIdentifier2 = [v2 homeIdentifier];
    homeIdentifier = [v4 homeWithIdentifier:homeIdentifier2];
  }

  return homeIdentifier;
}

- (NSString)homeIdentifier
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHMService"];
  homeIdentifier = [v2 homeIdentifier];

  if (homeIdentifier)
  {
    homeIdentifier = [v2 homeIdentifier];
  }

  return homeIdentifier;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WFGetHomeAccessoryStateAction_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__WFGetHomeAccessoryStateAction_homeManagerDidUpdateHomes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) nameUpdated];
  [*(a1 + 32) outputDetailsUpdated];
  v2 = *(a1 + 32);

  return [v2 updateCharacteristicsEnumeration];
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  characteristic = [(WFGetHomeAccessoryStateAction *)self characteristic];
  localizedDescription = [characteristic localizedDescription];
  v7 = localizedDescription;
  if (localizedDescription)
  {
    v8 = localizedDescription;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFGetHomeAccessoryStateAction;
    v8 = [(WFAction *)&v11 localizedDefaultOutputNameWithContext:contextCopy];
  }

  v9 = v8;

  return v9;
}

- (id)outputMeasurementUnitType
{
  characteristic = [(WFGetHomeAccessoryStateAction *)self characteristic];

  if (characteristic)
  {
    v4 = MEMORY[0x1E69E0BE8];
    characteristic2 = [(WFGetHomeAccessoryStateAction *)self characteristic];
    v6 = WFUnitForHMCharacteristic(characteristic2);
    v7 = [v4 unitTypeForUnitClass:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)outputContentClasses
{
  v26[1] = *MEMORY[0x1E69E9840];
  characteristic = [(WFGetHomeAccessoryStateAction *)self characteristic];
  metadata = [characteristic metadata];
  format = [metadata format];

  v6 = getHMCharacteristicMetadataFormatBool();
  LODWORD(metadata) = [format isEqualToString:v6];

  if (metadata)
  {
    v26[0] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v26;
LABEL_5:
    v11 = [v7 arrayWithObjects:v8 count:1];
    goto LABEL_19;
  }

  v9 = getHMCharacteristicMetadataFormatString();
  v10 = [format isEqualToString:v9];

  if (v10)
  {
    v25 = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v25;
    goto LABEL_5;
  }

  v12 = getHMCharacteristicMetadataFormatInt();
  if ([format isEqualToString:v12])
  {
    goto LABEL_15;
  }

  v13 = getHMCharacteristicMetadataFormatFloat();
  if ([format isEqualToString:v13])
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v14 = getHMCharacteristicMetadataFormatUInt8();
  if ([format isEqualToString:v14])
  {
LABEL_13:

    goto LABEL_14;
  }

  v15 = getHMCharacteristicMetadataFormatUInt16();
  if ([format isEqualToString:v15])
  {
LABEL_12:

    goto LABEL_13;
  }

  v16 = getHMCharacteristicMetadataFormatUInt32();
  if ([format isEqualToString:v16])
  {

    goto LABEL_12;
  }

  v22 = getHMCharacteristicMetadataFormatUInt64();
  v23 = [format isEqualToString:v22];

  if ((v23 & 1) == 0)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

LABEL_16:
  outputMeasurementUnitType = [(WFGetHomeAccessoryStateAction *)self outputMeasurementUnitType];
  v18 = 0x1E6996EC0;
  if (outputMeasurementUnitType)
  {
    v18 = 0x1E6996EA8;
  }

  v19 = *v18;
  v24 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];

LABEL_19:
  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v4 = +[WFHomeManager sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__WFGetHomeAccessoryStateAction_runAsynchronouslyWithInput___block_invoke;
  v5[3] = &unk_1E837FA70;
  v5[4] = self;
  [v4 ensureHomesAreLoadedWithCompletionHandler:v5];
}

void __60__WFGetHomeAccessoryStateAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) characteristic];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 characteristic];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__WFGetHomeAccessoryStateAction_runAsynchronouslyWithInput___block_invoke_2;
    v5[3] = &unk_1E837E5E0;
    v5[4] = *(a1 + 32);
    [v4 readValueWithCompletionHandler:v5];
  }

  else
  {

    [v3 finishRunningWithError:0];
  }
}

void __60__WFGetHomeAccessoryStateAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) characteristic];
  v4 = [v3 value];
  if (!v11 && v4)
  {
    v5 = WFUnitForHMCharacteristic(v3);
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E696AD28]);
      [v4 doubleValue];
      v7 = [v6 initWithDoubleValue:v5 unit:?];
      v8 = [*(a1 + 32) output];
      v9 = v8;
      v10 = v7;
    }

    else
    {
      v7 = [*(a1 + 32) output];
      v9 = WFFormattedCharacteristicValueForCharacteristic(v3);
      v8 = v7;
      v10 = v9;
    }

    [v8 addObject:v10];
  }

  [*(a1 + 32) finishRunningWithError:v11];
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  stateCopy = state;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"WFHome"])
  {
    v8 = stateCopy;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    value = [v11 value];

    v10 = value != 0;
    if (value)
    {
      v13 = [[WFHMServiceParameterState alloc] initWithService:0 homeIdentifier:value];
      v14 = [[WFHMCharacteristicSubstitutableState alloc] initWithCharacteristic:0 homeIdentifier:value];
      [(WFGetHomeAccessoryStateAction *)self setParameterState:v13 forKey:@"WFHMService"];
      [(WFGetHomeAccessoryStateAction *)self setParameterState:v14 forKey:@"WFHMCharacteristic"];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFGetHomeAccessoryStateAction;
    if ([(WFAction *)&v16 setParameterState:stateCopy forKey:keyCopy])
    {
      if ([keyCopy isEqualToString:@"WFHMCharacteristic"])
      {
        [(WFAction *)self outputDetailsUpdated];
      }

      if ([keyCopy isEqualToString:@"WFHMService"])
      {
        [(WFGetHomeAccessoryStateAction *)self updateCharacteristicsEnumeration];
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)wasAddedToWorkflow:(id)workflow
{
  workflowCopy = workflow;
  v7.receiver = self;
  v7.super_class = WFGetHomeAccessoryStateAction;
  [(WFAction *)&v7 wasAddedToWorkflow:workflowCopy];
  v5 = [(WFAction *)self parameterForKey:@"WFHome"];
  v6 = [workflowCopy environment] == 2 || objc_msgSend(workflowCopy, "environment") == 1;
  [v5 setHidden:v6];
}

- (void)wasAddedToWorkflowByUser:(id)user
{
  userCopy = user;
  home = [(WFGetHomeAccessoryStateAction *)self home];

  if (!home)
  {
    v6 = +[WFHomeManager sharedManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__WFGetHomeAccessoryStateAction_wasAddedToWorkflowByUser___block_invoke;
    v8[3] = &unk_1E837FA70;
    v8[4] = self;
    [v6 ensureHomesAreLoadedWithCompletionHandler:v8];
  }

  v7.receiver = self;
  v7.super_class = WFGetHomeAccessoryStateAction;
  [(WFAction *)&v7 wasAddedToWorkflowByUser:userCopy];
}

void __58__WFGetHomeAccessoryStateAction_wasAddedToWorkflowByUser___block_invoke(uint64_t a1)
{
  v2 = +[WFHomeManager sharedManager];
  v7 = [v2 primaryHome];

  v3 = v7;
  if (v7)
  {
    v4 = WFSerializableHomeIdentifier(v7);
    v5 = [[WFHMServiceParameterState alloc] initWithService:0 homeIdentifier:v4];
    v6 = [[WFHMCharacteristicSubstitutableState alloc] initWithCharacteristic:0 homeIdentifier:v4];
    [*(a1 + 32) setParameterState:v5 forKey:@"WFHMService"];
    [*(a1 + 32) setParameterState:v6 forKey:@"WFHMCharacteristic"];

    v3 = v7;
  }
}

- (void)dealloc
{
  v3 = +[WFHomeManager sharedManager];
  [v3 removeEventObserver:self];

  v4.receiver = self;
  v4.super_class = WFGetHomeAccessoryStateAction;
  [(WFGetHomeAccessoryStateAction *)&v4 dealloc];
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFGetHomeAccessoryStateAction;
  [(WFAction *)&v4 initializeParameters];
  [(WFGetHomeAccessoryStateAction *)self updateCharacteristicsEnumeration];
  v3 = +[WFHomeManager sharedManager];
  [v3 addEventObserver:self];
}

@end