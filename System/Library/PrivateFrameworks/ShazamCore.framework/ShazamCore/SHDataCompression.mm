@interface SHDataCompression
+ (int)supportedCompressionTypeFromFilePathExtension:(id)extension;
+ (int)supportedCompressionTypeFromFileURL:(id)l;
- ($D199E5C2C3D9BBBBA45D19FC310E2D7B)stream;
- (BOOL)closeWithError:(id *)error;
- (BOOL)performOperation:(int)operation withData:(id)data algorithm:(int)algorithm flags:(int)flags error:(id *)error;
- (BOOL)processData:(id)data error:(id *)error;
- (SHDataCompression)initWithOperation:(int)operation algorithm:(int)algorithm;
- (void)dealloc;
@end

@implementation SHDataCompression

- (void)dealloc
{
  compression_stream_destroy(&self->_stream);
  v3.receiver = self;
  v3.super_class = SHDataCompression;
  [(SHDataCompression *)&v3 dealloc];
}

- (SHDataCompression)initWithOperation:(int)operation algorithm:(int)algorithm
{
  v10.receiver = self;
  v10.super_class = SHDataCompression;
  v6 = [(SHDataCompression *)&v10 init];
  v7 = v6;
  if (v6 && (v6->_operation = operation, v6->_algorithm = algorithm, ![(SHDataCompression *)v6 setup]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (BOOL)processData:(id)data error:(id *)error
{
  dataCopy = data;
  LOBYTE(error) = [(SHDataCompression *)self performOperation:[(SHDataCompression *)self operation] withData:dataCopy algorithm:[(SHDataCompression *)self algorithm] flags:0 error:error];

  return error;
}

- (BOOL)closeWithError:(id *)error
{
  operation = [(SHDataCompression *)self operation];
  data = [MEMORY[0x277CBEA90] data];
  v7 = 1;
  [(SHDataCompression *)self performOperation:operation withData:data algorithm:[(SHDataCompression *)self algorithm] flags:1 error:0];

  compression_stream_destroy(&self->_stream);
  *&self->_stream.dst_ptr = 0u;
  *&self->_stream.src_ptr = 0u;
  self->_stream.state = 0;
  next = [(SHDataCompression *)self next];
  if (next)
  {
    next2 = [(SHDataCompression *)self next];
    v7 = [next2 closeWithError:error];
  }

  return v7;
}

- (BOOL)performOperation:(int)operation withData:(id)data algorithm:(int)algorithm flags:(int)flags error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  self->_stream.src_ptr = [dataCopy bytes];
  self->_stream.src_size = [dataCopy length];
  while (1)
  {
    self->_stream.dst_ptr = v29;
    self->_stream.dst_size = 2048;
    v11 = compression_stream_process(&self->_stream, flags);
    v12 = v11;
    if (v11 == COMPRESSION_STATUS_END)
    {
      goto LABEL_6;
    }

    if (v11)
    {
      v22 = [SHCoreError errorWithCode:301 underlyingError:0];
      [SHCoreError annotateError:error withError:v22];

      compression_stream_destroy(&self->_stream);
LABEL_15:
      LOBYTE(v21) = 0;
      goto LABEL_16;
    }

    if (self->_stream.dst_size)
    {
      break;
    }

    next = [(SHDataCompression *)self next];
    if (!next)
    {
      goto LABEL_12;
    }

    v14 = next;
    next2 = [(SHDataCompression *)self next];
    v16 = MEMORY[0x277CBEA90];
    v17 = 2048;
LABEL_11:
    v19 = [v16 dataWithBytes:v29 length:v17];
    v20 = [next2 processData:v19 error:error];

    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (v12)
    {
      LOBYTE(v21) = 1;
      goto LABEL_16;
    }
  }

  if (self->_stream.src_size)
  {
LABEL_6:
    if (self->_stream.dst_ptr <= v29)
    {
      goto LABEL_12;
    }

    next3 = [(SHDataCompression *)self next];
    if (!next3)
    {
      goto LABEL_12;
    }

    v14 = next3;
    next2 = [(SHDataCompression *)self next];
    v16 = MEMORY[0x277CBEA90];
    v17 = self->_stream.dst_ptr - v29;
    goto LABEL_11;
  }

  if (self->_stream.dst_ptr <= v29)
  {
    goto LABEL_20;
  }

  next4 = [(SHDataCompression *)self next];
  if (!next4)
  {
    goto LABEL_20;
  }

  v26 = next4;
  next5 = [(SHDataCompression *)self next];
  v28 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:self->_stream.dst_ptr - v29];
  v21 = [next5 processData:v28 error:error];

  if (v21)
  {
LABEL_20:
    LOBYTE(v21) = 1;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (int)supportedCompressionTypeFromFileURL:(id)l
{
  pathExtension = [l pathExtension];
  LODWORD(self) = [self supportedCompressionTypeFromFilePathExtension:pathExtension];

  return self;
}

+ (int)supportedCompressionTypeFromFilePathExtension:(id)extension
{
  v3 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:extension];
  preferredFilenameExtension = [v3 preferredFilenameExtension];
  v5 = [preferredFilenameExtension isEqualToString:@"lzma"];

  if (v5)
  {
    v6 = 774;
  }

  else
  {
    v7 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.shazamcatalog"];
    v8 = [v3 conformsToType:v7];

    if (v8)
    {
      v6 = 517;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- ($D199E5C2C3D9BBBBA45D19FC310E2D7B)stream
{
  v3 = *&self[1].var0;
  *&retstr->var0 = *&self->var3;
  *&retstr->var2 = v3;
  retstr->var4 = self[1].var2;
  return self;
}

@end