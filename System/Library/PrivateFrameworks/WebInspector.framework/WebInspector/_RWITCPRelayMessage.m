@interface _RWITCPRelayMessage
+ (id)TCPRelayMessageFromDataStream:(id)a3 error:(id *)a4;
+ (id)TCPRelayMessageWithPayload:(id)a3;
- (_RWITCPRelayMessage)initWithPayload:(id)a3;
- (int64_t)write:(int)a3;
- (int64_t)writeInternal:(id)a3;
- (int64_t)writeLockdown:(_lockdown_connection *)a3;
@end

@implementation _RWITCPRelayMessage

- (_RWITCPRelayMessage)initWithPayload:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _RWITCPRelayMessage;
  v5 = [(_RWITCPRelayMessage *)&v18 init];
  if (v5)
  {
    if ([v4 length] < 0xFFFFFFFC)
    {
      v15 = [v4 copy];
      payload = v5->_payload;
      v5->_payload = v15;

      v5->_writtenHeader = 0;
      v5->_writtenPayloadOffset = 0;
      v14 = v5;
      goto LABEL_8;
    }

    v6 = RWIDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPRelayMessage *)v6 initWithPayload:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

+ (id)TCPRelayMessageFromDataStream:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!a4)
  {
    v20 = RWIDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPRelayMessage *)v20 TCPRelayMessageFromDataStream:v21 error:v22, v23, v24, v25, v26, v27];
    }

    goto LABEL_10;
  }

  v7 = [v5 length];
  if (v7 < 4)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v29 = 0;
  [v6 getBytes:&v29 length:4];
  v9 = bswap32(v29);
  v29 = v9;
  if (v9 >= 0xFFFFFFFB)
  {
    v10 = RWIDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPRelayMessage *)v10 TCPRelayMessageFromDataStream:v11 error:v12, v13, v14, v15, v16, v17];
    }

    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Cannot read _RWITCPRelayMessage from stream. Corrupt header." forKey:*MEMORY[0x277CCA450]];
    v19 = 0;
    *a4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"_RWITCPRelayMessage" code:1 userInfo:v18];
    goto LABEL_13;
  }

  if (v8 < v9 + 4)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_14;
  }

  v18 = [v6 subdataWithRange:4];
  v19 = [_RWITCPRelayMessage TCPRelayMessageWithPayload:v18];
LABEL_13:

LABEL_14:

  return v19;
}

+ (id)TCPRelayMessageWithPayload:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPayload:v4];

  return v5;
}

- (int64_t)write:(int)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29___RWITCPRelayMessage_write___block_invoke;
  v4[3] = &__block_descriptor_36_e12_q24__0r_8Q16l;
  v5 = a3;
  return [(_RWITCPRelayMessage *)self writeInternal:v4];
}

- (int64_t)writeLockdown:(_lockdown_connection *)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37___RWITCPRelayMessage_writeLockdown___block_invoke;
  v4[3] = &__block_descriptor_40_e12_q24__0r_8Q16l;
  v4[4] = a3;
  return [(_RWITCPRelayMessage *)self writeInternal:v4];
}

- (int64_t)writeInternal:(id)a3
{
  v4 = a3;
  if (!self->_writtenHeader)
  {
    v15 = bswap32([(NSData *)self->_payload length]);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v15 length:4];
    if (v4[2](v4, [v5 bytes], objc_msgSend(v5, "length")) < 0)
    {
      if (*__error() == 35)
      {
        v8 = 2;
      }

      else
      {
        v12 = RWIDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [_RWITCPRelayMessage writeInternal:];
        }

        v8 = 3;
      }

      goto LABEL_16;
    }

    self->_writtenHeader = 1;
  }

  v6 = [(NSData *)self->_payload length];
  writtenPayloadOffset = self->_writtenPayloadOffset;
  if (v6 != writtenPayloadOffset)
  {
    v9 = v4[2](v4, ([(NSData *)self->_payload bytes]+ self->_writtenPayloadOffset), v6 - writtenPayloadOffset);
    if ((v9 & 0x8000000000000000) == 0)
    {
      payload = self->_payload;
      v11 = self->_writtenPayloadOffset + v9;
      self->_writtenPayloadOffset = v11;
      v8 = v11 != [(NSData *)payload length];
      goto LABEL_16;
    }

    if (*__error() == 35)
    {
      v8 = 2;
      goto LABEL_16;
    }

    v14 = RWIDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_RWITCPRelayMessage writeInternal:];
    }
  }

  v8 = 3;
LABEL_16:

  return v8;
}

- (void)writeInternal:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2(&dword_273C9C000, v2, v3, "_RWITCPRelayMessage header write failure: %{public}d - %{public}s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeInternal:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2(&dword_273C9C000, v2, v3, "_RWITCPRelayMessage payload write failure: %{public}d - %{public}s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

@end