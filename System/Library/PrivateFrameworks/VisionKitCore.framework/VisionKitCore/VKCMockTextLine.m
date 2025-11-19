@interface VKCMockTextLine
- (VKCMockTextLine)initWithWordsArray:(id)a3 startingIndex:(unint64_t)a4;
- (_NSRange)range;
- (void)loadWordsArrayFromWords:(id)a3 startingIndex:(unint64_t)a4;
@end

@implementation VKCMockTextLine

- (VKCMockTextLine)initWithWordsArray:(id)a3 startingIndex:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = VKCMockTextLine;
  v7 = [(VKCMockTextLine *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(VKCMockTextLine *)v7 loadWordsArrayFromWords:v6 startingIndex:a4];
  }

  return v8;
}

- (void)loadWordsArrayFromWords:(id)a3 startingIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __57__VKCMockTextLine_loadWordsArrayFromWords_startingIndex___block_invoke;
  v34[3] = &unk_1E7BE6898;
  v8 = v7;
  v35 = v8;
  [v6 enumerateObjectsUsingBlock:v34];
  v9 = [v8 copy];
  [(VKCMockTextLine *)self setWords:v9];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v31 = &unk_1B44420A2;
  v32 = a4;
  v33 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__23;
  v26 = __Block_byref_object_dispose__23;
  v27 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__VKCMockTextLine_loadWordsArrayFromWords_startingIndex___block_invoke_151;
  v17[3] = &unk_1E7BE7848;
  v11 = v10;
  v18 = v11;
  v20 = &v28;
  v21 = &v22;
  v12 = v8;
  v19 = v12;
  [v12 enumerateObjectsUsingBlock:v17];
  [(VKCMockTextLine *)self setRange:v29[4], v29[5]];
  [(VKCMockTextLine *)self setQuad:v23[5]];
  [(VKCMockTextLine *)self setText:v11];
  v13 = [(VKCMockTextLine *)self text];
  v14 = [v13 length];
  [(VKCMockTextLine *)self range];
  v16 = v15;

  if (v14 != v16)
  {
    [VKAssert handleFailedAssertWithCondition:"self.text.length == self.range.length" functionName:"[VKCMockTextLine loadWordsArrayFromWords:startingIndex:]" simulateCrash:0 showAlert:0 format:@"Mock Text is unequal to range length"];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void __57__VKCMockTextLine_loadWordsArrayFromWords_startingIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VKCMockTextWord alloc] initWithWordsDictionary:v3];

  [*(a1 + 32) addObject:v4];
}

void __57__VKCMockTextLine_loadWordsArrayFromWords_startingIndex___block_invoke_151(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v13 = [v5 text];
  [*(a1 + 32) appendString:v13];
  [v5 setRange:{*(*(*(a1 + 48) + 8) + 40) + *(*(*(a1 + 48) + 8) + 32), objc_msgSend(v13, "length")}];
  *(*(*(a1 + 48) + 8) + 40) += [v13 length];
  v6 = *(*(*(a1 + 56) + 8) + 40);
  v7 = [v5 quad];

  if (v6)
  {
    v8 = [v6 quadFromUnionWithQuad:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v7;
    v7 = v12;
  }

  if ([*(a1 + 40) count] - 1 > a3)
  {
    [*(a1 + 32) appendString:@" "];
    ++*(*(*(a1 + 48) + 8) + 40);
  }
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end