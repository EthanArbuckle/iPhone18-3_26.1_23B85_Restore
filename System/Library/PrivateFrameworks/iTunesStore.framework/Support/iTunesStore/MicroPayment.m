@interface MicroPayment
+ (id)paymentEntityFromContext:(id)a3;
- (BOOL)isEqualToResponse:(id)a3 compareAllFields:(BOOL)a4;
- (NSString)matchingIdentifier;
- (id)_temporaryIdentifier;
- (id)copyPaymentTransaction;
- (int64_t)_clientStateForServerState:(int64_t)a3;
- (int64_t)_serverStateForClientState:(int64_t)a3;
- (void)_updateDownloadsFromResponse:(id)a3;
- (void)awakeFromInsert;
- (void)dealloc;
- (void)mergeValuesFromResponse:(id)a3;
- (void)setFailedWithError:(id)a3;
- (void)setTransactionIdentifier:(id)a3;
- (void)setValuesWithPaymentTransaction:(id)a3;
@end

@implementation MicroPayment

- (void)dealloc
{
  self->_temporaryIdentifier = 0;
  v3.receiver = self;
  v3.super_class = MicroPayment;
  [(MicroPayment *)&v3 dealloc];
}

+ (id)paymentEntityFromContext:(id)a3
{
  v3 = [objc_msgSend(objc_msgSend(a3 "persistentStoreCoordinator")];

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

  v6 = [(MicroPayment *)self actionParams];
  if (v6)
  {
    v7 = [NSURL copyDictionaryForQueryString:v6 unescapedValues:1];
    [v3 setRequestParameters:v7];
  }

  v8 = [objc_alloc(sub_1001FA24C()) initWithPayment:v3];
  [v8 _setError:{sub_1001FA204(-[MicroPayment errorData](self, "errorData"))}];
  [v8 _setTransactionDate:{-[MicroPayment purchaseDate](self, "purchaseDate")}];
  [v8 _setTransactionReceipt:{-[MicroPayment receiptData](self, "receiptData")}];
  [v8 _setTransactionState:{-[MicroPayment _clientStateForServerState:](self, "_clientStateForServerState:", objc_msgSend(-[MicroPayment state](self, "state"), "integerValue"))}];
  v9 = [(MicroPayment *)self transactionIdentifier];
  if (v9)
  {
    [v8 _setTransactionIdentifier:v9];
  }

  else
  {
    [v8 _setTemporaryIdentifier:{-[MicroPayment _temporaryIdentifier](self, "_temporaryIdentifier")}];
  }

  v10 = [(MicroPayment *)self originalTransactionIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc_init(sub_1001FA24C());
    [v12 _setTransactionDate:{-[MicroPayment originalPurchaseDate](self, "originalPurchaseDate")}];
    [v12 _setTransactionIdentifier:v11];
    [v8 _setOriginalTransaction:v12];
  }

  v13 = [(MicroPayment *)self downloads];
  if ([v13 count])
  {
    v14 = objc_alloc_init(NSMutableArray);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v22 + 1) + 8 * v18) copySKDownload];
          if (v19)
          {
            v20 = v19;
            [v14 addObject:v19];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [v8 _setDownloads:v14];
  }

  return v8;
}

- (BOOL)isEqualToResponse:(id)a3 compareAllFields:(BOOL)a4
{
  v4 = a4;
  v7 = [(MicroPayment *)self productIdentifier];
  v8 = [a3 objectForKey:@"offer-name"];
  if (!v8)
  {
    v8 = [a3 objectForKey:@"item-id"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v8 stringValue];
  }

  if (v7 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v7 isEqualToString:v8];
  }

  v10 = [(MicroPayment *)self quantity];
  v11 = [a3 objectForKey:@"quantity"];
  if (v9)
  {
    if (v10 == v11)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v10 isEqual:v11];
    }
  }

  v12 = [(MicroPayment *)self transactionIdentifier];
  v13 = v12;
  if (v4 || v12 && [-[MicroPayment state](self "state")] != 8)
  {
    v14 = [a3 objectForKey:@"transaction-id"];
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

  v15 = [(MicroPayment *)self userDSID];
  if (!v15 && !v4)
  {
    return v9;
  }

  v16 = [a3 objectForKey:@"dsid"];
  if (!v9)
  {
    return v9;
  }

  if (v15 == v16)
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  return [v15 isEqual:v16];
}

