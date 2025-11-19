@interface MFOutgoingMessage
- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (BOOL)messageDataHolder:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (id)messageData;
- (id)messageDataHolder;
- (id)mutableHeaders;
- (unint64_t)messageSize;
- (void)dealloc;
- (void)setMessageBody:(id)a3;
@end

@implementation MFOutgoingMessage

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFOutgoingMessage;
  [(MFMailMessage *)&v2 dealloc];
}

- (void)setMessageBody:(id)a3
{
  v5 = a3;
  if (self->_messageBody != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_messageBody, a3);
    v5 = v6;
  }
}

- (id)messageData
{
  v3 = [(MFOutgoingMessage *)self headers];
  v4 = [v3 encodedHeaders];

  if (v4)
  {
    v5 = [(MFMessageBody *)self->_messageBody rawData];
    v6 = [MEMORY[0x277D24F70] dataWithCapacity:{objc_msgSend(v5, "length") + objc_msgSend(v4, "length")}];
    [v6 appendData:v4];
    if (v5)
    {
      [v6 appendData:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  if (a5)
  {
    *a5 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v9 = [(MFOutgoingMessage *)self headers];
  v10 = [v9 encodedHeaders];

  if (v10)
  {
    v11 = [(MFMessageBody *)self->_messageBody rawData];
    v12 = [v10 length];
    v13 = [v11 length] + v12;
    if (a4)
    {
      *a4 = v13;
    }

    if (a3)
    {
      v14 = [MEMORY[0x277D24F70] dataWithCapacity:v13];
      [v14 appendData:v10];
      if (v11)
      {
        [v14 appendData:v11];
      }

      [v14 mf_makeImmutable];
      v15 = v14;
      *a3 = v14;
    }
  }

  return v10 != 0;
}

- (id)messageDataHolder
{
  v3 = [(MFOutgoingMessage *)self headers];
  v4 = [v3 encodedHeaders];

  if (v4)
  {
    v5 = [(MFMessageBody *)self->_messageBody rawData];
    v6 = [MEMORY[0x277D24F08] dataHolderWithData:v4];
    v7 = v6;
    if (v5)
    {
      [v6 addData:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)messageDataHolder:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  if (a5)
  {
    *a5 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v9 = [(MFOutgoingMessage *)self headers];
  v10 = [v9 encodedHeaders];

  if (v10)
  {
    v11 = [(MFMessageBody *)self->_messageBody rawData];
    v12 = [v10 length];
    v13 = [v11 length];
    if (a4)
    {
      *a4 = v13 + v12;
    }

    if (a3)
    {
      v14 = [MEMORY[0x277D24F08] dataHolderWithData:v10];
      v15 = v14;
      if (v11)
      {
        [v14 addData:v11];
      }

      v16 = v15;
      *a3 = v15;
    }
  }

  return v10 != 0;
}

- (id)mutableHeaders
{
  messageHeaders = self->_messageHeaders;
  if (!messageHeaders)
  {
    v4 = objc_alloc_init(MEMORY[0x277D24F80]);
    v5 = self->_messageHeaders;
    self->_messageHeaders = v4;

    messageHeaders = self->_messageHeaders;
  }

  return messageHeaders;
}

- (unint64_t)messageSize
{
  v3 = [(MFOutgoingMessage *)self headers];
  v4 = [v3 encodedHeaders];
  v5 = [v4 length];
  v6 = [(MFMessageBody *)self->_messageBody rawData];
  v7 = [v6 length];

  return v7 + v5;
}

@end