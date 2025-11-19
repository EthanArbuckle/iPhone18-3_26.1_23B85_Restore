@interface WFHMHomeAreaSubstitutableState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation WFHMHomeAreaSubstitutableState

+ (id)serializedRepresentationFromValue:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 uniqueIdentifier];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"UniqueIdentifier"];

  v7 = [v3 homeIdentifier];
  v8 = [v7 UUIDString];
  [v4 setObject:v8 forKeyedSubscript:@"HomeIdentifier"];

  v9 = [v3 name];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v3 name];
    [v4 setObject:v11 forKeyedSubscript:@"AreaName"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "areaType")}];
  [v4 setObject:v12 forKeyedSubscript:@"AreaType"];

  v13 = [v3 homeName];
  [v4 setObject:v13 forKeyedSubscript:@"HomeDisplayName"];

  return v4;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 objectForKeyedSubscript:@"UniqueIdentifier"];
    v8 = [v6 objectForKeyedSubscript:@"HomeIdentifier"];
    if ([v7 length])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
      v11 = [v6 objectForKeyedSubscript:@"AreaName"];
      v12 = [v6 objectForKeyedSubscript:@"AreaType"];
      v13 = [v12 unsignedIntegerValue];

      v14 = [v6 objectForKeyedSubscript:@"HomeDisplayName"];
      v15 = [[WFHMHomeAreaDescriptor alloc] initWithUniqueIdentifier:v9 homeIdentifier:v10 name:v11 areaType:v13 homeName:v14];
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
  v4 = [(WFVariableSubstitutableParameterState *)self value];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = [v3 combine:v6];

  v8 = [v3 finalize];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFVariableSubstitutableParameterState *)v4 value];
      v6 = [(WFVariableSubstitutableParameterState *)self value];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end