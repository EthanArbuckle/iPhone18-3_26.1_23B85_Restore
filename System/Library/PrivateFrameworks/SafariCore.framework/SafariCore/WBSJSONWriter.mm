@interface WBSJSONWriter
+ (void)initialize;
- (BOOL)_checkCurrentState:(id)a3 doesNotContainKey:(id)a4 error:(id *)a5;
- (BOOL)_checkHasNoRootWithError:(id *)a3;
- (BOOL)_writeBuffer:(const char *)a3 length:(int64_t)a4 error:(id *)a5;
- (BOOL)_writeCommaIfNeededForState:(id)a3 error:(id *)a4;
- (BOOL)_writeConstantASCIIString:(const char *)a3 error:(id *)a4;
- (BOOL)_writeData:(id)a3 error:(id *)a4;
- (BOOL)_writeObjectKey:(id)a3 error:(id *)a4;
- (BOOL)_writePrettyPrintedData:(id)a3 forEntry:(id)a4 error:(id *)a5;
- (BOOL)_writeString:(id)a3 error:(id *)a4;
- (BOOL)addEntry:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)appendAndBeginArrayWithError:(id *)a3;
- (BOOL)appendAndBeginObjectWithError:(id *)a3;
- (BOOL)appendEntry:(id)a3 error:(id *)a4;
- (BOOL)beginArrayForKey:(id)a3 error:(id *)a4;
- (BOOL)beginArrayWithError:(id *)a3;
- (BOOL)beginObjectForKey:(id)a3 error:(id *)a4;
- (BOOL)beginObjectWithError:(id *)a3;
- (BOOL)closeCurrentEntryWithError:(id *)a3;
- (BOOL)finishEncodingWithError:(id *)a3;
- (WBSJSONWriter)initWithFileHandle:(id)a3 options:(unint64_t)a4;
- (WBSJSONWriter)initWithOutputStream:(id)a3 options:(unint64_t)a4;
- (id)_currentEntryStateOfKind:(int64_t)a3 error:(id *)a4;
- (id)_dataForJSONObject:(id)a3 error:(id *)a4;
- (id)_prefixStringForCurrentDepth;
- (int64_t)currentEntryKind;
@end

@implementation WBSJSONWriter

+ (void)initialize
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"\n" length:1 freeWhenDone:0];
  v3 = newLineData;
  newLineData = v2;

  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"null" length:4 freeWhenDone:0];
  v5 = nullLiteralData;
  nullLiteralData = v4;
}

- (WBSJSONWriter)initWithOutputStream:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = WBSJSONWriter;
  v8 = [(WBSJSONWriter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outputStream, a3);
    v10 = [MEMORY[0x1E695DF70] array];
    stateStack = v9->_stateStack;
    v9->_stateStack = v10;

    v9->_options = a4;
    v12 = v9;
  }

  return v9;
}

- (WBSJSONWriter)initWithFileHandle:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = WBSJSONWriter;
  v8 = [(WBSJSONWriter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileHandle, a3);
    v10 = [MEMORY[0x1E695DF70] array];
    stateStack = v9->_stateStack;
    v9->_stateStack = v10;

    v9->_options = a4;
    v12 = v9;
  }

  return v9;
}

- (int64_t)currentEntryKind
{
  if (![(NSMutableArray *)self->_stateStack count])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No entry" userInfo:0];
    objc_exception_throw(v6);
  }

  v3 = [(NSMutableArray *)self->_stateStack lastObject];
  v4 = [v3 kind];

  return v4;
}

