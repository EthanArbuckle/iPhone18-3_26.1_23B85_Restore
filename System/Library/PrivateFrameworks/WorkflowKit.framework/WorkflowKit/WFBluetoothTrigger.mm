@interface WFBluetoothTrigger
+ (id)localizedDisplayExplanation;
+ (id)localizedDisplayNameWithContext:(id)a3;
+ (id)tintColor;
- (BOOL)hasValidConfiguration;
- (WFBluetoothTrigger)init;
- (WFBluetoothTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (id)suggestedActions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFBluetoothTrigger

- (id)suggestedActions
{
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsWithIdentifiers:&unk_1F4A9B728 serializedParameterArray:0];

  return v3;
}

- (WFBluetoothTrigger)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFBluetoothTrigger;
  v5 = [(WFTrigger *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"selectedDevices"];
    selectedDevices = v5->_selectedDevices;
    v5->_selectedDevices = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 unsignedIntegerValue];
    }

    else
    {
      v13 = 1;
    }

    v5->_selection = v13;
    v5->_onConnect = [v4 decodeBoolForKey:@"onConnect"];
    v5->_onDisconnect = [v4 decodeBoolForKey:@"onDisconnect"];
    if (![(WFBluetoothTrigger *)v5 onConnect]&& ![(WFBluetoothTrigger *)v5 onDisconnect])
    {
      v5->_onConnect = 1;
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFBluetoothTrigger;
  v4 = a3;
  [(WFTrigger *)&v7 encodeWithCoder:v4];
  v5 = [(WFBluetoothTrigger *)self selectedDevices:v7.receiver];
  [v4 encodeObject:v5 forKey:@"selectedDevices"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFBluetoothTrigger selection](self, "selection")}];
  [v4 encodeObject:v6 forKey:@"selection"];

  [v4 encodeBool:-[WFBluetoothTrigger onConnect](self forKey:{"onConnect"), @"onConnect"}];
  [v4 encodeBool:-[WFBluetoothTrigger onDisconnect](self forKey:{"onDisconnect"), @"onDisconnect"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = WFBluetoothTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:a3];
  v5 = [(WFBluetoothTrigger *)self selectedDevices];
  v6 = [v5 copy];
  [v4 setSelectedDevices:v6];

  [v4 setSelection:{-[WFBluetoothTrigger selection](self, "selection")}];
  [v4 setOnConnect:{-[WFBluetoothTrigger onConnect](self, "onConnect")}];
  [v4 setOnDisconnect:{-[WFBluetoothTrigger onDisconnect](self, "onDisconnect")}];
  return v4;
}

- (id)localizedPastTenseDescription
{
  v3 = [MEMORY[0x1E69E0A90] currentDevice];
  v4 = [v3 name];

  if (!-[WFBluetoothTrigger selection](self, "selection") || -[WFBluetoothTrigger selection](self, "selection") == 1 && (-[WFBluetoothTrigger selectedDevices](self, "selectedDevices"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 >= 2))
  {
    if ([(WFBluetoothTrigger *)self onConnect]&& [(WFBluetoothTrigger *)self onDisconnect])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = @"%1$@ connected or disconnected from Bluetooth device";
LABEL_15:
      v12 = WFLocalizedString(v8);
      v14 = [v7 localizedStringWithFormat:v12, v4];
      goto LABEL_22;
    }

    if ([(WFBluetoothTrigger *)self onConnect])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = @"%1$@ connected to Bluetooth device";
      goto LABEL_15;
    }

    if ([(WFBluetoothTrigger *)self onDisconnect])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = @"%1$@ disconnected from Bluetooth device";
      goto LABEL_15;
    }

