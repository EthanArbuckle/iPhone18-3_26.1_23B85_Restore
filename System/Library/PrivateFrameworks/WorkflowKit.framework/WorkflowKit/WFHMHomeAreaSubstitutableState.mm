@interface WFHMHomeAreaSubstitutableState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation WFHMHomeAreaSubstitutableState

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  v4 = objc_opt_new();
  uniqueIdentifier = [valueCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"UniqueIdentifier"];

  homeIdentifier = [valueCopy homeIdentifier];
  uUIDString2 = [homeIdentifier UUIDString];
  [v4 setObject:uUIDString2 forKeyedSubscript:@"HomeIdentifier"];

  name = [valueCopy name];
  v10 = [name length];

  if (v10)
  {
    name2 = [valueCopy name];
    [v4 setObject:name2 forKeyedSubscript:@"AreaName"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(valueCopy, "areaType")}];
  [v4 setObject:v12 forKeyedSubscript:@"AreaType"];

  homeName = [valueCopy homeName];
  [v4 setObject:homeName forKeyedSubscript:@"HomeDisplayName"];

  return v4;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = representationCopy;
    v7 = [v6 objectForKeyedSubscript:@"UniqueIdentifier"];
    v8 = [v6 objectForKeyedSubscript:@"HomeIdentifier"];
    if ([v7 length])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
      v11 = [v6 objectForKeyedSubscript:@"AreaName"];
      v12 = [v6 objectForKeyedSubscript:@"AreaType"];
      unsignedIntegerValue = [v12 unsignedIntegerValue];

      v14 = [v6 objectForKeyedSubscript:@"HomeDisplayName"];
      v15 = [[WFHMHomeAreaDescriptor alloc] initWithUniqueIdentifier:v9 homeIdentifier:v10 name:v11 areaType:unsignedIntegerValue homeName:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  value = [(WFVariableSubstitutableParameterState *)self value];
  uniqueIdentifier = [value uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v7 = [v3 combine:uUIDString];

  v8 = [v3 finalize];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [(WFVariableSubstitutableParameterState *)equalCopy value];
      value2 = [(WFVariableSubstitutableParameterState *)self value];
      v7 = [value isEqual:value2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end