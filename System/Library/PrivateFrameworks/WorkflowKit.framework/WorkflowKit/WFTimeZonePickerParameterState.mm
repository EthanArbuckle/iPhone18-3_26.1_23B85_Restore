@interface WFTimeZonePickerParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
@end

@implementation WFTimeZonePickerParameterState

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  if (representationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = representationCopy;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(MTLJSONAdapter *)WFPropertyListJSONAdapter modelOfClass:objc_opt_class() fromJSONDictionary:v7 error:0];

  return v8;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  if (value)
  {
    v4 = [(MTLJSONAdapter *)WFPropertyListJSONAdapter JSONDictionaryFromModel:value error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end