@interface WBSPasswordBreachQueuedPassword
- (NSUUID)uuid;
- (WBSPasswordBreachQueuedPassword)initWithCredentials:(id)credentials context:(id)context;
- (id)description;
- (id)initFakePasswordWithContext:(id)context;
@end

@implementation WBSPasswordBreachQueuedPassword

- (id)initFakePasswordWithContext:(id)context
{
  v24[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = WBSPasswordBreachQueuedPassword;
  v5 = [(WBSPasswordBreachQueuedPassword *)&v23 init];
  if (v5)
  {
    data = [MEMORY[0x1E695DEF0] data];
    v24[0] = data;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    persistentIdentifiers = v5->_persistentIdentifiers;
    v5->_persistentIdentifiers = v7;

    cryptographicOperations = [contextCopy cryptographicOperations];
    generateFakeEncodedPasswordForLowFrequencyBucket = [cryptographicOperations generateFakeEncodedPasswordForLowFrequencyBucket];
    if (generateFakeEncodedPasswordForLowFrequencyBucket)
    {
      v11 = [MEMORY[0x1E695DF70] arrayWithObject:generateFakeEncodedPasswordForLowFrequencyBucket];
      bucketIdentifierAndHashStack = v5->_bucketIdentifierAndHashStack;
      v5->_bucketIdentifierAndHashStack = v11;

      generateFakeEncodedPasswordForHighFrequencyBucket = [cryptographicOperations generateFakeEncodedPasswordForHighFrequencyBucket];
      highFrequencyEncodedPassword = v5->_highFrequencyEncodedPassword;
      v5->_highFrequencyEncodedPassword = generateFakeEncodedPasswordForHighFrequencyBucket;

      if (v5->_highFrequencyEncodedPassword)
      {
        configuration = [contextCopy configuration];
        verboseSensitiveLoggingEnabled = [configuration verboseSensitiveLoggingEnabled];

        if (verboseSensitiveLoggingEnabled)
        {
          v17 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [(WBSPasswordBreachQueuedPassword *)v17 initFakePasswordWithContext:v5];
          }
        }

        v18 = v5;
        goto LABEL_14;
      }

      v20 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachQueuedPassword initFakePasswordWithContext:v20];
      }
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachQueuedPassword initFakePasswordWithContext:v19];
      }
    }

    v18 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v18 = 0;
LABEL_15:

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (WBSPasswordBreachQueuedPassword)initWithCredentials:(id)credentials context:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  contextCopy = context;
  v37.receiver = self;
  v37.super_class = WBSPasswordBreachQueuedPassword;
  v8 = [(WBSPasswordBreachQueuedPassword *)&v37 init];
  if (v8)
  {
    cryptographicOperations = [contextCopy cryptographicOperations];
    v9 = [credentialsCopy count];
    firstObject = [credentialsCopy firstObject];
    password = [firstObject password];

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = credentialsCopy;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          persistentIdentifier = [*(*(&v33 + 1) + 8 * i) persistentIdentifier];
          [(NSArray *)v12 addObject:persistentIdentifier];
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v15);
    }

    persistentIdentifiers = v8->_persistentIdentifiers;
    v8->_persistentIdentifiers = v12;
    v20 = v12;

    v21 = MEMORY[0x1E695DF70];
    v22 = [cryptographicOperations encodePasswordForLowFrequencyBucket:password];
    v23 = [v21 arrayWithObject:v22];
    bucketIdentifierAndHashStack = v8->_bucketIdentifierAndHashStack;
    v8->_bucketIdentifierAndHashStack = v23;

    v25 = [cryptographicOperations encodePasswordForHighFrequencyBucket:password];
    highFrequencyEncodedPassword = v8->_highFrequencyEncodedPassword;
    v8->_highFrequencyEncodedPassword = v25;

    configuration = [contextCopy configuration];
    LODWORD(v21) = [configuration verboseSensitiveLoggingEnabled];

    if (v21)
    {
      v28 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [(WBSPasswordBreachQueuedPassword *)password initWithCredentials:v28 context:v8];
      }
    }

    v29 = v8;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v8;
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_alloc(MEMORY[0x1E696AFB0]);
    highFrequencyEncodedPasswordData = [(WBSPasswordBreachQueuedPassword *)self highFrequencyEncodedPasswordData];
    v6 = [v4 initWithUUIDBytes:{objc_msgSend(highFrequencyEncodedPasswordData, "bytes")}];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uuid = self->_uuid;
  return [v3 stringWithFormat:@"<%@: %p, persistentIdentifiers: %@, bucketIdentifierAndHashStack: %@, uuid: %@, highFrequencyEncodedPassword: %@>", v4, self, self->_persistentIdentifiers, self->_bucketIdentifierAndHashStack, uuid, self->_highFrequencyEncodedPassword];
}

- (void)initFakePasswordWithContext:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 uuid];
  v6 = 138739971;
  v7 = v4;
  _os_log_debug_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEBUG, "Generated password with UUID %{sensitive}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithCredentials:(void *)a3 context:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 uuid];
  v8 = 138740227;
  v9 = a1;
  v10 = 2117;
  v11 = v6;
  _os_log_debug_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEBUG, "Enqueued password %{sensitive}@ with UUID %{sensitive}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end