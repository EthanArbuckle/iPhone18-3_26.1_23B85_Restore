@interface CHCSVWriter
- (CHCSVWriter)initWithOutputStream:(id)a3 encoding:(unint64_t)a4 delimiter:(unsigned __int16)a5;
- (id)initForWritingToCSVFile:(id)a3;
- (void)_finishLineIfNecessary;
- (void)_writeData:(id)a3;
- (void)_writeString:(id)a3;
- (void)closeStream;
- (void)dealloc;
- (void)finishLine;
- (void)writeComment:(id)a3;
- (void)writeField:(id)a3;
- (void)writeLineOfFields:(id)a3;
- (void)writeLineWithDictionary:(id)a3;
@end

@implementation CHCSVWriter

- (id)initForWritingToCSVFile:(id)a3
{
  v4 = [MEMORY[0x1E695DFC0] outputStreamToFileAtPath:a3 append:0];
  v5 = [(CHCSVWriter *)self initWithOutputStream:v4 encoding:4 delimiter:44];

  return v5;
}

- (CHCSVWriter)initWithOutputStream:(id)a3 encoding:(unint64_t)a4 delimiter:(unsigned __int16)a5
{
  v5 = a5;
  v9 = a3;
  v28.receiver = self;
  v28.super_class = CHCSVWriter;
  v10 = [(CHCSVWriter *)&v28 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_stream, a3);
    v11->_streamEncoding = a4;
    if (![(NSOutputStream *)v11->_stream streamStatus])
    {
      [(NSOutputStream *)v11->_stream open];
    }

    v12 = [@"a" dataUsingEncoding:v11->_streamEncoding];
    v13 = [@"aa" dataUsingEncoding:v11->_streamEncoding];
    v14 = [v12 length];
    if ([v13 length] != 2 * v14)
    {
      v15 = [v12 subdataWithRange:{0, objc_msgSend(v12, "length") - objc_msgSend(v13, "length") + objc_msgSend(v12, "length")}];
      bom = v11->_bom;
      v11->_bom = v15;

      [(CHCSVWriter *)v11 _writeData:v11->_bom];
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v5];
    v18 = [v17 dataUsingEncoding:v11->_streamEncoding];
    if ([(NSData *)v11->_bom length])
    {
      v19 = [v18 subdataWithRange:{-[NSData length](v11->_bom, "length"), objc_msgSend(v18, "length") - -[NSData length](v11->_bom, "length")}];
    }

    else
    {
      v19 = v18;
    }

    delimiter = v11->_delimiter;
    v11->_delimiter = v19;

    v21 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v22 = [v21 mutableCopy];

    [v22 addCharactersInString:v17];
    [v22 addCharactersInString:@""];
    v23 = [v22 copy];
    illegalCharacters = v11->_illegalCharacters;
    v11->_illegalCharacters = v23;

    v25 = [MEMORY[0x1E695DF70] array];
    firstLineKeys = v11->_firstLineKeys;
    v11->_firstLineKeys = v25;
  }

  return v11;
}

- (void)dealloc
{
  [(CHCSVWriter *)self closeStream];
  v3.receiver = self;
  v3.super_class = CHCSVWriter;
  [(CHCSVWriter *)&v3 dealloc];
}

- (void)_writeData:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = v5;
    -[NSOutputStream write:maxLength:](self->_stream, "write:maxLength:", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

- (void)_writeString:(id)a3
{
  v6 = [a3 dataUsingEncoding:self->_streamEncoding];
  if ([(NSData *)self->_bom length])
  {
    v4 = [v6 subdataWithRange:{-[NSData length](self->_bom, "length"), objc_msgSend(v6, "length") - -[NSData length](self->_bom, "length")}];

    v5 = v4;
  }

  else
  {
    v5 = v6;
  }

  v7 = v5;
  [(CHCSVWriter *)self _writeData:v5];
}

- (void)writeField:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_currentField)
  {
    [(CHCSVWriter *)self _writeDelimiter];
    v4 = v7;
  }

  if (self->_currentLine)
  {
    if (v4)
    {
LABEL_5:
      v5 = [v4 description];
      goto LABEL_8;
    }
  }

  else
  {
    [(NSMutableArray *)self->_firstLineKeys addObject:v7];
    v4 = v7;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v5 = &stru_1F3A5E418;
LABEL_8:
  if ([(__CFString *)v5 rangeOfCharacterFromSet:self->_illegalCharacters]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(__CFString *)v5 stringByReplacingOccurrencesOfString:@" withString:@"];

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
  }

  [(CHCSVWriter *)self _writeString:v5];
  ++self->_currentField;
}

- (void)finishLine
{
  [(CHCSVWriter *)self _writeString:@"\n"];
  ++self->_currentLine;
  self->_currentField = 0;
}

- (void)_finishLineIfNecessary
{
  if (self->_currentField)
  {
    [(CHCSVWriter *)self finishLine];
  }
}

- (void)writeLineOfFields:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CHCSVWriter *)self _finishLineIfNecessary];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CHCSVWriter *)self writeField:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(CHCSVWriter *)self finishLine];
}

- (void)writeLineWithDictionary:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_currentLine)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot write a dictionary unless a line of keys has already been given"];
  }

  [(CHCSVWriter *)self _finishLineIfNecessary];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_firstLineKeys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 objectForKey:{*(*(&v11 + 1) + 8 * v9), v11}];
        [(CHCSVWriter *)self writeField:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(CHCSVWriter *)self finishLine];
}

- (void)writeComment:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CHCSVWriter *)self _finishLineIfNecessary];
  v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%@\n", *(*(&v13 + 1) + 8 * v11)];
        [(CHCSVWriter *)self _writeString:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)closeStream
{
  [(NSOutputStream *)self->_stream close];
  stream = self->_stream;
  self->_stream = 0;
}

@end