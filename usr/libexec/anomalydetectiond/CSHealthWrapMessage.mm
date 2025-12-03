@interface CSHealthWrapMessage
+ (id)newOutputFileURL;
+ (id)newOutputFileURLInDirectory:(id)directory;
- (BOOL)_run:(id)_run error:(id *)error;
- (BOOL)_startWithOutputStream:(id)stream error:(id *)error;
- (BOOL)appendData:(id)data error:(id *)error;
- (BOOL)appendDataFromFileURL:(id)l error:(id *)error;
- (BOOL)finalizeWithError:(id *)error;
- (BOOL)startWithError:(id *)error;
- (BOOL)startWithOutputFileURL:(id)l error:(id *)error;
- (BOOL)startWithOutputStream:(id)stream shouldClose:(BOOL)close error:(id *)error;
- (CSHealthWrapMessage)initWithConfiguration:(id)configuration;
- (CSHealthWrapMessage)initWithUUID:(id)d senderUUID:(id)iD studyUUID:(id)uID channel:(id)channel payloadType:(id)type startDate:(id)date endDate:(id)endDate payloadIdentifier:(id)self0 applicationData:(id)self1 certificate:(__SecCertificate *)cf;
- (id)_codableKeyValuePairsFromDictionary:(id)dictionary;
- (void)_cleanup;
- (void)_finalize;
- (void)_writeDataToCompressor:(id)compressor;
- (void)dealloc;
- (void)receiveSinkContent:(id)content;
- (void)sinkContentFinished;
@end

@implementation CSHealthWrapMessage

- (CSHealthWrapMessage)initWithUUID:(id)d senderUUID:(id)iD studyUUID:(id)uID channel:(id)channel payloadType:(id)type startDate:(id)date endDate:(id)endDate payloadIdentifier:(id)self0 applicationData:(id)self1 certificate:(__SecCertificate *)cf
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  channelCopy = channel;
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  identifierCopy = identifier;
  dataCopy = data;
  v43.receiver = self;
  v43.super_class = CSHealthWrapMessage;
  v26 = [(CSHealthWrapMessage *)&v43 init];
  v27 = v26;
  if (v26)
  {
    *&v26->_compressionEnabled = 1;
    *&v26->_shouldCloseStream = 1;
    objc_storeStrong(&v26->_uuid, d);
    objc_storeStrong(&v27->_studyUUID, uID);
    v28 = +[(GPBMessage *)CSHWProtoPayloadHeader];
    payloadHeader = v27->_payloadHeader;
    v27->_payloadHeader = v28;

    v30 = [identifierCopy copy];
    [(CSHWProtoPayloadHeader *)v27->_payloadHeader setPayloadIdentifier:v30];

    v44[0] = 0;
    v44[1] = 0;
    [iDCopy getUUIDBytes:v44];
    v31 = [NSData dataWithBytes:v44 length:16];
    [(CSHWProtoPayloadHeader *)v27->_payloadHeader setSubjectUuid:v31];

    v32 = [channelCopy copy];
    [(CSHWProtoPayloadHeader *)v27->_payloadHeader setChannel:v32];

    v33 = [typeCopy copy];
    [(CSHWProtoPayloadHeader *)v27->_payloadHeader setPayloadType:v33];

    if (dateCopy)
    {
      [dateCopy timeIntervalSinceReferenceDate];
      [(CSHWProtoPayloadHeader *)v27->_payloadHeader setStartDate:v34];
    }

    if (endDateCopy)
    {
      [endDateCopy timeIntervalSinceReferenceDate];
      [(CSHWProtoPayloadHeader *)v27->_payloadHeader setEndDate:v35];
    }

    if (dataCopy)
    {
      v36 = [dataCopy copy];
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

- (CSHealthWrapMessage)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    sub_10035800C();
  }

  messageUUID = [configurationCopy messageUUID];
  subjectUUID = [configurationCopy subjectUUID];
  studyUUID = [configurationCopy studyUUID];
  channel = [configurationCopy channel];
  payloadType = [configurationCopy payloadType];
  startDate = [configurationCopy startDate];
  endDate = [configurationCopy endDate];
  payloadIdentifier = [configurationCopy payloadIdentifier];
  applicationData = [configurationCopy applicationData];
  v12 = -[CSHealthWrapMessage initWithUUID:senderUUID:studyUUID:channel:payloadType:startDate:endDate:payloadIdentifier:applicationData:certificate:](self, "initWithUUID:senderUUID:studyUUID:channel:payloadType:startDate:endDate:payloadIdentifier:applicationData:certificate:", messageUUID, subjectUUID, studyUUID, channel, payloadType, startDate, endDate, payloadIdentifier, applicationData, [configurationCopy certificate]);

  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
    if ([(CSHealthWrapMessageConfiguration *)v12->_configuration disableCompression])
    {
      v12->_compressionEnabled = 0;
    }

    keyValuePairs = [configurationCopy keyValuePairs];
    v14 = [(CSHealthWrapMessage *)v12 _codableKeyValuePairsFromDictionary:keyValuePairs];
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

- (id)_codableKeyValuePairsFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dictionaryCopy count]);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001A6EC;
    v4 = v6[3] = &unk_1004132E8;
    v7 = v4;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)startWithError:(id *)error
{
  newOutputFileURL = [objc_opt_class() newOutputFileURL];
  LOBYTE(error) = [(CSHealthWrapMessage *)self startWithOutputFileURL:newOutputFileURL error:error];

  return error;
}

