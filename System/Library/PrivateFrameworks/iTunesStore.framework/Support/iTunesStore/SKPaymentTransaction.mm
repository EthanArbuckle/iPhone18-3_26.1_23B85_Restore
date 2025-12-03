@interface SKPaymentTransaction
- (BOOL)canMergeWithTransaction:(id)transaction;
- (BOOL)mergeWithServerTransaction:(id)transaction;
- (BOOL)mergeWithTransaction:(id)transaction;
- (NSString)matchingIdentifier;
- (SKPaymentTransaction)init;
- (SKPaymentTransaction)initWithPayment:(id)payment;
- (SKPaymentTransaction)initWithServerTransaction:(id)transaction;
- (SKPaymentTransaction)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (id)getPaymentDiscountFromTransactionXPCEncoding:(id)encoding;
- (void)_setDownloads:(id)downloads;
- (void)_setError:(id)error;
- (void)_setOriginalTransaction:(id)transaction;
- (void)_setTemporaryIdentifier:(id)identifier;
- (void)_setTransactionDate:(id)date;
- (void)_setTransactionIdentifier:(id)identifier;
- (void)_setTransactionReceipt:(id)receipt;
@end

@implementation SKPaymentTransaction

- (SKPaymentTransaction)init
{
  v6.receiver = self;
  v6.super_class = SKPaymentTransaction;
  v2 = [(SKPaymentTransaction *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKPaymentTransactionInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (SKPaymentTransaction)initWithPayment:(id)payment
{
  paymentCopy = payment;
  v5 = [(SKPaymentTransaction *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = v5->_internal;
    v8 = [paymentCopy copy];
    v9 = v7[5];
    v7[5] = v8;
  }

  return v6;
}

- (BOOL)canMergeWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(self->_internal + 5);
  v7 = *(transactionCopy[1] + 40);
  v8 = v7;
  if (isKindOfClass)
  {
    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v6 isEqual:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(self->_internal + 8);

  if (v10)
  {
    v11 = *(transactionCopy[1] + 64);

    if (v9)
    {
      if (v10 == v11)
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = [v10 isEqualToString:v11];
      }
    }
  }

  else
  {
    v11 = v8;
  }

  return v9;
}

- (NSString)matchingIdentifier
{
  v3 = *(self->_internal + 8);
  if (!v3)
  {
    v3 = *(self->_internal + 6);
  }

  return v3;
}

- (BOOL)mergeWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = self->_internal;
  v6 = transactionCopy[1];
  v7 = v6[3];
  if (v5[3] != v7)
  {
    objc_storeStrong(v5 + 3, v7);
  }

  v8 = v5[10];
  v9 = v6[10];
  v10 = v8 != v9;
  if (v8 != v9)
  {
    v5[10] = v9;
  }

  v11 = v6[4];
  if (v5[4] != v11)
  {
    objc_storeStrong(v5 + 4, v11);
  }

  v12 = v6[7];
  if (v5[7] != v12)
  {
    objc_storeStrong(v5 + 7, v12);
  }

  v13 = v6[8];
  if (v5[8] != v13)
  {
    v14 = [v13 copy];
    v15 = v5[8];
    v5[8] = v14;
  }

  v16 = v6[6];
  if (v5[6] != v16)
  {
    v17 = [v16 copy];
    v18 = v5[6];
    v5[6] = v17;
  }

  v19 = v6[9];
  if (v5[9] != v19)
  {
    objc_storeStrong(v5 + 9, v19);
  }

  v20 = v5[2];
  if (v20 != v6[2] && ([v20 isEqualToArray:?] & 1) == 0)
  {
    [(SKPaymentTransaction *)self _setDownloads:v6[2]];
    v10 = 1;
  }

  return v10;
}

- (void)_setDownloads:(id)downloads
{
  internal = self->_internal;
  v4 = internal[2];
  if (v4 != downloads)
  {
    v10 = internal;
    downloadsCopy = downloads;
    [v4 makeObjectsPerformSelector:"_setTransaction:" withObject:0];
    v8 = [downloadsCopy copy];

    v9 = internal[2];
    internal[2] = v8;

    [internal[2] makeObjectsPerformSelector:"_setTransaction:" withObject:self];
  }
}

- (void)_setError:(id)error
{
  errorCopy = error;
  internal = self->_internal;
  v8 = *(internal + 3);
  v7 = (internal + 24);
  if (v8 != errorCopy)
  {
    v9 = errorCopy;
    objc_storeStrong(v7, error);
    errorCopy = v9;
  }

  _objc_release_x1(v7, errorCopy);
}

- (void)_setOriginalTransaction:(id)transaction
{
  transactionCopy = transaction;
  internal = self->_internal;
  v8 = *(internal + 4);
  v7 = (internal + 32);
  if (v8 != transactionCopy)
  {
    v9 = transactionCopy;
    objc_storeStrong(v7, transaction);
    transactionCopy = v9;
  }

  _objc_release_x1(v7, transactionCopy);
}

- (void)_setTemporaryIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[6] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[6];
    internal[6] = v5;
  }
}