- (BOOL)beginObjectWithError:(id *)a3
{
  v5 = [(WBSJSONWriter *)self _checkHasNoRootWithError:?];
  if (v5)
  {
    v5 = [(WBSJSONWriter *)self _writeConstantASCIIString:"{" error:a3];
    if (v5)
    {
      stateStack = self->_stateStack;
      v7 = [[_WBSJSONEntryState alloc] initWithKind:0];
      [(NSMutableArray *)stateStack addObject:v7];

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)addEntry:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(WBSJSONWriter *)self _currentEntryStateOfKind:0 error:a5];
  if (v10 && [(WBSJSONWriter *)self _checkCurrentState:v10 doesNotContainKey:v9 error:a5])
  {
    v11 = [(WBSJSONWriter *)self _dataForJSONObject:v8 error:a5];
    if (v11 && [(WBSJSONWriter *)self _writeCommaIfNeededForState:v10 error:a5])
    {
      if (self->_options)
      {
        if ([(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:a5])
        {
          v13 = [(WBSJSONWriter *)self _prefixStringForCurrentDepth];
          if ([(WBSJSONWriter *)self _writeString:v13 error:a5]&& [(WBSJSONWriter *)self _writeObjectKey:v9 error:a5]&& [(WBSJSONWriter *)self _writeConstantASCIIString:" : " error:a5])
          {
            [v10 addKey:v9];
            v12 = [(WBSJSONWriter *)self _writePrettyPrintedData:v11 forEntry:v8 error:a5];
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_16;
        }
      }

      else if ([(WBSJSONWriter *)self _writeObjectKey:v9 error:a5]&& [(WBSJSONWriter *)self _writeConstantASCIIString:":" error:a5])
      {
        [v10 addKey:v9];
        v12 = [(WBSJSONWriter *)self _writeData:v11 error:a5];
LABEL_16:

        goto LABEL_17;
      }
    }

    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)beginObjectForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WBSJSONWriter *)self _currentEntryStateOfKind:0 error:a4];
  if (v7 && [(WBSJSONWriter *)self _checkCurrentState:v7 doesNotContainKey:v6 error:a4]&& [(WBSJSONWriter *)self _writeCommaIfNeededForState:v7 error:a4])
  {
    if (self->_options)
    {
      v8 = [@"\n" stringByPaddingToLength:(2 * -[WBSJSONWriter currentDepth](self withString:"currentDepth")) | 1 startingAtIndex:{@" ", 0}];
      if (![(WBSJSONWriter *)self _writeString:v8 error:a4])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = &stru_1F3064D08;
    }

    if ([(WBSJSONWriter *)self _writeObjectKey:v6 error:a4])
    {
      v11 = (self->_options & 1) != 0 ? " : {" : ":{";
      if ([(WBSJSONWriter *)self _writeConstantASCIIString:v11 error:a4])
      {
        [v7 addKey:v6];
        stateStack = self->_stateStack;
        v13 = [[_WBSJSONEntryState alloc] initWithKind:0];
        [(NSMutableArray *)stateStack addObject:v13];

        v9 = 1;
LABEL_16:

        goto LABEL_7;
      }
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (BOOL)beginArrayForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WBSJSONWriter *)self _currentEntryStateOfKind:0 error:a4];
  if (v7 && [(WBSJSONWriter *)self _checkCurrentState:v7 doesNotContainKey:v6 error:a4]&& [(WBSJSONWriter *)self _writeCommaIfNeededForState:v7 error:a4]&& ((self->_options & 1) == 0 || [(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:a4]&& ([(WBSJSONWriter *)self _prefixStringForCurrentDepth], v12 = objc_claimAutoreleasedReturnValue(), v13 = [(WBSJSONWriter *)self _writeString:v12 error:a4], v12, v13)) && [(WBSJSONWriter *)self _writeObjectKey:v6 error:a4]&& ((self->_options & 1) != 0 ? (v8 = " : [") : (v8 = ":["), [(WBSJSONWriter *)self _writeConstantASCIIString:v8 error:a4]))
  {
    [v7 addKey:v6];
    stateStack = self->_stateStack;
    v10 = 1;
    v11 = [[_WBSJSONEntryState alloc] initWithKind:1];
    [(NSMutableArray *)stateStack addObject:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)beginArrayWithError:(id *)a3
{
  if (![(WBSJSONWriter *)self _checkHasNoRootWithError:?]|| ![(WBSJSONWriter *)self _writeConstantASCIIString:"[" error:a3])
  {
    return 0;
  }

  stateStack = self->_stateStack;
  v6 = 1;
  v7 = [[_WBSJSONEntryState alloc] initWithKind:1];
  [(NSMutableArray *)stateStack addObject:v7];

  return v6;
}

- (BOOL)appendEntry:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WBSJSONWriter *)self _currentEntryStateOfKind:1 error:a4];
  if (v7)
  {
    v8 = [(WBSJSONWriter *)self _dataForJSONObject:v6 error:a4];
    if (v8 && [(WBSJSONWriter *)self _writeCommaIfNeededForState:v7 error:a4])
    {
      if ((self->_options & 1) == 0)
      {
        [v7 addEntry];
        v9 = [(WBSJSONWriter *)self _writeData:v8 error:a4];
LABEL_9:
        v10 = v9;
LABEL_11:

        goto LABEL_12;
      }

      v11 = MEMORY[0x1E696AEC0];
      v12 = [(WBSJSONWriter *)self _prefixStringForCurrentDepth];
      v13 = [v11 stringWithFormat:@"\n%@", v12];
      v14 = [(WBSJSONWriter *)self _writeString:v13 error:a4];

      if (v14)
      {
        [v7 addEntry];
        v9 = [(WBSJSONWriter *)self _writePrettyPrintedData:v8 forEntry:v6 error:a4];
        goto LABEL_9;
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)appendAndBeginObjectWithError:(id *)a3
{
  v5 = [(WBSJSONWriter *)self _currentEntryStateOfKind:1 error:a3];
  if (v5 && [(WBSJSONWriter *)self _writeCommaIfNeededForState:v5 error:a3]&& ((self->_options & 1) == 0 || [(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:a3]&& ([(WBSJSONWriter *)self _prefixStringForCurrentDepth], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(WBSJSONWriter *)self _writeString:v9 error:a3], v9, v10)) && [(WBSJSONWriter *)self _writeConstantASCIIString:"{" error:a3])
  {
    [v5 addEntry];
    stateStack = self->_stateStack;
    v7 = [[_WBSJSONEntryState alloc] initWithKind:0];
    [(NSMutableArray *)stateStack addObject:v7];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)appendAndBeginArrayWithError:(id *)a3
{
  v5 = [(WBSJSONWriter *)self _currentEntryStateOfKind:1 error:a3];
  if (v5 && [(WBSJSONWriter *)self _writeCommaIfNeededForState:v5 error:a3]&& ((self->_options & 1) == 0 || [(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:a3]&& ([(WBSJSONWriter *)self _prefixStringForCurrentDepth], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(WBSJSONWriter *)self _writeString:v9 error:a3], v9, v10)) && [(WBSJSONWriter *)self _writeConstantASCIIString:"[" error:a3])
  {
    [v5 addEntry];
    stateStack = self->_stateStack;
    v7 = 1;
    v8 = [[_WBSJSONEntryState alloc] initWithKind:1];
    [(NSMutableArray *)stateStack addObject:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)closeCurrentEntryWithError:(id *)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_stateStack lastObject];
  v6 = v5;
  if (v5)
  {
    if (self->_options)
    {
      if (![v5 numberOfEntries] && !-[WBSJSONWriter _writeConstantASCIIString:error:](self, "_writeConstantASCIIString:error:", "\n", a3))
      {
        goto LABEL_16;
      }

      if (![(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:a3])
      {
        goto LABEL_16;
      }

      [(NSMutableArray *)self->_stateStack removeLastObject];
      v11 = [(WBSJSONWriter *)self _prefixStringForCurrentDepth];
      [(NSMutableArray *)self->_stateStack addObject:v6];
      v12 = [(WBSJSONWriter *)self _writeString:v11 error:a3];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v7 = [v6 kind];
    if (v7)
    {
      if (v7 == 1 && ![(WBSJSONWriter *)self _writeConstantASCIIString:"]" error:a3])
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if ([(WBSJSONWriter *)self _writeConstantASCIIString:"}" error:a3])
    {
LABEL_15:
      [(NSMutableArray *)self->_stateStack removeLastObject];
      LOBYTE(a3) = 1;
      goto LABEL_17;
    }

LABEL_16:
    LOBYTE(a3) = 0;
    goto LABEL_17;
  }

  if (a3)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A598];
    v15[0] = *MEMORY[0x1E696A578];
    v15[1] = v9;
    v16[0] = @"JSON serialization was not started";
    v16[1] = @"Call -beginObjectWithError: or -beginArrayWithError: first.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    *a3 = [v8 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:1 userInfo:v10];

    goto LABEL_16;
  }

LABEL_17:

  v13 = *MEMORY[0x1E69E9840];
  return a3;
}

- (BOOL)finishEncodingWithError:(id *)a3
{
  do
  {
    v5 = [(WBSJSONWriter *)self closeCurrentEntryWithError:a3];
  }

  while (v5 && [(NSMutableArray *)self->_stateStack count]);
  return v5;
}

- (BOOL)_checkHasNoRootWithError:(id *)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableArray *)self->_stateStack count];
  v5 = v4;
  if (a3 && v4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"JSON serialization has already started";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a3 = [v6 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:2 userInfo:v7];
  }

  result = v5 == 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_checkCurrentState:(id)a3 doesNotContainKey:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 containsKey:v7];
  v9 = v8;
  if (a5 && v8)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Key '%@' was already added to the current object", v7, *MEMORY[0x1E696A578]];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v10 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:5 userInfo:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9 ^ 1;
}

- (id)_currentEntryStateOfKind:(int64_t)a3 error:(id *)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableArray *)self->_stateStack lastObject];
  v7 = v6;
  if (!v6)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A598];
    v23[0] = *MEMORY[0x1E696A578];
    v23[1] = v9;
    v24[0] = @"JSON serialization was not started";
    v24[1] = @"Call -beginObjectWithError: or -beginArrayWithError: first.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v11 = v8;
    v12 = 1;
    goto LABEL_11;
  }

  if ([v6 kind] == a3)
  {
    a4 = v7;
    goto LABEL_13;
  }

  if (a4)
  {
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_12:
        a4 = 0;
        goto LABEL_13;
      }

      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A598];
      v21[0] = *MEMORY[0x1E696A578];
      v21[1] = v14;
      v22[0] = @"Expecting an object entry and got an array entry";
      v22[1] = @"Call -addEntry:forKey:error: or -beginObjectForKey:error:, or -beginArrayForKey:error: instead.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v11 = v13;
      v12 = 4;
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A598];
      v19[0] = *MEMORY[0x1E696A578];
      v19[1] = v16;
      v20[0] = @"Expecting an array entry and got an object entry";
      v20[1] = @"Call -appendEntry:error: or -appendAndBeginObjectWithError:, or -appendAndBeginArrayWithError: instead.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      v11 = v15;
      v12 = 3;
    }

