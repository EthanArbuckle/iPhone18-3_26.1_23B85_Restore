@interface WFINPaymentMethodParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
@end

@implementation WFINPaymentMethodParameterState

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = WFEnforceClass_1501(v5, v6);

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

+ (id)serializedRepresentationFromValue:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "type")}];
  [v4 setObject:v5 forKey:@"Type"];

  v6 = [v3 name];

  if (v6)
  {
    v7 = [v3 name];
    [v4 setObject:v7 forKey:@"Name"];
  }

  v8 = [v3 identificationHint];

  if (v8)
  {
    v9 = [v3 identificationHint];
    [v4 setObject:v9 forKey:@"IdentificationHint"];
  }

  return v4;
}

@end