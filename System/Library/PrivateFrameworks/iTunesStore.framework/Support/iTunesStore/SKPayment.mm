@interface SKPayment
+ (SKPayment)paymentWithProduct:(SKProduct *)product;
+ (id)paymentFromPurchaseIntentWithProduct:(id)product;
+ (id)paymentWithProductIdentifier:(NSString *)identifier;
- (BOOL)isEqual:(id)equal;
- (SKPayment)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SKPayment

- (SKPayment)init
{
  v6.receiver = self;
  v6.super_class = SKPayment;
  v2 = [(SKPayment *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKPaymentInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[SKPayment allocWithZone:](SKPayment init];
  v6 = [self->_internal copyWithZone:zone];
  internal = v5->_internal;
  v5->_internal = v6;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [(SKPayment *)+[SKMutablePayment allocWithZone:](SKMutablePayment init];
  v6 = [self->_internal copyWithZone:zone];
  internal = v5->super._internal;
  v5->super._internal = v6;

  return v5;
}

+ (SKPayment)paymentWithProduct:(SKProduct *)product
{
  v4 = product;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  productIdentifier = [(SKProduct *)v4 productIdentifier];
  v8 = [productIdentifier copy];
  v9 = v6[4];
  v6[4] = v8;

  if (qword_100383F70)
  {
    productIdentifier2 = [(SKProduct *)v4 productIdentifier];
    v11 = [productIdentifier2 isEqualToString:qword_100383F70];

    if (v11)
    {
      *(v6 + 65) = 1;
    }
  }

  return v5;
}

+ (id)paymentFromPurchaseIntentWithProduct:(id)product
{
  productCopy = product;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  productIdentifier = [productCopy productIdentifier];
  v8 = [productIdentifier copy];
  v9 = v6[4];
  v6[4] = v8;

  *(v6 + 65) = 1;
  v10 = qword_100383F70;
  if (qword_100383F70)
  {
    qword_100383F70 = 0;
  }

  productIdentifier2 = [productCopy productIdentifier];
  v12 = [productIdentifier2 copy];
  v13 = qword_100383F70;
  qword_100383F70 = v12;

  return v5;
}

+ (id)paymentWithProductIdentifier:(NSString *)identifier
{
  v4 = identifier;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v7 = [(NSString *)v4 copy];

  v8 = v6[4];
  v6[4] = v7;

  return v5;
}

- (unint64_t)hash
{
  v3 = *(self->_internal + 4);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SKPayment;
    v5 = [(SKPayment *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && *(self->_internal + 5) == *(equalCopy[1] + 40);
  v6 = *(self->_internal + 4);
  v7 = *(equalCopy[1] + 32);
  v8 = v7;
  if (v5)
  {
    if (v6 == v7)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = [v6 isEqualToString:v7];
    }
  }

  return v5;
}

@end