- (void)mergeValuesFromResponse:(id)a3
{
  v5 = [a3 objectForKey:@"offer-name"];
  if (!v5)
  {
    v5 = [a3 objectForKey:@"item-id"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v5 = [v5 stringValue];
  }

  [(MicroPayment *)self setProductIdentifier:v5];
LABEL_7:
  v6 = [a3 objectForKey:@"quantity"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setQuantity:v6];
  }

  v7 = [a3 objectForKey:@"receipt-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setReceiptData:v7];
  }

  v8 = [a3 objectForKey:@"request-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setRequestData:v8];
  }

  v9 = [a3 objectForKey:@"dsid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setUserDSID:v9];
  }

  v10 = [a3 objectForKey:@"applicationUsername"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setApplicationUsername:v10];
  }

  v11 = [a3 objectForKey:@"purchase-date"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setPurchaseDate:v11];
  }

  v12 = [a3 objectForKey:@"original-purchase-date"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 isEqual:v11] & 1) == 0)
  {
    [(MicroPayment *)self setOriginalPurchaseDate:v12];
  }

  v13 = [a3 objectForKey:@"transaction-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MicroPayment *)self setTransactionIdentifier:v13];
  }

  v14 = [a3 objectForKey:@"original-transaction-id"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v14 isEqual:v13] & 1) == 0)
  {
    [(MicroPayment *)self setOriginalTransactionIdentifier:v14];
  }

  [(MicroPayment *)self _updateDownloadsFromResponse:a3];
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

- (void)setFailedWithError:(id)a3
{
  if (ISErrorIsEqual())
  {
    v5 = [a3 userInfo];
    -[MicroPayment setAskPermissionRequestIdentifier:](self, "setAskPermissionRequestIdentifier:", [v5 objectForKey:SSErrorAskPermissionRequestIdentifier]);
    v6 = &off_10034BD18;
  }

  else
  {
    v7 = sub_1000D2580(a3);
    [(MicroPayment *)self setErrorData:sub_1001FA200(v7)];
    v6 = &off_10034BD30;
  }

  [(MicroPayment *)self setState:v6];
  v8 = [(MicroPayment *)self matchingIdentifier];

  [(MicroPayment *)self setTransactionIdentifier:v8];
}

- (void)awakeFromInsert
{
  v3.receiver = self;
  v3.super_class = MicroPayment;
  [(MicroPayment *)&v3 awakeFromInsert];
  [(MicroPayment *)self setInsertDate:+[NSDate date]];
}

- (void)setTransactionIdentifier:(id)a3
{
  v4 = a3;
  if (a3)
  {

    self->_temporaryIdentifier = 0;
  }

  [(MicroPayment *)self willChangeValueForKey:@"transactionIdentifier"];
  [(MicroPayment *)self setPrimitiveValue:a3 forKey:@"transactionIdentifier"];
  [(MicroPayment *)self didChangeValueForKey:@"transactionIdentifier"];
}

