@interface UPDialogActOffer
- (UPDialogActOffer)initWithIntent:(id)intent entityWithValue:(id)value;
@end

@implementation UPDialogActOffer

- (UPDialogActOffer)initWithIntent:(id)intent entityWithValue:(id)value
{
  intentCopy = intent;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = UPDialogActOffer;
  v8 = [(UPDialogActOffer *)&v12 init];
  if (v8)
  {
    v9 = [intentCopy copy];
    intent = v8->_intent;
    v8->_intent = v9;

    objc_storeStrong(&v8->_entityWithValue, value);
  }

  return v8;
}

@end