LABEL_11:
    *a4 = [v11 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:v12 userInfo:v10];

    goto LABEL_12;
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return a4;
}

- (BOOL)_writeCommaIfNeededForState:(id)a3 error:(id *)a4
{
  if (![a3 numberOfEntries])
  {
    return 1;
  }

  return [(WBSJSONWriter *)self _writeConstantASCIIString:" error:", a4];
}

- (id)_prefixStringForCurrentDepth
{
  v2 = [(WBSJSONWriter *)self currentDepth];
  if (v2)
  {
    v3 = 2 * v2;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 2 * v2);
    CFStringPad(Mutable, @" ", v3, 0);
  }

  else
  {
    Mutable = &stru_1F3064D08;
  }

  return Mutable;
}

- (BOOL)_writePrettyPrintedData:(id)a3 forEntry:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(WBSJSONWriter *)self _prefixStringForCurrentDepth];
  if (objc_opt_respondsToSelector())
  {
    if ([v9 count])
    {
      v11 = [v8 length];
      if (v11)
      {
        v12 = 0;
        while (1)
        {
          v13 = [v8 rangeOfData:newLineData options:0 range:{v12, v11}];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v15 = v13 + v14;
          v16 = [v8 subdataWithRange:{v12, v13 + v14 - v12}];
          v17 = [(WBSJSONWriter *)self _writeData:v16 error:a5];

          if (!v17 || ![(WBSJSONWriter *)self _writeString:v10 error:a5])
          {
            v19 = 0;
            goto LABEL_20;
          }

          v18 = [v8 length];
          v12 = v15;
          v11 = v18 - v15;
          if (v18 == v15)
          {
            goto LABEL_18;
          }
        }

        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

LABEL_18:
      v20 = [v8 subdataWithRange:{v15, v11}];
      v21 = [(WBSJSONWriter *)self _writeData:v20 error:a5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[\n\n%@]", v10];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"{\n\n%@}", v10];
      }
      v20 = ;
      v21 = [(WBSJSONWriter *)self _writeString:v20 error:a5];
    }

    v19 = v21;
  }

  else
  {
    v19 = [(WBSJSONWriter *)self _writeData:v8 error:a5];
  }

LABEL_20:

  return v19;
}

