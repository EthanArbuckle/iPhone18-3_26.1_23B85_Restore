@interface MicroPayment
+ (id)paymentEntityFromContext:(id)context;
- (BOOL)isEqualToResponse:(id)response compareAllFields:(BOOL)fields;
- (NSString)matchingIdentifier;
- (id)_temporaryIdentifier;
- (id)copyPaymentTransaction;
- (int64_t)_clientStateForServerState:(int64_t)state;
- (int64_t)_serverStateForClientState:(int64_t)state;
- (void)_updateDownloadsFromResponse:(id)response;
- (void)awakeFromInsert;
- (void)dealloc;
- (void)mergeValuesFromResponse:(id)response;
- (void)setFailedWithError:(id)error;
- (void)setTransactionIdentifier:(id)identifier;
- (void)setValuesWithPaymentTransaction:(id)transaction;
@end

@implementation MicroPayment

- (void)dealloc
{
  self->_temporaryIdentifier = 0;
  v3.receiver = self;
  v3.super_class = MicroPayment;
  [(MicroPayment *)&v3 dealloc];
}

+ (id)paymentEntityFromContext:(id)context
{
  v3 = [objc_msgSend(objc_msgSend(context "persistentStoreCoordinator")];

  return [v3 objectForKey:@"MicroPayment"];
}

- (id)copyPaymentTransaction
{
  v3 = objc_alloc_init(sub_1001FA228());
  [v3 setApplicationUsername:{-[MicroPayment applicationUsername](self, "applicationUsername")}];
  [v3 setPartnerIdentifier:{-[MicroPayment partnerIdentifier](self, "partnerIdentifier")}];
  [v3 setPartnerTransactionIdentifier:{-[MicroPayment partnerTransactionIdentifier](self, "partnerTransactionIdentifier")}];
  [v3 setProductIdentifier:{-[MicroPayment productIdentifier](self, "productIdentifier")}];
  [v3 setQuantity:{objc_msgSend(-[MicroPayment quantity](self, "quantity"), "integerValue")}];
  [v3 setRequestData:{-[MicroPayment requestData](self, "requestData")}];
  [v3 setSimulatesAskToBuyInSandbox:{objc_msgSend(-[MicroPayment simulatesAskToBuyInSandbox](self, "simulatesAskToBuyInSandbox"), "BOOLValue")}];
  if ([(MicroPayment *)self discountIdentifier])
  {
    v4 = [[NSUUID alloc] initWithUUIDString:{-[MicroPayment discountNonceString](self, "discountNonceString")}];
    v5 = [objc_alloc(sub_1001FA234()) initWithIdentifier:-[MicroPayment discountIdentifier](self keyIdentifier:"discountIdentifier") nonce:-[MicroPayment discountKeyIdentifier](self signature:"discountKeyIdentifier") timestamp:{v4, -[MicroPayment discountSignature](self, "discountSignature"), -[MicroPayment discountTimestamp](self, "discountTimestamp")}];
    [v3 setPaymentDiscount:v5];
  }

  actionParams = [(MicroPayment *)self actionParams];
  if (actionParams)
  {
    v7 = [NSURL copyDictionaryForQueryString:actionParams unescapedValues:1];
    [v3 setRequestParameters:v7];
  }

  v8 = [objc_alloc(sub_1001FA24C()) initWithPayment:v3];
  [v8 _setError:{sub_1001FA204(-[MicroPayment errorData](self, "errorData"))}];
  [v8 _setTransactionDate:{-[MicroPayment purchaseDate](self, "purchaseDate")}];
  [v8 _setTransactionReceipt:{-[MicroPayment receiptData](self, "receiptData")}];
  [v8 _setTransactionState:{-[MicroPayment _clientStateForServerState:](self, "_clientStateForServerState:", objc_msgSend(-[MicroPayment state](self, "state"), "integerValue"))}];
  transactionIdentifier = [(MicroPayment *)self transactionIdentifier];
  if (transactionIdentifier)
  {
    [v8 _setTransactionIdentifier:transactionIdentifier];
  }

  else
  {
    [v8 _setTemporaryIdentifier:{-[MicroPayment _temporaryIdentifier](self, "_temporaryIdentifier")}];
  }

  originalTransactionIdentifier = [(MicroPayment *)self originalTransactionIdentifier];
  if (originalTransactionIdentifier)
  {
    v11 = originalTransactionIdentifier;
    v12 = objc_alloc_init(sub_1001FA24C());
    [v12 _setTransactionDate:{-[MicroPayment originalPurchaseDate](self, "originalPurchaseDate")}];
    [v12 _setTransactionIdentifier:v11];
    [v8 _setOriginalTransaction:v12];
  }

  downloads = [(MicroPayment *)self downloads];
  if ([downloads count])
  {
    v14 = objc_alloc_init(NSMutableArray);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [downloads countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(downloads);
          }

          copySKDownload = [*(*(&v22 + 1) + 8 * v18) copySKDownload];
          if (copySKDownload)
          {
            v20 = copySKDownload;
            [v14 addObject:copySKDownload];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [downloads countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [v8 _setDownloads:v14];
  }

  return v8;
}

- (BOOL)isEqualToResponse:(id)response compareAllFields:(BOOL)fields
{
  fieldsCopy = fields;
  productIdentifier = [(MicroPayment *)self productIdentifier];
  stringValue = [response objectForKey:@"offer-name"];
  if (!stringValue)
  {
    stringValue = [response objectForKey:@"item-id"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [stringValue stringValue];
  }

  if (productIdentifier == stringValue)
  {
    v9 = 1;
  }

  else
  {
    v9 = [productIdentifier isEqualToString:stringValue];
  }

  quantity = [(MicroPayment *)self quantity];
  v11 = [response objectForKey:@"quantity"];
  if (v9)
  {
    if (quantity == v11)
    {
      v9 = 1;
    }

    else
    {
      v9 = [quantity isEqual:v11];
    }
  }

  transactionIdentifier = [(MicroPayment *)self transactionIdentifier];
  v13 = transactionIdentifier;
  if (fieldsCopy || transactionIdentifier && [-[MicroPayment state](self "state")] != 8)
  {
    v14 = [response objectForKey:@"transaction-id"];
    if (v9)
    {
      if (v13 == v14)
      {
        v9 = 1;
      }

      else
      {
        v9 = [v13 isEqual:v14];
      }
    }
  }

  userDSID = [(MicroPayment *)self userDSID];
  if (!userDSID && !fieldsCopy)
  {
    return v9;
  }

  v16 = [response objectForKey:@"dsid"];
  if (!v9)
  {
    return v9;
  }

  if (userDSID == v16)
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  return [userDSID isEqual:v16];
}

- (void)mergeValuesFromResponse:(id)response
{
  stringValue = [response objectForKey:@"offer-name"];
  if (!stringValue)
  {
    stringValue = [response objectForKey:@"item-id"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    stringValue = [stringValue stringValue];
  }

  [(MicroPayment *)self setProductIdentifier:stringValue];
LABEL_7:
  v6 = [response objectForKey:@"quantity"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setQuantity:v6];
  }

  v7 = [response objectForKey:@"receipt-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setReceiptData:v7];
  }

  v8 = [response objectForKey:@"request-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setRequestData:v8];
  }

  v9 = [response objectForKey:@"dsid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setUserDSID:v9];
  }

  v10 = [response objectForKey:@"applicationUsername"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setApplicationUsername:v10];
  }

  v11 = [response objectForKey:@"purchase-date"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setPurchaseDate:v11];
  }

  v12 = [response objectForKey:@"original-purchase-date"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 isEqual:v11] & 1) == 0)
  {
    [(MicroPayment *)self setOriginalPurchaseDate:v12];
  }

  v13 = [response objectForKey:@"transaction-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setTransactionIdentifier:v13];
  }

  v14 = [response objectForKey:@"original-transaction-id"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v14 isEqual:v13] & 1) == 0)
  {
    [(MicroPayment *)self setOriginalTransactionIdentifier:v14];
  }

  [(MicroPayment *)self _updateDownloadsFromResponse:response];
}

