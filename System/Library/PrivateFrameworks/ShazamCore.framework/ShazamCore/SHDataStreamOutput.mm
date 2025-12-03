@interface SHDataStreamOutput
- (BOOL)closeWithError:(id *)error;
- (BOOL)processData:(id)data error:(id *)error;
- (SHDataStreamOutput)initWithDestination:(id)destination;
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

- (SHDataStreamOutput)initWithDestination:(id)destination
{
  destinationCopy = destination;
  v9.receiver = self;
  v9.super_class = SHDataStreamOutput;
  v5 = [(SHDataStreamOutput *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB78] outputStreamWithURL:destinationCopy append:0];
    outputStream = v5->_outputStream;
    v5->_outputStream = v6;

    [(NSOutputStream *)v5->_outputStream open];
  }

  return v5;
}

- (BOOL)closeWithError:(id *)error
{
  [(NSOutputStream *)self->_outputStream close];
  next = [(SHDataStreamOutput *)self next];
  if (next)
  {
    next2 = [(SHDataStreamOutput *)self next];
    v7 = [next2 closeWithError:error];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processData:(id)data error:(id *)error
{
  dataCopy = data;
  outputStream = [(SHDataStreamOutput *)self outputStream];
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];

  v10 = [outputStream write:bytes maxLength:v9];
  if (v10 <= 0)
  {
    outputStream2 = [(SHDataStreamOutput *)self outputStream];
    streamError = [outputStream2 streamError];
    [SHCoreError annotateError:error withError:streamError];
  }

  return v10 > 0;
}

@end