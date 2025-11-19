@interface _HKSPUserDefaultsStatePersistence
- (BOOL)savePersistentState:(id)a3 identifier:(id)a4 error:(id *)a5;
- (_HKSPUserDefaultsStatePersistence)initWithUserDefaults:(id)a3;
- (id)loadPersistentStateForIdentifier:(id)a3 allowedStates:(id)a4 error:(id *)a5;
@end

@implementation _HKSPUserDefaultsStatePersistence

- (_HKSPUserDefaultsStatePersistence)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _HKSPUserDefaultsStatePersistence;
  v6 = [(_HKSPUserDefaultsStatePersistence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
    v8 = v7;
  }

  return v7;
}

- (id)loadPersistentStateForIdentifier:(id)a3 allowedStates:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(HKSPUserDefaults *)self->_userDefaults hksp_objectForKey:a3];
  if (v9)
  {
    v10 = [[HKSPDictionaryDeserializer alloc] initWithAllowedClasses:v8 serializedDictionary:v9];
    v11 = [v9 hksp_serializedClassName];
    v12 = NSClassFromString(v11);

    if ([(objc_class *)v12 isSubclassOfClass:objc_opt_class()])
    {
      v13 = [(HKSPDictionaryDeserializer *)v10 deserializeObjectOfClass:v12 error:a5];
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

- (BOOL)savePersistentState:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = objc_alloc_init(HKSPDictionarySerializer);
    if (![(HKSPDictionarySerializer *)v10 serialize:v8 error:a5])
    {
      v12 = 0;
      goto LABEL_7;
    }

    v11 = [(HKSPDictionarySerializer *)v10 serializedDictionary];

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  [(HKSPUserDefaults *)self->_userDefaults hksp_setObject:v10 forKey:v9];
  [(HKSPUserDefaults *)self->_userDefaults hksp_synchronize];
  v12 = 1;
LABEL_7:

  return v12;
}

@end