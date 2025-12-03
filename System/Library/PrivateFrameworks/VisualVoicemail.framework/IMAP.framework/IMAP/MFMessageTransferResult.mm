@interface MFMessageTransferResult
- (MFMessageTransferResult)initWithResultCode:(unint64_t)code failedMessages:(id)messages transferedMessage:(id)message;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MFMessageTransferResult

- (MFMessageTransferResult)initWithResultCode:(unint64_t)code failedMessages:(id)messages transferedMessage:(id)message
{
  messagesCopy = messages;
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = MFMessageTransferResult;
  v10 = [(MFMessageTransferResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_resultCode = code;
    v12 = [messagesCopy copy];
    failedMessages = v11->_failedMessages;
    v11->_failedMessages = v12;

    v14 = [messageCopy copy];
    transferedMessages = v11->_transferedMessages;
    v11->_transferedMessages = v14;
  }

  return v11;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMessageTransferResult;
  [(MFMessageTransferResult *)&v2 dealloc];
}

- (id)debugDescription
{
  resultCode = [(MFMessageTransferResult *)self resultCode];
  if (resultCode > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279E33D90[resultCode];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  transferedMessages = [(MFMessageTransferResult *)self transferedMessages];
  failedMessages = [(MFMessageTransferResult *)self failedMessages];
  v9 = [v5 stringWithFormat:@"<%@:%p (\n\tresult:%@\n\ttransfered:%@\n\tfailed:%@)>", v6, self, v4, transferedMessages, failedMessages];

  return v9;
}

@end