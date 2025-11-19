@interface _SWCServiceSettings
+ (BOOL)removeObjectsForKeys:(id)a3 serviceSpecifier:(id)a4 error:(id *)a5;
+ (BOOL)removeObjectsForKeys:(id)a3 serviceType:(id)a4 error:(id *)a5;
+ (NSNotificationCenter)notificationCenter;
+ (id)serviceSettingsWithServiceSpecifier:(id)a3 error:(id *)a4;
+ (void)postChangeNotificationForServiceSpecifier:(id)a3;
+ (void)serviceSettingsDidChange:(id)a3;
- (BOOL)commitReturningError:(id *)a3;
- (NSDictionary)dictionaryRepresentation;
- (_SWCServiceSettings)initWithCoder:(id)a3;
- (id)_initWithServiceSpecifier:(id)a3 dictionary:(id)a4 generation:(id)a5;
- (id)debugDescription;
- (id)description;
- (id)objectForKey:(id)a3 ofClass:(Class)a4;
- (id)objectForKey:(id)a3 ofClass:(Class)a4 valuesOfClass:(Class)a5;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation _SWCServiceSettings

+ (NSNotificationCenter)notificationCenter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___SWCServiceSettings_notificationCenter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_280B21808 != -1)
  {
    dispatch_once(&qword_280B21808, block);
  }

  v2 = _MergedGlobals_0;

  return v2;
}

+ (id)serviceSettingsWithServiceSpecifier:(id)a3 error:(id *)a4
{
  v7 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v8 = [v7 serviceType];

  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"SWCServiceSettings.mm" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"specifier.serviceType != nil"}];
  }

  v9 = _SWCGetServerConnection();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65___SWCServiceSettings_serviceSettingsWithServiceSpecifier_error___block_invoke;
  v16[3] = &unk_279BBDE70;
  v16[4] = &v17;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65___SWCServiceSettings_serviceSettingsWithServiceSpecifier_error___block_invoke_2;
  v15[3] = &unk_279BBDE98;
  v15[4] = &v23;
  v15[5] = &v17;
  [v10 getServiceSettingsWithServiceSpecifier:v7 completionHandler:v15];
  v11 = v24[5];
  if (a4 && !v11)
  {
    *a4 = v18[5];
    v11 = v24[5];
  }

  v12 = v11;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

- (id)objectForKey:(id)a3 ofClass:(Class)a4
{
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SWCServiceSettings.mm" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SWCServiceSettings.mm" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"clazz != Nil"}];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:v7];
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (id)objectForKey:(id)a3 ofClass:(Class)a4 valuesOfClass:(Class)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!a5)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"SWCServiceSettings.mm" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"valueClazz != Nil"}];
  }

  v10 = [(_SWCServiceSettings *)self objectForKey:v9 ofClass:a4];
  if (v10)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    if (_NSIsNSArray())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v12)
      {
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *(v25 + 24) = 0;
              goto LABEL_17;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    else if (_NSIsNSDictionary())
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __58___SWCServiceSettings_objectForKey_ofClass_valuesOfClass___block_invoke;
      v19[3] = &unk_279BBDEC0;
      v19[4] = &v24;
      v19[5] = a5;
      [v10 enumerateKeysAndObjectsUsingBlock:v19];
    }

    if ((v25[3] & 1) == 0)
    {

      v10 = 0;
    }

    _Block_object_dispose(&v24, 8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  propertyList = a3;
  v7 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SWCServiceSettings.mm" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v8 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:v7];
  v9 = v8;
  if (propertyList | v8)
  {
    if (([v8 isEqual:?] & 1) == 0)
    {
      v10 = propertyList;
      if (propertyList)
      {
        if (([MEMORY[0x277CCAC58] propertyList:propertyList isValidForFormat:200] & 1) == 0)
        {
          v13 = [MEMORY[0x277CCA890] currentHandler];
          [v13 handleFailureInMethod:a2 object:self file:@"SWCServiceSettings.mm" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"[NSPropertyListSerialization propertyList:newValue isValidForFormat:NSPropertyListBinaryFormat_v1_0]"}];
        }

        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], propertyList, 0);

        v10 = DeepCopy;
      }

      propertyList = v10;
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
      *(self + 16) |= 1u;
    }
  }

  else
  {
    propertyList = 0;
  }
}

