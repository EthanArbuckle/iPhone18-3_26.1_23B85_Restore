@interface TRIClientFactorPackStreamingWriter
+ (BOOL)copySourceFactorPack:(id)a3 toDestPath:(id)a4 error:(id *)a5 modifyFactorLevel:(id)a6;
- (BOOL)_streamExecWithError:(id *)a3 block:(id)a4;
- (BOOL)closeWithError:(id *)a3;
- (TRIClientFactorPackStreamingWriter)initWithPath:(id)a3;
- (unsigned)_fieldNumberForFieldName:(id)a3;
- (void)appendFactorLevel:(id)a3;
- (void)writeFactorPackId:(id)a3;
- (void)writeSelectedNamespace:(id)a3;
@end

@implementation TRIClientFactorPackStreamingWriter

- (TRIClientFactorPackStreamingWriter)initWithPath:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TRIClientFactorPackStreamingWriter;
  v5 = [(TRIClientFactorPackStreamingWriter *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:v4 append:0];
    underlying = v5->_underlying;
    v5->_underlying = v6;

    v8 = [objc_alloc(MEMORY[0x277D73B60]) initWithOutputStream:v5->_underlying];
    stream = v5->_stream;
    v5->_stream = v8;
  }

  return v5;
}

- (unsigned)_fieldNumberForFieldName:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277D73AD8] descriptor];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 fields];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      v12 = [v11 name];
      v13 = [v3 isEqualToString:v12];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = [v11 number];

    if (v15 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_9:

LABEL_10:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:209 description:{@"Failed to determine field number for %@", v3}];

    v15 = -1;
  }

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_streamExecWithError:(id *)a3 block:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!self->_stream)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:216 description:@"writing a field to a closed stream"];
  }

  firstError = self->_firstError;
  if (firstError)
  {
    if (a3)
    {
      objc_storeStrong(a3, firstError);
      LOBYTE(a3) = 0;
    }
  }

  else
  {
    v7[2](v7, self->_stream);
    LOBYTE(a3) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return a3;
}

- (void)writeFactorPackId:(id)a3
{
  v5 = a3;
  if (self->_hasFactorPackId)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:243 description:@"writeFactorPackId: must be called no more than once"];
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
    v9 = v5;
    [(TRIClientFactorPackStreamingWriter *)self _streamExecWithError:0 block:v8];
  }
}

- (void)writeSelectedNamespace:(id)a3
{
  v5 = a3;
  if (self->_hasSelectedNamespace)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:255 description:@"writeSelectedNamespace: must be called no more than once"];
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
    v9 = v5;
    [(TRIClientFactorPackStreamingWriter *)self _streamExecWithError:0 block:v8];
  }
}

- (void)appendFactorLevel:(id)a3
{
  v4 = a3;
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
    v6 = v4;
    [(TRIClientFactorPackStreamingWriter *)self _streamExecWithError:0 block:v5];
  }
}

void __56__TRIClientFactorPackStreamingWriter_appendFactorLevel___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  _MergedGlobals_6 = [*(a1 + 32) _fieldNumberForFieldName:@"factorLevelArray"];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)closeWithError:(id *)a3
{
  v8 = *MEMORY[0x277D85DE8];
  [(TRIPBCodedOutputStream *)self->_stream flush];
  stream = self->_stream;
  self->_stream = 0;

  if (a3)
  {
    objc_storeStrong(a3, self->_firstError);
  }

  result = self->_firstError == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)copySourceFactorPack:(id)a3 toDestPath:(id)a4 error:(id *)a5 modifyFactorLevel:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [[TRIClientFactorPackStreamingWriter alloc] initWithPath:v10];
  if ([v9 hasFactorPackId])
  {
    v13 = [v9 factorPackId];
    [(TRIClientFactorPackStreamingWriter *)v12 writeFactorPackId:v13];
  }

  if ([v9 hasSelectedNamespace])
  {
    v14 = [v9 selectedNamespace];
    [(TRIClientFactorPackStreamingWriter *)v12 writeSelectedNamespace:v14];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__TRIClientFactorPackStreamingWriter_copySourceFactorPack_toDestPath_error_modifyFactorLevel___block_invoke;
  v21[3] = &unk_27885E1B8;
  v15 = v11;
  v23 = v15;
  v24 = &v25;
  v16 = v12;
  v22 = v16;
  [v9 enumerateFactorLevelsWithBlock:v21];
  v17 = [(TRIClientFactorPackStreamingWriter *)v16 closeWithError:a5];
  if (*(v26 + 24) == 1)
  {
    if (a5)
    {
      v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:0];
      v19 = *a5;
      *a5 = v18;
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