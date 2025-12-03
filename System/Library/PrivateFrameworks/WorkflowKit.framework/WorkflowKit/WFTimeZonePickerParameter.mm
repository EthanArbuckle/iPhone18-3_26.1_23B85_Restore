@interface WFTimeZonePickerParameter
- (WFTimeZonePickerParameter)initWithDefinition:(id)definition;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFTimeZonePickerParameter

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  v23[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  value = [stateCopy value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    alCityIdentifier = [value alCityIdentifier];
    if (!alCityIdentifier)
    {
      goto LABEL_8;
    }

    v8 = alCityIdentifier;
    cityManager = [(WFTimeZonePickerParameter *)self cityManager];
    alCityIdentifier2 = [value alCityIdentifier];
    stringValue = [alCityIdentifier2 stringValue];
    v23[0] = stringValue;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v13 = [cityManager citiesWithIdentifiers:v12];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
      if ([currentDevice isChineseRegionDevice])
      {
        v16 = +[WFTimeZonePickerParameter sensitiveCities];
        alCityIdentifier3 = [value alCityIdentifier];
        v18 = [v16 containsObject:alCityIdentifier3];
      }

      else
      {
        v18 = 0;
      }

      localizedCityName = [firstObject displayNameIncludingCountry:v18];
    }

    else
    {
LABEL_8:
      firstObject = [stateCopy value];
      localizedCityName = [firstObject localizedCityName];
    }

    v19 = localizedCityName;
  }

  else
  {

    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  stateQueue = [(WFTimeZonePickerParameter *)self stateQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__WFTimeZonePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v9[3] = &unk_1E837E1F8;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(stateQueue, v9);
}

void __91__WFTimeZonePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cityManager];
  v3 = [v2 allCities];
  v4 = [v3 if_map:&__block_literal_global_23354];

  v7 = [v4 sortedArrayUsingComparator:&__block_literal_global_179];

  v5 = [v7 if_map:&__block_literal_global_182];
  v6 = [objc_alloc(MEMORY[0x1E696E918]) initWithItems:v5];
  [v6 setUsesIndexedCollation:1];
  (*(*(a1 + 40) + 16))();
}

WFTimeZonePickerParameterState *__91__WFTimeZonePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFTimeZonePickerParameterState alloc] initWithValue:v2];

  return v3;
}

uint64_t __91__WFTimeZonePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedCityName];
  v6 = [v4 localizedCityName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

WFTimeZoneDescriptor *__91__WFTimeZonePickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFTimeZoneDescriptor alloc] initWithALCity:v2];

  return v3;
}

- (WFTimeZonePickerParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v18.receiver = self;
  v18.super_class = WFTimeZonePickerParameter;
  v5 = [(WFDynamicEnumerationParameter *)&v18 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create(uTF8String, v10);
    stateQueue = v5->_stateQueue;
    v5->_stateQueue = v11;

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v13 = getALCityManagerClass_softClass;
    v23 = getALCityManagerClass_softClass;
    if (!getALCityManagerClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getALCityManagerClass_block_invoke;
      v19[3] = &unk_1E837FAC0;
      v19[4] = &v20;
      __getALCityManagerClass_block_invoke(v19);
      v13 = v21[3];
    }

    v14 = v13;
    _Block_object_dispose(&v20, 8);
    sharedManager = [v13 sharedManager];
    [(WFTimeZonePickerParameter *)v5 setCityManager:sharedManager];

    [(WFDynamicEnumerationParameter *)v5 setDataSource:v5];
    v16 = v5;
  }

  return v5;
}

@end