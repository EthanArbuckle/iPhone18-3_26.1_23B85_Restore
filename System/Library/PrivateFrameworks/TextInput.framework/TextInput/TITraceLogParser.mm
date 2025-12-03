@interface TITraceLogParser
- (BOOL)parseIntegerHeader:(id)header headerValue:(int64_t *)value withScanner:(id)scanner;
- (BOOL)parseStringHeader:(id)header headerValue:(id *)value withScanner:(id)scanner;
- (TITraceLogParsingDelegate)delegate;
- (id)convertStringToContext:(id)context;
- (id)extractBeamSearchContextStringFromLogText:(id)text;
- (id)parseTraceLogContextFromLogText:(id)text andPriorContext:(id)context;
- (id)parseTraceRecordWithScanner:(id)scanner andPriorContext:(id)context;
- (void)parseTraceLogContent:(id)content;
- (void)parseTraceLogHeaderWithScanner:(id)scanner;
- (void)parseTraceRecordsWithScanner:(id)scanner;
@end

@implementation TITraceLogParser

- (TITraceLogParsingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)parseTraceRecordWithScanner:(id)scanner andPriorContext:(id)context
{
  contextCopy = context;
  v18 = 0;
  scannerCopy = scanner;
  [scannerCopy scanUpToString:@"\n\n" intoString:&v18];
  v8 = v18;
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  [scannerCopy scanString:@"\n\n" intoString:0];
  v17 = 0;
  [scannerCopy scanUpToString:@"RECORD ID: " intoString:&v17];

  v10 = v17;
  if ([v10 length])
  {
    v11 = [v10 substringToIndex:{objc_msgSend(v10, "length") - 1}];

    v10 = v11;
  }

  v12 = [(TITraceLogParser *)self parseTraceLogContextFromLogText:v10 andPriorContext:contextCopy];
  v13 = [[TITraceLogRecord alloc] initWithRecordUUID:v9 context:v12 logText:v10 logVersion:[(TITraceLogParser *)self version]];
  delegate = [(TITraceLogParser *)self delegate];

  if (delegate)
  {
    delegate2 = [(TITraceLogParser *)self delegate];
    [delegate2 traceRecordParsed:v13];
  }

  return v12;
}

- (id)parseTraceLogContextFromLogText:(id)text andPriorContext:(id)context
{
  contextCopy = context;
  v7 = [(TITraceLogParser *)self extractBeamSearchContextStringFromLogText:text];
  if (!v7 || ([(TITraceLogParser *)self convertStringToContext:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = contextCopy;
  }

  return v8;
}

- (id)convertStringToContext:(id)context
{
  contextCopy = context;
  if ([contextCopy containsString:@"CONTEXT: "])
  {
    v4 = objc_msgSend(contextCopy, "componentsSeparatedByString:", @"(");
    v5 = MEMORY[0x1E696AE88];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v5 scannerWithString:v6];

    [v7 scanString:@"CONTEXT: " intoString:0];
    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\n"]);
    v9 = MEMORY[0x1E696AE88];
    v10 = [v4 objectAtIndexedSubscript:1];
    v11 = [v10 stringByTrimmingCharactersInSet:v8];
    v12 = [v9 scannerWithString:v11];

    array = [MEMORY[0x1E695DF70] array];
    if (([v7 isAtEnd] & 1) == 0)
    {
      v21 = v8;
      v22 = v4;
      v14 = 0;
      v15 = 0;
      while (([v12 isAtEnd] & 1) == 0)
      {
        v24 = v15;
        [v7 scanUpToString:@" " intoString:&v24];
        v16 = v24;

        v23 = v14;
        [v12 scanUpToString:@" " intoString:&v23];
        v17 = v23;

        v18 = [[TITraceLogRecordContextEntry alloc] initWithToken:v16 wordID:v17];
        [array addObject:v18];

        v14 = v17;
        v15 = v16;
        if ([v7 isAtEnd])
        {
          goto LABEL_9;
        }
      }

      v16 = v15;
      v17 = v14;
LABEL_9:

      v8 = v21;
      v4 = v22;
    }

    v19 = [array copy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)extractBeamSearchContextStringFromLogText:(id)text
{
  v3 = MEMORY[0x1E696AE88];
  textCopy = text;
  v5 = [[v3 alloc] initWithString:textCopy];

  v6 = 0;
  if ([v5 scanUpToString:@"CONTEXT: " intoString:0])
  {
    v8 = 0;
    [v5 scanUpToString:@"INPUT NODE:" intoString:&v8];
    v6 = v8;
  }

  return v6;
}

- (void)parseTraceRecordsWithScanner:(id)scanner
{
  scannerCopy = scanner;
  [scannerCopy scanString:@"RECORD ID: " intoString:0];
  array = [MEMORY[0x1E695DEC8] array];
  if ([scannerCopy isAtEnd])
  {
    v5 = array;
  }

  else
  {
    do
    {
      v5 = [(TITraceLogParser *)self parseTraceRecordWithScanner:scannerCopy andPriorContext:array];

      [scannerCopy scanString:@"RECORD ID: " intoString:0];
      array = v5;
    }

    while (![scannerCopy isAtEnd]);
  }
}

- (BOOL)parseIntegerHeader:(id)header headerValue:(int64_t *)value withScanner:(id)scanner
{
  scannerCopy = scanner;
  v8 = [scannerCopy scanString:header intoString:0];
  if (v8)
  {
    [scannerCopy scanInteger:value];
    [scannerCopy scanString:@"\n" intoString:0];
  }

  return v8;
}

- (BOOL)parseStringHeader:(id)header headerValue:(id *)value withScanner:(id)scanner
{
  scannerCopy = scanner;
  v8 = [scannerCopy scanString:header intoString:0];
  if (v8)
  {
    [scannerCopy scanUpToString:@"\n" intoString:value];
    [scannerCopy scanString:@"\n" intoString:0];
  }

  return v8;
}

- (void)parseTraceLogHeaderWithScanner:(id)scanner
{
  v14[1] = *MEMORY[0x1E69E9840];
  scannerCopy = scanner;
  v12 = 0;
  if ([(TITraceLogParser *)self parseIntegerHeader:@"Version: " headerValue:&v12 withScanner:scannerCopy])
  {
    [(TITraceLogParser *)self setVersion:v12];
  }

  v5 = [(TITraceLogParser *)self parseStringHeader:@"Date: " headerValue:0 withScanner:scannerCopy];
  version = [(TITraceLogParser *)self version];
  v7 = version;
  if (v5)
  {
    if (version <= 1)
    {
      v7 = 1;
    }

    [(TITraceLogParser *)self setVersion:v7];
    [(TITraceLogParser *)self parseStringHeader:@"iOS version: " headerValue:0 withScanner:scannerCopy];
  }

  else
  {
    [(TITraceLogParser *)self setVersion:version];
  }

  [scannerCopy scanUpToString:@"RECORD ID: " intoString:0];
  delegate = [(TITraceLogParser *)self delegate];

  if (delegate)
  {
    delegate2 = [(TITraceLogParser *)self delegate];
    v13 = @"Version";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[TITraceLogParser version](self, "version")}];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [delegate2 traceHeaderParsed:v11];
  }
}

- (void)parseTraceLogContent:(id)content
{
  v4 = MEMORY[0x1E696AE88];
  contentCopy = content;
  v6 = [[v4 alloc] initWithString:contentCopy];

  [v6 setCharactersToBeSkipped:0];
  [(TITraceLogParser *)self parseTraceLogHeaderWithScanner:v6];
  [(TITraceLogParser *)self parseTraceRecordsWithScanner:v6];
}

@end