+ (id)newOutputFileURL
{
  v3 = NSTemporaryDirectory();
  v4 = [NSURL fileURLWithPath:v3];
  v5 = [self newOutputFileURLInDirectory:v4];

  return v5;
}

+ (id)newOutputFileURLInDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"%@-%@", @"HealthWrap-", uUIDString];

  v7 = [directoryCopy URLByAppendingPathComponent:v6];

  return v7;
}

- (BOOL)_startWithOutputStream:(id)stream error:(id *)error
{
  streamCopy = stream;
  *&self->_started = 257;
  objc_storeStrong(&self->_outputStream, stream);
  CFWriteStreamSetDispatchQueue(streamCopy, self->_encryptQueue);
  v8 = [CSHealthWrapEncryptor alloc];
  LOBYTE(v15) = self->_compressionEnabled;
  v9 = [(CSHealthWrapEncryptor *)v8 initWithOutputStream:streamCopy certificate:self->_certificate algorithm:0 options:1 keySize:32 uuid:self->_uuid studyUUID:self->_studyUUID compressionEnabled:v15];
  encryptor = self->_encryptor;
  self->_encryptor = v9;

  v11 = 0;
  if ([(CSHealthWrapEncryptor *)self->_encryptor startWithError:error])
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
    v11 = [(CSHealthWrapMessage *)self _run:v16 error:error];
  }

  return v11;
}

- (BOOL)startWithOutputStream:(id)stream shouldClose:(BOOL)close error:(id *)error
{
  streamCopy = stream;
  if (self->_started)
  {
    sub_100358080();
  }

  outputURL = self->_outputURL;
  self->_outputURL = 0;

  self->_startedWithStream = 1;
  self->_shouldCloseStream = close;
  v10 = [(CSHealthWrapMessage *)self _startWithOutputStream:streamCopy error:error];

  return v10;
}

- (BOOL)startWithOutputFileURL:(id)l error:(id *)error
{
  lCopy = l;
  if (self->_started)
  {
    sub_1003580EC();
  }

  outputURL = self->_outputURL;
  self->_outputURL = lCopy;
  v8 = lCopy;

  *&self->_shouldCloseStream = 1;
  v9 = [[NSOutputStream alloc] initWithURL:v8 append:0];

  [v9 open];
  v10 = [(CSHealthWrapMessage *)self _startWithOutputStream:v9 error:error];

  return v10;
}

- (BOOL)appendDataFromFileURL:(id)l error:(id *)error
{
  path = [l path];
  v7 = open([path UTF8String], 0);
  if (v7 == -1)
  {
    v30 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"Unable to open file %@", path];
    v31 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v14];

    goto LABEL_6;
  }

  v8 = v7;
  memset(&v23, 0, sizeof(v23));
  if (fstat(v7, &v23))
  {
    v28 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"Unable to stat file %@", path];
    v29 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v11 = NSPOSIXErrorDomain;
    v12 = 2;
LABEL_4:
    *error = [NSError errorWithDomain:v11 code:v12 userInfo:v10];

    close(v8);
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v17 = mmap(0, v23.st_size, 1, 2, v8, 0);
  if (v17 == -1)
  {
    v26 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"mmap failed for file %@", path];
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
    v15 = [(CSHealthWrapMessage *)self appendData:v20 error:error];
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithFormat:@"data alloc failed for file %@", path];
    v25 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:v22];

    v15 = 0;
  }

LABEL_7:
  return v15;
}

- (BOOL)appendData:(id)data error:(id *)error
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B198;
  v7[3] = &unk_100413338;
  selfCopy = self;
  dataCopy = data;
  v5 = dataCopy;
  LOBYTE(error) = [(CSHealthWrapMessage *)selfCopy _run:v7 error:error];

  return error;
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

- (BOOL)finalizeWithError:(id *)error
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B2B0;
  v4[3] = &unk_100413310;
  v4[4] = self;
  return [(CSHealthWrapMessage *)self _run:v4 error:error];
}

- (BOOL)_run:(id)_run error:(id *)error
{
  self->_lastSuccess = 1;
  (*(_run + 2))(_run, a2);
  lastSuccess = self->_lastSuccess;
  if (!lastSuccess)
  {
    [(CSHealthWrapMessage *)self _cleanup];
    *error = self->_lastError;
  }

  return lastSuccess;
}

- (void)_writeDataToCompressor:(id)compressor
{
  lastError = compressor;
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

- (void)receiveSinkContent:(id)content
{
  contentCopy = content;
  encryptQueue = self->_encryptQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B55C;
  v7[3] = &unk_100413338;
  v7[4] = self;
  v8 = contentCopy;
  v6 = contentCopy;
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