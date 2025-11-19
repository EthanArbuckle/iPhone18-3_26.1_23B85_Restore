@interface MFMessageTransferResult
- (MFMessageTransferResult)initWithResultCode:(unint64_t)a3 failedMessages:(id)a4 transferedMessage:(id)a5;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MFMessageTransferResult

- (MFMessageTransferResult)initWithResultCode:(unint64_t)a3 failedMessages:(id)a4 transferedMessage:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MFMessageTransferResult;
  v10 = [(MFMessageTransferResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_resultCode = a3;
    v12 = [v8 copy];
    failedMessages = v11->_failedMessages;
    v11->_failedMessages = v12;

    v14 = [v9 copy];
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
  v3 = [(MFMessageTransferResult *)self resultCode];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279E33D90[v3];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [(MFMessageTransferResult *)self transferedMessages];
  v8 = [(MFMessageTransferResult *)self failedMessages];
  v9 = [v5 stringWithFormat:@"<%@:%p (\n\tresult:%@\n\ttransfered:%@\n\tfailed:%@)>", v6, self, v4, v7, v8];

  return v9;
}

@end