- (id)_dataForJSONObject:(id)a3 error:(id *)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    options = self->_options;
    v14[0] = 0;
    v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:options | 4 error:v14];
    v10 = v14[0];
    objc_autoreleasePoolPop(v7);
    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }
  }

  else
  {
    v9 = nullLiteralData;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_writeObjectKey:(id)a3 error:(id *)a4
{
  v6 = [(WBSJSONWriter *)self _dataForJSONObject:a3 error:?];
  if (v6)
  {
    v7 = [(WBSJSONWriter *)self _writeData:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_writeString:(id)a3 error:(id *)a4
{
  v6 = a3;
  CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  if (CStringPtr || (CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u)) != 0)
  {
    v8 = [(WBSJSONWriter *)self _writeBuffer:CStringPtr length:strlen(CStringPtr) error:a4];
  }

  else
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], v6, 0x8000100u, 0);
    v8 = [(WBSJSONWriter *)self _writeData:ExternalRepresentation error:a4];
  }

  return v8;
}

- (BOOL)_writeConstantASCIIString:(const char *)a3 error:(id *)a4
{
  v7 = strlen(a3);

  return [(WBSJSONWriter *)self _writeBuffer:a3 length:v7 error:a4];
}

- (BOOL)_writeData:(id)a3 error:(id *)a4
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    v7 = a3;
    v8 = [(NSFileHandle *)fileHandle writeData:v7 error:a4];

    return v8;
  }

  else
  {
    v11 = a3;
    v12 = a3;
    v13 = [v12 bytes];
    v14 = [v12 length];

    return [(WBSJSONWriter *)self _writeBuffer:v13 length:v14 error:a4];
  }
}

- (BOOL)_writeBuffer:(const char *)a3 length:(int64_t)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v19[1] = *MEMORY[0x1E69E9840];
  fileHandle = self->_fileHandle;
  if (!fileHandle)
  {
    if (a4)
    {
      while ([(NSOutputStream *)self->_outputStream hasSpaceAvailable])
      {
        v13 = [(NSOutputStream *)self->_outputStream write:v7 maxLength:v6];
        v7 += v13;
        v6 -= v13;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      if (a5)
      {
        v18 = *MEMORY[0x1E696A578];
        v19[0] = @"Cannot write more data to the output stream";
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        v15 = [v14 mutableCopy];

        v16 = [(NSOutputStream *)self->_outputStream streamError];
        [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696AA08]];

        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:6 userInfo:v15];
      }

      goto LABEL_11;
    }

LABEL_8:
    result = 1;
    goto LABEL_12;
  }

  if (write([(NSFileHandle *)fileHandle fileDescriptor], a3, a4) != -1)
  {
    goto LABEL_8;
  }

  if (!a5)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
  v11 = v10;
  result = 0;
  *a5 = v10;
LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

@end