- (void)_setTransactionDate:(id)date
{
  dateCopy = date;
  internal = self->_internal;
  v8 = *(internal + 7);
  v7 = (internal + 56);
  if (v8 != dateCopy)
  {
    v9 = dateCopy;
    objc_storeStrong(v7, date);
    dateCopy = v9;
  }

  _objc_release_x1(v7, dateCopy);
}

- (void)_setTransactionIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[8] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[8];
    internal[8] = v5;
  }
}

- (void)_setTransactionReceipt:(id)receipt
{
  internal = self->_internal;
  if (internal[9] != receipt)
  {
    v7 = internal;
    v5 = [receipt copy];
    v6 = internal[9];
    internal[9] = v5;
  }
}

- (SKPaymentTransaction)initWithServerTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [(SKPaymentTransaction *)self init];
  v6 = v5;
  if (v5)
  {
    [(SKPaymentTransaction *)v5 mergeWithServerTransaction:transactionCopy];
  }

  return v6;
}

- (BOOL)mergeWithServerTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = self->_internal;
  v6 = [transactionCopy objectForKeyedSubscript:@"uuid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5 + 1, v6);
  }

  v7 = [transactionCopy objectForKeyedSubscript:@"tid"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5 + 8, v7);
  }

  v8 = [transactionCopy objectForKeyedSubscript:@"state"];

  if (objc_opt_respondsToSelector())
  {
    v5[10] = [v8 integerValue];
  }

  v9 = [transactionCopy objectForKeyedSubscript:@"assets"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v9;
    selfCopy = self;
    v48 = transactionCopy;
    v10 = v9;
    v49 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v52;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v51 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:{@"hosted-id", v46}];
          productIdentifier = [v5[5] productIdentifier];
          v18 = productIdentifier;
          if (v16)
          {
            v19 = productIdentifier == 0;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            v20 = v5;
            v21 = objc_alloc_init(SKDownload);
            [(SKDownload *)v21 _setDownloadID:v16];
            [(SKDownload *)v21 _setContentIdentifier:v18];
            v22 = [v15 objectForKeyedSubscript:@"hosted-content-length"];
            [(SKDownload *)v21 _setContentLength:v22];

            v23 = [v15 objectForKeyedSubscript:@"hosted-version"];
            [(SKDownload *)v21 _setVersion:v23];

            [v49 addObject:v21];
            v5 = v20;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v12);
    }

    [(SKPaymentTransaction *)selfCopy _setDownloads:v49];
    transactionCopy = v48;
    v9 = v46;
  }

  v24 = [transactionCopy objectForKeyedSubscript:{@"error", v46}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25 = v24;
    v27 = v5[3];
    v5[3] = v26;
  }

  v28 = [transactionCopy objectForKeyedSubscript:@"odate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5 + 7, v28);
  }

  v29 = [transactionCopy objectForKeyedSubscript:@"rcpt"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5 + 9, v29);
  }

  v30 = [transactionCopy objectForKeyedSubscript:@"date"];
  v31 = [transactionCopy objectForKeyedSubscript:@"otid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v32 = objc_alloc_init(SKPaymentTransaction);
    internal = v32->_internal;
    v34 = v30;
    v35 = internal[7];
    internal[7] = v34;
    v36 = internal;

    v37 = [v31 copy];
    v38 = v36[8];
    v36[8] = v37;

    v36[10] = 1;
  }

  else
  {
    v32 = 0;
  }

  v39 = [transactionCopy objectForKeyedSubscript:@"id"];
  v40 = [transactionCopy objectForKeyedSubscript:@"qty"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v41 = transactionCopy;
    v42 = objc_alloc_init(SKMutablePayment);
    [(SKMutablePayment *)v42 setProductIdentifier:v39];
    -[SKMutablePayment setQuantity:](v42, "setQuantity:", [v40 integerValue]);
    v43 = [v41 objectForKeyedSubscript:@"rdata"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKMutablePayment *)v42 setRequestData:v43];
    }

    objc_storeStrong(v5 + 5, v42);
    if (v32)
    {
      objc_storeStrong(v32->_internal + 5, v42);
    }

    transactionCopy = v41;
  }

  else
  {
    v43 = v29;
  }

  v44 = v5[4];
  v5[4] = v32;

  return 1;
}

