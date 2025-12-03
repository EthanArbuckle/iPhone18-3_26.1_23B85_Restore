@interface PKNotification
- (PKNotification)initWithNotifier:(id)notifier notifyKind:(int)kind;
- (id)_makeDict;
- (void)_interpretResult:(unint64_t)result responseDict:(id)dict;
- (void)start;
@end

@implementation PKNotification

- (PKNotification)initWithNotifier:(id)notifier notifyKind:(int)kind
{
  notifierCopy = notifier;
  v11.receiver = self;
  v11.super_class = PKNotification;
  v8 = [(PKNotification *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notifier, notifier);
    v9->_kind = kind;
  }

  return v9;
}

- (void)start
{
  notifier = self->_notifier;
  _makeFlags = [(PKNotification *)self _makeFlags];
  _makeDict = [(PKNotification *)self _makeDict];
  [(PKNotifier *)notifier startNotification:self options:_makeFlags dict:?];
}

- (id)_makeDict
{
  v3 = objc_opt_new();
  headerString = [(PKNotification *)self headerString];

  if (headerString)
  {
    headerString2 = [(PKNotification *)self headerString];
    [v3 setObject:headerString2 forKeyedSubscript:*MEMORY[0x277CBF188]];
  }

  messageString = [(PKNotification *)self messageString];

  if (messageString)
  {
    messageString2 = [(PKNotification *)self messageString];
    [v3 setObject:messageString2 forKeyedSubscript:*MEMORY[0x277CBF198]];
  }

  defaultButtonTitle = [(PKNotification *)self defaultButtonTitle];

  if (defaultButtonTitle)
  {
    defaultButtonTitle2 = [(PKNotification *)self defaultButtonTitle];
    [v3 setObject:defaultButtonTitle2 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  }

  alternateButtonTitle = [(PKNotification *)self alternateButtonTitle];

  if (alternateButtonTitle)
  {
    alternateButtonTitle2 = [(PKNotification *)self alternateButtonTitle];
    [v3 setObject:alternateButtonTitle2 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67340]];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67298]];

  return v3;
}

- (void)_interpretResult:(unint64_t)result responseDict:(id)dict
{
  v6 = [(PKNotification *)self resultHandler:result];
  resultQueue = [(PKNotification *)self resultQueue];
  v8 = 2 * (result == 1);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__PKNotification__interpretResult_responseDict___block_invoke;
  v10[3] = &unk_279A91C68;
  if (!result)
  {
    v8 = 1;
  }

  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(resultQueue, v10);
}

uint64_t __48__PKNotification__interpretResult_responseDict___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

@end