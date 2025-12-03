@interface PFTPromise
- (BOOL)cancelWithReason:(id)reason;
- (PFTPromise)init;
- (PFTPromise)initWithSchedulerProvider:(id)provider;
@end

@implementation PFTPromise

- (PFTPromise)init
{
  v3 = +[PFTSchedulerProvider defaultProvider];
  v4 = [(PFTPromise *)self initWithSchedulerProvider:v3];

  return v4;
}

- (PFTPromise)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = PFTPromise;
  v5 = [(PFTPromise *)&v10 init];
  if (v5)
  {
    v6 = [[PFTFuture alloc] initWithSchedulerProvider:providerCopy];
    future = v5->_future;
    v5->_future = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)cancelWithReason:(id)reason
{
  v12[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = reasonCopy;
  if (reasonCopy)
  {
    v11 = *MEMORY[0x277CCA470];
    v12[0] = reasonCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v6 = 0;
  }

  future = self->_future;
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:v6];
  LOBYTE(future) = [(PFTFuture *)future finishWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
  return future;
}

@end