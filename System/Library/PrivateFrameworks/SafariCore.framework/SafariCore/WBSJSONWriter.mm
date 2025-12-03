@interface WBSJSONWriter
+ (void)initialize;
- (BOOL)_checkCurrentState:(id)state doesNotContainKey:(id)key error:(id *)error;
- (BOOL)_checkHasNoRootWithError:(id *)error;
- (BOOL)_writeBuffer:(const char *)buffer length:(int64_t)length error:(id *)error;
- (BOOL)_writeCommaIfNeededForState:(id)state error:(id *)error;
- (BOOL)_writeConstantASCIIString:(const char *)string error:(id *)error;
- (BOOL)_writeData:(id)data error:(id *)error;
- (BOOL)_writeObjectKey:(id)key error:(id *)error;
- (BOOL)_writePrettyPrintedData:(id)data forEntry:(id)entry error:(id *)error;
- (BOOL)_writeString:(id)string error:(id *)error;
- (BOOL)addEntry:(id)entry forKey:(id)key error:(id *)error;
- (BOOL)appendAndBeginArrayWithError:(id *)error;
- (BOOL)appendAndBeginObjectWithError:(id *)error;
- (BOOL)appendEntry:(id)entry error:(id *)error;
- (BOOL)beginArrayForKey:(id)key error:(id *)error;
- (BOOL)beginArrayWithError:(id *)error;
- (BOOL)beginObjectForKey:(id)key error:(id *)error;
- (BOOL)beginObjectWithError:(id *)error;
- (BOOL)closeCurrentEntryWithError:(id *)error;
- (BOOL)finishEncodingWithError:(id *)error;
- (WBSJSONWriter)initWithFileHandle:(id)handle options:(unint64_t)options;
- (WBSJSONWriter)initWithOutputStream:(id)stream options:(unint64_t)options;
- (id)_currentEntryStateOfKind:(int64_t)kind error:(id *)error;
- (id)_dataForJSONObject:(id)object error:(id *)error;
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

- (WBSJSONWriter)initWithOutputStream:(id)stream options:(unint64_t)options
{
  streamCopy = stream;
  v14.receiver = self;
  v14.super_class = WBSJSONWriter;
  v8 = [(WBSJSONWriter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outputStream, stream);
    array = [MEMORY[0x1E695DF70] array];
    stateStack = v9->_stateStack;
    v9->_stateStack = array;

    v9->_options = options;
    v12 = v9;
  }

  return v9;
}

