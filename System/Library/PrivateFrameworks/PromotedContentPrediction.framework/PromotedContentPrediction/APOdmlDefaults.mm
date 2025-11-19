@interface APOdmlDefaults
+ (BOOL)BOOLForKey:(id)a3;
+ (double)doubleForKey:(id)a3;
+ (id)_defaultValueForKey:(id)a3 valueClass:(Class)a4;
+ (id)arrayForKey:(id)a3;
+ (id)sharedInstance;
+ (id)stringForKey:(id)a3;
+ (int64_t)integerForKey:(id)a3;
+ (void)_setDefaultValue:(id)a3 forKey:(id)a4;
+ (void)setDouble:(double)a3 forKey:(id)a4;
+ (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (APOdmlDefaults)init;
@end

@implementation APOdmlDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260ECC640;
  block[3] = &unk_279AC5E98;
  block[4] = a1;
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

+ (id)_defaultValueForKey:(id)a3 valueClass:(Class)a4
{
  v4 = a3;
  v7 = objc_msgSend_sharedInstance(APOdmlDefaults, v5, v6);
  v8 = CFPreferencesCopyAppValue(v4, v7[2]);

  if (!v8)
  {
    v11 = objc_msgSend_sharedInstance(APOdmlDefaults, v9, v10);
    v8 = objc_msgSend_objectForKeyedSubscript_(v11[1], v12, v4);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

+ (void)_setDefaultValue:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = objc_msgSend_sharedInstance(APOdmlDefaults, v7, v8);
  CFPreferencesSetAppValue(v5, v6, v9[2]);

  v12 = objc_msgSend_sharedInstance(APOdmlDefaults, v10, v11);
  CFPreferencesAppSynchronize(v12[2]);
}

+ (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(a1, v6, v4, v5);

  v10 = objc_msgSend_BOOLValue(v7, v8, v9);
  return v10;
}

+ (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(a1, v6, v4, v5);

  v10 = objc_msgSend_integerValue(v7, v8, v9);
  return v10;
}

+ (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v10 = objc_msgSend_numberWithInteger_(v6, v8, a3);
  objc_msgSend__setDefaultValue_forKey_(a1, v9, v10, v7);
}

+ (double)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(a1, v6, v4, v5);

  objc_msgSend_doubleValue(v7, v8, v9);
  v11 = v10;

  return v11;
}

+ (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v11 = objc_msgSend_numberWithDouble_(v6, v8, v9, a3);
  objc_msgSend__setDefaultValue_forKey_(a1, v10, v11, v7);
}

+ (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(a1, v6, v4, v5);

  return v7;
}

+ (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__defaultValueForKey_valueClass_(a1, v6, v4, v5);

  return v7;
}

@end