- (void)setValuesWithPaymentTransaction:(id)a3
{
  v5 = [a3 payment];
  v6 = [a3 error];
  if (v6)
  {
    [(MicroPayment *)self setFailedWithError:v6];
  }

  else
  {
    [(MicroPayment *)self setErrorData:?];
    -[MicroPayment setState:](self, "setState:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[MicroPayment _serverStateForClientState:](self, "_serverStateForClientState:", [a3 transactionState])));
  }

  -[MicroPayment setApplicationUsername:](self, "setApplicationUsername:", [v5 applicationUsername]);
  -[MicroPayment setPartnerIdentifier:](self, "setPartnerIdentifier:", [v5 partnerIdentifier]);
  -[MicroPayment setPartnerTransactionIdentifier:](self, "setPartnerTransactionIdentifier:", [v5 partnerTransactionIdentifier]);
  -[MicroPayment setProductIdentifier:](self, "setProductIdentifier:", [v5 productIdentifier]);
  -[MicroPayment setPurchaseDate:](self, "setPurchaseDate:", [a3 transactionDate]);
  -[MicroPayment setQuantity:](self, "setQuantity:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 quantity]));
  -[MicroPayment setReceiptData:](self, "setReceiptData:", [a3 transactionReceipt]);
  -[MicroPayment setRequestData:](self, "setRequestData:", [v5 requestData]);
  -[MicroPayment setTransactionIdentifier:](self, "setTransactionIdentifier:", [a3 transactionIdentifier]);
  -[MicroPayment setSimulatesAskToBuyInSandbox:](self, "setSimulatesAskToBuyInSandbox:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 simulatesAskToBuyInSandbox]));
  -[MicroPayment setDiscountIdentifier:](self, "setDiscountIdentifier:", [objc_msgSend(v5 "paymentDiscount")]);
  -[MicroPayment setDiscountKeyIdentifier:](self, "setDiscountKeyIdentifier:", [objc_msgSend(v5 "paymentDiscount")]);
  -[MicroPayment setDiscountNonceString:](self, "setDiscountNonceString:", [objc_msgSend(objc_msgSend(objc_msgSend(v5 "paymentDiscount")]);
  -[MicroPayment setDiscountSignature:](self, "setDiscountSignature:", [objc_msgSend(v5 "paymentDiscount")]);
  -[MicroPayment setDiscountTimestamp:](self, "setDiscountTimestamp:", [objc_msgSend(v5 "paymentDiscount")]);
  v7 = [objc_msgSend(v5 "requestParameters")];
  if ([v5 isStoreOriginated])
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

  v8 = [a3 originalTransaction];
  -[MicroPayment setOriginalPurchaseDate:](self, "setOriginalPurchaseDate:", [v8 transactionDate]);
  v9 = [v8 transactionIdentifier];

  [(MicroPayment *)self setOriginalTransactionIdentifier:v9];
}

- (int64_t)_clientStateForServerState:(int64_t)a3
{
  if (a3 <= 5)
  {
    v6 = 2;
    if (a3 != 5)
    {
      v6 = 0;
    }

    if (a3 == 2)
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
    switch(a3)
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

- (int64_t)_serverStateForClientState:(int64_t)a3
{
  v3 = 1;
  v4 = 6;
  v5 = 8;
  if (a3 != 4)
  {
    v5 = 1;
  }

  if (a3 == 10000)
  {
    v6 = 7;
  }

  else
  {
    v6 = v5;
  }

  if (a3 != 3)
  {
    v4 = v6;
  }

  if (a3 == 2)
  {
    v3 = 5;
  }

  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 <= 2)
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

- (void)_updateDownloadsFromResponse:(id)a3
{
  v4 = [a3 objectForKey:@"assetList"];
  objc_opt_class();
  obj = v4;
  if (objc_opt_isKindOfClass())
  {
    v25 = objc_alloc_init(NSMutableSet);
    v23 = [(MicroPayment *)self managedObjectContext];
    v22 = [MicroPaymentDownload downloadEntityFromContext:?];
    v5 = [(MicroPayment *)self downloads];
    if ([v5 count] == 1 && objc_msgSend(v4, "count") <= 1)
    {
      if ([v4 count] == 1)
      {
        v6 = [v5 anyObject];
        [v6 setValuesWithAssetDictionary:{objc_msgSend(v4, "objectAtIndex:", 0)}];
        [v6 setPayment:self];
        [v25 addObject:v6];
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
                v14 = self;
                v29 = 0u;
                v30 = 0u;
                v27 = 0u;
                v28 = 0u;
                v15 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                      objc_enumerationMutation(v5);
                    }

                    v19 = *(*(&v27 + 1) + 8 * v18);
                    if ([v13 isEqualToString:{objc_msgSend(v19, "remoteURL")}])
                    {
                      break;
                    }

                    if (v16 == ++v18)
                    {
                      v16 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                  self = v14;
                  [(MicroPaymentDownload *)v21 setPayment:v14];
                }

                else
                {
LABEL_27:
                  v21 = [[MicroPaymentDownload alloc] initWithEntity:v22 insertIntoManagedObjectContext:v23];
                  self = v14;
                  [(MicroPaymentDownload *)v21 setPayment:v14];
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