@interface PISegmentationGatingRanges
+ (id)loadFromURL:(id)l;
- (PISegmentationGatingRanges)initWithRanges:(id)ranges;
@end

@implementation PISegmentationGatingRanges

- (PISegmentationGatingRanges)initWithRanges:(id)ranges
{
  v8.receiver = self;
  v8.super_class = PISegmentationGatingRanges;
  rangesCopy = ranges;
  v4 = [(PISegmentationGatingRanges *)&v8 init];
  v5 = [rangesCopy copy];

  ranges = v4->_ranges;
  v4->_ranges = v5;

  return v4;
}

+ (id)loadFromURL:(id)l
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v19 = 0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v19];
  v5 = v19;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __42__PISegmentationGatingRanges_loadFromURL___block_invoke;
    v17 = &unk_1E82AB700;
    v18 = v6;
    v7 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:&v14];
    v8 = [PISegmentationGatingRanges alloc];
    v9 = [(PISegmentationGatingRanges *)v8 initWithRanges:v7, v14, v15, v16, v17];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_100);
    }

    v10 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      path = [lCopy path];
      *buf = 138543618;
      v21 = path;
      v22 = 2114;
      v23 = v5;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Unable to load scoring ranges dictionary from %{public}@, error: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

void __42__PISegmentationGatingRanges_loadFromURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = a2;
  v5 = a3;
  if (([v43 isEqualToString:*MEMORY[0x1E69C0D60]] & 1) == 0)
  {
    v6 = [v5 objectForKey:@"min"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &unk_1F471F7B0;
    }

    v9 = v8;

    v10 = [v5 objectForKey:@"max"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_1F471F7C0;
    }

    v13 = v12;

    v14 = [v5 objectForKey:@"manualMin"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v9;
    }

    v17 = v16;

    v18 = [v5 objectForKey:@"manualMax"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v20;

    v22 = [v5 objectForKey:@"depthMin"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &unk_1F471F7B0;
    }

    v25 = v24;

    v26 = [v5 objectForKey:@"depthMax"];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &unk_1F471F7C0;
    }

    v29 = v28;

    [v9 doubleValue];
    v31 = v30;
    [v13 doubleValue];
    v33 = v32;
    [v17 doubleValue];
    v35 = v34;
    [v21 doubleValue];
    v37 = v36;
    [v25 doubleValue];
    v39 = v38;

    [v29 doubleValue];
    v41 = v40;

    v42 = [[PISegmentationGatingRange alloc] initWithMin:v31 max:v33 manualMin:v35 manualMax:v37 depthMin:v39 depthMax:v41];
    [*(a1 + 32) setObject:v42 forKeyedSubscript:v43];
  }
}

@end