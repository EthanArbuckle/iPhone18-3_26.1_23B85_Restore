@interface TXRFileDataSourceProvider
- (TXRFileDataSourceProvider)initWithData:(id)data bufferAllocator:(id)allocator options:(id)options error:(id *)error;
- (TXRFileDataSourceProvider)initWithURL:(id)l bufferAllocator:(id)allocator options:(id)options error:(id *)error;
- (id)provideTextureInfo;
- (unint64_t)_determineFileType:(id)type;
- (void)_parseData:(id)data bufferAllocator:(id)allocator options:(id)options error:(id *)error;
@end

@implementation TXRFileDataSourceProvider

- (TXRFileDataSourceProvider)initWithURL:(id)l bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  lCopy = l;
  allocatorCopy = allocator;
  optionsCopy = options;
  v28.receiver = self;
  v28.super_class = TXRFileDataSourceProvider;
  v13 = [(TXRFileDataSourceProvider *)&v28 init];
  if (v13)
  {
    if ([lCopy checkResourceIsReachableAndReturnError:0])
    {
      lastPathComponent = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
      v15 = dispatch_queue_create("com.apple.txrtextureloaderfileio", lastPathComponent);
      fileIOQueue = v13->_fileIOQueue;
      v13->_fileIOQueue = v15;

      v17 = dispatch_semaphore_create(0);
      infoLoaded = v13->_infoLoaded;
      v13->_infoLoaded = v17;

      v19 = v13->_fileIOQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__TXRFileDataSourceProvider_initWithURL_bufferAllocator_options_error___block_invoke;
      block[3] = &unk_279DBC078;
      v24 = lCopy;
      v25 = v13;
      v26 = allocatorCopy;
      v27 = optionsCopy;
      dispatch_async(v19, block);

      v20 = v24;
LABEL_6:

      goto LABEL_7;
    }

    if (error)
    {
      v21 = MEMORY[0x277CCACA8];
      lastPathComponent = [lCopy lastPathComponent];
      v20 = [v21 stringWithFormat:@"Could not find resource %@ at specified location.", lastPathComponent];
      *error = _newTXRErrorWithCodeAndErrorString(1, v20);
      goto LABEL_6;
    }
  }

LABEL_7:

  return v13;
}

void __71__TXRFileDataSourceProvider_initWithURL_bufferAllocator_options_error___block_invoke(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEA90]);
  v3 = a1[4];
  v11 = 0;
  v4 = [v2 initWithContentsOfURL:v3 options:1 error:&v11];
  v5 = v11;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v10 = 0;
  [v6 _parseData:v4 bufferAllocator:v7 options:v8 error:&v10];
  v9 = v10;
}

- (TXRFileDataSourceProvider)initWithData:(id)data bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  dataCopy = data;
  allocatorCopy = allocator;
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = TXRFileDataSourceProvider;
  v12 = [(TXRFileDataSourceProvider *)&v23 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_create("com.apple.txrtextureloaderfileio", v13);
    fileIOQueue = v12->_fileIOQueue;
    v12->_fileIOQueue = v14;

    v16 = v12->_fileIOQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__TXRFileDataSourceProvider_initWithData_bufferAllocator_options_error___block_invoke;
    v18[3] = &unk_279DBC078;
    v19 = v12;
    v20 = dataCopy;
    v21 = allocatorCopy;
    v22 = optionsCopy;
    dispatch_async(v16, v18);
  }

  return v12;
}

id __72__TXRFileDataSourceProvider_initWithData_bufferAllocator_options_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v6 = 0;
  [v2 _parseData:v1 bufferAllocator:v3 options:v4 error:&v6];
  result = v6;
  if (result)
  {
    __72__TXRFileDataSourceProvider_initWithData_bufferAllocator_options_error___block_invoke_cold_1();
  }

  return result;
}

- (unint64_t)_determineFileType:(id)type
{
  if ([TXRParserKTX handlesData:type])
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

- (void)_parseData:(id)data bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  dataCopy = data;
  allocatorCopy = allocator;
  optionsCopy = options;
  v12 = [(TXRFileDataSourceProvider *)self _determineFileType:dataCopy];
  if (v12 == 1)
  {
    v13 = off_279DBBF50;
  }

  else
  {
    if (v12 != 5)
    {
      [TXRFileDataSourceProvider _parseData:bufferAllocator:options:error:];
    }

    v13 = off_279DBBF48;
  }

  v14 = objc_alloc_init(*v13);
  parser = self->_parser;
  self->_parser = v14;

  if ([(TXRParser *)self->_parser parseData:dataCopy bufferAllocator:allocatorCopy options:optionsCopy error:error])
  {
    textureInfo = [(TXRParser *)self->_parser textureInfo];
    textureInfo = self->_textureInfo;
    self->_textureInfo = textureInfo;

    dispatch_semaphore_signal(self->_infoLoaded);
  }
}

- (id)provideTextureInfo
{
  dispatch_semaphore_wait(self->_infoLoaded, 0xFFFFFFFFFFFFFFFFLL);
  textureInfo = self->_textureInfo;

  return textureInfo;
}

@end