@interface WFGetHomeAccessoryStateAction
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (NSString)homeIdentifier;
- (id)characteristic;
- (id)home;
- (id)homeName;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)outputContentClasses;
- (id)outputMeasurementUnitType;
- (void)dealloc;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)updateCharacteristicsEnumeration;
- (void)wasAddedToWorkflow:(id)a3;
- (void)wasAddedToWorkflowByUser:(id)a3;
@end

@implementation WFGetHomeAccessoryStateAction

- (void)updateCharacteristicsEnumeration
{
  v6 = [(WFAction *)self parameterForKey:@"WFHMCharacteristic"];
  v3 = [(WFAction *)self parameterStateForKey:@"WFHMService"];
  v4 = [v3 service];
  v5 = [v3 homeIdentifier];
  [v6 setService:v4 homeIdentifier:v5];
}

- (id)characteristic
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHMCharacteristic"];
  v3 = [v2 characteristic];

  return v3;
}

- (id)homeName
{
  v2 = [(WFGetHomeAccessoryStateAction *)self home];
  v3 = [v2 name];

  return v3;
}

- (id)home
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHMService"];
  v3 = [v2 homeIdentifier];

  if (v3)
  {
    v4 = +[WFHomeManager sharedManager];
    v5 = [v2 homeIdentifier];
    v3 = [v4 homeWithIdentifier:v5];
  }

  return v3;
}

- (NSString)homeIdentifier
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHMService"];
  v3 = [v2 homeIdentifier];

  if (v3)
  {
    v3 = [v2 homeIdentifier];
  }

  return v3;
}

- (void)homeManagerDidUpdateHomes:(id)a3
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

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFGetHomeAccessoryStateAction *)self characteristic];
  v6 = [v5 localizedDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFGetHomeAccessoryStateAction;
    v8 = [(WFAction *)&v11 localizedDefaultOutputNameWithContext:v4];
  }

  v9 = v8;

  return v9;
}

- (id)outputMeasurementUnitType
{
  v3 = [(WFGetHomeAccessoryStateAction *)self characteristic];

  if (v3)
  {
    v4 = MEMORY[0x1E69E0BE8];
    v5 = [(WFGetHomeAccessoryStateAction *)self characteristic];
    v6 = WFUnitForHMCharacteristic(v5);
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
  v3 = [(WFGetHomeAccessoryStateAction *)self characteristic];
  v4 = [v3 metadata];
  v5 = [v4 format];

  v6 = getHMCharacteristicMetadataFormatBool();
  LODWORD(v4) = [v5 isEqualToString:v6];

  if (v4)
  {
    v26[0] = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = v26;
LABEL_5:
    v11 = [v7 arrayWithObjects:v8 count:1];
    goto LABEL_19;
  }

  v9 = getHMCharacteristicMetadataFormatString();
  v10 = [v5 isEqualToString:v9];

  if (v10)
  {
    v25 = objc_opt_class();
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v25;
    goto LABEL_5;
  }

  v12 = getHMCharacteristicMetadataFormatInt();
  if ([v5 isEqualToString:v12])
  {
    goto LABEL_15;
  }

  v13 = getHMCharacteristicMetadataFormatFloat();
  if ([v5 isEqualToString:v13])
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v14 = getHMCharacteristicMetadataFormatUInt8();
  if ([v5 isEqualToString:v14])
  {
LABEL_13:

    goto LABEL_14;
  }

  v15 = getHMCharacteristicMetadataFormatUInt16();
  if ([v5 isEqualToString:v15])
  {
LABEL_12:

    goto LABEL_13;
  }

  v16 = getHMCharacteristicMetadataFormatUInt32();
  if ([v5 isEqualToString:v16])
  {

    goto LABEL_12;
  }

  v22 = getHMCharacteristicMetadataFormatUInt64();
  v23 = [v5 isEqualToString:v22];

  if ((v23 & 1) == 0)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

LABEL_16:
  v17 = [(WFGetHomeAccessoryStateAction *)self outputMeasurementUnitType];
  v18 = 0x1E6996EC0;
  if (v17)
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

- (void)runAsynchronouslyWithInput:(id)a3
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

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"WFHome"])
  {
    v8 = v6;
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

    v12 = [v11 value];

    v10 = v12 != 0;
    if (v12)
    {
      v13 = [[WFHMServiceParameterState alloc] initWithService:0 homeIdentifier:v12];
      v14 = [[WFHMCharacteristicSubstitutableState alloc] initWithCharacteristic:0 homeIdentifier:v12];
      [(WFGetHomeAccessoryStateAction *)self setParameterState:v13 forKey:@"WFHMService"];
      [(WFGetHomeAccessoryStateAction *)self setParameterState:v14 forKey:@"WFHMCharacteristic"];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFGetHomeAccessoryStateAction;
    if ([(WFAction *)&v16 setParameterState:v6 forKey:v7])
    {
      if ([v7 isEqualToString:@"WFHMCharacteristic"])
      {
        [(WFAction *)self outputDetailsUpdated];
      }

      if ([v7 isEqualToString:@"WFHMService"])
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

- (void)wasAddedToWorkflow:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = WFGetHomeAccessoryStateAction;
  [(WFAction *)&v7 wasAddedToWorkflow:v4];
  v5 = [(WFAction *)self parameterForKey:@"WFHome"];
  v6 = [v4 environment] == 2 || objc_msgSend(v4, "environment") == 1;
  [v5 setHidden:v6];
}

- (void)wasAddedToWorkflowByUser:(id)a3
{
  v4 = a3;
  v5 = [(WFGetHomeAccessoryStateAction *)self home];

  if (!v5)
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
  [(WFAction *)&v7 wasAddedToWorkflowByUser:v4];
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