@interface AnalyticsCSVWriter
- (AnalyticsCSVWriter)initWithOutputStream:(id)a3;
- (void)dealloc;
- (void)finishLine;
- (void)writeComma;
- (void)writeField:(id)a3;
- (void)writeFields:(id)a3;
@end

@implementation AnalyticsCSVWriter

- (AnalyticsCSVWriter)initWithOutputStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AnalyticsCSVWriter;
  v6 = [(AnalyticsCSVWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputStream, a3);
    [(NSOutputStream *)v7->_outputStream open];
  }

  return v7;
}

- (void)dealloc
{
  [(NSOutputStream *)self->_outputStream close];
  v3.receiver = self;
  v3.super_class = AnalyticsCSVWriter;
  [(AnalyticsCSVWriter *)&v3 dealloc];
}

- (void)writeField:(id)a3
{
  v8 = [a3 stringByReplacingOccurrencesOfString:@" withString:{", @", "}];
  v4 = [v8 stringByReplacingOccurrencesOfString:@" withString:@"];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
  v7 = [v6 dataUsingEncoding:4];
  -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v7 bytes], objc_msgSend(v7, "length"));
}

- (void)writeFields:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AnalyticsCSVWriter *)self writeField:*(*(&v10 + 1) + 8 * v8)];
        [(AnalyticsCSVWriter *)self writeComma];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)finishLine
{
  v5 = [@"\n" dataUsingEncoding:4];
  outputStream = self->_outputStream;
  v4 = v5;
  -[NSOutputStream write:maxLength:](outputStream, "write:maxLength:", [v5 bytes], objc_msgSend(v5, "length"));
}

- (void)writeComma
{
  v5 = [@" "];
  outputStream = self->_outputStream;
  v4 = v5;
  -[NSOutputStream write:maxLength:](outputStream, "write:maxLength:", [v5 bytes], objc_msgSend(v5, "length"));
}

@end