- (BOOL)commitReturningError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  if (*(self + 16))
  {
    v5 = _SWCGetServerConnection();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44___SWCServiceSettings_commitReturningError___block_invoke;
    v10[3] = &unk_279BBDE70;
    v10[4] = &v11;
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44___SWCServiceSettings_commitReturningError___block_invoke_2;
    v9[3] = &unk_279BBDEE8;
    v9[4] = self;
    v9[5] = &v17;
    v9[6] = &v11;
    [v6 commitServiceSettings:self completionHandler:v9];
    if (*(v18 + 24) == 1)
    {
      *(self + 16) &= ~1u;
    }

    v7 = *(v18 + 24);
    if (a3 && (v18[3] & 1) == 0)
    {
      *a3 = v12[5];
      v7 = *(v18 + 24);
    }
  }

  else
  {
    v7 = 1;
    v20 = 1;
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v7 & 1;
}

- (id)_initWithServiceSpecifier:(id)a3 dictionary:(id)a4 generation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = _SWCServiceSettings;
  v12 = [(_SWCServiceSettings *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceSpecifier, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = MEMORY[0x277CBEC10];
    }

    v15 = [v14 mutableCopy];
    dict = v13->_dict;
    v13->_dict = v15;

    objc_storeStrong(&v13->_generation, a5);
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [(NSMutableDictionary *)self->_dict copy];

  return v2;
}

