@interface LoadMicroPaymentQueueOperation
- (BOOL)_getQueueCount:(int64_t *)a3 error:(id *)a4;
- (BOOL)_loadPaymentsWithExpectedCount:(int64_t)a3 error:(id *)a4;
- (void)dealloc;
- (void)run;
@end

@implementation LoadMicroPaymentQueueOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMicroPaymentQueueOperation;
  [(LoadMicroPaymentQueueOperation *)&v3 dealloc];
}

- (void)run
{
  v6 = 0;
  v7 = 0;
  if ([(LoadMicroPaymentQueueOperation *)self _getQueueCount:&v6 error:&v7])
  {
    v3 = v6;
    if (v6 < 1 || v3 == [(LoadMicroPaymentQueueOperation *)self expectedCount])
    {
      v4 = objc_alloc_init(MicroPaymentQueueResponse);
      [(MicroPaymentQueueResponse *)v4 setServerPaymentCount:v6];
      [(LoadMicroPaymentQueueOperation *)self setResponse:v4];

      v5 = 1;
    }

    else
    {
      v5 = [(LoadMicroPaymentQueueOperation *)self _loadPaymentsWithExpectedCount:v6 error:&v7];
    }
  }

  else
  {
    v5 = 0;
  }

  [(LoadMicroPaymentQueueOperation *)self setError:v7];
  [(LoadMicroPaymentQueueOperation *)self setSuccess:v5];
}

- (BOOL)_getQueueCount:(int64_t *)a3 error:(id *)a4
{
  v11 = 0;
  v7 = objc_alloc_init(LoadMicroPaymentQueueCountOperation);
  [(LoadMicroPaymentQueueCountOperation *)v7 setLastQueueCheckDate:[(LoadMicroPaymentQueueOperation *)self lastQueueCheckDate]];
  [(LoadMicroPaymentQueueCountOperation *)v7 setRequest:[(LoadMicroPaymentQueueOperation *)self request]];
  [(LoadMicroPaymentQueueCountOperation *)v7 setURLBagKey:[(LoadMicroPaymentQueueOperation *)self queueCountURLBagKey]];
  v8 = [(LoadMicroPaymentQueueOperation *)self runSubOperation:v7 returningError:&v11];
  v9 = 0;
  if (v8)
  {
    v9 = [(LoadMicroPaymentQueueCountOperation *)v7 queueItemCount];
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v11;
  }

  return v8;
}

- (BOOL)_loadPaymentsWithExpectedCount:(int64_t)a3 error:(id *)a4
{
  v11 = 0;
  v7 = objc_alloc_init(LoadMicroPaymentQueuePaymentsOperation);
  [(LoadMicroPaymentQueuePaymentsOperation *)v7 setRequest:[(LoadMicroPaymentQueueOperation *)self request]];
  [(LoadMicroPaymentQueuePaymentsOperation *)v7 setURLBagKey:[(LoadMicroPaymentQueueOperation *)self queuePaymentsURLBagKey]];
  v8 = [(LoadMicroPaymentQueueOperation *)self runSubOperation:v7 returningError:&v11];
  if (v8)
  {
    v9 = [(LoadMicroPaymentQueuePaymentsOperation *)v7 response];
    [(MicroPaymentQueueResponse *)v9 setServerPaymentCount:a3];
    [(LoadMicroPaymentQueueOperation *)self setResponse:v9];
  }

  if (a4)
  {
    *a4 = v11;
  }

  return v8;
}

@end