@interface _SUICEditScriptDataArray
+ (id)EditScriptDataWithArray:(id)array;
+ (id)EditScriptDataWithString:(id)string chunkSize:(int64_t)size;
- (_SUICEditScriptDataArray)initWithArray:(id)array;
- (_SUICEditScriptDataArray)initWithString:(id)string chunkSize:(int64_t)size;
- (id)stringValue;
- (int64_t)characterIndexForItem:(int64_t)item;
- (int64_t)indexOfFirstDifferenceWithOtherData:(id)data shouldReverseIterate:(BOOL)iterate fallsOnWordBoundary:(BOOL *)boundary;
- (int64_t)lengthOfItem:(int64_t)item;
@end

@implementation _SUICEditScriptDataArray

- (_SUICEditScriptDataArray)initWithString:(id)string chunkSize:(int64_t)size
{
  stringCopy = string;
  v40.receiver = self;
  v40.super_class = _SUICEditScriptDataArray;
  v7 = [(_SUICEditScriptDataArray *)&v40 init];
  v8 = v7;
  if (v7)
  {
    [(_SUICEditScriptDataArray *)v7 setCachedStringValue:stringCopy];
    v9 = [stringCopy length];
    if (size == 1)
    {
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      data = v8->_data;
      v8->_data = v12;

      p_inst_meths = &OBJC_PROTOCOL___SUICProgressIndicatorViewControllerDataSource.inst_meths;
      if (!initWithString_chunkSize__whitespaceOrPunctuationCharacterSet)
      {
        whitespaceCharacterSet = [MEMORY[0x1E696AD48] whitespaceCharacterSet];
        v16 = initWithString_chunkSize__whitespaceOrPunctuationCharacterSet;
        initWithString_chunkSize__whitespaceOrPunctuationCharacterSet = whitespaceCharacterSet;

        v17 = initWithString_chunkSize__whitespaceOrPunctuationCharacterSet;
        punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
        [v17 formUnionWithCharacterSet:punctuationCharacterSet];
      }

      v37 = 0;
      if (v9)
      {
        v19 = 0;
        v20 = 0;
        v21 = v9 - 1;
        v36 = stringCopy;
        do
        {
          v22 = IsCharacterAtIndexMemberOfCharacterSet(stringCopy, &v37, p_inst_meths[231]);
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
              [stringCopy substringWithRange:{v25, v26 + 1}];
              v28 = v8;
              v29 = v21;
              v30 = v9;
              v32 = v31 = p_inst_meths;
              [(NSArray *)v27 addObject:v32];

              p_inst_meths = v31;
              v9 = v30;
              v21 = v29;
              v8 = v28;
              stringCopy = v36;
              v19 = v25;
            }

            if (v23)
            {
              v33 = v8->_data;
              v34 = [stringCopy substringWithRange:{v24, 1}];
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

    else if (!size)
    {
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
      v11 = v8->_data;
      v8->_data = v10;

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __53___SUICEditScriptDataArray_initWithString_chunkSize___block_invoke;
      v38[3] = &unk_1E81E7D68;
      v39 = v8;
      [stringCopy enumerateSubstringsInRange:0 options:v9 usingBlock:{2, v38}];
    }
  }

  return v8;
}

- (_SUICEditScriptDataArray)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = _SUICEditScriptDataArray;
  v5 = [(_SUICEditScriptDataArray *)&v9 init];
  if (v5)
  {
    v6 = [arrayCopy copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

+ (id)EditScriptDataWithString:(id)string chunkSize:(int64_t)size
{
  stringCopy = string;
  v6 = [[_SUICEditScriptDataArray alloc] initWithString:stringCopy chunkSize:size];

  return v6;
}

+ (id)EditScriptDataWithArray:(id)array
{
  arrayCopy = array;
  v4 = [[_SUICEditScriptDataArray alloc] initWithArray:arrayCopy];

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

- (int64_t)lengthOfItem:(int64_t)item
{
  v3 = [(NSArray *)self->_data objectAtIndex:item];
  v4 = [v3 length];

  return v4;
}

- (int64_t)characterIndexForItem:(int64_t)item
{
  if (item < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 += [(_SUICEditScriptDataArray *)self lengthOfItem:v5++];
  }

  while (item != v5);
  return v6;
}

- (int64_t)indexOfFirstDifferenceWithOtherData:(id)data shouldReverseIterate:(BOOL)iterate fallsOnWordBoundary:(BOOL *)boundary
{
  iterateCopy = iterate;
  dataCopy = data;
  v9 = [(_SUICEditScriptDataArray *)self length];
  v10 = [dataCopy length];
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
    if (!boundary)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v29 = v9;
  boundaryCopy = boundary;
  v13 = 0;
  v14 = 0;
  v28 = v10;
  v15 = v10 - 1;
  v16 = v9 - 1;
  while (1)
  {
    v17 = iterateCopy ? v16 : v14;
    v18 = iterateCopy ? v15 : v14;
    boundaryCopy = [(_SUICEditScriptDataArray *)self stringAtIndex:v17, v28, v29, boundaryCopy];
    v20 = [dataCopy stringAtIndex:v18];
    if (([boundaryCopy isEqualToString:v20] & 1) == 0)
    {
      break;
    }

    ++v14;
    --v15;
    --v16;
    v13 = boundaryCopy;
    if (v12 == v14)
    {
      v13 = boundaryCopy;
      v14 = v12;
      goto LABEL_18;
    }
  }

LABEL_18:
  v9 = v29;
  boundary = boundaryCopy;
  v11 = v28;
  if (boundaryCopy)
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
      if (iterateCopy)
      {
        v22 = 0;
      }

      v31 = v22;
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v24 = IsCharacterAtIndexMemberOfCharacterSet(v13, &v31, whitespaceAndNewlineCharacterSet);
    }

    *boundary = v24;
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