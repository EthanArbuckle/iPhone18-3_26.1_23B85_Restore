@interface TRINamespaceStatus
+ (id)statusFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStatus:(id)status;
- (TRINamespaceStatus)initWithCoder:(id)coder;
- (TRINamespaceStatus)initWithNamespaceName:(id)name compatibilityVersion:(unsigned int)version lastFetchAttempt:(id)attempt lastFetchWasSuccess:(BOOL)success;
- (id)asData;
- (id)copyWithReplacementLastFetchAttempt:(id)attempt;
- (id)copyWithReplacementNamespaceName:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRINamespaceStatus

+ (id)statusFromData:(id)data
{
  v16 = 0;
  v3 = [(TRIPBMessage *)TRIPersistedNamespaceStatus parseFromData:data error:&v16];
  v4 = v3;
  if (!v3)
  {
    date = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = 0;
    v7 = "failed to parse persisted namespace status from data";
    v8 = &v15;
LABEL_12:
    _os_log_error_impl(&dword_22EA6B000, date, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_13;
  }

  if (([v3 hasNamespaceName] & 1) == 0)
  {
    date = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
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
      latestNotificationQueryLocalTime = [v4 latestNotificationQueryLocalTime];
      date = [latestNotificationQueryLocalTime date];
    }

    else
    {
      date = 0;
    }

    if ([v4 hasLastFetchWasSuccess])
    {
      lastFetchWasSuccess = [v4 lastFetchWasSuccess];
    }

    else
    {
      lastFetchWasSuccess = 0;
    }

    namespaceName = [v4 namespaceName];
    v9 = +[TRINamespaceStatus statusWithNamespaceName:compatibilityVersion:lastFetchAttempt:lastFetchWasSuccess:](TRINamespaceStatus, "statusWithNamespaceName:compatibilityVersion:lastFetchAttempt:lastFetchWasSuccess:", namespaceName, [v4 namespaceCompatibilityVersion], date, lastFetchWasSuccess);

    goto LABEL_14;
  }

  date = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
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
  namespaceName = [(TRINamespaceStatus *)self namespaceName];

  if (!namespaceName)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"self.namespaceName != nil"}];
  }

  v5 = objc_opt_new();
  namespaceName2 = [(TRINamespaceStatus *)self namespaceName];
  [v5 setNamespaceName:namespaceName2];

  [v5 setNamespaceCompatibilityVersion:{-[TRINamespaceStatus compatibilityVersion](self, "compatibilityVersion")}];
  lastFetchAttempt = [(TRINamespaceStatus *)self lastFetchAttempt];

  if (lastFetchAttempt)
  {
    v8 = objc_opt_new();
    [v5 setLatestNotificationQueryLocalTime:v8];

    lastFetchAttempt2 = [(TRINamespaceStatus *)self lastFetchAttempt];
    latestNotificationQueryLocalTime = [v5 latestNotificationQueryLocalTime];
    [latestNotificationQueryLocalTime setDate:lastFetchAttempt2];
  }

  [v5 setLastFetchWasSuccess:{-[TRINamespaceStatus lastFetchWasSuccess](self, "lastFetchWasSuccess")}];
  data = [v5 data];
  if (!data)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:66 description:@"failed to serialize persisted namespace status to data"];
  }

  return data;
}

- (TRINamespaceStatus)initWithNamespaceName:(id)name compatibilityVersion:(unsigned int)version lastFetchAttempt:(id)attempt lastFetchWasSuccess:(BOOL)success
{
  nameCopy = name;
  attemptCopy = attempt;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"namespaceName != nil"}];
  }

  v18.receiver = self;
  v18.super_class = TRINamespaceStatus;
  v14 = [(TRINamespaceStatus *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_namespaceName, name);
    v15->_compatibilityVersion = version;
    objc_storeStrong(&v15->_lastFetchAttempt, attempt);
    v15->_lastFetchWasSuccess = success;
  }

  return v15;
}

- (id)copyWithReplacementNamespaceName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithNamespaceName:nameCopy compatibilityVersion:self->_compatibilityVersion lastFetchAttempt:self->_lastFetchAttempt lastFetchWasSuccess:self->_lastFetchWasSuccess];

  return v5;
}

- (id)copyWithReplacementLastFetchAttempt:(id)attempt
{
  attemptCopy = attempt;
  v5 = [objc_alloc(objc_opt_class()) initWithNamespaceName:self->_namespaceName compatibilityVersion:self->_compatibilityVersion lastFetchAttempt:attemptCopy lastFetchWasSuccess:self->_lastFetchWasSuccess];

  return v5;
}

- (BOOL)isEqualToStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (!statusCopy)
  {
    goto LABEL_10;
  }

  v6 = self->_namespaceName == 0;
  namespaceName = [statusCopy namespaceName];
  v8 = namespaceName != 0;

  if (v6 == v8)
  {
    goto LABEL_10;
  }

  namespaceName = self->_namespaceName;
  if (namespaceName)
  {
    namespaceName2 = [v5 namespaceName];
    v11 = [(NSString *)namespaceName isEqual:namespaceName2];

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
  lastFetchAttempt = [v5 lastFetchAttempt];
  v15 = lastFetchAttempt != 0;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRINamespaceStatus *)self isEqualToStatus:v5];
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

- (TRINamespaceStatus)initWithCoder:(id)coder
{
  v32[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespaceName"];
  if (!v5)
  {
    error = [coderCopy error];

    if (error)
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
    [coderCopy failWithError:v9];
    goto LABEL_18;
  }

  v6 = [coderCopy decodeInt64ForKey:@"compatibilityVersion"];
  if (v6)
  {
    goto LABEL_3;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    if ([coderCopy containsValueForKey:@"compatibilityVersion"])
    {
LABEL_3:
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchAttempt"];
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
          [coderCopy failWithError:v14];

LABEL_6:
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        error3 = [coderCopy error];

        if (error3)
        {
          v7 = 0;
LABEL_19:
          selfCopy = 0;
          goto LABEL_20;
        }
      }

      v21 = [coderCopy decodeInt64ForKey:@"lastFetchWasSuccess"];
      if (v21)
      {
        goto LABEL_14;
      }

      error4 = [coderCopy error];

      if (error4)
      {
        goto LABEL_19;
      }

      if ([coderCopy containsValueForKey:@"lastFetchWasSuccess"])
      {
LABEL_14:
        self = [(TRINamespaceStatus *)self initWithNamespaceName:v5 compatibilityVersion:v6 lastFetchAttempt:v7 lastFetchWasSuccess:v21 != 0];
        selfCopy = self;
LABEL_20:

        goto LABEL_21;
      }

      v25 = *MEMORY[0x277CCA450];
      v26 = @"Missing serialized value for TRINamespaceStatus.lastFetchWasSuccess";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRINamespaceStatusOCNTErrorDomain" code:1 userInfo:v9];
      [coderCopy failWithError:v11];
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
  selfCopy = 0;
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  namespaceName = self->_namespaceName;
  if (namespaceName)
  {
    [coderCopy encodeObject:namespaceName forKey:@"namespaceName"];
  }

  [coderCopy encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
  lastFetchAttempt = self->_lastFetchAttempt;
  if (lastFetchAttempt)
  {
    [coderCopy encodeObject:lastFetchAttempt forKey:@"lastFetchAttempt"];
  }

  [coderCopy encodeInt64:self->_lastFetchWasSuccess forKey:@"lastFetchWasSuccess"];
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