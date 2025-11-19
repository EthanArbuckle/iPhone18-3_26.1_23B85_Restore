@interface CSHealthWrapMessage
+ (id)newOutputFileURL;
+ (id)newOutputFileURLInDirectory:(id)a3;
- (BOOL)_run:(id)a3 error:(id *)a4;
- (BOOL)_startWithOutputStream:(id)a3 error:(id *)a4;
- (BOOL)appendData:(id)a3 error:(id *)a4;
- (BOOL)appendDataFromFileURL:(id)a3 error:(id *)a4;
- (BOOL)finalizeWithError:(id *)a3;
- (BOOL)startWithError:(id *)a3;
- (BOOL)startWithOutputFileURL:(id)a3 error:(id *)a4;
- (BOOL)startWithOutputStream:(id)a3 shouldClose:(BOOL)a4 error:(id *)a5;
- (CSHealthWrapMessage)initWithConfiguration:(id)a3;
- (CSHealthWrapMessage)initWithUUID:(id)a3 senderUUID:(id)a4 studyUUID:(id)a5 channel:(id)a6 payloadType:(id)a7 startDate:(id)a8 endDate:(id)a9 payloadIdentifier:(id)a10 applicationData:(id)a11 certificate:(__SecCertificate *)cf;
- (id)_codableKeyValuePairsFromDictionary:(id)a3;
- (void)_cleanup;
- (void)_finalize;
- (void)_writeDataToCompressor:(id)a3;
- (void)dealloc;
- (void)receiveSinkContent:(id)a3;
- (void)sinkContentFinished;
@end

@implementation CSHealthWrapMessage

- (CSHealthWrapMessage)initWithUUID:(id)a3 senderUUID:(id)a4 studyUUID:(id)a5 channel:(id)a6 payloadType:(id)a7 startDate:(id)a8 endDate:(id)a9 payloadIdentifier:(id)a10 applicationData:(id)a11 certificate:(__SecCertificate *)cf
{
  v42 = a3;
  v19 = a4;
  v41 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v43.receiver = self;
  v43.super_class = CSHealthWrapMessage;
  v26 = [(CSHealthWrapMessage *)&v43 init];
  v27 = v26;
  if (v26)
  {
    *&v26->_compressionEnabled = 1;
    *&v26->_shouldCloseStream = 1;
    objc_storeStrong(&v26->_uuid, a3);
    objc_storeStrong(&v27->_studyUUID, a5);
    v28 = +[(GPBMessage *)CSHWProtoPayloadHeader];
    payloadHeader = v27->_payloadHeader;
    v27->_payloadHeader = v28;

    v30 = [v24 copy];
    [(CSHWProtoPayloadHeader *)v27->_payloadHeader setPayloadIdentifier:v30];

    v44[0] = 0;
    v44[1] = 0;
    [v19 getUUIDBytes:v44];
    v31 = [NSData dataWithBytes:v44 length:16];
    [(CSHWProtoPayloadHeader *)v27->_payloadHeader setSubjectUuid:v31];

    v32 = [v20 copy];
    [(CSHWProtoPayloadHeader *)v27->_payloadHeader setChannel:v32];

    v33 = [v21 copy];
    [(CSHWProtoPayloadHeader *)v27->_payloadHeader setPayloadType:v33];

    if (v22)
    {
      [v22 timeIntervalSinceReferenceDate];
      [(CSHWProtoPayloadHeader *)v27->_payloadHeader setStartDate:v34];
    }

    if (v23)
    {
      [v23 timeIntervalSinceReferenceDate];
      [(CSHWProtoPayloadHeader *)v27->_payloadHeader setEndDate:v35];
    }

    if (v25)
    {
      v36 = [v25 copy];
      [(CSHWProtoPayloadHeader *)v27->_payloadHeader setApplicationData:v36];
    }

    CFRetain(cf);
    v27->_certificate = cf;
    v37 = dispatch_get_global_queue(0, 0);
    v38 = dispatch_queue_create("healthwrap_message", 0);
    encryptQueue = v27->_encryptQueue;
    v27->_encryptQueue = v38;

    dispatch_set_target_queue(v27->_encryptQueue, v37);
  }

  return v27;
}

- (CSHealthWrapMessage)initWithConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10035800C();
  }

  v18 = [v4 messageUUID];
  v5 = [v4 subjectUUID];
  v6 = [v4 studyUUID];
  v17 = [v4 channel];
  v7 = [v4 payloadType];
  v8 = [v4 startDate];
  v9 = [v4 endDate];
  v10 = [v4 payloadIdentifier];
  v11 = [v4 applicationData];
  v12 = -[CSHealthWrapMessage initWithUUID:senderUUID:studyUUID:channel:payloadType:startDate:endDate:payloadIdentifier:applicationData:certificate:](self, "initWithUUID:senderUUID:studyUUID:channel:payloadType:startDate:endDate:payloadIdentifier:applicationData:certificate:", v18, v5, v6, v17, v7, v8, v9, v10, v11, [v4 certificate]);

  if (v12)
  {
    objc_storeStrong(&v12->_configuration, a3);
    if ([(CSHealthWrapMessageConfiguration *)v12->_configuration disableCompression])
    {
      v12->_compressionEnabled = 0;
    }

    v13 = [v4 keyValuePairs];
    v14 = [(CSHealthWrapMessage *)v12 _codableKeyValuePairsFromDictionary:v13];
    [(CSHWProtoPayloadHeader *)v12->_payloadHeader setKeyValuePairsArray:v14];
  }

  return v12;
}

