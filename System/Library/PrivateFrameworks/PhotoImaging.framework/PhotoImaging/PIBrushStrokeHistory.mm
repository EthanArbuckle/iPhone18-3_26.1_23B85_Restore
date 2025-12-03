@interface PIBrushStrokeHistory
- (PIBrushStrokeHistory)initWithData:(id)data error:(id *)error;
- (PIBrushStrokeHistory)initWithEntries:(id)entries;
- (id)copyWithZone:(_NSZone *)zone;
- (id)exportDataWithError:(id *)error;
- (unint64_t)entryCount;
- (void)_playbackHistoryIndex:(unint64_t)index toReceiver:(id)receiver options:(unint64_t)options pauseInterval:(double)interval completion:(id)completion;
- (void)addEntry:(id)entry;
- (void)playbackHistoryToReceiver:(id)receiver options:(unint64_t)options pauseInterval:(double)interval completion:(id)completion;
@end

@implementation PIBrushStrokeHistory

- (id)exportDataWithError:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v21 = NUAssertLogger_18063();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_18063();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(*v23);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v29;
        v44 = 2114;
        v45 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v28;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  entries = [(PIBrushStrokeHistory *)self entries];
  v7 = [entries countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(entries);
        }

        dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation];
      }

      v8 = [entries countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v39 = @"entries";
  v40 = array;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v34 = 0;
  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:200 options:0 error:&v34];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = MEMORY[0x1E69B3A48];
    v17 = v34;
    v18 = [v16 errorWithCode:1 reason:@"Failed to serialize cleanup interaction history" object:self underlyingError:v17];
    v19 = v18;

    *error = v18;
  }

  return v14;
}

- (void)playbackHistoryToReceiver:(id)receiver options:(unint64_t)options pauseInterval:(double)interval completion:(id)completion
{
  receiverCopy = receiver;
  completionCopy = completion;
  entries = [(PIBrushStrokeHistory *)self entries];
  v12 = [entries count];

  if (v12)
  {
    [(PIBrushStrokeHistory *)self _playbackHistoryIndex:0 toReceiver:receiverCopy options:options pauseInterval:completionCopy completion:interval];
  }
}

- (void)_playbackHistoryIndex:(unint64_t)index toReceiver:(id)receiver options:(unint64_t)options pauseInterval:(double)interval completion:(id)completion
{
  receiverCopy = receiver;
  completionCopy = completion;
  entries = [(PIBrushStrokeHistory *)self entries];
  v15 = [entries objectAtIndexedSubscript:index];

  if (v15)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke;
    v43[3] = &unk_1E82AB750;
    v43[4] = self;
    indexCopy = index;
    v45 = completionCopy;
    v16 = receiverCopy;
    v44 = v16;
    optionsCopy = options;
    intervalCopy = interval;
    v17 = MEMORY[0x1CCA61740](v43);
    if ([v15 entryType])
    {
      if ([v15 entryType] != 1)
      {
LABEL_17:

        goto LABEL_18;
      }

      [v15 objectRemovalPoint];
      v19 = v18;
      v21 = v20;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_6;
      v36[3] = &unk_1E82AB778;
      intervalCopy2 = interval;
      v37 = v17;
      [v16 addObjectRemovalAtImageSpacePoint:v36 completion:{v19, v21}];
      v22 = v37;
    }

    else
    {
      brushStroke = [v15 brushStroke];
      [brushStroke pointAtIndex:0];
      v25 = v24;
      v27 = v26;

      [v15 subjectHitTestRadius];
      if (v28 == 0.0)
      {
        v29 = 6.0;
      }

      else
      {
        v29 = v28;
      }

      v22 = [v16 brushStrokeExclusionMaskForStrokeStartingAtImageSpacePoint:v25 withRadius:{v27, v29}];
      skipSegmentationIntersections = [v15 skipSegmentationIntersections];
      brushStroke2 = [v15 brushStroke];
      if (skipSegmentationIntersections & 1) != 0 || (options)
      {
        closedShape = [v15 closedShape];
        if (options)
        {
          v34 = 0;
        }

        else
        {
          v34 = closedShape;
        }

        needsFacePixellation = [v15 needsFacePixellation];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_2;
        v41[3] = &unk_1E82AB778;
        *&v42[1] = interval;
        v32 = v42;
        v42[0] = v17;
        [v16 addImageSpaceInpaintingStroke:brushStroke2 exclusionMask:v22 closeAndFillStroke:v34 needsFacePixellation:needsFacePixellation recordStroke:1 completion:v41];
      }

      else
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_4;
        v39[3] = &unk_1E82AB778;
        *&v40[1] = interval;
        v32 = v40;
        v40[0] = v17;
        [v16 addObjectRemovalUsingImageSpaceStroke:brushStroke2 exclusionMask:v22 completion:v39];
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entries];
  v3 = [v2 count];
  v4 = *(a1 + 56) + 1;

  if (v3 == v4)
  {
    result = *(a1 + 48);
    if (result)
    {
      v6 = *(result + 16);

      return v6();
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56) + 1;

    return [v7 _playbackHistoryIndex:v12 toReceiver:v8 options:v9 pauseInterval:v11 completion:v10];
  }

  return result;
}

