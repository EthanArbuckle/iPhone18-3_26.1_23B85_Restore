@interface _SUICEditScriptDataArray
+ (id)EditScriptDataWithArray:(id)a3;
+ (id)EditScriptDataWithString:(id)a3 chunkSize:(int64_t)a4;
- (_SUICEditScriptDataArray)initWithArray:(id)a3;
- (_SUICEditScriptDataArray)initWithString:(id)a3 chunkSize:(int64_t)a4;
- (id)stringValue;
- (int64_t)characterIndexForItem:(int64_t)a3;
- (int64_t)indexOfFirstDifferenceWithOtherData:(id)a3 shouldReverseIterate:(BOOL)a4 fallsOnWordBoundary:(BOOL *)a5;
- (int64_t)lengthOfItem:(int64_t)a3;
@end

@implementation _SUICEditScriptDataArray

- (_SUICEditScriptDataArray)initWithString:(id)a3 chunkSize:(int64_t)a4
{
  v6 = a3;
  v40.receiver = self;
  v40.super_class = _SUICEditScriptDataArray;
  v7 = [(_SUICEditScriptDataArray *)&v40 init];
  v8 = v7;
  if (v7)
  {
    [(_SUICEditScriptDataArray *)v7 setCachedStringValue:v6];
    v9 = [v6 length];
    if (a4 == 1)
    {
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      data = v8->_data;
      v8->_data = v12;

      p_inst_meths = &OBJC_PROTOCOL___SUICProgressIndicatorViewControllerDataSource.inst_meths;
      if (!initWithString_chunkSize__whitespaceOrPunctuationCharacterSet)
      {
        v15 = [MEMORY[0x1E696AD48] whitespaceCharacterSet];
        v16 = initWithString_chunkSize__whitespaceOrPunctuationCharacterSet;
        initWithString_chunkSize__whitespaceOrPunctuationCharacterSet = v15;

        v17 = initWithString_chunkSize__whitespaceOrPunctuationCharacterSet;
        v18 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
        [v17 formUnionWithCharacterSet:v18];
      }

      v37 = 0;
      if (v9)
      {
        v19 = 0;
        v20 = 0;
        v21 = v9 - 1;
        v36 = v6;
        do
        {
          v22 = IsCharacterAtIndexMemberOfCharacterSet(v6, &v37, p_inst_meths[231]);
          v23 = v22;
          v24 = v37;
          if ((v22 & 1) != 0 || v37 == v21)
          {
            v25 = v19 + v20;
            v26 = (v22 << 63 >> 63) - (v19 + v20) + v37;
            if (v26 >= 0)
            {
              v20 = v26 + 1;
              v27 = v8->_data;
              [v6 substringWithRange:{v25, v26 + 1}];
              v28 = v8;
              v29 = v21;
              v30 = v9;
              v32 = v31 = p_inst_meths;
              [(NSArray *)v27 addObject:v32];

              p_inst_meths = v31;
              v9 = v30;
              v21 = v29;
              v8 = v28;
              v6 = v36;
              v19 = v25;
            }

            if (v23)
            {
              v33 = v8->_data;
              v34 = [v6 substringWithRange:{v24, 1}];
              [(NSArray *)v33 addObject:v34];

              v20 = 1;
              v19 = v24;
            }
          }

          v37 = v24 + 1;
        }

        while (v24 + 1 < v9);
      }
    }

    else if (!a4)
    {
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
      v11 = v8->_data;
      v8->_data = v10;

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __53___SUICEditScriptDataArray_initWithString_chunkSize___block_invoke;
      v38[3] = &unk_1E81E7D68;
      v39 = v8;
      [v6 enumerateSubstringsInRange:0 options:v9 usingBlock:{2, v38}];
    }
  }

  return v8;
}

- (_SUICEditScriptDataArray)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SUICEditScriptDataArray;
  v5 = [(_SUICEditScriptDataArray *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

+ (id)EditScriptDataWithString:(id)a3 chunkSize:(int64_t)a4
{
  v5 = a3;
  v6 = [[_SUICEditScriptDataArray alloc] initWithString:v5 chunkSize:a4];

  return v6;
}

+ (id)EditScriptDataWithArray:(id)a3
{
  v3 = a3;
  v4 = [[_SUICEditScriptDataArray alloc] initWithArray:v3];

  return v4;
}

- (id)stringValue
{
  cachedStringValue = self->_cachedStringValue;
  if (!cachedStringValue)
  {
    v4 = [(NSArray *)self->_data componentsJoinedByString:&stru_1F43BC8C0];
    [(_SUICEditScriptDataArray *)self setCachedStringValue:v4];

    cachedStringValue = self->_cachedStringValue;
  }

  return cachedStringValue;
}

- (int64_t)lengthOfItem:(int64_t)a3
{
  v3 = [(NSArray *)self->_data objectAtIndex:a3];
  v4 = [v3 length];

  return v4;
}

- (int64_t)characterIndexForItem:(int64_t)a3
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 += [(_SUICEditScriptDataArray *)self lengthOfItem:v5++];
  }

  while (a3 != v5);
  return v6;
}

- (int64_t)indexOfFirstDifferenceWithOtherData:(id)a3 shouldReverseIterate:(BOOL)a4 fallsOnWordBoundary:(BOOL *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(_SUICEditScriptDataArray *)self length];
  v10 = [v8 length];
  v11 = v10;
  if (v9 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (!v12)
  {
    v13 = 0;
    v14 = 0;
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v29 = v9;
  v30 = a5;
  v13 = 0;
  v14 = 0;
  v28 = v10;
  v15 = v10 - 1;
  v16 = v9 - 1;
  while (1)
  {
    v17 = v6 ? v16 : v14;
    v18 = v6 ? v15 : v14;
    v19 = [(_SUICEditScriptDataArray *)self stringAtIndex:v17, v28, v29, v30];
    v20 = [v8 stringAtIndex:v18];
    if (([v19 isEqualToString:v20] & 1) == 0)
    {
      break;
    }

    ++v14;
    --v15;
    --v16;
    v13 = v19;
    if (v12 == v14)
    {
      v13 = v19;
      v14 = v12;
      goto LABEL_18;
    }
  }

LABEL_18:
  v9 = v29;
  a5 = v30;
  v11 = v28;
  if (v30)
  {
LABEL_19:
    v21 = [v13 length];
    v22 = v21 - 1;
    if (v21 < 1)
    {
      v24 = 1;
    }

    else
    {
      if (v6)
      {
        v22 = 0;
      }

      v31 = v22;
      v23 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v24 = IsCharacterAtIndexMemberOfCharacterSet(v13, &v31, v23);
    }

    *a5 = v24;
  }

LABEL_25:
  if (v14 == v12 && v9 == v11)
  {
    v26 = -1;
  }

  else
  {
    v26 = v14;
  }

  return v26;
}

@end