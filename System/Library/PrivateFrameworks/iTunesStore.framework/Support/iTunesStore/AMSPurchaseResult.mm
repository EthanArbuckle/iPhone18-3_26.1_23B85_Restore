@interface AMSPurchaseResult
- (id)newSSPurchaseResponseWithSSPurchase:(id)a3;
@end

@implementation AMSPurchaseResult

- (id)newSSPurchaseResponseWithSSPurchase:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SSPurchaseResponse);
  [v5 setPurchase:v4];

  v6 = [(AMSPurchaseResult *)self error];
  [v5 setError:v6];

  v7 = [(AMSPurchaseResult *)self responseDictionary];
  v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:100 options:0 error:0];

  v9 = [SSURLConnectionResponse alloc];
  v10 = [(AMSPurchaseResult *)self URLResponse];
  objc_opt_class();
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  v12 = [v9 initWithURLResponse:v11 bodyData:v8];
  [v5 setURLResponse:v12];

  return v5;
}

@end