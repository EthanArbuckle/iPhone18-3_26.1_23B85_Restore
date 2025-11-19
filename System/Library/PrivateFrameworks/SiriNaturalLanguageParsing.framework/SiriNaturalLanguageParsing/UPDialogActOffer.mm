@interface UPDialogActOffer
- (UPDialogActOffer)initWithIntent:(id)a3 entityWithValue:(id)a4;
@end

@implementation UPDialogActOffer

- (UPDialogActOffer)initWithIntent:(id)a3 entityWithValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = UPDialogActOffer;
  v8 = [(UPDialogActOffer *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    intent = v8->_intent;
    v8->_intent = v9;

    objc_storeStrong(&v8->_entityWithValue, a4);
  }

  return v8;
}

@end