@interface PLMediaProcessingPredicateBuilder
- (PLMediaProcessingPredicateBuilder)initWithProcessed:(BOOL)processed exactVersionMatch:(BOOL)match;
- (id)_predicateForProcessedAndExact:(id)exact processedAndNotExact:(id)notExact unprocessedAndExact:(id)andExact unprocessedAndNotExact:(id)andNotExact;
- (id)directPredicateWithKeyPath:(id)path version:(signed __int16)version;
- (id)optimizedPredicateWithKeyPath:(id)path version:(signed __int16)version;
- (id)optimizedSearchPredicateWithSearchKeyPath:(id)path searchVersion:(signed __int16)version stickerConfidenceKeyPath:(id)keyPath stickConfidenceVersion:(unsigned __int16)confidenceVersion;
@end

@implementation PLMediaProcessingPredicateBuilder

- (id)_predicateForProcessedAndExact:(id)exact processedAndNotExact:(id)notExact unprocessedAndExact:(id)andExact unprocessedAndNotExact:(id)andNotExact
{
  exactCopy = exact;
  notExactCopy = notExact;
  andExactCopy = andExact;
  andNotExactCopy = andNotExact;
  v14 = andNotExactCopy;
  if (self->_exactVersionMatch)
  {
    v15 = exactCopy;
  }

  else
  {
    v15 = notExactCopy;
  }

  if (self->_exactVersionMatch)
  {
    v16 = andExactCopy;
  }

  else
  {
    v16 = andNotExactCopy;
  }

  if (self->_processed)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17[2]();

  return v18;
}

- (id)optimizedSearchPredicateWithSearchKeyPath:(id)path searchVersion:(signed __int16)version stickerConfidenceKeyPath:(id)keyPath stickConfidenceVersion:(unsigned __int16)confidenceVersion
{
  pathCopy = path;
  keyPathCopy = keyPath;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __141__PLMediaProcessingPredicateBuilder_optimizedSearchPredicateWithSearchKeyPath_searchVersion_stickerConfidenceKeyPath_stickConfidenceVersion___block_invoke;
  v31[3] = &unk_1E756E580;
  v32 = pathCopy;
  versionCopy = version;
  v33 = keyPathCopy;
  confidenceVersionCopy = confidenceVersion;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __141__PLMediaProcessingPredicateBuilder_optimizedSearchPredicateWithSearchKeyPath_searchVersion_stickerConfidenceKeyPath_stickConfidenceVersion___block_invoke_2;
  v26[3] = &unk_1E756E580;
  v27 = v32;
  versionCopy2 = version;
  v28 = v33;
  confidenceVersionCopy2 = confidenceVersion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __141__PLMediaProcessingPredicateBuilder_optimizedSearchPredicateWithSearchKeyPath_searchVersion_stickerConfidenceKeyPath_stickConfidenceVersion___block_invoke_3;
  v21[3] = &unk_1E756E580;
  v22 = v27;
  versionCopy3 = version;
  v23 = v28;
  confidenceVersionCopy3 = confidenceVersion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __141__PLMediaProcessingPredicateBuilder_optimizedSearchPredicateWithSearchKeyPath_searchVersion_stickerConfidenceKeyPath_stickConfidenceVersion___block_invoke_4;
  v16[3] = &unk_1E756E580;
  versionCopy4 = version;
  v17 = v22;
  v18 = v23;
  confidenceVersionCopy4 = confidenceVersion;
  v12 = v23;
  v13 = v22;
  v14 = [(PLMediaProcessingPredicateBuilder *)self _predicateForProcessedAndExact:v31 processedAndNotExact:v26 unprocessedAndExact:v21 unprocessedAndNotExact:v16];

  return v14;
}

- (id)optimizedPredicateWithKeyPath:(id)path version:(signed __int16)version
{
  pathCopy = path;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__PLMediaProcessingPredicateBuilder_optimizedPredicateWithKeyPath_version___block_invoke;
  v19[3] = &unk_1E756E558;
  v20 = pathCopy;
  versionCopy = version;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__PLMediaProcessingPredicateBuilder_optimizedPredicateWithKeyPath_version___block_invoke_2;
  v16[3] = &unk_1E756E558;
  v17 = v20;
  versionCopy2 = version;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PLMediaProcessingPredicateBuilder_optimizedPredicateWithKeyPath_version___block_invoke_3;
  v13[3] = &unk_1E756E558;
  v14 = v17;
  versionCopy3 = version;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PLMediaProcessingPredicateBuilder_optimizedPredicateWithKeyPath_version___block_invoke_4;
  v10[3] = &unk_1E756E558;
  v11 = v14;
  versionCopy4 = version;
  v7 = v14;
  v8 = [(PLMediaProcessingPredicateBuilder *)self _predicateForProcessedAndExact:v19 processedAndNotExact:v16 unprocessedAndExact:v13 unprocessedAndNotExact:v10];

  return v8;
}

- (id)directPredicateWithKeyPath:(id)path version:(signed __int16)version
{
  pathCopy = path;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__PLMediaProcessingPredicateBuilder_directPredicateWithKeyPath_version___block_invoke;
  v19[3] = &unk_1E756E558;
  v20 = pathCopy;
  versionCopy = version;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PLMediaProcessingPredicateBuilder_directPredicateWithKeyPath_version___block_invoke_2;
  v16[3] = &unk_1E756E558;
  v17 = v20;
  versionCopy2 = version;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PLMediaProcessingPredicateBuilder_directPredicateWithKeyPath_version___block_invoke_3;
  v13[3] = &unk_1E756E558;
  v14 = v17;
  versionCopy3 = version;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PLMediaProcessingPredicateBuilder_directPredicateWithKeyPath_version___block_invoke_4;
  v10[3] = &unk_1E756E558;
  v11 = v14;
  versionCopy4 = version;
  v7 = v14;
  v8 = [(PLMediaProcessingPredicateBuilder *)self _predicateForProcessedAndExact:v19 processedAndNotExact:v16 unprocessedAndExact:v13 unprocessedAndNotExact:v10];

  return v8;
}

- (PLMediaProcessingPredicateBuilder)initWithProcessed:(BOOL)processed exactVersionMatch:(BOOL)match
{
  v10.receiver = self;
  v10.super_class = PLMediaProcessingPredicateBuilder;
  v6 = [(PLMediaProcessingPredicateBuilder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_processed = processed;
    v6->_exactVersionMatch = match;
    v8 = v6;
  }

  return v7;
}

@end