@interface PKWebServiceContext
+ (id)contextWithArchive:(id)archive;
+ (id)contextWithArchive:(id)archive error:(id *)error;
- (BOOL)archiveAtPath:(id)path error:(id *)error;
- (PKWebServiceContext)initWithCoder:(id)coder;
- (void)archiveAtPath:(id)path;
@end

@implementation PKWebServiceContext

+ (id)contextWithArchive:(id)archive
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [self contextWithArchive:archive error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      v7 = v6;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%@: failed to unarchive web service context with error: %@", buf, 0x16u);
    }
  }

  return v3;
}

+ (id)contextWithArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  if (error)
  {
    *error = 0;
  }

  v20 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:archiveCopy options:1 error:&v20];
  v7 = v20;
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read contents of archived context"];
    v10 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v19 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:&v19];
  v12 = v19;
  if (v12)
  {
    v8 = v12;
    v10 = 0;
    v13 = @"Failed to initialize archived context data for reading";
LABEL_10:
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v13];
    goto LABEL_11;
  }

  v14 = objc_opt_class();
  v15 = *MEMORY[0x1E696A508];
  v18 = 0;
  v10 = [v11 decodeTopLevelObjectOfClass:v14 forKey:v15 error:&v18];
  v8 = v18;
  [v11 finishDecoding];
  if (v8)
  {
    v13 = @"Failed to decode archived context data";
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v16 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    [v16 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v16 setObject:archiveCopy forKeyedSubscript:*MEMORY[0x1E696A368]];
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v16];
  }

LABEL_14:

  return v10;
}

- (void)archiveAtPath:(id)path
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v3 = [(PKWebServiceContext *)self archiveAtPath:path error:&v19];
  v4 = v19;
  if (!v3)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v4;
      v7 = v6;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%@: failed to archive web service context: %@", buf, 0x16u);
    }

    underlyingErrors = [v4 underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject)
    {
      v10 = firstObject;
    }

    else
    {
      v10 = v4;
    }

    v11 = MEMORY[0x1E695DF90];
    v12 = v10;
    v13 = objc_alloc_init(v11);
    localizedDescription = [v12 localizedDescription];
    [v13 setObject:localizedDescription forKeyedSubscript:*MEMORY[0x1E696A578]];

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "code")}];
    stringValue = [v15 stringValue];
    [v13 setObject:stringValue forKeyedSubscript:@"ErrorCode"];

    v17 = objc_alloc_init(PKAutoBugCaptureReporter);
    domain = [v12 domain];

    [(PKAutoBugCaptureReporter *)v17 reportIssueWithDomain:@"Wallet" type:@"PKWebServiceContext" subtype:@"ContextArchiveFailed" subtypeContext:domain payload:v13];
  }
}

- (BOOL)archiveAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (error)
  {
    *error = 0;
  }

  v13 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v12 = 0;
    [v7 writeToFile:pathCopy options:1 error:&v12];
    v9 = v12;
    if (!v9)
    {
      PKExcludePathFromBackup(pathCopy);
      goto LABEL_9;
    }
  }

  if (error)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    [v10 setObject:pathCopy forKeyedSubscript:*MEMORY[0x1E696A368]];
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v10];
  }

LABEL_9:

  return v9 == 0;
}

- (PKWebServiceContext)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PKWebServiceContext;
  return [(PKWebServiceContext *)&v4 init];
}

@end