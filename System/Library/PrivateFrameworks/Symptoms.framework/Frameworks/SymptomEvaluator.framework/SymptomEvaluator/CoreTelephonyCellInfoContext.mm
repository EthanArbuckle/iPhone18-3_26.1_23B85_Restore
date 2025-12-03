@interface CoreTelephonyCellInfoContext
- (CoreTelephonyCellInfoContext)initWithCompletion:(id)completion queue:(id)queue;
@end

@implementation CoreTelephonyCellInfoContext

- (CoreTelephonyCellInfoContext)initWithCompletion:(id)completion queue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = CoreTelephonyCellInfoContext;
  v8 = [(CoreTelephonyCellInfoContext *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(CoreTelephonyCellInfoContext *)v8 setCompletion:completionCopy];
    [(CoreTelephonyCellInfoContext *)v9 setQueue:queueCopy];
    v10 = v9;
  }

  return v9;
}

@end