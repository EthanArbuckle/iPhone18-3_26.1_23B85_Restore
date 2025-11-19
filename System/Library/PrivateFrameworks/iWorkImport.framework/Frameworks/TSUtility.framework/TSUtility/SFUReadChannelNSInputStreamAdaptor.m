@interface SFUReadChannelNSInputStreamAdaptor
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (SFUReadChannelNSInputStreamAdaptor)initWithSFUInputStream:(id)a3;
- (id)delegate;
- (id)propertyForKey:(id)a3;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (void)close;
- (void)open;
- (void)setDelegate:(id)a3;
@end

@implementation SFUReadChannelNSInputStreamAdaptor

- (SFUReadChannelNSInputStreamAdaptor)initWithSFUInputStream:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v10 length:0];
  v9.receiver = self;
  v9.super_class = SFUReadChannelNSInputStreamAdaptor;
  v7 = [(SFUReadChannelNSInputStreamAdaptor *)&v9 initWithData:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_inputStream, a3);
    objc_storeWeak(&v7->_delegate, v7);
    atomic_store(0, &v7->_status);
  }

  return v7;
}

- (void)open
{
  if (!atomic_load(&self->_status))
  {
    atomic_store(2uLL, &self->_status);
  }
}

- (void)close
{
  atomic_store(6uLL, &self->_status);
  [(SFUInputStream *)self->_inputStream close];
  inputStream = self->_inputStream;
  self->_inputStream = 0;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = self;
  }

  objc_storeWeak(&self->_delegate, v3);
}

- (id)propertyForKey:(id)a3
{
  if ([a3 isEqualToString:*MEMORY[0x277CBE748]])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SFUInputStream offset](self->_inputStream, "offset")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:*MEMORY[0x277CBE748]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && -[SFUInputStream canSeek](self->_inputStream, "canSeek"))
  {
    v8 = [v6 unsignedIntegerValue];
    [(SFUInputStream *)self->_inputStream seekToOffset:v8];
    v9 = [(SFUInputStream *)self->_inputStream offset]== v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  v4 = atomic_load(&self->_status);
  if (v4 != 2)
  {
    return -1;
  }

  atomic_store(3uLL, &self->_status);
  result = [(SFUInputStream *)self->_inputStream readToBuffer:a3 size:a4];
  if (result)
  {
    v7 = 2;
  }

  else
  {
    v7 = 5;
  }

  atomic_store(v7, &self->_status);
  return result;
}

@end