- (NSString)matchingIdentifier
{
  result = [(MicroPayment *)self transactionIdentifier];
  if (!result)
  {

    return [(MicroPayment *)self _temporaryIdentifier];
  }

  return result;
}

- (void)setFailedWithError:(id)error
{
  if (ISErrorIsEqual())
  {
    userInfo = [error userInfo];
    -[MicroPayment setAskPermissionRequestIdentifier:](self, "setAskPermissionRequestIdentifier:", [userInfo objectForKey:SSErrorAskPermissionRequestIdentifier]);
    v6 = &off_10034BD18;
  }

  else
  {
    v7 = sub_1000D2580(error);
    [(MicroPayment *)self setErrorData:sub_1001FA200(v7)];
    v6 = &off_10034BD30;
  }

  [(MicroPayment *)self setState:v6];
  matchingIdentifier = [(MicroPayment *)self matchingIdentifier];

  [(MicroPayment *)self setTransactionIdentifier:matchingIdentifier];
}

- (void)awakeFromInsert
{
  v3.receiver = self;
  v3.super_class = MicroPayment;
  [(MicroPayment *)&v3 awakeFromInsert];
  [(MicroPayment *)self setInsertDate:+[NSDate date]];
}

- (void)setTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifier)
  {

    self->_temporaryIdentifier = 0;
  }

  [(MicroPayment *)self willChangeValueForKey:@"transactionIdentifier"];
  [(MicroPayment *)self setPrimitiveValue:identifier forKey:@"transactionIdentifier"];
  [(MicroPayment *)self didChangeValueForKey:@"transactionIdentifier"];
}

