@interface SHDataStreamOutput
- (BOOL)closeWithError:(id *)a3;
- (BOOL)processData:(id)a3 error:(id *)a4;
- (SHDataStreamOutput)initWithDestination:(id)a3;
- (void)dealloc;
@end

@implementation SHDataStreamOutput

- (void)dealloc
{
  [(NSOutputStream *)self->_outputStream close];
  v3.receiver = self;
  v3.super_class = SHDataStreamOutput;
  [(SHDataStreamOutput *)&v3 dealloc];
}

- (SHDataStreamOutput)initWithDestination:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SHDataStreamOutput;
  v5 = [(SHDataStreamOutput *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB78] outputStreamWithURL:v4 append:0];
    outputStream = v5->_outputStream;
    v5->_outputStream = v6;

    [(NSOutputStream *)v5->_outputStream open];
  }

  return v5;
}

- (BOOL)closeWithError:(id *)a3
{
  [(NSOutputStream *)self->_outputStream close];
  v5 = [(SHDataStreamOutput *)self next];
  if (v5)
  {
    v6 = [(SHDataStreamOutput *)self next];
    v7 = [v6 closeWithError:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SHDataStreamOutput *)self outputStream];
  v8 = [v6 bytes];
  v9 = [v6 length];

  v10 = [v7 write:v8 maxLength:v9];
  if (v10 <= 0)
  {
    v11 = [(SHDataStreamOutput *)self outputStream];
    v12 = [v11 streamError];
    [SHCoreError annotateError:a4 withError:v12];
  }

  return v10 > 0;
}

@end