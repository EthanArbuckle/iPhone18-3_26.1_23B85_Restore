@interface TRIDynamicNamespaceRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDynamicNamespaceRecord:(id)a3;
- (TRIDynamicNamespaceRecord)initWithCoder:(id)a3;
- (TRIDynamicNamespaceRecord)initWithName:(id)a3 teamId:(id)a4 appContainer:(id)a5 cloudKitContainer:(int)a6 compatibilityVersion:(unsigned int)a7 defaultsFileURL:(id)a8 hasFetched:(BOOL)a9;
- (id)copyWithReplacementAppContainer:(id)a3;
- (id)copyWithReplacementDefaultsFileURL:(id)a3;
- (id)copyWithReplacementName:(id)a3;
- (id)copyWithReplacementTeamId:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)defaultEncodeWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIDynamicNamespaceRecord

- (TRIDynamicNamespaceRecord)initWithName:(id)a3 teamId:(id)a4 appContainer:(id)a5 cloudKitContainer:(int)a6 compatibilityVersion:(unsigned int)a7 defaultsFileURL:(id)a8 hasFetched:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_8:
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"teamId != nil"}];

    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];

  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v17)
  {
    goto LABEL_4;
  }

LABEL_9:
  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"appContainer != nil"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = TRIDynamicNamespaceRecord;
  v19 = [(TRIDynamicNamespaceRecord *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_name, a3);
    objc_storeStrong(&v20->_teamId, a4);
    objc_storeStrong(&v20->_appContainer, a5);
    v20->_cloudKitContainer = a6;
    v20->_compatibilityVersion = a7;
    objc_storeStrong(&v20->_defaultsFileURL, a8);
    v20->_hasFetched = a9;
  }

  return v20;
}

- (id)copyWithReplacementName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_hasFetched;
  v6 = [v5 initWithName:v4 teamId:self->_teamId appContainer:self->_appContainer cloudKitContainer:self->_cloudKitContainer compatibilityVersion:self->_compatibilityVersion defaultsFileURL:self->_defaultsFileURL hasFetched:v8];

  return v6;
}

- (id)copyWithReplacementTeamId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_hasFetched;
  v6 = [v5 initWithName:self->_name teamId:v4 appContainer:self->_appContainer cloudKitContainer:self->_cloudKitContainer compatibilityVersion:self->_compatibilityVersion defaultsFileURL:self->_defaultsFileURL hasFetched:v8];

  return v6;
}

- (id)copyWithReplacementAppContainer:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_hasFetched;
  v6 = [v5 initWithName:self->_name teamId:self->_teamId appContainer:v4 cloudKitContainer:self->_cloudKitContainer compatibilityVersion:self->_compatibilityVersion defaultsFileURL:self->_defaultsFileURL hasFetched:v8];

  return v6;
}

- (id)copyWithReplacementDefaultsFileURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_hasFetched;
  v6 = [v5 initWithName:self->_name teamId:self->_teamId appContainer:self->_appContainer cloudKitContainer:self->_cloudKitContainer compatibilityVersion:self->_compatibilityVersion defaultsFileURL:v4 hasFetched:v8];

  return v6;
}

- (BOOL)isEqualToDynamicNamespaceRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = self->_name == 0;
  v7 = [v4 name];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_17;
  }

  name = self->_name;
  if (name)
  {
    v10 = [v5 name];
    v11 = [(NSString *)name isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  v12 = self->_teamId == 0;
  v13 = [v5 teamId];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_17;
  }

  teamId = self->_teamId;
  if (teamId)
  {
    v16 = [v5 teamId];
    v17 = [(NSString *)teamId isEqual:v16];

    if (!v17)
    {
      goto LABEL_17;
    }
  }

  v18 = self->_appContainer == 0;
  v19 = [v5 appContainer];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_17;
  }

  appContainer = self->_appContainer;
  if (appContainer)
  {
    v22 = [v5 appContainer];
    v23 = [(TRIAppContainer *)appContainer isEqual:v22];

    if (!v23)
    {
      goto LABEL_17;
    }
  }

  cloudKitContainer = self->_cloudKitContainer;
  if (cloudKitContainer != [v5 cloudKitContainer])
  {
    goto LABEL_17;
  }

  compatibilityVersion = self->_compatibilityVersion;
  if (compatibilityVersion != [v5 compatibilityVersion])
  {
    goto LABEL_17;
  }

  v26 = self->_defaultsFileURL == 0;
  v27 = [v5 defaultsFileURL];
  v28 = v27 != 0;

  if (v26 == v28 || (defaultsFileURL = self->_defaultsFileURL) != 0 && ([v5 defaultsFileURL], v30 = objc_claimAutoreleasedReturnValue(), v31 = -[NSURL isEqual:](defaultsFileURL, "isEqual:", v30), v30, !v31))
  {
LABEL_17:
    v33 = 0;
  }

  else
  {
    hasFetched = self->_hasFetched;
    v33 = hasFetched == [v5 hasFetched];
  }

  return v33;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIDynamicNamespaceRecord *)self isEqualToDynamicNamespaceRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_teamId hash]- v3 + 32 * v3;
  v5 = [(TRIAppContainer *)self->_appContainer hash];
  v6 = self->_cloudKitContainer - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  v7 = self->_compatibilityVersion - v6 + 32 * v6;
  v8 = [(NSURL *)self->_defaultsFileURL hash];
  return self->_hasFetched - (v8 - v7 + 32 * v7) + 32 * (v8 - v7 + 32 * v7);
}

