@interface BRCChecksummingOutputStream
- (BRCChecksummingOutputStream)initWithTag:(unsigned __int8)a3;
- (NSData)signature;
- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (unint64_t)streamStatus;
- (void)close;
- (void)open;
- (void)signature;
@end

@implementation BRCChecksummingOutputStream

- (NSData)signature
{
  if (self->_isOpen)
  {
    [BRCChecksummingOutputStream signature];
  }

  v3 = [MEMORY[0x277CBEA90] dataWithBytes:self->_sig length:21];

  return v3;
}

- (BRCChecksummingOutputStream)initWithTag:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = BRCChecksummingOutputStream;
  result = [(BRCChecksummingOutputStream *)&v5 init];
  if (result)
  {
    result->_sig[0] = a3;
  }

  return result;
}

- (void)open
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !_isOpen%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  if (self->_isOpen)
  {
    CC_SHA1_Final(&self->_sig[1], &self->_ctx);
    self->_isOpen = 0;
  }
}

- (unint64_t)streamStatus
{
  if (self->_isOpen)
  {
    return 2;
  }

  else
  {
    return 6;
  }
}

- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  LODWORD(v7) = a4;
  if (HIDWORD(a4))
  {
    v7 = a4;
    do
    {
      CC_SHA1_Update(&self->_ctx, a3, 0xFFFFFFFF);
      v7 -= 0xFFFFFFFFLL;
    }

    while (HIDWORD(v7));
  }

  CC_SHA1_Update(&self->_ctx, a3, v7);
  return a4;
}

- (void)signature
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !_isOpen%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end