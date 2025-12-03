@interface WBSOnDeviceSearchSuggestionsModel
- (BOOL)_readNextChild:(_WBSSearchSuggestionCandidate *)child;
- (WBSOnDeviceSearchSuggestionsModel)initWithModelFileAtPath:(id)path;
- (id)_readNextNumberOfBytesAsString:(unsigned int)string success:(BOOL *)success;
- (unsigned)_readMaxScoreAsRootAtAddress:(unsigned int)address withLeafCandidate:(_WBSSearchSuggestionCandidate *)candidate success:(BOOL *)success;
- (unsigned)_readNextNumberOfBytesAsInt:(unsigned int)int success:(BOOL *)success;
- (vector<_WBSSearchSuggestionCandidate,)readTreeNodeWithCandidate:()vector<_WBSSearchSuggestionCandidate;
@end

@implementation WBSOnDeviceSearchSuggestionsModel

- (WBSOnDeviceSearchSuggestionsModel)initWithModelFileAtPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = WBSOnDeviceSearchSuggestionsModel;
  v5 = [(WBSOnDeviceSearchSuggestionsModel *)&v23 init];
  if (!v5)
  {
LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v6 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:pathCopy];
  modelFileHandle = v5->_modelFileHandle;
  v5->_modelFileHandle = v6;

  v8 = v5->_modelFileHandle;
  if (!v8)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [WBSOnDeviceSearchSuggestionsModel initWithModelFileAtPath:];
    }

    goto LABEL_15;
  }

  v22 = 0;
  v9 = [(NSFileHandle *)v8 readDataUpToLength:2 error:&v22];
  v10 = v22;
  if (v10 || [v9 length] != 2)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingError = [v10 safari_privacyPreservingError];
      [(WBSOnDeviceSearchSuggestionsModel *)pathCopy initWithModelFileAtPath:safari_privacyPreservingError, buf, v16];
    }
  }

  else
  {
    v11 = v9;
    bytes = [v9 bytes];
    v13 = *bytes;
    v5->_addressSize = v13;
    v14 = bytes[1];
    v5->_scoreSize = v14;
    if (v13 - 5 > 0xFFFFFFFB)
    {
      if (v14 - 5 > 0xFFFFFFFB)
      {
        v18 = v5;
        goto LABEL_12;
      }

      v21 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [WBSOnDeviceSearchSuggestionsModel initWithModelFileAtPath:];
      }
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [WBSOnDeviceSearchSuggestionsModel initWithModelFileAtPath:];
      }
    }
  }

  v18 = 0;
LABEL_12:

LABEL_16:
  return v18;
}

- (vector<_WBSSearchSuggestionCandidate,)readTreeNodeWithCandidate:()vector<_WBSSearchSuggestionCandidate
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (!a4->var2)
  {
    selfCopy = self;
    v15 = 0;
    v13 = 0;
    v12 = 0;
    v14 = &stru_1F3A5E418;
    v7 = unk_1F3AEA4A0(self, "_readMaxScoreAsRootAtAddress:withLeafCandidate:success:", a4->var1, &v12, &v15);
    if (v15)
    {
      v8 = v7;
      if (v13 == 1)
      {
        objc_storeStrong(&v14, a4->var3);
        std::vector<_WBSSearchSuggestionCandidate>::push_back[abi:sn200100](retstr, &v12);
      }

      while (1)
      {
        v10 = 0;
        v9 = 0;
        v11 = &stru_1F3A5E418;
        v11 = a4->var3;

        LODWORD(v9) = v8;
        if ((unk_1F3AEA4A8(selfCopy, "_readNextChild:", &v9) & 1) == 0)
        {
          break;
        }

        std::vector<_WBSSearchSuggestionCandidate>::push_back[abi:sn200100](retstr, &v9);
      }
    }
  }

  return self;
}