- (TRIDynamicNamespaceRecord)initWithCoder:(id)a3
{
  v46[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamId"];
    if (!v6)
    {
      v15 = [v4 error];

      if (v15)
      {
        v6 = 0;
        v13 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v43 = *MEMORY[0x277CCA450];
      v44 = @"Retrieved nil serialized value for nonnull TRIDynamicNamespaceRecord.teamId";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:2 userInfo:v8];
      [v4 failWithError:v11];
      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = objc_opt_class();
      v8 = NSStringFromClass(v16);
      v17 = objc_opt_class();
      v11 = NSStringFromClass(v17);
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIDynamicNamespaceRecord key teamId (expected %@, decoded %@)", v8, v11, 0];
      v41 = *MEMORY[0x277CCA450];
      v42 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:3 userInfo:v19];
      [v4 failWithError:v20];

LABEL_15:
LABEL_16:

LABEL_30:
      v13 = 0;
      goto LABEL_31;
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appContainer"];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 decodeInt64ForKey:@"cloudKitContainer"];
      if (!v9)
      {
        v22 = [v4 error];

        if (v22)
        {
          goto LABEL_25;
        }

        if (([v4 containsValueForKey:@"cloudKitContainer"] & 1) == 0)
        {
          v37 = *MEMORY[0x277CCA450];
          v38 = @"Missing serialized value for TRIDynamicNamespaceRecord.cloudKitContainer";
          v23 = MEMORY[0x277CBEAC0];
          v24 = &v38;
          v25 = &v37;
          goto LABEL_37;
        }
      }

      v10 = [v4 decodeInt64ForKey:@"compatibilityVersion"];
      if (v10)
      {
        goto LABEL_7;
      }

      v26 = [v4 error];

      if (!v26)
      {
        if ([v4 containsValueForKey:@"compatibilityVersion"])
        {
LABEL_7:
          v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultsFileURL"];
          if (!v11)
          {
            v28 = [v4 error];

            if (v28)
            {
              v11 = 0;
              goto LABEL_30;
            }
          }

          v12 = [v4 decodeInt64ForKey:@"hasFetched"];
          if (v12)
          {
            goto LABEL_9;
          }

          v29 = [v4 error];

          if (v29)
          {
            goto LABEL_30;
          }

          if ([v4 containsValueForKey:@"hasFetched"])
          {
LABEL_9:
            LOBYTE(v32) = v12 != 0;
            self = [(TRIDynamicNamespaceRecord *)self initWithName:v5 teamId:v6 appContainer:v8 cloudKitContainer:v9 compatibilityVersion:v10 defaultsFileURL:v11 hasFetched:v32];
            v13 = self;
LABEL_31:

            goto LABEL_32;
          }

          v33 = *MEMORY[0x277CCA450];
          v34 = @"Missing serialized value for TRIDynamicNamespaceRecord.hasFetched";
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:1 userInfo:v18];
          [v4 failWithError:v19];
          goto LABEL_15;
        }

        v35 = *MEMORY[0x277CCA450];
        v36 = @"Missing serialized value for TRIDynamicNamespaceRecord.compatibilityVersion";
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v36;
        v25 = &v35;
LABEL_37:
        v11 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
        v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:1 userInfo:v11];
        [v4 failWithError:v18];
        goto LABEL_16;
      }
    }

    else
    {
      v21 = [v4 error];

      if (!v21)
      {
        v39 = *MEMORY[0x277CCA450];
        v40 = @"Retrieved nil serialized value for nonnull TRIDynamicNamespaceRecord.appContainer";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v27 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:2 userInfo:v11];
        [v4 failWithError:v27];

        v8 = 0;
        goto LABEL_30;
      }

      v8 = 0;
    }

LABEL_25:
    v13 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v14 = [v4 error];

  if (!v14)
  {
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"Retrieved nil serialized value for nonnull TRIDynamicNamespaceRecord.name";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:2 userInfo:v6];
    [v4 failWithError:v8];
    goto LABEL_25;
  }

  v13 = 0;
LABEL_34:

  v30 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)defaultEncodeWithCoder:(id)a3
{
  v4 = a3;
  name = self->_name;
  v9 = v4;
  if (name)
  {
    [v4 encodeObject:name forKey:@"name"];
    v4 = v9;
  }

  teamId = self->_teamId;
  if (teamId)
  {
    [v9 encodeObject:teamId forKey:@"teamId"];
    v4 = v9;
  }

  appContainer = self->_appContainer;
  if (appContainer)
  {
    [v9 encodeObject:appContainer forKey:@"appContainer"];
    v4 = v9;
  }

  [v4 encodeInt64:self->_cloudKitContainer forKey:@"cloudKitContainer"];
  [v9 encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
  defaultsFileURL = self->_defaultsFileURL;
  if (defaultsFileURL)
  {
    [v9 encodeObject:defaultsFileURL forKey:@"defaultsFileURL"];
  }

  [v9 encodeInt64:self->_hasFetched forKey:@"hasFetched"];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:309 description:{@"Do not use NSKeyedArchiver to persist instances of TRIDynamicNamespaceRecord to disk. If you want to persist this object to disk, create a protobuf schema."}];
  }

  [(TRIDynamicNamespaceRecord *)self defaultEncodeWithCoder:v6];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = *&self->_name;
  appContainer = self->_appContainer;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_cloudKitContainer];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_compatibilityVersion];
  defaultsFileURL = self->_defaultsFileURL;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasFetched];
  v9 = [v3 initWithFormat:@"<TRIDynamicNamespaceRecord | name:%@ teamId:%@ appContainer:%@ cloudKitContainer:%@ compatibilityVersion:%@ defaultsFileURL:%@ hasFetched:%@>", v11, appContainer, v5, v6, defaultsFileURL, v8];

  return v9;
}

@end