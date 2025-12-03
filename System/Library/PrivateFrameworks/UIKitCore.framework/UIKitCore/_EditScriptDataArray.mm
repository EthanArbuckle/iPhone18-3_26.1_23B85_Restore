@interface _EditScriptDataArray
+ (id)EditScriptDataWithArray:(id)array;
+ (id)EditScriptDataWithString:(id)string chunkSize:(int64_t)size;
- (_EditScriptDataArray)initWithArray:(id)array;
- (_EditScriptDataArray)initWithString:(id)string chunkSize:(int64_t)size;
- (id)stringValue;
- (int64_t)characterIndexForItem:(int64_t)item;
- (int64_t)indexOfFirstDifferenceWithOtherData:(id)data shouldReverseIterate:(BOOL)iterate;
- (int64_t)lengthOfItem:(int64_t)item;
@end

@implementation _EditScriptDataArray

- (_EditScriptDataArray)initWithString:(id)string chunkSize:(int64_t)size
{
  stringCopy = string;
  v34.receiver = self;
  v34.super_class = _EditScriptDataArray;
  v8 = [(_EditScriptDataArray *)&v34 init];
  v9 = v8;
  if (v8)
  {
    [(_EditScriptDataArray *)v8 setCachedStringValue:stringCopy];
    v10 = [stringCopy length];
    if (size == 1)
    {
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      data = v9->_data;
      v9->_data = v15;

      v31 = v10 - 1;
      if (v10 >= 1)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v29 = stringCopy;
        v30 = v10;
        do
        {
          v20 = [stringCopy characterAtIndex:v19];
          whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v22 = [whitespaceCharacterSet characterIsMember:v20];

          if ((v22 & 1) != 0 || v19 == v31)
          {
            v17 += v18;
            v18 = v19 + 1 - v17 - v22;
            v23 = v9->_data;
            [stringCopy substringWithRange:{v17, v18}];
            v25 = v24 = v9;
            [(NSArray *)v23 addObject:v25];

            if (v22)
            {
              v26 = v24->_data;
              v27 = [stringCopy substringWithRange:{v19, 1}];
              [(NSArray *)v26 addObject:v27];

              v17 = v19;
              v18 = 1;
            }

            v9 = v24;
            ++v19;
            stringCopy = v29;
            v10 = v30;
          }

          else
          {
            ++v19;
          }
        }

        while (v19 != v10);
      }
    }

    else
    {
      if (size)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v9 file:@"_EditScriptDataArray.m" lineNumber:61 description:{@"Unexpected chunk size == %ld!", size}];
      }

      else
      {
        v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
        v12 = v9->_data;
        v9->_data = v11;

        v13 = [stringCopy length];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __49___EditScriptDataArray_initWithString_chunkSize___block_invoke;
        v32[3] = &unk_1E7115940;
        v33 = v9;
        [stringCopy enumerateSubstringsInRange:0 options:v13 usingBlock:{2, v32}];
        currentHandler = v33;
      }
    }
  }

  return v9;
}

- (_EditScriptDataArray)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = _EditScriptDataArray;
  v5 = [(_EditScriptDataArray *)&v9 init];
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
  v6 = [[_EditScriptDataArray alloc] initWithString:stringCopy chunkSize:size];

  return v6;
}

+ (id)EditScriptDataWithArray:(id)array
{
  arrayCopy = array;
  v4 = [[_EditScriptDataArray alloc] initWithArray:arrayCopy];

  return v4;
}

- (id)stringValue
{
  cachedStringValue = self->_cachedStringValue;
  if (!cachedStringValue)
  {
    v4 = [(NSArray *)self->_data componentsJoinedByString:&stru_1EFB14550];
    [(_EditScriptDataArray *)self setCachedStringValue:v4];

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
    v6 += [(_EditScriptDataArray *)self lengthOfItem:v5++];
  }

  while (item != v5);
  return v6;
}

- (int64_t)indexOfFirstDifferenceWithOtherData:(id)data shouldReverseIterate:(BOOL)iterate
{
  iterateCopy = iterate;
  dataCopy = data;
  v7 = [(_EditScriptDataArray *)self length];
  v8 = [dataCopy length];
  v9 = 0;
  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v10)
  {
    v21 = v8;
    v22 = v7;
    v11 = v8 - 1;
    v12 = v7 - 1;
    while (1)
    {
      v13 = iterateCopy ? v12 : v9;
      v14 = iterateCopy ? v11 : v9;
      v15 = [(_EditScriptDataArray *)self stringAtIndex:v13, v21, v22];
      v16 = [dataCopy stringAtIndex:v14];
      v17 = [v15 isEqualToString:v16];

      if (!v17)
      {
        break;
      }

      ++v9;
      --v11;
      --v12;
      if (v10 == v9)
      {
        v9 = v10;
        break;
      }
    }

    v8 = v21;
    v7 = v22;
  }

  if (v9 == v10 && v7 == v8)
  {
    v19 = -1;
  }

  else
  {
    v19 = v9;
  }

  return v19;
}

@end