- (void)dealloc
{
  certificate = self->_certificate;
  if (certificate)
  {
    CFRelease(certificate);
    self->_certificate = 0;
  }

  outputStream = self->_outputStream;
  if (outputStream)
  {
    CFWriteStreamSetDispatchQueue(outputStream, 0);
    outputStream = self->_outputStream;
  }

  if (self->_shouldCloseStream)
  {
    [(NSOutputStream *)outputStream close];
    outputURL = self->_outputURL;
    self->_outputURL = 0;

    outputStream = self->_outputStream;
  }

  self->_outputStream = 0;

  v6.receiver = self;
  v6.super_class = CSHealthWrapMessage;
  [(CSHealthWrapMessage *)&v6 dealloc];
}

- (id)_codableKeyValuePairsFromDictionary:(id)a3
{
  if (a3)
  {
    v3 = a3;
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001A6EC;
    v4 = v6[3] = &unk_1004132E8;
    v7 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)startWithError:(id *)a3
{
  v5 = [objc_opt_class() newOutputFileURL];
  LOBYTE(a3) = [(CSHealthWrapMessage *)self startWithOutputFileURL:v5 error:a3];

  return a3;
}

+ (id)newOutputFileURL
{
  v3 = NSTemporaryDirectory();
  v4 = [NSURL fileURLWithPath:v3];
  v5 = [a1 newOutputFileURLInDirectory:v4];

  return v5;
}

+ (id)newOutputFileURLInDirectory:(id)a3
{
  v3 = a3;
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"%@-%@", @"HealthWrap-", v5];

  v7 = [v3 URLByAppendingPathComponent:v6];

  return v7;
}

- (BOOL)_startWithOutputStream:(id)a3 error:(id *)a4
{
  v7 = a3;
  *&self->_started = 257;
  objc_storeStrong(&self->_outputStream, a3);
  CFWriteStreamSetDispatchQueue(v7, self->_encryptQueue);
  v8 = [CSHealthWrapEncryptor alloc];
  LOBYTE(v15) = self->_compressionEnabled;
  v9 = [(CSHealthWrapEncryptor *)v8 initWithOutputStream:v7 certificate:self->_certificate algorithm:0 options:1 keySize:32 uuid:self->_uuid studyUUID:self->_studyUUID compressionEnabled:v15];
  encryptor = self->_encryptor;
  self->_encryptor = v9;

  v11 = 0;
  if ([(CSHealthWrapEncryptor *)self->_encryptor startWithError:a4])
  {
    if (self->_compressionEnabled)
    {
      v12 = [[_CSCompressionEngine alloc] initWithFunction:0 algorithm:1 destination:self];
      compressionEngine = self->_compressionEngine;
      self->_compressionEngine = v12;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001AB58;
    v16[3] = &unk_100413310;
    v16[4] = self;
    v11 = [(CSHealthWrapMessage *)self _run:v16 error:a4];
  }

  return v11;
}

- (BOOL)startWithOutputStream:(id)a3 shouldClose:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  if (self->_started)
  {
    sub_100358080();
  }

  outputURL = self->_outputURL;
  self->_outputURL = 0;

  self->_startedWithStream = 1;
  self->_shouldCloseStream = a4;
  v10 = [(CSHealthWrapMessage *)self _startWithOutputStream:v8 error:a5];

  return v10;
}

- (BOOL)startWithOutputFileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_started)
  {
    sub_1003580EC();
  }

  outputURL = self->_outputURL;
  self->_outputURL = v6;
  v8 = v6;

  *&self->_shouldCloseStream = 1;
  v9 = [[NSOutputStream alloc] initWithURL:v8 append:0];

  [v9 open];
  v10 = [(CSHealthWrapMessage *)self _startWithOutputStream:v9 error:a4];

  return v10;
}

- (BOOL)appendDataFromFileURL:(id)a3 error:(id *)a4
{
  v6 = [a3 path];
  v7 = open([v6 UTF8String], 0);
  if (v7 == -1)
  {
    v30 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"Unable to open file %@", v6];
    v31 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *a4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];

    goto LABEL_6;
  }

  v8 = v7;
  memset(&v23, 0, sizeof(v23));
  if (fstat(v7, &v23))
  {
    v28 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"Unable to stat file %@", v6];
    v29 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v11 = NSPOSIXErrorDomain;
    v12 = 2;
