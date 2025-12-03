@interface AMSPurchaseResult
- (id)newSSPurchaseResponseWithSSPurchase:(id)purchase;
@end

@implementation AMSPurchaseResult

- (id)newSSPurchaseResponseWithSSPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v5 = objc_alloc_init(SSPurchaseResponse);
  [v5 setPurchase:purchaseCopy];

  error = [(AMSPurchaseResult *)self error];
  [v5 setError:error];

  responseDictionary = [(AMSPurchaseResult *)self responseDictionary];
  v8 = [NSPropertyListSerialization dataWithPropertyList:responseDictionary format:100 options:0 error:0];

  v9 = [SSURLConnectionResponse alloc];
  uRLResponse = [(AMSPurchaseResult *)self URLResponse];
  objc_opt_class();
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    v11 = uRLResponse;
  }

  v12 = [v9 initWithURLResponse:v11 bodyData:v8];
  [v5 setURLResponse:v12];

  return v5;
}

@end