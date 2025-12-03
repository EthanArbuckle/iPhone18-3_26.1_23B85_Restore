@interface _HKSPUserDefaultsStatePersistence
- (BOOL)savePersistentState:(id)state identifier:(id)identifier error:(id *)error;
- (_HKSPUserDefaultsStatePersistence)initWithUserDefaults:(id)defaults;
- (id)loadPersistentStateForIdentifier:(id)identifier allowedStates:(id)states error:(id *)error;
@end

@implementation _HKSPUserDefaultsStatePersistence

- (_HKSPUserDefaultsStatePersistence)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = _HKSPUserDefaultsStatePersistence;
  v6 = [(_HKSPUserDefaultsStatePersistence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
    v8 = v7;
  }

  return v7;
}

- (id)loadPersistentStateForIdentifier:(id)identifier allowedStates:(id)states error:(id *)error
{
  statesCopy = states;
  v9 = [(HKSPUserDefaults *)self->_userDefaults hksp_objectForKey:identifier];
  if (v9)
  {
    v10 = [[HKSPDictionaryDeserializer alloc] initWithAllowedClasses:statesCopy serializedDictionary:v9];
    hksp_serializedClassName = [v9 hksp_serializedClassName];
    v12 = NSClassFromString(hksp_serializedClassName);

    if ([(objc_class *)v12 isSubclassOfClass:objc_opt_class()])
    {
      v13 = [(HKSPDictionaryDeserializer *)v10 deserializeObjectOfClass:v12 error:error];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)savePersistentState:(id)state identifier:(id)identifier error:(id *)error
{
  stateCopy = state;
  identifierCopy = identifier;
  if (stateCopy)
  {
    v10 = objc_alloc_init(HKSPDictionarySerializer);
    if (![(HKSPDictionarySerializer *)v10 serialize:stateCopy error:error])
    {
      v12 = 0;
      goto LABEL_7;
    }

    serializedDictionary = [(HKSPDictionarySerializer *)v10 serializedDictionary];

    v10 = serializedDictionary;
  }

  else
  {
    v10 = 0;
  }

  [(HKSPUserDefaults *)self->_userDefaults hksp_setObject:v10 forKey:identifierCopy];
  [(HKSPUserDefaults *)self->_userDefaults hksp_synchronize];
  v12 = 1;
LABEL_7:

  return v12;
}

@end