- (SKPaymentTransaction)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (!encodingCopy || xpc_get_type(encodingCopy) != &_xpc_type_dictionary)
  {

    v6 = 0;
    goto LABEL_4;
  }

  v8 = [(SKPaymentTransaction *)self init];
  v6 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8->_internal;
  objc_opt_class();
  v10 = sub_10018E3FC(v5, "2");
  v11 = v10;
  if (v10)
  {
    v12 = sub_10018DAD8(v10);
    v13 = *(v9 + 3);
    *(v9 + 3) = v12;
  }

  objc_opt_class();
  v14 = sub_10018E3FC(v5, "6");

  if (v14)
  {
    objc_storeStrong(v9 + 7, v14);
  }

  v15 = sub_10018E3C4(v5, "11");

  if (objc_opt_respondsToSelector())
  {
    integerValue = [(__CFDictionary *)v15 integerValue];
    *(v9 + 10) = integerValue;
    if (integerValue == 10000)
    {
      v17 = _CFExecutableLinkedOnOrAfter();
      v18 = 3;
      if (v17)
      {
        v18 = 1;
      }

      *(v9 + 10) = v18;
    }
  }

  objc_opt_class();
  v19 = sub_10018E3FC(v5, "13");

  if (v19)
  {
    v20 = 64;
LABEL_19:
    objc_storeStrong(&v9[v20], v19);
    goto LABEL_20;
  }

  objc_opt_class();
  v19 = sub_10018E3FC(v5, "12");
  if (v19)
  {
    v20 = 48;
    goto LABEL_19;
  }

LABEL_20:
  objc_opt_class();
  v21 = sub_10018E3FC(v5, "8");

  if (v21)
  {
    objc_storeStrong(v9 + 9, v21);
  }

  objc_opt_class();
  v22 = sub_10018E3FC(v5, "4");
  objc_opt_class();
  v23 = sub_10018E3FC(v5, "5");
  v24 = v23;
  v25 = 0;
  v49 = v22;
  if (v22 && v23)
  {
    v25 = objc_alloc_init(SKPaymentTransaction);
    v26 = v24;
    internal = v25->_internal;
    v28 = v49;
    v29 = internal[7];
    internal[7] = v28;
    v30 = internal;

    v31 = [(__CFDictionary *)v26 copy];
    v32 = v30[8];
    v30[8] = v31;

    v30[10] = 1;
    v24 = v26;
  }

  objc_opt_class();
  v33 = sub_10018E3FC(v5, "3");
  v34 = sub_10018E3C4(v5, "7");
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v48 = v24;
    v35 = objc_alloc_init(SKMutablePayment);
    [(SKMutablePayment *)v35 setProductIdentifier:v33];
    [(SKMutablePayment *)v35 setQuantity:[(__CFDictionary *)v34 integerValue]];
    objc_opt_class();
    v36 = sub_10018E3FC(v5, "9");

    if (v36)
    {
      [(SKMutablePayment *)v35 setRequestData:v36];
    }

    objc_opt_class();
    v37 = sub_10018E3FC(v5, "10");

    if (v37)
    {
      [(SKMutablePayment *)v35 setRequestParameters:v37];
    }

    objc_opt_class();
    v38 = sub_10018E3FC(v5, "0");

    if (v38)
    {
      [(SKMutablePayment *)v35 setApplicationUsername:v38];
    }

    objc_opt_class();
    v39 = sub_10018E3FC(v5, "14");

    if (v39)
    {
      [(SKMutablePayment *)v35 setPartnerIdentifier:v39];
    }

    objc_opt_class();
    v40 = sub_10018E3FC(v5, "15");

    if (v40)
    {
      [(SKMutablePayment *)v35 setPartnerTransactionIdentifier:v40];
    }

    v21 = sub_10018E3C4(v5, "16");

    if (objc_opt_respondsToSelector())
    {
      [(SKMutablePayment *)v35 setSimulatesAskToBuyInSandbox:[(__CFDictionary *)v21 BOOLValue]];
    }

    [(SKMutablePayment *)v35 setIsStoreOriginated:xpc_dictionary_get_BOOL(v5, "17")];
    v41 = [(SKPaymentTransaction *)v6 getPaymentDiscountFromTransactionXPCEncoding:v5];
    [(SKMutablePayment *)v35 setPaymentDiscount:v41];
    v42 = [(SKMutablePayment *)v35 copy];
    objc_storeStrong(v9 + 5, v42);
    if (v25)
    {
      objc_storeStrong(v25->_internal + 5, v42);
    }

    v24 = v48;
  }

  objc_storeStrong(v9 + 4, v25);
  v43 = xpc_dictionary_get_value(v5, "1");
  v44 = v43;
  if (v43 && xpc_get_type(v43) == &_xpc_type_array)
  {
    v45 = v34;
    v46 = v24;
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1000C84C4;
    applier[3] = &unk_100328088;
    v47 = objc_alloc_init(NSMutableArray);
    v51 = v47;
    xpc_array_apply(v44, applier);
    if ([v47 count])
    {
      [(SKPaymentTransaction *)v6 _setDownloads:v47];
    }

    v24 = v46;
    v34 = v45;
  }

