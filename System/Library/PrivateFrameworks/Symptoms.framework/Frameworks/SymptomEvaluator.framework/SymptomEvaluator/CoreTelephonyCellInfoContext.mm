@interface CoreTelephonyCellInfoContext
- (CoreTelephonyCellInfoContext)initWithCompletion:(id)a3 queue:(id)a4;
@end

@implementation CoreTelephonyCellInfoContext

- (CoreTelephonyCellInfoContext)initWithCompletion:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CoreTelephonyCellInfoContext;
  v8 = [(CoreTelephonyCellInfoContext *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(CoreTelephonyCellInfoContext *)v8 setCompletion:v6];
    [(CoreTelephonyCellInfoContext *)v9 setQueue:v7];
    v10 = v9;
  }

  return v9;
}

@end