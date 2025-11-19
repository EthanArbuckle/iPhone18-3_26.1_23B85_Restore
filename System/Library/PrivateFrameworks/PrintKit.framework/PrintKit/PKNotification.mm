@interface PKNotification
- (PKNotification)initWithNotifier:(id)a3 notifyKind:(int)a4;
- (id)_makeDict;
- (void)_interpretResult:(unint64_t)a3 responseDict:(id)a4;
- (void)start;
@end

@implementation PKNotification

- (PKNotification)initWithNotifier:(id)a3 notifyKind:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKNotification;
  v8 = [(PKNotification *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notifier, a3);
    v9->_kind = a4;
  }

  return v9;
}

- (void)start
{
  notifier = self->_notifier;
  v4 = [(PKNotification *)self _makeFlags];
  v5 = [(PKNotification *)self _makeDict];
  [(PKNotifier *)notifier startNotification:self options:v4 dict:?];
}

- (id)_makeDict
{
  v3 = objc_opt_new();
  v4 = [(PKNotification *)self headerString];

  if (v4)
  {
    v5 = [(PKNotification *)self headerString];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CBF188]];
  }

  v6 = [(PKNotification *)self messageString];

  if (v6)
  {
    v7 = [(PKNotification *)self messageString];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CBF198]];
  }

  v8 = [(PKNotification *)self defaultButtonTitle];

  if (v8)
  {
    v9 = [(PKNotification *)self defaultButtonTitle];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  }

  v10 = [(PKNotification *)self alternateButtonTitle];

  if (v10)
  {
    v11 = [(PKNotification *)self alternateButtonTitle];
    [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67320]];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67340]];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67298]];

  return v3;
}

- (void)_interpretResult:(unint64_t)a3 responseDict:(id)a4
{
  v6 = [(PKNotification *)self resultHandler:a3];
  v7 = [(PKNotification *)self resultQueue];
  v8 = 2 * (a3 == 1);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__PKNotification__interpretResult_responseDict___block_invoke;
  v10[3] = &unk_279A91C68;
  if (!a3)
  {
    v8 = 1;
  }

  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
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