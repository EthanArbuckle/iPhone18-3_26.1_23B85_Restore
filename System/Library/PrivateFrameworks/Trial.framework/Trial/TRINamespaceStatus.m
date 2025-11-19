@interface TRINamespaceStatus
+ (id)statusFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStatus:(id)a3;
- (TRINamespaceStatus)initWithCoder:(id)a3;
- (TRINamespaceStatus)initWithNamespaceName:(id)a3 compatibilityVersion:(unsigned int)a4 lastFetchAttempt:(id)a5 lastFetchWasSuccess:(BOOL)a6;
- (id)asData;
- (id)copyWithReplacementLastFetchAttempt:(id)a3;
- (id)copyWithReplacementNamespaceName:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRINamespaceStatus

+ (id)statusFromData:(id)a3
{
  v16 = 0;
  v3 = [(TRIPBMessage *)TRIPersistedNamespaceStatus parseFromData:a3 error:&v16];
  v4 = v3;
  if (!v3)
  {
    v6 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = 0;
    v7 = "failed to parse persisted namespace status from data";
    v8 = &v15;
LABEL_12:
    _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_13;
  }

  if (([v3 hasNamespaceName] & 1) == 0)
  {
    v6 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = 0;
    v7 = "parsed persisted namespace status from data but name is not set";
    v8 = &v14;
    goto LABEL_12;
  }

  if ([v4 hasNamespaceCompatibilityVersion])
  {
    if ([v4 hasLatestNotificationQueryLocalTime])
    {
      v5 = [v4 latestNotificationQueryLocalTime];
      v6 = [v5 date];
    }

    else
    {
      v6 = 0;
    }

    if ([v4 hasLastFetchWasSuccess])
    {
      v11 = [v4 lastFetchWasSuccess];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 namespaceName];
    v9 = +[TRINamespaceStatus statusWithNamespaceName:compatibilityVersion:lastFetchAttempt:lastFetchWasSuccess:](TRINamespaceStatus, "statusWithNamespaceName:compatibilityVersion:lastFetchAttempt:lastFetchWasSuccess:", v12, [v4 namespaceCompatibilityVersion], v6, v11);

    goto LABEL_14;
  }

  v6 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = 0;
    v7 = "parsed persisted namespace status from data but compatibility version is not set";
    v8 = &v13;
    goto LABEL_12;
  }

LABEL_13:
  v9 = 0;
LABEL_14:

  return v9;
}

- (id)asData
{
  v4 = [(TRINamespaceStatus *)self namespaceName];

  if (!v4)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"self.namespaceName != nil"}];
  }

  v5 = objc_opt_new();
  v6 = [(TRINamespaceStatus *)self namespaceName];
  [v5 setNamespaceName:v6];

  [v5 setNamespaceCompatibilityVersion:{-[TRINamespaceStatus compatibilityVersion](self, "compatibilityVersion")}];
  v7 = [(TRINamespaceStatus *)self lastFetchAttempt];

  if (v7)
  {
    v8 = objc_opt_new();
    [v5 setLatestNotificationQueryLocalTime:v8];

    v9 = [(TRINamespaceStatus *)self lastFetchAttempt];
    v10 = [v5 latestNotificationQueryLocalTime];
    [v10 setDate:v9];
  }

  [v5 setLastFetchWasSuccess:{-[TRINamespaceStatus lastFetchWasSuccess](self, "lastFetchWasSuccess")}];
  v11 = [v5 data];
  if (!v11)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:66 description:@"failed to serialize persisted namespace status to data"];
  }

  return v11;
}

- (TRINamespaceStatus)initWithNamespaceName:(id)a3 compatibilityVersion:(unsigned int)a4 lastFetchAttempt:(id)a5 lastFetchWasSuccess:(BOOL)a6
{
  v12 = a3;
  v13 = a5;
  if (!v12)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"namespaceName != nil"}];
  }

  v18.receiver = self;
  v18.super_class = TRINamespaceStatus;
  v14 = [(TRINamespaceStatus *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_namespaceName, a3);
    v15->_compatibilityVersion = a4;
    objc_storeStrong(&v15->_lastFetchAttempt, a5);
    v15->_lastFetchWasSuccess = a6;
  }

  return v15;
}

- (id)copyWithReplacementNamespaceName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithNamespaceName:v4 compatibilityVersion:self->_compatibilityVersion lastFetchAttempt:self->_lastFetchAttempt lastFetchWasSuccess:self->_lastFetchWasSuccess];

  return v5;
}

- (id)copyWithReplacementLastFetchAttempt:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithNamespaceName:self->_namespaceName compatibilityVersion:self->_compatibilityVersion lastFetchAttempt:v4 lastFetchWasSuccess:self->_lastFetchWasSuccess];

  return v5;
}