LABEL_4:
  return v6;
}

- (id)getPaymentDiscountFromTransactionXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  objc_opt_class();
  v4 = sub_10018E3FC(encodingCopy, "18");
  if (v4)
  {
    objc_opt_class();
    v5 = sub_10018E3FC(encodingCopy, "19");
    if (v5)
    {
      objc_opt_class();
      v6 = sub_10018E3FC(encodingCopy, "20");
      v7 = [[NSUUID alloc] initWithUUIDString:v6];
      if (v7)
      {
        objc_opt_class();
        v8 = sub_10018E3FC(encodingCopy, "21");
        if (v8)
        {
          objc_opt_class();
          v9 = sub_10018E3FC(encodingCopy, "22");
          if (v9)
          {
            v10 = [[SKPaymentDiscount alloc] initWithIdentifier:v4 keyIdentifier:v5 nonce:v7 signature:v8 timestamp:v9];
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  internal = self->_internal;
  v5 = internal[5];
  v6 = internal;
  sub_10018E448(v3, "0", [v5 applicationUsername]);
  sub_10018E448(v3, "1", v6[2]);
  v7 = sub_10018D55C(v6[3]);
  sub_10018E448(v3, "2", v7);
  sub_10018E448(v3, "3", [internal[5] productIdentifier]);
  sub_10018E448(v3, "4", [v6[4] transactionDate]);
  sub_10018E448(v3, "5", [v6[4] transactionIdentifier]);
  sub_10018E448(v3, "14", [internal[5] partnerIdentifier]);
  sub_10018E448(v3, "15", [internal[5] partnerTransactionIdentifier]);
  sub_10018E448(v3, "6", v6[7]);
  xpc_dictionary_set_int64(v3, "7", [internal[5] quantity]);
  sub_10018E448(v3, "8", v6[9]);
  sub_10018E448(v3, "9", [internal[5] requestData]);
  sub_10018E448(v3, "10", [internal[5] requestParameters]);
  xpc_dictionary_set_int64(v3, "11", v6[10]);
  sub_10018E448(v3, "12", v6[6]);
  sub_10018E448(v3, "13", v6[8]);
  xpc_dictionary_set_BOOL(v3, "16", [internal[5] simulatesAskToBuyInSandbox]);
  xpc_dictionary_set_BOOL(v3, "17", [internal[5] isStoreOriginated]);
  paymentDiscount = [internal[5] paymentDiscount];

  sub_10018E448(v3, "18", [paymentDiscount identifier]);
  sub_10018E448(v3, "19", [paymentDiscount keyIdentifier]);
  nonce = [paymentDiscount nonce];
  uUIDString = [nonce UUIDString];
  sub_10018E448(v3, "20", [uUIDString lowercaseString]);

  sub_10018E448(v3, "21", [paymentDiscount signature]);
  sub_10018E448(v3, "22", [paymentDiscount timestamp]);

  return v3;
}

@end