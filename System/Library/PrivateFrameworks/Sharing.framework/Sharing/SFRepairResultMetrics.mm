@interface SFRepairResultMetrics
- (NSDictionary)dict;
- (int64_t)resultType;
@end

@implementation SFRepairResultMetrics

- (NSDictionary)dict
{
  v50 = *MEMORY[0x1E69E9840];
  v43 = 0;
  problemFlags = self->_problemFlags;
  NSAppendPrintF();
  v3 = 0;
  v42 = 0;
  peerProblemFlags = self->_peerProblemFlags;
  selfCopy = self;
  NSAppendPrintF();
  v5 = 0;
  v47[0] = @"resultType";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFRepairResultMetrics resultType](self, "resultType", peerProblemFlags, &unk_1A998FDA0)}];
  v48[0] = v6;
  v47[1] = @"success";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_error == 0];
  v48[1] = v7;
  v47[2] = @"forceWiFi";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_forceWiFi];
  v48[2] = v8;
  v47[3] = @"hasView";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasView];
  v48[3] = v9;
  v47[4] = @"totalMs";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_totalMs];
  v48[4] = v10;
  v47[5] = @"triggerMs";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_triggerMs];
  v12 = v11;
  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = &stru_1F1D30528;
  }

  v48[5] = v11;
  v48[6] = v13;
  v47[6] = @"problemFlags";
  v47[7] = @"triggerFlags";
  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = &stru_1F1D30528;
  }

  v48[7] = v14;
  v47[8] = @"peerModel";
  v47[9] = @"peerBuild";
  v49 = vbslq_s8(vceqzq_s64(*&self->_peerModel), vdupq_n_s64(&stru_1F1D30528), *&self->_peerModel);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:10];
  v37 = [v15 mutableCopy];

  if (selfCopy->_error)
  {
    v16 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = selfCopy;
    underlyingErrors = [(NSError *)selfCopy->_error underlyingErrors];
    v18 = [underlyingErrors countByEnumeratingWithState:&v38 objects:v46 count:16];
    v35 = v5;
    v36 = v3;
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      do
      {
        v21 = 0;
        v22 = v16;
        do
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(underlyingErrors);
          }

          v23 = *(*(&v38 + 1) + 8 * v21);
          if ([v22 length])
          {
            [v22 appendString:{@", "}];
          }

          code = [v23 code];
          [v23 domain];
          v33 = v32 = code;
          NSAppendPrintF();
          v16 = v22;

          ++v21;
          v22 = v16;
        }

        while (v19 != v21);
        v19 = [underlyingErrors countByEnumeratingWithState:&v38 objects:v46 count:{16, code, v33}];
      }

      while (v19);
    }

    v44[0] = @"errCode";
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSError code](v34->_error, "code")}];
    v45[0] = v25;
    v44[1] = @"errDomain";
    domain = [(NSError *)v34->_error domain];
    v44[2] = @"underErr";
    v45[1] = domain;
    v45[2] = v16;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
    [v37 addEntriesFromDictionary:v27];

    v5 = v35;
    v3 = v36;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v37;
}

- (int64_t)resultType
{
  if (!self->_error)
  {
    return 1;
  }

  if (self->_isPreflightError)
  {
    return 2;
  }

  return 0;
}

@end