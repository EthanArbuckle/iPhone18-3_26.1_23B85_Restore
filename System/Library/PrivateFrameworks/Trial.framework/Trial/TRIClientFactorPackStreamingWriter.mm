@interface TRIClientFactorPackStreamingWriter
+ (BOOL)copySourceFactorPack:(id)pack toDestPath:(id)path error:(id *)error modifyFactorLevel:(id)level;
- (BOOL)_streamExecWithError:(id *)error block:(id)block;
- (BOOL)closeWithError:(id *)error;
- (TRIClientFactorPackStreamingWriter)initWithPath:(id)path;
- (unsigned)_fieldNumberForFieldName:(id)name;
- (void)appendFactorLevel:(id)level;
- (void)writeFactorPackId:(id)id;
- (void)writeSelectedNamespace:(id)namespace;
@end

@implementation TRIClientFactorPackStreamingWriter

- (TRIClientFactorPackStreamingWriter)initWithPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = TRIClientFactorPackStreamingWriter;
  v5 = [(TRIClientFactorPackStreamingWriter *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:pathCopy append:0];
    underlying = v5->_underlying;
    v5->_underlying = v6;

    v8 = [objc_alloc(MEMORY[0x277D73B60]) initWithOutputStream:v5->_underlying];
    stream = v5->_stream;
    v5->_stream = v8;
  }

  return v5;
}

- (unsigned)_fieldNumberForFieldName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = objc_autoreleasePoolPush();
  descriptor = [MEMORY[0x277D73AD8] descriptor];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  fields = [descriptor fields];
  v7 = [fields countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(fields);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      name = [v11 name];
      v13 = [nameCopy isEqualToString:name];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [fields countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    number = [v11 number];

    if (number == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_9:

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:209 description:{@"Failed to determine field number for %@", nameCopy}];

    number = -1;
  }

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x277D85DE8];
  return number;
}

- (BOOL)_streamExecWithError:(id *)error block:(id)block
{
  v12 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!self->_stream)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:216 description:@"writing a field to a closed stream"];
  }

  firstError = self->_firstError;
  if (firstError)
  {
    if (error)
    {
      objc_storeStrong(error, firstError);
      LOBYTE(error) = 0;
    }
  }

  else
  {
    blockCopy[2](blockCopy, self->_stream);
    LOBYTE(error) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)writeFactorPackId:(id)id
{
  idCopy = id;
  if (self->_hasFactorPackId)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:243 description:@"writeFactorPackId: must be called no more than once"];
  }

  self->_hasFactorPackId = 1;
  if (!self->_firstError)
  {
    v6 = [(TRIClientFactorPackStreamingWriter *)self _fieldNumberForFieldName:@"factorPackId"];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__TRIClientFactorPackStreamingWriter_writeFactorPackId___block_invoke;
    v8[3] = &unk_27885E168;
    v10 = v6;
    v9 = idCopy;
    [(TRIClientFactorPackStreamingWriter *)self _streamExecWithError:0 block:v8];
  }
}

- (void)writeSelectedNamespace:(id)namespace
{
  namespaceCopy = namespace;
  if (self->_hasSelectedNamespace)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:255 description:@"writeSelectedNamespace: must be called no more than once"];
  }

  self->_hasSelectedNamespace = 1;
  if (!self->_firstError)
  {
    v6 = [(TRIClientFactorPackStreamingWriter *)self _fieldNumberForFieldName:@"selectedNamespace"];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__TRIClientFactorPackStreamingWriter_writeSelectedNamespace___block_invoke;
    v8[3] = &unk_27885E168;
    v10 = v6;
    v9 = namespaceCopy;
    [(TRIClientFactorPackStreamingWriter *)self _streamExecWithError:0 block:v8];
  }
}

- (void)appendFactorLevel:(id)level
{
  levelCopy = level;
  if (!self->_firstError)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__TRIClientFactorPackStreamingWriter_appendFactorLevel___block_invoke;
    block[3] = &unk_27885E190;
    block[4] = self;
    if (qword_280ACADC8 != -1)
    {
      dispatch_once(&qword_280ACADC8, block);
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__TRIClientFactorPackStreamingWriter_appendFactorLevel___block_invoke_2;
    v5[3] = &unk_27885E168;
    v7 = _MergedGlobals_6;
    v6 = levelCopy;
    [(TRIClientFactorPackStreamingWriter *)self _streamExecWithError:0 block:v5];
  }
}

void __56__TRIClientFactorPackStreamingWriter_appendFactorLevel___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  _MergedGlobals_6 = [*(a1 + 32) _fieldNumberForFieldName:@"factorLevelArray"];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)closeWithError:(id *)error
{
  v8 = *MEMORY[0x277D85DE8];
  [(TRIPBCodedOutputStream *)self->_stream flush];
  stream = self->_stream;
  self->_stream = 0;

  if (error)
  {
    objc_storeStrong(error, self->_firstError);
  }

  result = self->_firstError == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)copySourceFactorPack:(id)pack toDestPath:(id)path error:(id *)error modifyFactorLevel:(id)level
{
  packCopy = pack;
  pathCopy = path;
  levelCopy = level;
  v12 = [[TRIClientFactorPackStreamingWriter alloc] initWithPath:pathCopy];
  if ([packCopy hasFactorPackId])
  {
    factorPackId = [packCopy factorPackId];
    [(TRIClientFactorPackStreamingWriter *)v12 writeFactorPackId:factorPackId];
  }

  if ([packCopy hasSelectedNamespace])
  {
    selectedNamespace = [packCopy selectedNamespace];
    [(TRIClientFactorPackStreamingWriter *)v12 writeSelectedNamespace:selectedNamespace];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__TRIClientFactorPackStreamingWriter_copySourceFactorPack_toDestPath_error_modifyFactorLevel___block_invoke;
  v21[3] = &unk_27885E1B8;
  v15 = levelCopy;
  v23 = v15;
  v24 = &v25;
  v16 = v12;
  v22 = v16;
  [packCopy enumerateFactorLevelsWithBlock:v21];
  v17 = [(TRIClientFactorPackStreamingWriter *)v16 closeWithError:error];
  if (*(v26 + 24) == 1)
  {
    if (error)
    {
      v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:0];
      v19 = *error;
      *error = v18;
    }

    v17 = 0;
  }

  _Block_object_dispose(&v25, 8);
  return v17;
}

uint64_t __94__TRIClientFactorPackStreamingWriter_copySourceFactorPack_toDestPath_error_modifyFactorLevel___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = (*(*(a1 + 40) + 16))();
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    v5 = [*(a1 + 32) appendFactorLevel:v5];
    v6 = v8;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

@end