@interface LNAppShortcutDynamicOptionsProviderReference(SerializableRepresentation)
- (id)initWithSerializedRepresentation:()SerializableRepresentation;
- (id)serializableRepresentation;
@end

@implementation LNAppShortcutDynamicOptionsProviderReference(SerializableRepresentation)

- (id)serializableRepresentation
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"appShortcutsProviderMangledTypeName";
  appShortcutsProviderMangledTypeName = [self appShortcutsProviderMangledTypeName];
  v10[0] = appShortcutsProviderMangledTypeName;
  v9[1] = @"parameterIdentifier";
  parameterIdentifier = [self parameterIdentifier];
  v10[1] = parameterIdentifier;
  v9[2] = @"appShortcutIndex";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "appShortcutIndex")}];
  v10[2] = v4;
  v9[3] = @"optionsProviderIndex";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "optionsProviderIndex")}];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)initWithSerializedRepresentation:()SerializableRepresentation
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 valueForKey:@"appShortcutsProviderMangledTypeName"];
    v7 = [v5 valueForKey:@"parameterIdentifier"];
    v8 = [v5 valueForKey:@"appShortcutIndex"];
    v9 = [v5 valueForKey:@"optionsProviderIndex"];
    v10 = v9;
    selfCopy = 0;
    if (v6 && v7 && v8 && v9)
    {
      self = [self initWithAppShortcutsProviderMangledTypeName:v6 parameterIdentifier:v7 appShortcutIndex:objc_msgSend(v8 optionsProviderIndex:{"integerValue"), objc_msgSend(v9, "integerValue")}];
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end