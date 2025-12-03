@interface TRISubjectProvider
+ (id)defaultProviderWithPaths:(id)paths;
- (BOOL)loadUsingGuardedData:(id)data;
- (BOOL)save;
- (TRISubjectProvider)initWithCoder:(id)coder;
- (TRISubjectProvider)initWithPath:(id)path;
- (id)anchorDate;
- (id)nextRotationDate;
- (id)nextRotationDateAfter:(id)after;
- (id)subject;
- (id)subjectWithProjectId:(int)id;
- (void)decodeWithCoder:(id)coder guardedData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder guardedData:(id)data;
- (void)rotateSubject;
- (void)setNextRotationDate:(id)date;
@end

@implementation TRISubjectProvider

- (id)subject
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TRISubjectProvider_subject__block_invoke;
  v5[3] = &unk_27885ECA8;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__TRISubjectProvider_subject__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (!v4)
  {
    [*(a1 + 32) loadUsingGuardedData:v3];
    v4 = v3[1];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "com.apple.triald.wake";
      _os_log_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_DEFAULT, "Unable to deserialize subject. Posting %s", &v10, 0xCu);
    }

    v6 = notify_post("com.apple.triald.wake");
    if (v6)
    {
      v7 = v6;
      v8 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "com.apple.triald.wake";
        v12 = 2048;
        v13 = v7;
        _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "failed to post %s: %lu", &v10, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)defaultProviderWithPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [TRISubjectProvider alloc];
  subjectDataFile = [pathsCopy subjectDataFile];

  v6 = [(TRISubjectProvider *)v4 initWithPath:subjectDataFile];

  return v6;
}

- (TRISubjectProvider)initWithPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = TRISubjectProvider;
  v6 = [(TRISubjectProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    v8 = objc_alloc(MEMORY[0x277D425F8]);
    v9 = objc_opt_new();
    v10 = [v8 initWithGuardedData:v9];
    lock = v7->_lock;
    v7->_lock = v10;
  }

  return v7;
}

- (TRISubjectProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TRISubjectProvider;
  v5 = [(TRISubjectProvider *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(TRISubjectProvider *)v5 decodeWithCoder:coderCopy guardedData:v6];
    v7 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v6];
    lock = v5->_lock;
    v5->_lock = v7;
  }

  return v5;
}

- (void)decodeWithCoder:(id)coder guardedData:(id)data
{
  dataCopy = data;
  coderCopy = coder;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subjectData"];
  v8 = dataCopy[1];
  dataCopy[1] = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rotationDate"];

  v10 = dataCopy[2];
  dataCopy[2] = v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__TRISubjectProvider_encodeWithCoder___block_invoke;
  v7[3] = &unk_27885EC58;
  v7[4] = self;
  v8 = coderCopy;
  v6 = coderCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (void)encodeWithCoder:(id)coder guardedData:(id)data
{
  v5 = *(data + 1);
  dataCopy = data;
  coderCopy = coder;
  [coderCopy encodeObject:v5 forKey:@"subjectData"];
  v7 = dataCopy[2];

  [coderCopy encodeObject:v7 forKey:@"rotationDate"];
}

- (void)setNextRotationDate:(id)date
{
  dateCopy = date;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TRISubjectProvider_setNextRotationDate___block_invoke;
  v7[3] = &unk_27885EC80;
  v8 = dateCopy;
  v6 = dateCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (BOOL)loadUsingGuardedData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager isReadableFileAtPath:self->_path])
  {
    path = self->_path;
    v23 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path options:2 error:&v23];
    v8 = v23;
    v9 = v8;
    if (v7)
    {

      v22 = 0;
      v10 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:&v22];
      v9 = v22;
      if (v10 && ([(TRISubjectProvider *)self decodeWithCoder:v10 guardedData:dataCopy], !v9))
      {
        if (![*(dataCopy + 1) hasDeviceId] || (objc_msgSend(*(dataCopy + 1), "deviceId"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v16 > 7))
        {
          v9 = 0;
          v12 = 1;
          goto LABEL_12;
        }

        v17 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          deviceId = [*(dataCopy + 1) deviceId];
          v21 = [deviceId length];
          *buf = 134217984;
          v25 = v21;
          _os_log_fault_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_FAULT, "rejecting deserialized subject due to unreasonably short deviceId of length %tu", buf, 0xCu);
        }

        v18 = *(dataCopy + 1);
        *(dataCopy + 1) = 0;

        v11 = *(dataCopy + 2);
        *(dataCopy + 2) = 0;
      }

      else
      {
        v11 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v9;
          _os_log_error_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_ERROR, "failed to decode subject from data -- %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = self->_path;
        *buf = 138412546;
        v25 = v19;
        v26 = 2112;
        v27 = v9;
        _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "failed to read subject data from file %@ -- %@", buf, 0x16u);
      }
    }

    v12 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)save
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__TRISubjectProvider_save__block_invoke;
  v5[3] = &unk_27885ECA8;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __26__TRISubjectProvider_save__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAB0];
  v4 = a2;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [*(a1 + 32) encodeWithCoder:v5 guardedData:v4];

  v6 = [v5 encodedData];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = *(*(a1 + 32) + 8);
    v21 = 0;
    v9 = [v7 triCreateDirectoryForPath:v8 isDirectory:0 error:&v21];
    v10 = v21;

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v16 = *(*(a1 + 32) + 8);
      v20 = 0;
      v17 = [v6 writeToFile:v16 options:1 error:&v20];
      v10 = v20;
      if (v17)
      {
LABEL_14:

        goto LABEL_15;
      }

      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1 + 32) + 8);
        *buf = 138412546;
        v23 = v19;
        v24 = 2112;
        v25 = v10;
        v14 = "failed to write subject data to file %@ -- %@";
        goto LABEL_17;
      }
    }

    else
    {
      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(a1 + 32) + 8);
        *buf = 138412546;
        v23 = v13;
        v24 = 2112;
        v25 = v10;
        v14 = "failed to create directory for file %@ -- %@";