- (WBSJSONWriter)initWithFileHandle:(id)handle options:(unint64_t)options
{
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = WBSJSONWriter;
  v8 = [(WBSJSONWriter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileHandle, handle);
    array = [MEMORY[0x1E695DF70] array];
    stateStack = v9->_stateStack;
    v9->_stateStack = array;

    v9->_options = options;
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

  lastObject = [(NSMutableArray *)self->_stateStack lastObject];
  kind = [lastObject kind];

  return kind;
}

- (BOOL)beginObjectWithError:(id *)error
{
  v5 = [(WBSJSONWriter *)self _checkHasNoRootWithError:?];
  if (v5)
  {
    v5 = [(WBSJSONWriter *)self _writeConstantASCIIString:"{" error:error];
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

- (BOOL)addEntry:(id)entry forKey:(id)key error:(id *)error
{
  entryCopy = entry;
  keyCopy = key;
  v10 = [(WBSJSONWriter *)self _currentEntryStateOfKind:0 error:error];
  if (v10 && [(WBSJSONWriter *)self _checkCurrentState:v10 doesNotContainKey:keyCopy error:error])
  {
    v11 = [(WBSJSONWriter *)self _dataForJSONObject:entryCopy error:error];
    if (v11 && [(WBSJSONWriter *)self _writeCommaIfNeededForState:v10 error:error])
    {
      if (self->_options)
      {
        if ([(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:error])
        {
          _prefixStringForCurrentDepth = [(WBSJSONWriter *)self _prefixStringForCurrentDepth];
          if ([(WBSJSONWriter *)self _writeString:_prefixStringForCurrentDepth error:error]&& [(WBSJSONWriter *)self _writeObjectKey:keyCopy error:error]&& [(WBSJSONWriter *)self _writeConstantASCIIString:" : " error:error])
          {
            [v10 addKey:keyCopy];
            v12 = [(WBSJSONWriter *)self _writePrettyPrintedData:v11 forEntry:entryCopy error:error];
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_16;
        }
      }

      else if ([(WBSJSONWriter *)self _writeObjectKey:keyCopy error:error]&& [(WBSJSONWriter *)self _writeConstantASCIIString:":" error:error])
      {
        [v10 addKey:keyCopy];
        v12 = [(WBSJSONWriter *)self _writeData:v11 error:error];
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

- (BOOL)beginObjectForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(WBSJSONWriter *)self _currentEntryStateOfKind:0 error:error];
  if (v7 && [(WBSJSONWriter *)self _checkCurrentState:v7 doesNotContainKey:keyCopy error:error]&& [(WBSJSONWriter *)self _writeCommaIfNeededForState:v7 error:error])
  {
    if (self->_options)
    {
      v8 = [@"\n" stringByPaddingToLength:(2 * -[WBSJSONWriter currentDepth](self withString:"currentDepth")) | 1 startingAtIndex:{@" ", 0}];
      if (![(WBSJSONWriter *)self _writeString:v8 error:error])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = &stru_1F3064D08;
    }

    if ([(WBSJSONWriter *)self _writeObjectKey:keyCopy error:error])
    {
      v11 = (self->_options & 1) != 0 ? " : {" : ":{";
      if ([(WBSJSONWriter *)self _writeConstantASCIIString:v11 error:error])
      {
        [v7 addKey:keyCopy];
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

- (BOOL)beginArrayForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(WBSJSONWriter *)self _currentEntryStateOfKind:0 error:error];
  if (v7 && [(WBSJSONWriter *)self _checkCurrentState:v7 doesNotContainKey:keyCopy error:error]&& [(WBSJSONWriter *)self _writeCommaIfNeededForState:v7 error:error]&& ((self->_options & 1) == 0 || [(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:error]&& ([(WBSJSONWriter *)self _prefixStringForCurrentDepth], v12 = objc_claimAutoreleasedReturnValue(), v13 = [(WBSJSONWriter *)self _writeString:v12 error:error], v12, v13)) && [(WBSJSONWriter *)self _writeObjectKey:keyCopy error:error]&& ((self->_options & 1) != 0 ? (v8 = " : [") : (v8 = ":["), [(WBSJSONWriter *)self _writeConstantASCIIString:v8 error:error]))
  {
    [v7 addKey:keyCopy];
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

- (BOOL)beginArrayWithError:(id *)error
{
  if (![(WBSJSONWriter *)self _checkHasNoRootWithError:?]|| ![(WBSJSONWriter *)self _writeConstantASCIIString:"[" error:error])
  {
    return 0;
  }

  stateStack = self->_stateStack;
  v6 = 1;
  v7 = [[_WBSJSONEntryState alloc] initWithKind:1];
  [(NSMutableArray *)stateStack addObject:v7];

  return v6;
}

- (BOOL)appendEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  v7 = [(WBSJSONWriter *)self _currentEntryStateOfKind:1 error:error];
  if (v7)
  {
    v8 = [(WBSJSONWriter *)self _dataForJSONObject:entryCopy error:error];
    if (v8 && [(WBSJSONWriter *)self _writeCommaIfNeededForState:v7 error:error])
    {
      if ((self->_options & 1) == 0)
      {
        [v7 addEntry];
        v9 = [(WBSJSONWriter *)self _writeData:v8 error:error];
LABEL_9:
        v10 = v9;
LABEL_11:

        goto LABEL_12;
      }

      v11 = MEMORY[0x1E696AEC0];
      _prefixStringForCurrentDepth = [(WBSJSONWriter *)self _prefixStringForCurrentDepth];
      v13 = [v11 stringWithFormat:@"\n%@", _prefixStringForCurrentDepth];
      v14 = [(WBSJSONWriter *)self _writeString:v13 error:error];

      if (v14)
      {
        [v7 addEntry];
        v9 = [(WBSJSONWriter *)self _writePrettyPrintedData:v8 forEntry:entryCopy error:error];
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

- (BOOL)appendAndBeginObjectWithError:(id *)error
{
  v5 = [(WBSJSONWriter *)self _currentEntryStateOfKind:1 error:error];
  if (v5 && [(WBSJSONWriter *)self _writeCommaIfNeededForState:v5 error:error]&& ((self->_options & 1) == 0 || [(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:error]&& ([(WBSJSONWriter *)self _prefixStringForCurrentDepth], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(WBSJSONWriter *)self _writeString:v9 error:error], v9, v10)) && [(WBSJSONWriter *)self _writeConstantASCIIString:"{" error:error])
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

- (BOOL)appendAndBeginArrayWithError:(id *)error
{
  v5 = [(WBSJSONWriter *)self _currentEntryStateOfKind:1 error:error];
  if (v5 && [(WBSJSONWriter *)self _writeCommaIfNeededForState:v5 error:error]&& ((self->_options & 1) == 0 || [(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:error]&& ([(WBSJSONWriter *)self _prefixStringForCurrentDepth], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(WBSJSONWriter *)self _writeString:v9 error:error], v9, v10)) && [(WBSJSONWriter *)self _writeConstantASCIIString:"[" error:error])
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

- (BOOL)closeCurrentEntryWithError:(id *)error
{
  v16[2] = *MEMORY[0x1E69E9840];
  lastObject = [(NSMutableArray *)self->_stateStack lastObject];
  v6 = lastObject;
  if (lastObject)
  {
    if (self->_options)
    {
      if (![lastObject numberOfEntries] && !-[WBSJSONWriter _writeConstantASCIIString:error:](self, "_writeConstantASCIIString:error:", "\n", error))
      {
        goto LABEL_16;
      }

      if (![(WBSJSONWriter *)self _writeConstantASCIIString:"\n" error:error])
      {
        goto LABEL_16;
      }

      [(NSMutableArray *)self->_stateStack removeLastObject];
      _prefixStringForCurrentDepth = [(WBSJSONWriter *)self _prefixStringForCurrentDepth];
      [(NSMutableArray *)self->_stateStack addObject:v6];
      v12 = [(WBSJSONWriter *)self _writeString:_prefixStringForCurrentDepth error:error];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    kind = [v6 kind];
    if (kind)
    {
      if (kind == 1 && ![(WBSJSONWriter *)self _writeConstantASCIIString:"]" error:error])
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if ([(WBSJSONWriter *)self _writeConstantASCIIString:"}" error:error])
    {
LABEL_15:
      [(NSMutableArray *)self->_stateStack removeLastObject];
      LOBYTE(error) = 1;
      goto LABEL_17;
    }

LABEL_16:
    LOBYTE(error) = 0;
    goto LABEL_17;
  }

  if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A598];
    v15[0] = *MEMORY[0x1E696A578];
    v15[1] = v9;
    v16[0] = @"JSON serialization was not started";
    v16[1] = @"Call -beginObjectWithError: or -beginArrayWithError: first.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    *error = [v8 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:1 userInfo:v10];

    goto LABEL_16;
  }

LABEL_17:

  v13 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)finishEncodingWithError:(id *)error
{
  do
  {
    v5 = [(WBSJSONWriter *)self closeCurrentEntryWithError:error];
  }

  while (v5 && [(NSMutableArray *)self->_stateStack count]);
  return v5;
}

- (BOOL)_checkHasNoRootWithError:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableArray *)self->_stateStack count];
  v5 = v4;
  if (error && v4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"JSON serialization has already started";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v6 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:2 userInfo:v7];
  }

  result = v5 == 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_checkCurrentState:(id)state doesNotContainKey:(id)key error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v8 = [state containsKey:keyCopy];
  v9 = v8;
  if (error && v8)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Key '%@' was already added to the current object", keyCopy, *MEMORY[0x1E696A578]];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v10 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:5 userInfo:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9 ^ 1;
}

- (id)_currentEntryStateOfKind:(int64_t)kind error:(id *)error
{
  v24[2] = *MEMORY[0x1E69E9840];
  lastObject = [(NSMutableArray *)self->_stateStack lastObject];
  v7 = lastObject;
  if (!lastObject)
  {
    if (!error)
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

  if ([lastObject kind] == kind)
  {
    error = v7;
    goto LABEL_13;
  }

  if (error)
  {
    if (kind)
    {
      if (kind != 1)
      {
LABEL_12:
        error = 0;
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
    *error = [v11 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:v12 userInfo:v10];

    goto LABEL_12;
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return error;
}

- (BOOL)_writeCommaIfNeededForState:(id)state error:(id *)error
{
  if (![state numberOfEntries])
  {
    return 1;
  }

  return [(WBSJSONWriter *)self _writeConstantASCIIString:" error:", error];
}

- (id)_prefixStringForCurrentDepth
{
  currentDepth = [(WBSJSONWriter *)self currentDepth];
  if (currentDepth)
  {
    v3 = 2 * currentDepth;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 2 * currentDepth);
    CFStringPad(Mutable, @" ", v3, 0);
  }

  else
  {
    Mutable = &stru_1F3064D08;
  }

  return Mutable;
}

- (BOOL)_writePrettyPrintedData:(id)data forEntry:(id)entry error:(id *)error
{
  dataCopy = data;
  entryCopy = entry;
  _prefixStringForCurrentDepth = [(WBSJSONWriter *)self _prefixStringForCurrentDepth];
  if (objc_opt_respondsToSelector())
  {
    if ([entryCopy count])
    {
      v11 = [dataCopy length];
      if (v11)
      {
        v12 = 0;
        while (1)
        {
          v13 = [dataCopy rangeOfData:newLineData options:0 range:{v12, v11}];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v15 = v13 + v14;
          v16 = [dataCopy subdataWithRange:{v12, v13 + v14 - v12}];
          v17 = [(WBSJSONWriter *)self _writeData:v16 error:error];

          if (!v17 || ![(WBSJSONWriter *)self _writeString:_prefixStringForCurrentDepth error:error])
          {
            v19 = 0;
            goto LABEL_20;
          }

          v18 = [dataCopy length];
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
      v20 = [dataCopy subdataWithRange:{v15, v11}];
      v21 = [(WBSJSONWriter *)self _writeData:v20 error:error];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[\n\n%@]", _prefixStringForCurrentDepth];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"{\n\n%@}", _prefixStringForCurrentDepth];
      }
      v20 = ;
      v21 = [(WBSJSONWriter *)self _writeString:v20 error:error];
    }

    v19 = v21;
  }

  else
  {
    v19 = [(WBSJSONWriter *)self _writeData:dataCopy error:error];
  }

LABEL_20:

  return v19;
}

- (id)_dataForJSONObject:(id)object error:(id *)error
{
  v14[3] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (objectCopy)
  {
    v7 = objc_autoreleasePoolPush();
    options = self->_options;
    v14[0] = 0;
    v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:objectCopy options:options | 4 error:v14];
    v10 = v14[0];
    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v11 = v10;
      *error = v10;
    }
  }

  else
  {
    v9 = nullLiteralData;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_writeObjectKey:(id)key error:(id *)error
{
  v6 = [(WBSJSONWriter *)self _dataForJSONObject:key error:?];
  if (v6)
  {
    v7 = [(WBSJSONWriter *)self _writeData:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_writeString:(id)string error:(id *)error
{
  stringCopy = string;
  CStringPtr = CFStringGetCStringPtr(stringCopy, 0x600u);
  if (CStringPtr || (CStringPtr = CFStringGetCStringPtr(stringCopy, 0x8000100u)) != 0)
  {
    v8 = [(WBSJSONWriter *)self _writeBuffer:CStringPtr length:strlen(CStringPtr) error:error];
  }

  else
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], stringCopy, 0x8000100u, 0);
    v8 = [(WBSJSONWriter *)self _writeData:ExternalRepresentation error:error];
  }

  return v8;
}

- (BOOL)_writeConstantASCIIString:(const char *)string error:(id *)error
{
  v7 = strlen(string);

  return [(WBSJSONWriter *)self _writeBuffer:string length:v7 error:error];
}

- (BOOL)_writeData:(id)data error:(id *)error
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    dataCopy = data;
    v8 = [(NSFileHandle *)fileHandle writeData:dataCopy error:error];

    return v8;
  }

  else
  {
    dataCopy2 = data;
    dataCopy3 = data;
    bytes = [dataCopy3 bytes];
    v14 = [dataCopy3 length];

    return [(WBSJSONWriter *)self _writeBuffer:bytes length:v14 error:error];
  }
}

- (BOOL)_writeBuffer:(const char *)buffer length:(int64_t)length error:(id *)error
{
  lengthCopy = length;
  bufferCopy = buffer;
  v19[1] = *MEMORY[0x1E69E9840];
  fileHandle = self->_fileHandle;
  if (!fileHandle)
  {
    if (length)
    {
      while ([(NSOutputStream *)self->_outputStream hasSpaceAvailable])
      {
        v13 = [(NSOutputStream *)self->_outputStream write:bufferCopy maxLength:lengthCopy];
        bufferCopy += v13;
        lengthCopy -= v13;
        if (!lengthCopy)
        {
          goto LABEL_8;
        }
      }

      if (error)
      {
        v18 = *MEMORY[0x1E696A578];
        v19[0] = @"Cannot write more data to the output stream";
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        v15 = [v14 mutableCopy];

        streamError = [(NSOutputStream *)self->_outputStream streamError];
        [v15 setObject:streamError forKeyedSubscript:*MEMORY[0x1E696AA08]];

        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:6 userInfo:v15];
      }

      goto LABEL_11;
    }

LABEL_8:
    result = 1;
    goto LABEL_12;
  }

  if (write([(NSFileHandle *)fileHandle fileDescriptor], buffer, length) != -1)
  {
    goto LABEL_8;
  }

  if (!error)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
  v11 = v10;
  result = 0;
  *error = v10;
LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

@end