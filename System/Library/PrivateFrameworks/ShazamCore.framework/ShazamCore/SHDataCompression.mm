@interface SHDataCompression
+ (int)supportedCompressionTypeFromFilePathExtension:(id)a3;
+ (int)supportedCompressionTypeFromFileURL:(id)a3;
- ($D199E5C2C3D9BBBBA45D19FC310E2D7B)stream;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)performOperation:(int)a3 withData:(id)a4 algorithm:(int)a5 flags:(int)a6 error:(id *)a7;
- (BOOL)processData:(id)a3 error:(id *)a4;
- (SHDataCompression)initWithOperation:(int)a3 algorithm:(int)a4;
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

- (SHDataCompression)initWithOperation:(int)a3 algorithm:(int)a4
{
  v10.receiver = self;
  v10.super_class = SHDataCompression;
  v6 = [(SHDataCompression *)&v10 init];
  v7 = v6;
  if (v6 && (v6->_operation = a3, v6->_algorithm = a4, ![(SHDataCompression *)v6 setup]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (BOOL)processData:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [(SHDataCompression *)self performOperation:[(SHDataCompression *)self operation] withData:v6 algorithm:[(SHDataCompression *)self algorithm] flags:0 error:a4];

  return a4;
}

- (BOOL)closeWithError:(id *)a3
{
  v5 = [(SHDataCompression *)self operation];
  v6 = [MEMORY[0x277CBEA90] data];
  v7 = 1;
  [(SHDataCompression *)self performOperation:v5 withData:v6 algorithm:[(SHDataCompression *)self algorithm] flags:1 error:0];

  compression_stream_destroy(&self->_stream);
  *&self->_stream.dst_ptr = 0u;
  *&self->_stream.src_ptr = 0u;
  self->_stream.state = 0;
  v8 = [(SHDataCompression *)self next];
  if (v8)
  {
    v9 = [(SHDataCompression *)self next];
    v7 = [v9 closeWithError:a3];
  }

  return v7;
}

- (BOOL)performOperation:(int)a3 withData:(id)a4 algorithm:(int)a5 flags:(int)a6 error:(id *)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a4;
  self->_stream.src_ptr = [v10 bytes];
  self->_stream.src_size = [v10 length];
  while (1)
  {
    self->_stream.dst_ptr = v29;
    self->_stream.dst_size = 2048;
    v11 = compression_stream_process(&self->_stream, a6);
    v12 = v11;
    if (v11 == COMPRESSION_STATUS_END)
    {
      goto LABEL_6;
    }

    if (v11)
    {
      v22 = [SHCoreError errorWithCode:301 underlyingError:0];
      [SHCoreError annotateError:a7 withError:v22];

      compression_stream_destroy(&self->_stream);
LABEL_15:
      LOBYTE(v21) = 0;
      goto LABEL_16;
    }

    if (self->_stream.dst_size)
    {
      break;
    }

    v18 = [(SHDataCompression *)self next];
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v18;
    v15 = [(SHDataCompression *)self next];
    v16 = MEMORY[0x277CBEA90];
    v17 = 2048;
LABEL_11:
    v19 = [v16 dataWithBytes:v29 length:v17];
    v20 = [v15 processData:v19 error:a7];

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

    v13 = [(SHDataCompression *)self next];
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v13;
    v15 = [(SHDataCompression *)self next];
    v16 = MEMORY[0x277CBEA90];
    v17 = self->_stream.dst_ptr - v29;
    goto LABEL_11;
  }

  if (self->_stream.dst_ptr <= v29)
  {
    goto LABEL_20;
  }

  v25 = [(SHDataCompression *)self next];
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [(SHDataCompression *)self next];
  v28 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:self->_stream.dst_ptr - v29];
  v21 = [v27 processData:v28 error:a7];

  if (v21)
  {
LABEL_20:
    LOBYTE(v21) = 1;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (int)supportedCompressionTypeFromFileURL:(id)a3
{
  v4 = [a3 pathExtension];
  LODWORD(a1) = [a1 supportedCompressionTypeFromFilePathExtension:v4];

  return a1;
}

+ (int)supportedCompressionTypeFromFilePathExtension:(id)a3
{
  v3 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:a3];
  v4 = [v3 preferredFilenameExtension];
  v5 = [v4 isEqualToString:@"lzma"];

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