LABEL_17:
        _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_14;
  }

  v15 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = 0;
    _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "failed to encode subject -- %@", buf, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)subjectWithProjectId:(int)id
{
  v5 = objc_opt_new();
  subject = [(TRISubjectProvider *)self subject];

  if (subject)
  {
    subject2 = [(TRISubjectProvider *)self subject];
    [subject2 copyTo:v5];

    deviceId = [v5 deviceId];
    v9 = [deviceId triHashWithIntegerSalt:id];
    uUIDString = [v9 UUIDString];
    [v5 setDeviceId:uUIDString];
  }

  else
  {
    lock = self->_lock;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__TRISubjectProvider_subjectWithProjectId___block_invoke;
    v13[3] = &unk_27885ECD0;
    idCopy = id;
    v14 = v5;
    [(_PASLock *)lock runWithLockAcquired:v13];
  }

  return v5;
}

void __43__TRISubjectProvider_subjectWithProjectId___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (!v12[3])
  {
    v3 = objc_opt_new();
    v4 = v12[3];
    v12[3] = v3;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v6 = [v12[3] objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = (*(a1 + 40) % 10000);
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [v10 substringFromIndex:24];
    v6 = [v7 stringWithFormat:@"00000000-0000-0000-%04X-%@", v8, v11];

    [v12[3] setObject:v6 forKeyedSubscript:v5];
  }

  [*(a1 + 32) setDeviceId:v6];
}

- (id)nextRotationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__TRISubjectProvider_nextRotationDate__block_invoke;
  v5[3] = &unk_27885ECA8;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__TRISubjectProvider_nextRotationDate__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = v4[2];
  if (!v3)
  {
    [*(a1 + 32) loadUsingGuardedData:v4];
    v3 = v4[2];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (id)anchorDate
{
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:536457600.0];

  return v2;
}

- (id)nextRotationDateAfter:(id)after
{
  afterCopy = after;
  if (!afterCopy)
  {
    afterCopy = [MEMORY[0x277CBEAA8] date];
  }

  v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5D0]];
  v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v6 setTimeZone:v7];

  anchorDate = [(TRISubjectProvider *)self anchorDate];
  v9 = [v6 components:16 fromDate:anchorDate toDate:afterCopy options:0];
  v10 = [v9 day] / 7;
  v11 = v10 / [(TRISubjectProvider *)self numberOfWeeksPerRotation];
  v12 = objc_opt_new();
  [v12 setDay:{-[TRISubjectProvider numberOfWeeksPerRotation](self, "numberOfWeeksPerRotation") * (7 * v11 + 7)}];
  v13 = [v6 dateByAddingComponents:v12 toDate:anchorDate options:0];
  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISubjectProvider.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"epochRelativeDate"}];
  }

  v14 = [v6 startOfDayForDate:v13];

  return v14;
}

- (void)rotateSubject
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__TRISubjectProvider_rotateSubject__block_invoke;
  v3[3] = &unk_27885EC80;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __35__TRISubjectProvider_rotateSubject__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(v3 + 1);
  *(v3 + 1) = v4;

  v6 = objc_opt_new();
  v7 = [v6 UUIDString];
  [*(v3 + 1) setDeviceId:v7];

  v8 = [*(a1 + 32) nextRotationDateAfter:0];
  v9 = *(v3 + 2);
  *(v3 + 2) = v8;
}

@end