@interface APOdmlDefaults
+ (BOOL)BOOLForKey:(id)key;
+ (double)doubleForKey:(id)key;
+ (id)_defaultValueForKey:(id)key valueClass:(Class)class;
+ (id)arrayForKey:(id)key;
+ (id)sharedInstance;
+ (id)stringForKey:(id)key;
+ (int64_t)integerForKey:(id)key;
+ (void)_setDefaultValue:(id)value forKey:(id)key;
+ (void)setDouble:(double)double forKey:(id)key;
+ (void)setInteger:(int64_t)integer forKey:(id)key;
- (APOdmlDefaults)init;
@end

@implementation APOdmlDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260ECC640;
  block[3] = &unk_279AC5E98;
  block[4] = self;
  if (qword_280CCF550 != -1)
  {
    dispatch_once(&qword_280CCF550, block);
  }

  v2 = qword_280CCF568;

  return v2;
}

- (APOdmlDefaults)init
{
  v13.receiver = self;
  v13.super_class = APOdmlDefaults;
  v2 = [(APOdmlDefaults *)&v13 init];
  if (v2)
  {
    v3 = CPCopySharedResourcesPreferencesDomainForDomain();
    v2->_defaultsBundleID = v3;
    if (!v3)
    {
      APOdmlSimulateCrash(5, @"Unable to initialize the defaults domain bundle identifier.", 0);
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    factoryDefaults = v2->_factoryDefaults;
    v2->_factoryDefaults = v4;

    if (MGGetBoolAnswer())
    {
      objc_msgSend_setObject_forKeyedSubscript_(v2->_factoryDefaults, v6, &stru_2873677E0, @"ODMLpTTROverride");
      objc_msgSend_setObject_forKeyedSubscript_(v2->_factoryDefaults, v7, &stru_2873677E0, @"ODMLAppVectorVersionOverride");
      objc_msgSend_setObject_forKeyedSubscript_(v2->_factoryDefaults, v8, &stru_2873677E0, @"ODMLAppVectorVectorOverride");
      v9 = MEMORY[0x277CBEC28];
      objc_msgSend_setObject_forKeyedSubscript_(v2->_factoryDefaults, v10, MEMORY[0x277CBEC28], @"ODMLEnableOverrides");
      objc_msgSend_setObject_forKeyedSubscript_(v2->_factoryDefaults, v11, v9, @"VerboseLogging");
    }
  }

  return v2;
}

+ (id)_defaultValueForKey:(id)key valueClass:(Class)class
{
  keyCopy = key;
  v7 = objc_msgSend_sharedInstance(APOdmlDefaults, v5, v6);
  v8 = CFPreferencesCopyAppValue(keyCopy, v7[2]);

  if (!v8)
  {
    v11 = objc_msgSend_sharedInstance(APOdmlDefaults, v9, v10);
    v8 = objc_msgSend_objectForKeyedSubscript_(v11[1], v12, keyCopy);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (void)_setDefaultValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v9 = objc_msgSend_sharedInstance(APOdmlDefaults, v7, v8);
  CFPreferencesSetAppValue(keyCopy, valueCopy, v9[2]);

  v12 = objc_msgSend_sharedInstance(APOdmlDefaults, v10, v11);
  CFPreferencesAppSynchronize(v12[2]);
}

+ (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(self, v6, keyCopy, v5);

  v10 = objc_msgSend_BOOLValue(v7, v8, v9);
  return v10;
}

+ (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(self, v6, keyCopy, v5);

  v10 = objc_msgSend_integerValue(v7, v8, v9);
  return v10;
}

+ (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v10 = objc_msgSend_numberWithInteger_(v6, v8, integer);
  objc_msgSend__setDefaultValue_forKey_(self, v9, v10, keyCopy);
}

+ (double)doubleForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(self, v6, keyCopy, v5);

  objc_msgSend_doubleValue(v7, v8, v9);
  v11 = v10;

  return v11;
}

+ (void)setDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v11 = objc_msgSend_numberWithDouble_(v6, v8, v9, double);
  objc_msgSend__setDefaultValue_forKey_(self, v10, v11, keyCopy);
}

+ (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(self, v6, keyCopy, v5);

  return v7;
}

+ (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(self, v6, keyCopy, v5);

  return v7;
}

@end