void __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_3;
  block[3] = &unk_1E82AC0C8;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_4(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_5;
  block[3] = &unk_1E82AC0C8;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_6(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PIBrushStrokeHistory__playbackHistoryIndex_toReceiver_options_pauseInterval_completion___block_invoke_7;
  block[3] = &unk_1E82AC0C8;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  entries = [(PIBrushStrokeHistory *)self entries];
  [entries addObject:entryCopy];
}

- (unint64_t)entryCount
{
  entries = [(PIBrushStrokeHistory *)self entries];
  v3 = [entries count];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  entries = self->_entries;

  return [v4 initWithEntries:entries];
}

- (PIBrushStrokeHistory)initWithData:(id)data error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    v20 = NUAssertLogger_18063();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_18063();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v33 = dispatch_get_specific(*callStackSymbols);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols = [v34 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v33;
        v51 = 2114;
        v52 = v36;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = _NUAssertFailHandler();
    goto LABEL_32;
  }

  if (!error)
  {
    v27 = NUAssertLogger_18063();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v29 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_18063();
    v30 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!v29)
    {
      if (v30)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_34;
    }

LABEL_32:
    if (v30)
    {
      v37 = dispatch_get_specific(*callStackSymbols);
      v38 = MEMORY[0x1E696AF00];
      v39 = v37;
      callStackSymbols4 = [v38 callStackSymbols];
      v41 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = v37;
      v51 = 2114;
      v52 = v41;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_34:

    _NUAssertFailHandler();
  }

  v7 = dataCopy;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v7 length])
  {
    v47 = 0;
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v47];
    v10 = v47;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"entries"];
      if (v11)
      {
        v12 = v11;
        v42 = v10;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v13 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v44;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v44 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [[PIBrushStrokeHistoryEntry alloc] initWithDictionary:*(*(&v43 + 1) + 8 * i)];
              [v8 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v14);
        }

        goto LABEL_14;
      }

      *error = [MEMORY[0x1E69B3A48] missingError:@"Missing brush stroke entries" object:v9];
    }

    else
    {
      *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize brush stroke history data" object:v7 underlyingError:v10];
    }

    v18 = 0;
    goto LABEL_18;
  }

LABEL_14:
  v18 = [(PIBrushStrokeHistory *)self initWithEntries:v8];
LABEL_18:

  return v18;
}

- (PIBrushStrokeHistory)initWithEntries:(id)entries
{
  v8.receiver = self;
  v8.super_class = PIBrushStrokeHistory;
  entriesCopy = entries;
  v4 = [(PIBrushStrokeHistory *)&v8 init];
  v5 = [entriesCopy mutableCopy];

  entries = v4->_entries;
  v4->_entries = v5;

  return v4;
}

@end