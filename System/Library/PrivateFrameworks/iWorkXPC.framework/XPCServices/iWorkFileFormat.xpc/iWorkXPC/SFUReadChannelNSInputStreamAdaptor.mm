@interface SFUReadChannelNSInputStreamAdaptor
- (BOOL)setProperty:(id)property forKey:(id)key;
- (SFUReadChannelNSInputStreamAdaptor)initWithSFUInputStream:(id)stream;
- (id)delegate;
- (id)propertyForKey:(id)key;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (void)close;
- (void)open;
- (void)setDelegate:(id)delegate;
@end

@implementation SFUReadChannelNSInputStreamAdaptor

- (SFUReadChannelNSInputStreamAdaptor)initWithSFUInputStream:(id)stream
{
  streamCopy = stream;
  v6 = [[NSData alloc] initWithBytes:&v10 length:0];
  v9.receiver = self;
  v9.super_class = SFUReadChannelNSInputStreamAdaptor;
  v7 = [(SFUReadChannelNSInputStreamAdaptor *)&v9 initWithData:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_inputStream, stream);
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

- (void)setDelegate:(id)delegate
{
  if (delegate)
  {
    selfCopy = delegate;
  }

  else
  {
    selfCopy = self;
  }

  objc_storeWeak(&self->_delegate, selfCopy);
}

- (id)propertyForKey:(id)key
{
  if ([key isEqualToString:NSStreamFileCurrentOffsetKey])
  {
    v4 = [NSNumber numberWithLongLong:[(SFUInputStream *)self->_inputStream offset]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  if ([keyCopy isEqualToString:NSStreamFileCurrentOffsetKey] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && -[SFUInputStream canSeek](self->_inputStream, "canSeek"))
  {
    unsignedIntegerValue = [propertyCopy unsignedIntegerValue];
    [(SFUInputStream *)self->_inputStream seekToOffset:unsignedIntegerValue];
    v9 = [(SFUInputStream *)self->_inputStream offset]== unsignedIntegerValue;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  v4 = atomic_load(&self->_status);
  if (v4 != 2)
  {
    return -1;
  }

  atomic_store(3uLL, &self->_status);
  result = [(SFUInputStream *)self->_inputStream readToBuffer:read size:length];
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