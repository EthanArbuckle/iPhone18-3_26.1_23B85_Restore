@interface ATSSymbolicationProvider
- (BOOL)shouldAmendWithFile:(ktrace_file *)file error:(id *)error;
- (BOOL)shouldInitializeWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options error:(id *)error;
- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)configuration error:(id *)error;
- (id)describeChunk:(ktrace_chunk *)chunk;
- (void)dealloc;
- (void)postprocessingCompleteWithFile:(ktrace_file *)file;
- (void)willFinishWithCatalog:(ktrace_catalog *)catalog file:(ktrace_file *)file;
@end

@implementation ATSSymbolicationProvider

- (void)dealloc
{
  symbolicationConfig = self->_symbolicationConfig;
  ats_destroy_symbolication_config();
  v4.receiver = self;
  v4.super_class = ATSSymbolicationProvider;
  [(ATSSymbolicationProvider *)&v4 dealloc];
}

- (BOOL)shouldInitializeWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options error:(id *)error
{
  loggerCopy = logger;
  optionsCopy = options;
  symbolication_config = ats_create_symbolication_config();
  symbolication_config->var4 = 1;
  logger = self->_logger;
  self->_symbolicationConfig = symbolication_config;
  self->_logger = loggerCopy;
  v12 = loggerCopy;

  objc_storeStrong(&qword_8300, self->_logger);
  self->_symbolicationConfig->var5 = sub_D10;
  incomingOptions = self->_incomingOptions;
  self->_incomingOptions = optionsCopy;

  return 1;
}

- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)configuration error:(id *)error
{
  incomingOptions = self->_incomingOptions;
  if (incomingOptions)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_F4C;
    v30 = sub_F5C;
    v31 = 0;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_F64;
    v25[3] = &unk_4148;
    v25[4] = &v26;
    [(NSDictionary *)incomingOptions enumerateKeysAndObjectsUsingBlock:v25];
    if (v27[5])
    {
      if (error)
      {
        *error = sub_FE4(@"Unrecognized symbolication record option key: %@", v7, v8, v9, v10, v11, v12, v13, v27[5]);
      }

LABEL_5:
      _Block_object_dispose(&v26, 8);

      return 0;
    }

    self->_symbolicationConfig->var2 = 0;
    v15 = [(NSDictionary *)self->_incomingOptions objectForKeyedSubscript:@"fetch-instructions"];
    v16 = v15;
    if (v15)
    {
      if ([v15 isEqualToString:@"active-symbols"])
      {
        v17 = 1;
      }

      else
      {
        if (([v16 isEqualToString:@"all"] & 1) == 0)
        {
          if (error)
          {
            *error = sub_FE4(@"Unrecognized symbolication record option: %@", v18, v19, v20, v21, v22, v23, v24, v16);
          }

          goto LABEL_5;
        }

        v17 = 2;
      }

      self->_symbolicationConfig->var0 = v17;
    }

    _Block_object_dispose(&v26, 8);
  }

  return 1;
}

- (BOOL)shouldAmendWithFile:(ktrace_file *)file error:(id *)error
{
  if (error)
  {
    *error = sub_FE4(@"Amending symbolication is not supported on this platform. Run this command on the host.", a2, file, error, v4, v5, v6, v7, v10);
  }

  return 0;
}

- (void)postprocessingCompleteWithFile:(ktrace_file *)file
{
  if (self->_symbolicationConfig->var2 == 1)
  {
    _ats_postprocessing_complete(file, a2);
  }
}

- (void)willFinishWithCatalog:(ktrace_catalog *)catalog file:(ktrace_file *)file
{
  if (!self->_symbolicationConfig->var2)
  {
    _ats_postprocessing_complete(file, a2);
  }
}

- (id)describeChunk:(ktrace_chunk *)chunk
{
  if (ktrace_chunk_tag() == 20583)
  {
    return @"symbols";
  }

  else
  {
    return 0;
  }
}

@end