LABEL_16:
    v14 = &stru_1F4A1C408;
    goto LABEL_23;
  }

  v9 = [(WFBluetoothTrigger *)self selectedDevices];
  v10 = [v9 count];

  if (v10 != 1)
  {
    goto LABEL_16;
  }

  v11 = [(WFBluetoothTrigger *)self selectedDevices];
  v12 = [v11 objectAtIndexedSubscript:0];

  if ([(WFBluetoothTrigger *)self onConnect]&& [(WFBluetoothTrigger *)self onDisconnect])
  {
    v13 = @"%1$@ connected or disconnected from “%2$@”";
  }

  else if ([(WFBluetoothTrigger *)self onConnect])
  {
    v13 = @"%1$@ connected to “%2$@”";
  }

  else
  {
    if (![(WFBluetoothTrigger *)self onDisconnect])
    {
      v14 = &stru_1F4A1C408;
      goto LABEL_22;
    }

    v13 = @"%1$@ disconnected from “%2$@”";
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = WFLocalizedString(v13);
  v14 = [v15 localizedStringWithFormat:v16, v4, v12];

LABEL_22:
LABEL_23:

  return v14;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v3 = [MEMORY[0x1E69E0A90] currentDevice];
  v4 = [v3 name];

  if (![(WFBluetoothTrigger *)self selection])
  {
    if ([(WFBluetoothTrigger *)self onConnect]&& [(WFBluetoothTrigger *)self onDisconnect])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When %1$@ is connected or disconnected from any Bluetooth device";
    }

    else if ([(WFBluetoothTrigger *)self onConnect])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When %1$@ is connected to any Bluetooth device";
    }

    else
    {
      if (![(WFBluetoothTrigger *)self onDisconnect])
      {
        goto LABEL_31;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"When %1$@ is disconnected from any Bluetooth device";
    }

    v8 = WFLocalizedString(v11);
    v14 = [v10 localizedStringWithFormat:v8, v4];
    goto LABEL_27;
  }

  v5 = [(WFBluetoothTrigger *)self selectedDevices];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(WFBluetoothTrigger *)self selectedDevices];
    v8 = [v7 objectAtIndexedSubscript:0];

    if ([(WFBluetoothTrigger *)self onConnect]&& [(WFBluetoothTrigger *)self onDisconnect])
    {
      v9 = @"When %1$@ is connected or disconnected from “%2$@”";
    }

    else if ([(WFBluetoothTrigger *)self onConnect])
    {
      v9 = @"When %1$@ is connected to “%2$@”";
    }

    else
    {
      if (![(WFBluetoothTrigger *)self onDisconnect])
      {
        v14 = &stru_1F4A1C408;
        goto LABEL_27;
      }

      v9 = @"When %1$@ is disconnected from “%2$@”";
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = WFLocalizedString(v9);
    v14 = [v15 localizedStringWithFormat:v16, v4, v8];

LABEL_27:
    goto LABEL_28;
  }

  if ([(WFBluetoothTrigger *)self onConnect]&& [(WFBluetoothTrigger *)self onDisconnect])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When %2$@ is connected or disconnected from any of %1$lu Bluetooth devices";
LABEL_26:
    v8 = WFLocalizedPluralString(v13);
    v17 = [(WFBluetoothTrigger *)self selectedDevices];
    v14 = [v12 localizedStringWithFormat:v8, objc_msgSend(v17, "count"), v4];

    goto LABEL_27;
  }

  if ([(WFBluetoothTrigger *)self onConnect])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When %2$@ is connected to any of %1$lu Bluetooth devices";
    goto LABEL_26;
  }

  if ([(WFBluetoothTrigger *)self onDisconnect])
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = @"When %2$@ is disconnected from any of %1$lu Bluetooth devices";
    goto LABEL_26;
  }

LABEL_31:
  v14 = &stru_1F4A1C408;
LABEL_28:

  return v14;
}

- (BOOL)hasValidConfiguration
{
  v3 = [(WFBluetoothTrigger *)self selectedDevices];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(WFBluetoothTrigger *)self selection]== 0;
  }

  v5 = [(WFBluetoothTrigger *)self onConnect]|| [(WFBluetoothTrigger *)self onDisconnect];
  return v4 && v5;
}

- (WFBluetoothTrigger)init
{
  v7.receiver = self;
  v7.super_class = WFBluetoothTrigger;
  v2 = [(WFTrigger *)&v7 init];
  v3 = v2;
  if (v2)
  {
    selectedDevices = v2->_selectedDevices;
    v2->_selectedDevices = MEMORY[0x1E695E0F0];

    v3->_selection = 1;
    v3->_onConnect = 1;
    v5 = v3;
  }

  return v3;
}

+ (id)tintColor
{
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:4];

  return v2;
}

+ (id)localizedDisplayExplanation
{
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [v2 localizedModel];

  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"“When my %@ connects to AirPods”");
  v6 = [v4 localizedStringWithFormat:v5, v3];

  return v6;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Bluetooth", @"Bluetooth");
  v5 = [v3 localize:v4];

  return v5;
}

@end