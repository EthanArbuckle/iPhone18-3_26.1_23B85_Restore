@interface SKTemporaryPassphrase
- (SKTemporaryPassphrase)initWithPassphrase:(const char *)passphrase;
- (void)dealloc;
@end

@implementation SKTemporaryPassphrase

- (SKTemporaryPassphrase)initWithPassphrase:(const char *)passphrase
{
  v9.receiver = self;
  v9.super_class = SKTemporaryPassphrase;
  v4 = [(SKTemporaryPassphrase *)&v9 init];
  if (v4)
  {
    v5 = strnlen(passphrase, 0x101uLL);
    v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
    v4->_buf = v6;
    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }

    strlcpy(v6, passphrase, v5 + 1);
  }

  v7 = v4;
LABEL_6:

  return v7;
}

- (void)dealloc
{
  buf = self->_buf;
  if (buf)
  {
    v4 = strnlen(self->_buf, 0x101uLL);
    bzero(buf, v4);
    free(self->_buf);
  }

  v5.receiver = self;
  v5.super_class = SKTemporaryPassphrase;
  [(SKTemporaryPassphrase *)&v5 dealloc];
}

@end