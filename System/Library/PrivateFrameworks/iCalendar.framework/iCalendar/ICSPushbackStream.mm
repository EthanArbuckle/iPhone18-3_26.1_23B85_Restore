@interface ICSPushbackStream
- (BOOL)eos;
- (BOOL)pushBack:(char)back;
- (ICSPushbackStream)initWithInputStream:(id)stream;
- (char)peek;
- (char)read;
- (void)dealloc;
- (void)peek;
@end

@implementation ICSPushbackStream

- (ICSPushbackStream)initWithInputStream:(id)stream
{
  streamCopy = stream;
  v10.receiver = self;
  v10.super_class = ICSPushbackStream;
  v6 = [(ICSPushbackStream *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!streamCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_underStream, stream);
    v7->_pbData = malloc_type_calloc(0x10uLL, 1uLL, 0xC36314A4uLL);
    v7->_pbCursor = -1;
    v7->_readPastEOS = 0;
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (void)dealloc
{
  free(self->_pbData);
  v3.receiver = self;
  v3.super_class = ICSPushbackStream;
  [(ICSPushbackStream *)&v3 dealloc];
}

- (char)peek
{
  p_pbCursor = &self->_pbCursor;
  pbCursor = self->_pbCursor;
  if ((pbCursor & 0x80000000) == 0)
  {
    return self->_pbData[pbCursor];
  }

  read = [(ICSInputByteStream *)self->_underStream read];
  v5 = read;
  if (read || ![(ICSInputByteStream *)self->_underStream eos])
  {
    v7 = *p_pbCursor;
    v8 = *p_pbCursor + 1;
    *p_pbCursor = v8;
    if (v7 >= 15)
    {
      [ICSPushbackStream peek];
      v8 = v10;
    }

    self->_pbData[v8] = v5;
  }

  else
  {
    v5 = 0;
    self->_readPastEOS = 1;
  }

  return v5;
}

- (BOOL)pushBack:(char)back
{
  if (self->_readPastEOS)
  {
    [(ICSPushbackStream *)a2 pushBack:?];
  }

  pbCursor = self->_pbCursor;
  v6 = pbCursor + 1;
  self->_pbCursor = pbCursor + 1;
  if (pbCursor >= 15)
  {
    [ICSPushbackStream pushBack:];
    v6 = v8;
  }

  self->_pbData[v6] = back;
  return 1;
}

- (char)read
{
  pbCursor = self->_pbCursor;
  if ((pbCursor & 0x80000000) != 0)
  {
    if ([(ICSInputByteStream *)self->_underStream eos])
    {
      self->_readPastEOS = 1;
    }

    underStream = self->_underStream;

    return [(ICSInputByteStream *)underStream read];
  }

  else
  {
    result = self->_pbData[pbCursor];
    self->_pbCursor = pbCursor - 1;
  }

  return result;
}

- (BOOL)eos
{
  if (self->_pbCursor == -1)
  {
    return [(ICSInputByteStream *)self->_underStream eos];
  }

  else
  {
    return 0;
  }
}

- (void)peek
{
  OUTLINED_FUNCTION_0_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:v3 object:v2 file:@"ICSPushbackStream.m" lineNumber:56 description:@"Cannot push back that much data."];

  *v0 = *v1;
}

- (void)pushBack:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ICSPushbackStream.m" lineNumber:64 description:@"Cannot push back after reading past EOS"];
}

- (void)pushBack:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"ICSPushbackStream.m" lineNumber:66 description:@"Cannot push back that much data."];

  *v0 = *v1;
}

@end