+ (void)serviceSettingsDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"serviceSpecifierData"];

  if (v5 && _NSIsNSData())
  {
    v11 = 0;
    v6 = [MEMORY[0x277CCAAC8] swc_unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];
    v7 = v11;
    if (v6)
    {
      v8 = [a1 notificationCenter];
      [v8 postNotificationName:@"com.apple.swc.serviceSettingsDidChangeNotification" object:v6];
    }

    else
    {
      if (qword_280B21828 != -1)
      {
        dispatch_once(&qword_280B21828, &__block_literal_global_148);
      }

      v9 = qword_280B21820;
      if (os_log_type_enabled(qword_280B21820, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_error_impl(&dword_265F54000, v9, OS_LOG_TYPE_ERROR, "Failed to decode service specifier for posting change notification: %@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)postChangeNotificationForServiceSpecifier:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v14 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v14];
    v5 = v14;
    if (v4)
    {
      v17 = @"serviceSpecifierData";
      v18[0] = v4;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      if (qword_280B21818 != -1)
      {
        dispatch_once(&qword_280B21818, &__block_literal_global_0);
      }

      v7 = qword_280B21810;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65___SWCServiceSettings_postChangeNotificationForServiceSpecifier___block_invoke_2;
      block[3] = &unk_279BBDF10;
      v12 = v6;
      v13 = 3;
      v8 = v6;
      dispatch_async(v7, block);
    }

    else
    {
      if (qword_280B21828 != -1)
      {
        dispatch_once(&qword_280B21828, &__block_literal_global_148);
      }

      v9 = qword_280B21820;
      if (os_log_type_enabled(qword_280B21820, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_error_impl(&dword_265F54000, v9, OS_LOG_TYPE_ERROR, "Failed to encode service specifier for posting change notification: %@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(_SWCServiceSettings *)self serviceSpecifier];
  v5 = [v3 initWithFormat:@"{ s = %@, %llu values }", v4, -[NSMutableDictionary count](self->_dict, "count")];

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(_SWCServiceSettings *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(_SWCServiceSettings *)self serviceSpecifier];
  v5 = [v4 redactedDescription];
  v6 = [v3 initWithFormat:@"{ s = %@, %llu values }", v5, -[NSMutableDictionary count](self->_dict, "count")];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_serviceSpecifier forKey:@"serviceSpecifier"];
  [v4 encodeObject:self->_dict forKey:@"dictionaryRepresentation"];
  [v4 encodeObject:self->_generation forKey:@"generation"];
}

- (_SWCServiceSettings)initWithCoder:(id)a3
{
  v37[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"serviceSpecifier"];
  v6 = v5;
  if (!v5 || ([v5 serviceType], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v36[0] = @"Line";
    v36[1] = @"Function";
    v37[0] = &unk_2877A7318;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_SWCServiceSettings initWithCoder:]"];
    v37[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v11 = [v8 initWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:v10];
    [v4 failWithError:v11];

    self = 0;
  }

  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v35[2] = objc_opt_class();
  v35[3] = objc_opt_class();
  v35[4] = objc_opt_class();
  v35[5] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:6];
  v14 = [v12 initWithArray:v13];

  v15 = [v4 swc_decodeObjectOfClasses:v14 forKey:@"dictionaryRepresentation"];
  if (!v15)
  {
    v20 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33[0] = @"Line";
    v33[1] = @"Function";
    v34[0] = &unk_2877A7330;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_SWCServiceSettings initWithCoder:]"];
    v34[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v19 = [v20 initWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:v18];
    [v4 failWithError:v19];
    goto LABEL_9;
  }

  if (!_NSIsNSDictionary() || ([MEMORY[0x277CCAC58] propertyList:v15 isValidForFormat:200] & 1) == 0)
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v31[0] = @"Line";
    v31[1] = @"Function";
    v32[0] = &unk_2877A7348;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_SWCServiceSettings initWithCoder:]"];
    v32[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v19 = [v16 initWithDomain:*MEMORY[0x277CCA050] code:4864 userInfo:v18];
    [v4 failWithError:v19];
LABEL_9:

    self = 0;
  }

  v21 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"generation"];
  if (!v21)
  {
    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[_SWCServiceSettings initWithCoder:]", @"Line", @"Function", &unk_2877A7360}];
    v30[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:2];
    v25 = [v22 initWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:v24];
    [v4 failWithError:v25];

    self = 0;
  }

  v26 = [(_SWCServiceSettings *)self _initWithServiceSpecifier:v6 dictionary:v15 generation:v21];

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (BOOL)removeObjectsForKeys:(id)a3 serviceType:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  if (!v10)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"SWCServiceSettings.mm" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"serviceType != nil"}];
  }

  v11 = _SWCGetServerConnection();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71___SWCServiceSettings_Removal__removeObjectsForKeys_serviceType_error___block_invoke;
  v17[3] = &unk_279BBDE70;
  v17[4] = &v18;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71___SWCServiceSettings_Removal__removeObjectsForKeys_serviceType_error___block_invoke_2;
  v16[3] = &unk_279BBDF38;
  v16[4] = &v24;
  v16[5] = &v18;
  [v12 removeSettingsForKeys:v9 serviceType:v10 completionHandler:v16];
  v13 = *(v25 + 24);
  if (a5 && (v25[3] & 1) == 0)
  {
    *a5 = v19[5];
    v13 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v13 & 1;
}

+ (BOOL)removeObjectsForKeys:(id)a3 serviceSpecifier:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  if (!v10)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"SWCServiceSettings.mm" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"specifier != nil"}];
  }

  v11 = _SWCGetServerConnection();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76___SWCServiceSettings_Removal__removeObjectsForKeys_serviceSpecifier_error___block_invoke;
  v17[3] = &unk_279BBDE70;
  v17[4] = &v18;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76___SWCServiceSettings_Removal__removeObjectsForKeys_serviceSpecifier_error___block_invoke_2;
  v16[3] = &unk_279BBDF38;
  v16[4] = &v24;
  v16[5] = &v18;
  [v12 removeSettingsForKeys:v9 serviceSpecifier:v10 completionHandler:v16];
  v13 = *(v25 + 24);
  if (a5 && (v25[3] & 1) == 0)
  {
    *a5 = v19[5];
    v13 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v13 & 1;
}

@end