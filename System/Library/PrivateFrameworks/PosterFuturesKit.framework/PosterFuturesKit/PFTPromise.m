@interface PFTPromise
- (BOOL)cancelWithReason:(id)a3;
- (PFTPromise)init;
- (PFTPromise)initWithSchedulerProvider:(id)a3;
@end

@implementation PFTPromise

- (PFTPromise)init
{
  v3 = +[PFTSchedulerProvider defaultProvider];
  v4 = [(PFTPromise *)self initWithSchedulerProvider:v3];

  return v4;
}

- (PFTPromise)initWithSchedulerProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PFTPromise;
  v5 = [(PFTPromise *)&v10 init];
  if (v5)
  {
    v6 = [[PFTFuture alloc] initWithSchedulerProvider:v4];
    future = v5->_future;
    v5->_future = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)cancelWithReason:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = *MEMORY[0x277CCA470];
    v12[0] = v4;
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