LABEL_4:
    *a4 = [NSError errorWithDomain:v11 code:v12 userInfo:v10];

    close(v8);
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v17 = mmap(0, v23.st_size, 1, 2, v8, 0);
  if (v17 == -1)
  {
    v26 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"mmap failed for file %@", v6];
    v27 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v11 = NSPOSIXErrorDomain;
    v12 = 12;
    goto LABEL_4;
  }

  v18 = v17;
  v19 = [NSData alloc];
  v20 = [v19 initWithBytesNoCopy:v18 length:v23.st_size deallocator:NSDataDeallocatorUnmap];
  close(v8);
  if (v20)
  {
    v15 = [(CSHealthWrapMessage *)self appendData:v20 error:a4];
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithFormat:@"data alloc failed for file %@", v6];
    v25 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *a4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:v22];

    v15 = 0;
  }

LABEL_7:
  return v15;
}

- (BOOL)appendData:(id)a3 error:(id *)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B198;
  v7[3] = &unk_100413338;
  v8 = self;
  v9 = a3;
  v5 = v9;
  LOBYTE(a4) = [(CSHealthWrapMessage *)v8 _run:v7 error:a4];

  return a4;
}

- (void)_finalize
{
  if (self->_compressionEnabled)
  {
    [(_CSCompressionEngine *)self->_compressionEngine sourceContentFinished];
  }

  else
  {
    encryptor = self->_encryptor;
    obj = 0;
    v4 = [(CSHealthWrapEncryptor *)encryptor finalizeWithError:&obj];
    v5 = obj;
    self->_lastSuccess = v4;
    objc_storeStrong(&self->_lastError, v5);
  }

  if (self->_startedWithStream)
  {
    outputStream = self->_outputStream;
    if (outputStream)
    {
      CFWriteStreamSetDispatchQueue(outputStream, 0);
      if (self->_shouldCloseStream)
      {
        [(NSOutputStream *)self->_outputStream close];
      }

      v7 = self->_outputStream;
      self->_outputStream = 0;
    }
  }
}

- (BOOL)finalizeWithError:(id *)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B2B0;
  v4[3] = &unk_100413310;
  v4[4] = self;
  return [(CSHealthWrapMessage *)self _run:v4 error:a3];
}

- (BOOL)_run:(id)a3 error:(id *)a4
{
  self->_lastSuccess = 1;
  (*(a3 + 2))(a3, a2);
  lastSuccess = self->_lastSuccess;
  if (!lastSuccess)
  {
    [(CSHealthWrapMessage *)self _cleanup];
    *a4 = self->_lastError;
  }

  return lastSuccess;
}

- (void)_writeDataToCompressor:(id)a3
{
  lastError = a3;
  v14 = bswap64([(NSError *)lastError length]);
  v5 = [NSData dataWithBytes:&v14 length:8];
  if (self->_compressionEnabled)
  {
    [(_CSCompressionEngine *)self->_compressionEngine writeSourceContent:v5];
    [(_CSCompressionEngine *)self->_compressionEngine writeSourceContent:lastError];
  }

  else
  {
    encryptor = self->_encryptor;
    v13 = 0;
    v7 = [(CSHealthWrapEncryptor *)encryptor appendData:v5 error:&v13];
    v8 = v13;
    self->_lastSuccess = v7;
    v9 = self->_encryptor;
    v12 = v8;
    v10 = [(CSHealthWrapEncryptor *)v9 appendData:lastError error:&v12];

    v11 = v12;
    self->_lastSuccess = v10;
    lastError = self->_lastError;
    self->_lastError = v11;
  }
}

- (void)_cleanup
{
  compressionEngine = self->_compressionEngine;
  self->_compressionEngine = 0;

  [(CSHealthWrapEncryptor *)self->_encryptor finalizeWithError:0];
  encryptor = self->_encryptor;
  self->_encryptor = 0;

  if (self->_shouldCloseStream)
  {
    [(NSOutputStream *)self->_outputStream close];
  }

  outputStream = self->_outputStream;
  self->_outputStream = 0;

  self->_startedWithStream = 0;
  if (self->_outputURL)
  {
    v6 = +[NSFileManager defaultManager];
    [v6 removeItemAtURL:self->_outputURL error:0];

    outputURL = self->_outputURL;
    self->_outputURL = 0;
  }

  self->_started = 0;
}

- (void)receiveSinkContent:(id)a3
{
  v4 = a3;
  encryptQueue = self->_encryptQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B55C;
  v7[3] = &unk_100413338;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(encryptQueue, v7);
}

- (void)sinkContentFinished
{
  encryptQueue = self->_encryptQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B624;
  block[3] = &unk_100413310;
  block[4] = self;
  dispatch_sync(encryptQueue, block);
}

@end