@interface PLMediaProcessingPredicateBuilder
- (PLMediaProcessingPredicateBuilder)initWithProcessed:(BOOL)a3 exactVersionMatch:(BOOL)a4;
- (id)_predicateForProcessedAndExact:(id)a3 processedAndNotExact:(id)a4 unprocessedAndExact:(id)a5 unprocessedAndNotExact:(id)a6;
- (id)directPredicateWithKeyPath:(id)a3 version:(signed __int16)a4;
- (id)optimizedPredicateWithKeyPath:(id)a3 version:(signed __int16)a4;
- (id)optimizedSearchPredicateWithSearchKeyPath:(id)a3 searchVersion:(signed __int16)a4 stickerConfidenceKeyPath:(id)a5 stickConfidenceVersion:(unsigned __int16)a6;
@end

@implementation PLMediaProcessingPredicateBuilder

- (id)_predicateForProcessedAndExact:(id)a3 processedAndNotExact:(id)a4 unprocessedAndExact:(id)a5 unprocessedAndNotExact:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (self->_exactVersionMatch)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  if (self->_exactVersionMatch)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
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

- (id)optimizedSearchPredicateWithSearchKeyPath:(id)a3 searchVersion:(signed __int16)a4 stickerConfidenceKeyPath:(id)a5 stickConfidenceVersion:(unsigned __int16)a6
{
  v10 = a3;
  v11 = a5;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __141__PLMediaProcessingPredicateBuilder_optimizedSearchPredicateWithSearchKeyPath_searchVersion_stickerConfidenceKeyPath_stickConfidenceVersion___block_invoke;
  v31[3] = &unk_1E756E580;
  v32 = v10;
  v34 = a4;
  v33 = v11;
  v35 = a6;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __141__PLMediaProcessingPredicateBuilder_optimizedSearchPredicateWithSearchKeyPath_searchVersion_stickerConfidenceKeyPath_stickConfidenceVersion___block_invoke_2;
  v26[3] = &unk_1E756E580;
  v27 = v32;
  v29 = a4;
  v28 = v33;
  v30 = a6;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __141__PLMediaProcessingPredicateBuilder_optimizedSearchPredicateWithSearchKeyPath_searchVersion_stickerConfidenceKeyPath_stickConfidenceVersion___block_invoke_3;
  v21[3] = &unk_1E756E580;
  v22 = v27;
  v24 = a4;
  v23 = v28;
  v25 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __141__PLMediaProcessingPredicateBuilder_optimizedSearchPredicateWithSearchKeyPath_searchVersion_stickerConfidenceKeyPath_stickConfidenceVersion___block_invoke_4;
  v16[3] = &unk_1E756E580;
  v19 = a4;
  v17 = v22;
  v18 = v23;
  v20 = a6;
  v12 = v23;
  v13 = v22;
  v14 = [(PLMediaProcessingPredicateBuilder *)self _predicateForProcessedAndExact:v31 processedAndNotExact:v26 unprocessedAndExact:v21 unprocessedAndNotExact:v16];

  return v14;
}

- (id)optimizedPredicateWithKeyPath:(id)a3 version:(signed __int16)a4
{
  v6 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__PLMediaProcessingPredicateBuilder_optimizedPredicateWithKeyPath_version___block_invoke;
  v19[3] = &unk_1E756E558;
  v20 = v6;
  v21 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__PLMediaProcessingPredicateBuilder_optimizedPredicateWithKeyPath_version___block_invoke_2;
  v16[3] = &unk_1E756E558;
  v17 = v20;
  v18 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PLMediaProcessingPredicateBuilder_optimizedPredicateWithKeyPath_version___block_invoke_3;
  v13[3] = &unk_1E756E558;
  v14 = v17;
  v15 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PLMediaProcessingPredicateBuilder_optimizedPredicateWithKeyPath_version___block_invoke_4;
  v10[3] = &unk_1E756E558;
  v11 = v14;
  v12 = a4;
  v7 = v14;
  v8 = [(PLMediaProcessingPredicateBuilder *)self _predicateForProcessedAndExact:v19 processedAndNotExact:v16 unprocessedAndExact:v13 unprocessedAndNotExact:v10];

  return v8;
}

- (id)directPredicateWithKeyPath:(id)a3 version:(signed __int16)a4
{
  v6 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__PLMediaProcessingPredicateBuilder_directPredicateWithKeyPath_version___block_invoke;
  v19[3] = &unk_1E756E558;
  v20 = v6;
  v21 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PLMediaProcessingPredicateBuilder_directPredicateWithKeyPath_version___block_invoke_2;
  v16[3] = &unk_1E756E558;
  v17 = v20;
  v18 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PLMediaProcessingPredicateBuilder_directPredicateWithKeyPath_version___block_invoke_3;
  v13[3] = &unk_1E756E558;
  v14 = v17;
  v15 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PLMediaProcessingPredicateBuilder_directPredicateWithKeyPath_version___block_invoke_4;
  v10[3] = &unk_1E756E558;
  v11 = v14;
  v12 = a4;
  v7 = v14;
  v8 = [(PLMediaProcessingPredicateBuilder *)self _predicateForProcessedAndExact:v19 processedAndNotExact:v16 unprocessedAndExact:v13 unprocessedAndNotExact:v10];

  return v8;
}

- (PLMediaProcessingPredicateBuilder)initWithProcessed:(BOOL)a3 exactVersionMatch:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = PLMediaProcessingPredicateBuilder;
  v6 = [(PLMediaProcessingPredicateBuilder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_processed = a3;
    v6->_exactVersionMatch = a4;
    v8 = v6;
  }

  return v7;
}

@end