- (BOOL)_readNextChild:(_WBSSearchSuggestionCandidate *)child
{
  v35 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v5 = [(WBSOnDeviceSearchSuggestionsModel *)self _readNextNumberOfBytesAsInt:1 success:&v34];
  if (v34 == 1 && v5 != 0)
  {
    v8 = [(WBSOnDeviceSearchSuggestionsModel *)self _readNextNumberOfBytesAsString:v5 success:&v34];
    v9 = v8;
    if (v34 != 1)
    {
      v7 = 0;
LABEL_31:

      return v7;
    }

    v10 = [child->var3 stringByAppendingString:v8];
    var3 = child->var3;
    child->var3 = v10;

    modelFileHandle = self->_modelFileHandle;
    v33 = 0;
    v13 = [(NSFileHandle *)modelFileHandle readDataUpToLength:1 error:&v33];
    v14 = v33;
    if ([v13 length] != 1 || v14)
    {
      v23 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [v14 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSOnDeviceSearchSuggestionsModel _readNextChild:];
      }
    }

    else
    {
      v15 = v13;
      v16 = *[v13 bytes];
      v17 = 20;
      if ((v16 & 1) == 0)
      {
        v17 = 16;
      }

      v18 = *(&self->super.isa + v17);
      if ((v18 - 2) < 4)
      {
        v19 = self->_modelFileHandle;
        v32 = 0;
        v20 = [(NSFileHandle *)v19 readDataUpToLength:(v18 - 1) error:&v32];
        v14 = v32;
        if ([v20 length] == v18 - 1 && v14 == 0)
        {
          v26 = v20;
          bytes = [v20 bytes];
          v28 = malloc_type_malloc(v18, 0x100004077774924uLL);
          v29 = v28;
          if (v28)
          {
            *v28 = v16;
            memcpy(v28 + 1, bytes, (v18 - 1));
            v30 = byteArrayToInteger(v29, v18) >> 1;
            free(v29);
            if (v16)
            {
              child->var1 = v30;
              child->var2 = 0;
              v7 = 1;
            }

            else
            {
              child->var0 = v30;
              v7 = 1;
              child->var2 = 1;
            }

            goto LABEL_21;
          }

          v31 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [WBSOnDeviceSearchSuggestionsModel _readNextChild:];
          }
        }

        else
        {
          v22 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [v14 safari_privacyPreservingDescription];
            objc_claimAutoreleasedReturnValue();
            [WBSOnDeviceSearchSuggestionsModel _readNextChild:];
          }
        }

        v7 = 0;
LABEL_21:

LABEL_30:
        goto LABEL_31;
      }

      v24 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [WBSOnDeviceSearchSuggestionsModel _readNextChild:];
      }

      v14 = 0;
    }

    v7 = 0;
    goto LABEL_30;
  }

  return 0;
}

