@interface WFINPaymentMethodParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
@end

@implementation WFINPaymentMethodParameterState

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v6 = objc_opt_class();
  v7 = WFEnforceClass_1501(representationCopy, v6);

  v8 = [v7 objectForKeyedSubscript:@"Type"];
  v9 = objc_opt_class();
  v10 = WFEnforceClass_1501(v8, v9);

  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:@"Name"];
    v12 = objc_opt_class();
    v13 = WFEnforceClass_1501(v11, v12);

    v14 = [v7 objectForKeyedSubscript:@"IdentificationHint"];
    v15 = objc_opt_class();
    v16 = WFEnforceClass_1501(v14, v15);

    v17 = [objc_alloc(MEMORY[0x1E696E938]) initWithType:objc_msgSend(v10 name:"integerValue") identificationHint:v13 icon:{v16, 0}];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(valueCopy, "type")}];
  [v4 setObject:v5 forKey:@"Type"];

  name = [valueCopy name];

  if (name)
  {
    name2 = [valueCopy name];
    [v4 setObject:name2 forKey:@"Name"];
  }

  identificationHint = [valueCopy identificationHint];

  if (identificationHint)
  {
    identificationHint2 = [valueCopy identificationHint];
    [v4 setObject:identificationHint2 forKey:@"IdentificationHint"];
  }

  return v4;
}

@end