- (BOOL)isEqualToStatus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = self->_namespaceName == 0;
  v7 = [v4 namespaceName];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_10;
  }

  namespaceName = self->_namespaceName;
  if (namespaceName)
  {
    v10 = [v5 namespaceName];
    v11 = [(NSString *)namespaceName isEqual:v10];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  compatibilityVersion = self->_compatibilityVersion;
  if (compatibilityVersion != [v5 compatibilityVersion])
  {
    goto LABEL_10;
  }

  v13 = self->_lastFetchAttempt == 0;
  v14 = [v5 lastFetchAttempt];
  v15 = v14 != 0;

  if (v13 == v15 || (lastFetchAttempt = self->_lastFetchAttempt) != 0 && ([v5 lastFetchAttempt], v17 = objc_claimAutoreleasedReturnValue(), v18 = -[NSDate isEqual:](lastFetchAttempt, "isEqual:", v17), v17, !v18))
  {
LABEL_10:
    v20 = 0;
  }

  else
  {
    lastFetchWasSuccess = self->_lastFetchWasSuccess;
    v20 = lastFetchWasSuccess == [v5 lastFetchWasSuccess];
  }

  return v20;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRINamespaceStatus *)self isEqualToStatus:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_namespaceName hash];
  v4 = self->_compatibilityVersion - v3 + 32 * v3;
  v5 = [(NSDate *)self->_lastFetchAttempt hash];
  return self->_lastFetchWasSuccess - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
}

- (TRINamespaceStatus)initWithCoder:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namespaceName"];
  if (!v5)
  {
    v15 = [v4 error];

    if (v15)
    {
      goto LABEL_10;
    }

    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"Retrieved nil serialized value for nonnull TRINamespaceStatus.namespaceName";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = 2;
LABEL_17:
    v9 = [v16 initWithDomain:@"TRINamespaceStatusOCNTErrorDomain" code:v17 userInfo:v7];
    [v4 failWithError:v9];
    goto LABEL_18;
  }

  v6 = [v4 decodeInt64ForKey:@"compatibilityVersion"];
  if (v6)
  {
    goto LABEL_3;
  }

  v18 = [v4 error];

  if (!v18)
  {
    if ([v4 containsValueForKey:@"compatibilityVersion"])
    {
LABEL_3:
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchAttempt"];
      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRINamespaceStatus key lastFetchAttempt (expected %@, decoded %@)", v9, v11, 0];
          v27 = *MEMORY[0x277CCA450];
          v28 = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRINamespaceStatusOCNTErrorDomain" code:3 userInfo:v13];
          [v4 failWithError:v14];

LABEL_6:
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        v20 = [v4 error];

        if (v20)
        {
          v7 = 0;
LABEL_19:
          v19 = 0;
          goto LABEL_20;
        }
      }

      v21 = [v4 decodeInt64ForKey:@"lastFetchWasSuccess"];
      if (v21)
      {
        goto LABEL_14;
      }

      v24 = [v4 error];

      if (v24)
      {
        goto LABEL_19;
      }

      if ([v4 containsValueForKey:@"lastFetchWasSuccess"])
      {
LABEL_14:
        self = [(TRINamespaceStatus *)self initWithNamespaceName:v5 compatibilityVersion:v6 lastFetchAttempt:v7 lastFetchWasSuccess:v21 != 0];
        v19 = self;
LABEL_20:

        goto LABEL_21;
      }

      v25 = *MEMORY[0x277CCA450];
      v26 = @"Missing serialized value for TRINamespaceStatus.lastFetchWasSuccess";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRINamespaceStatusOCNTErrorDomain" code:1 userInfo:v9];
      [v4 failWithError:v11];
      goto LABEL_6;
    }

    v29 = *MEMORY[0x277CCA450];
    v30 = @"Missing serialized value for TRINamespaceStatus.compatibilityVersion";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = 1;
    goto LABEL_17;
  }

LABEL_10:
  v19 = 0;
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  namespaceName = self->_namespaceName;
  if (namespaceName)
  {
    [v6 encodeObject:namespaceName forKey:@"namespaceName"];
  }

  [v6 encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
  lastFetchAttempt = self->_lastFetchAttempt;
  if (lastFetchAttempt)
  {
    [v6 encodeObject:lastFetchAttempt forKey:@"lastFetchAttempt"];
  }

  [v6 encodeInt64:self->_lastFetchWasSuccess forKey:@"lastFetchWasSuccess"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  namespaceName = self->_namespaceName;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_compatibilityVersion];
  lastFetchAttempt = self->_lastFetchAttempt;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastFetchWasSuccess];
  v8 = [v3 initWithFormat:@"<TRINamespaceStatus | namespaceName:%@ compatibilityVersion:%@ lastFetchAttempt:%@ lastFetchWasSuccess:%@>", namespaceName, v5, lastFetchAttempt, v7];

  return v8;
}

@end