- (unsigned)_readMaxScoreAsRootAtAddress:(unsigned int)address withLeafCandidate:(_WBSSearchSuggestionCandidate *)candidate success:(BOOL *)success
{
  v20 = *MEMORY[0x1E69E9840];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__WBSOnDeviceSearchSuggestionsModel__readMaxScoreAsRootAtAddress_withLeafCandidate_success___block_invoke;
  v18[3] = &__block_descriptor_40_e8_v12__0B8l;
  v18[4] = success;
  v8 = MEMORY[0x1BFB13CE0](v18, a2);
  modelFileHandle = self->_modelFileHandle;
  v17 = 0;
  [(NSFileHandle *)modelFileHandle seekToOffset:address error:&v17];
  v10 = v17;
  if (v10)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSOnDeviceSearchSuggestionsModel _readMaxScoreAsRootAtAddress:withLeafCandidate:success:];
    }

    v8[2](v8, 0);
    goto LABEL_11;
  }

  v19[0] = 0;
  v12 = [(WBSOnDeviceSearchSuggestionsModel *)self _readNextNumberOfBytesAsInt:self->_scoreSize success:v19];
  if ((v19[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = v12;
  if (v12)
  {
    v14 = [(WBSOnDeviceSearchSuggestionsModel *)self _readNextNumberOfBytesAsInt:self->_scoreSize success:v19];
    if (v19[0])
    {
      candidate->var2 = 1;
      candidate->var0 = v14;
      goto LABEL_9;
    }

LABEL_10:
    v8[2](v8, 0);
LABEL_11:
    v15 = -1;
    goto LABEL_12;
  }

LABEL_9:
  v8[2](v8, 1);
  v15 = v13 >> 1;
LABEL_12:

  return v15;
}

uint64_t __92__WBSOnDeviceSearchSuggestionsModel__readMaxScoreAsRootAtAddress_withLeafCandidate_success___block_invoke(uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *v2 = a2;
  }

  return result;
}

- (unsigned)_readNextNumberOfBytesAsInt:(unsigned int)int success:(BOOL *)success
{
  v16[8] = *MEMORY[0x1E69E9840];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__WBSOnDeviceSearchSuggestionsModel__readNextNumberOfBytesAsInt_success___block_invoke;
  v16[3] = &__block_descriptor_40_e8_v12__0B8l;
  v16[4] = success;
  v6 = MEMORY[0x1BFB13CE0](v16, a2);
  v7 = v6;
  if (int)
  {
    modelFileHandle = self->_modelFileHandle;
    v15 = 0;
    v9 = [(NSFileHandle *)modelFileHandle readDataUpToLength:int error:&v15];
    v10 = v15;
    if ([v9 length] == int && v10 == 0)
    {
      v7[2](v7, 1);
      v13 = v9;
      int = byteArrayToInteger([v9 bytes], int);
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [v10 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSOnDeviceSearchSuggestionsModel _readNextNumberOfBytesAsInt:success:];
      }

      v7[2](v7, 0);
      int = 0;
    }
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  return int;
}

uint64_t __73__WBSOnDeviceSearchSuggestionsModel__readNextNumberOfBytesAsInt_success___block_invoke(uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *v2 = a2;
  }

  return result;
}

- (id)_readNextNumberOfBytesAsString:(unsigned int)string success:(BOOL *)success
{
  v19[8] = *MEMORY[0x1E69E9840];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__WBSOnDeviceSearchSuggestionsModel__readNextNumberOfBytesAsString_success___block_invoke;
  v19[3] = &__block_descriptor_40_e8_v12__0B8l;
  v19[4] = success;
  v6 = MEMORY[0x1BFB13CE0](v19, a2);
  v7 = v6;
  if (string)
  {
    modelFileHandle = self->_modelFileHandle;
    stringCopy = string;
    v18 = 0;
    v10 = [(NSFileHandle *)modelFileHandle readDataUpToLength:string error:&v18];
    v11 = v18;
    if ([v10 length] == stringCopy && v11 == 0)
    {
      v7[2](v7, 1);
      v15 = v10;
      bytes = [v10 bytes];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:bytes length:stringCopy encoding:4];
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [v11 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSOnDeviceSearchSuggestionsModel _readNextNumberOfBytesAsString:success:];
      }

      v7[2](v7, 0);
      v14 = 0;
    }
  }

  else
  {
    (*(v6 + 16))(v6, 0);
    v14 = 0;
  }

  return v14;
}

uint64_t __76__WBSOnDeviceSearchSuggestionsModel__readNextNumberOfBytesAsString_success___block_invoke(uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *v2 = a2;
  }

  return result;
}

- (void)initWithModelFileAtPath:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Unable to read model header values for file at path: %{public}@ with error: %{public}@", buf, 0x16u);
}

- (void)_readNextChild:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to read child node: %{public}@", v5);
}

- (void)_readMaxScoreAsRootAtAddress:withLeafCandidate:success:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to seek to address in file: %{public}@", v5);
}

- (void)_readNextNumberOfBytesAsInt:success:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to read in bytes as integer %{public}@", v5);
}

- (void)_readNextNumberOfBytesAsString:success:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to bytes as strings: %{public}@", v5);
}

@end