- (void)setValuesWithPaymentTransaction:(id)transaction
{
  payment = [transaction payment];
  error = [transaction error];
  if (error)
  {
    [(MicroPayment *)self setFailedWithError:error];
  }

  else
  {
    [(MicroPayment *)self setErrorData:?];
    -[MicroPayment setState:](self, "setState:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[MicroPayment _serverStateForClientState:](self, "_serverStateForClientState:", [transaction transactionState])));
  }

  -[MicroPayment setApplicationUsername:](self, "setApplicationUsername:", [payment applicationUsername]);
  -[MicroPayment setPartnerIdentifier:](self, "setPartnerIdentifier:", [payment partnerIdentifier]);
  -[MicroPayment setPartnerTransactionIdentifier:](self, "setPartnerTransactionIdentifier:", [payment partnerTransactionIdentifier]);
  -[MicroPayment setProductIdentifier:](self, "setProductIdentifier:", [payment productIdentifier]);
  -[MicroPayment setPurchaseDate:](self, "setPurchaseDate:", [transaction transactionDate]);
  -[MicroPayment setQuantity:](self, "setQuantity:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [payment quantity]));
  -[MicroPayment setReceiptData:](self, "setReceiptData:", [transaction transactionReceipt]);
  -[MicroPayment setRequestData:](self, "setRequestData:", [payment requestData]);
  -[MicroPayment setTransactionIdentifier:](self, "setTransactionIdentifier:", [transaction transactionIdentifier]);
  -[MicroPayment setSimulatesAskToBuyInSandbox:](self, "setSimulatesAskToBuyInSandbox:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payment simulatesAskToBuyInSandbox]));
  -[MicroPayment setDiscountIdentifier:](self, "setDiscountIdentifier:", [objc_msgSend(payment "paymentDiscount")]);
  -[MicroPayment setDiscountKeyIdentifier:](self, "setDiscountKeyIdentifier:", [objc_msgSend(payment "paymentDiscount")]);
  -[MicroPayment setDiscountNonceString:](self, "setDiscountNonceString:", [objc_msgSend(objc_msgSend(objc_msgSend(payment "paymentDiscount")]);
  -[MicroPayment setDiscountSignature:](self, "setDiscountSignature:", [objc_msgSend(payment "paymentDiscount")]);
  -[MicroPayment setDiscountTimestamp:](self, "setDiscountTimestamp:", [objc_msgSend(payment "paymentDiscount")]);
  v7 = [objc_msgSend(payment "requestParameters")];
  if ([payment isStoreOriginated])
  {
    if (!v7)
    {
      v7 = objc_opt_new();
    }

    [v7 setObject:&__kCFBooleanTrue forKey:@"isStoreOriginated"];
  }

  if (v7)
  {
    [(MicroPayment *)self setActionParams:[NSURL queryStringForDictionary:v7 escapedValues:1]];
  }

  originalTransaction = [transaction originalTransaction];
  -[MicroPayment setOriginalPurchaseDate:](self, "setOriginalPurchaseDate:", [originalTransaction transactionDate]);
  transactionIdentifier = [originalTransaction transactionIdentifier];

  [(MicroPayment *)self setOriginalTransactionIdentifier:transactionIdentifier];
}

- (int64_t)_clientStateForServerState:(int64_t)state
{
  if (state <= 5)
  {
    v6 = 2;
    if (state != 5)
    {
      v6 = 0;
    }

    if (state == 2)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    switch(state)
    {
      case 6:
        return 3;
      case 7:
        return 10000;
      case 8:
        if ([-[MicroPayment supportsDeferredPayment](self supportsDeferredPayment])
        {
          return 4;
        }

        else
        {
          return 0;
        }

      default:
        return 0;
    }
  }
}

- (int64_t)_serverStateForClientState:(int64_t)state
{
  v3 = 1;
  v4 = 6;
  v5 = 8;
  if (state != 4)
  {
    v5 = 1;
  }

  if (state == 10000)
  {
    v6 = 7;
  }

  else
  {
    v6 = v5;
  }

  if (state != 3)
  {
    v4 = v6;
  }

  if (state == 2)
  {
    v3 = 5;
  }

  if (state == 1)
  {
    v3 = 2;
  }

  if (state <= 2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (id)_temporaryIdentifier
{
  if (!self->_temporaryIdentifier)
  {
    v3 = CFUUIDCreate(0);
    if (v3)
    {
      v4 = v3;
      self->_temporaryIdentifier = CFUUIDCreateString(0, v3);
      CFRelease(v4);
    }
  }

  return self->_temporaryIdentifier;
}

- (void)_updateDownloadsFromResponse:(id)response
{
  v4 = [response objectForKey:@"assetList"];
  objc_opt_class();
  obj = v4;
  if (objc_opt_isKindOfClass())
  {
    v25 = objc_alloc_init(NSMutableSet);
    managedObjectContext = [(MicroPayment *)self managedObjectContext];
    v22 = [MicroPaymentDownload downloadEntityFromContext:?];
    downloads = [(MicroPayment *)self downloads];
    if ([downloads count] == 1 && objc_msgSend(v4, "count") <= 1)
    {
      if ([v4 count] == 1)
      {
        anyObject = [downloads anyObject];
        [anyObject setValuesWithAssetDictionary:{objc_msgSend(v4, "objectAtIndex:", 0)}];
        [anyObject setPayment:self];
        [v25 addObject:anyObject];
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v32;
        v24 = *v32;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v31 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 objectForKey:@"URL"];
              if (v12)
              {
                v13 = v12;
                selfCopy = self;
                v29 = 0u;
                v30 = 0u;
                v27 = 0u;
                v28 = 0u;
                v15 = [downloads countByEnumeratingWithState:&v27 objects:v35 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v28;
LABEL_18:
                  v18 = 0;
                  while (1)
                  {
                    if (*v28 != v17)
                    {
                      objc_enumerationMutation(downloads);
                    }

                    v19 = *(*(&v27 + 1) + 8 * v18);
                    if ([v13 isEqualToString:{objc_msgSend(v19, "remoteURL")}])
                    {
                      break;
                    }

                    if (v16 == ++v18)
                    {
                      v16 = [downloads countByEnumeratingWithState:&v27 objects:v35 count:16];
                      if (v16)
                      {
                        goto LABEL_18;
                      }

                      goto LABEL_27;
                    }
                  }

                  v20 = v19;
                  if (!v20)
                  {
                    goto LABEL_27;
                  }

                  v21 = v20;
                  [(MicroPaymentDownload *)v20 setValuesWithAssetDictionary:v11];
                  self = selfCopy;
                  [(MicroPaymentDownload *)v21 setPayment:selfCopy];
                }

                else
                {
LABEL_27:
                  v21 = [[MicroPaymentDownload alloc] initWithEntity:v22 insertIntoManagedObjectContext:managedObjectContext];
                  self = selfCopy;
                  [(MicroPaymentDownload *)v21 setPayment:selfCopy];
                  [(MicroPaymentDownload *)v21 setValuesWithAssetDictionary:v11];
                }

                [v25 addObject:v21];

                v9 = v24;
              }
            }
          }

          v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v8);
      }
    }

    [(MicroPayment *)self setDownloads:v25];
  }

  else
  {

    [(MicroPayment *)self setDownloads:0];
  }
}

@end