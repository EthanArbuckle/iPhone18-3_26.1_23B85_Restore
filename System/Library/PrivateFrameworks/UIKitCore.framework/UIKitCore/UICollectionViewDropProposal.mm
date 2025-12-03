@interface UICollectionViewDropProposal
- (UICollectionViewDropProposal)initWithDropOperation:(UIDropOperation)operation intent:(UICollectionViewDropIntent)intent;
- (UICollectionViewDropProposal)initWithDropOperation:(unint64_t)operation;
- (UICollectionViewDropProposal)initWithDropOperation:(unint64_t)operation dropLocation:(int64_t)location;
- (id)description;
- (int64_t)dropLocation;
@end

@implementation UICollectionViewDropProposal

- (UICollectionViewDropProposal)initWithDropOperation:(UIDropOperation)operation intent:(UICollectionViewDropIntent)intent
{
  v6.receiver = self;
  v6.super_class = UICollectionViewDropProposal;
  result = [(UIDropProposal *)&v6 initWithDropOperation:operation];
  if (result)
  {
    result->_intent = intent;
  }

  return result;
}

- (UICollectionViewDropProposal)initWithDropOperation:(unint64_t)operation dropLocation:(int64_t)location
{
  v7.receiver = self;
  v7.super_class = UICollectionViewDropProposal;
  result = [(UIDropProposal *)&v7 initWithDropOperation:operation];
  if (result)
  {
    v6 = 2 * (location == 1);
    if (!location)
    {
      v6 = 1;
    }

    result->_intent = v6;
  }

  return result;
}

- (UICollectionViewDropProposal)initWithDropOperation:(unint64_t)operation
{
  v4.receiver = self;
  v4.super_class = UICollectionViewDropProposal;
  result = [(UIDropProposal *)&v4 initWithDropOperation:operation];
  if (result)
  {
    result->_intent = 0;
  }

  return result;
}

- (int64_t)dropLocation
{
  intent = self->_intent;
  v3 = 1;
  if (intent != 2)
  {
    v3 = 2;
  }

  if (intent == 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  operation = [(UIDropProposal *)self operation];
  if (operation > UIDropOperationMove)
  {
    v7 = &stru_1EFB14550;
  }

  else
  {
    v7 = off_1E71003D0[operation];
  }

  intent = self->_intent;
  if (intent > 2)
  {
    v9 = &stru_1EFB14550;
  }

  else
  {
    v9 = off_1E71003F0[intent];
  }

  v10 = [v3 stringWithFormat:@"<%@:%p operation = %@ location = %@>", v5, self, v7, v9];;

  return v10;
}

@end