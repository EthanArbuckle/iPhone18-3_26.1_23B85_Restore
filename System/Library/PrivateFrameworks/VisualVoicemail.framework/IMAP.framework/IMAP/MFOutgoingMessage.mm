@interface MFOutgoingMessage
- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (id)messageData;
- (id)messageDataHolder;
- (id)mutableHeaders;
- (unint64_t)messageSize;
- (void)dealloc;
- (void)setMessageBody:(id)body;
@end

@implementation MFOutgoingMessage

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFOutgoingMessage;
  [(MFMailMessage *)&v2 dealloc];
}

- (void)setMessageBody:(id)body
{
  bodyCopy = body;
  if (self->_messageBody != bodyCopy)
  {
    v6 = bodyCopy;
    objc_storeStrong(&self->_messageBody, body);
    bodyCopy = v6;
  }
}

- (id)messageData
{
  headers = [(MFOutgoingMessage *)self headers];
  encodedHeaders = [headers encodedHeaders];

  if (encodedHeaders)
  {
    rawData = [(MFMessageBody *)self->_messageBody rawData];
    v6 = [MEMORY[0x277D24F70] dataWithCapacity:{objc_msgSend(rawData, "length") + objc_msgSend(encodedHeaders, "length")}];
    [v6 appendData:encodedHeaders];
    if (rawData)
    {
      [v6 appendData:rawData];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  if (complete)
  {
    *complete = 1;
  }

  if (data)
  {
    *data = 0;
  }

  if (size)
  {
    *size = 0;
  }

  headers = [(MFOutgoingMessage *)self headers];
  encodedHeaders = [headers encodedHeaders];

  if (encodedHeaders)
  {
    rawData = [(MFMessageBody *)self->_messageBody rawData];
    v12 = [encodedHeaders length];
    v13 = [rawData length] + v12;
    if (size)
    {
      *size = v13;
    }

    if (data)
    {
      v14 = [MEMORY[0x277D24F70] dataWithCapacity:v13];
      [v14 appendData:encodedHeaders];
      if (rawData)
      {
        [v14 appendData:rawData];
      }

      [v14 mf_makeImmutable];
      v15 = v14;
      *data = v14;
    }
  }

  return encodedHeaders != 0;
}

- (id)messageDataHolder
{
  headers = [(MFOutgoingMessage *)self headers];
  encodedHeaders = [headers encodedHeaders];

  if (encodedHeaders)
  {
    rawData = [(MFMessageBody *)self->_messageBody rawData];
    v6 = [MEMORY[0x277D24F08] dataHolderWithData:encodedHeaders];
    v7 = v6;
    if (rawData)
    {
      [v6 addData:rawData];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  if (complete)
  {
    *complete = 1;
  }

  if (holder)
  {
    *holder = 0;
  }

  if (size)
  {
    *size = 0;
  }

  headers = [(MFOutgoingMessage *)self headers];
  encodedHeaders = [headers encodedHeaders];

  if (encodedHeaders)
  {
    rawData = [(MFMessageBody *)self->_messageBody rawData];
    v12 = [encodedHeaders length];
    v13 = [rawData length];
    if (size)
    {
      *size = v13 + v12;
    }

    if (holder)
    {
      v14 = [MEMORY[0x277D24F08] dataHolderWithData:encodedHeaders];
      v15 = v14;
      if (rawData)
      {
        [v14 addData:rawData];
      }

      v16 = v15;
      *holder = v15;
    }
  }

  return encodedHeaders != 0;
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
  headers = [(MFOutgoingMessage *)self headers];
  encodedHeaders = [headers encodedHeaders];
  v5 = [encodedHeaders length];
  rawData = [(MFMessageBody *)self->_messageBody rawData];
  v7 = [rawData length];

  return v7 + v5;
}

@end