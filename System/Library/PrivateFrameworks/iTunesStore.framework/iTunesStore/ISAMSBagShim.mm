@interface ISAMSBagShim
- (ISAMSBagShim)initWithBag:(id)bag;
- (ISAMSBagShim)initWithURLBag:(id)bag;
- (id)_bagValueForKey:(id)key valueType:(unint64_t)type;
- (void)createSnapshotWithCompletion:(id)completion;
@end

@implementation ISAMSBagShim

- (ISAMSBagShim)initWithBag:(id)bag
{
  bagCopy = bag;
  v9.receiver = self;
  v9.super_class = ISAMSBagShim;
  v6 = [(ISAMSBagShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, bag);
    if (bagCopy)
    {
      v7->_type = 1;
    }
  }

  return v7;
}

- (ISAMSBagShim)initWithURLBag:(id)bag
{
  bagCopy = bag;
  v9.receiver = self;
  v9.super_class = ISAMSBagShim;
  v6 = [(ISAMSBagShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URLBag, bag);
    if (bagCopy)
    {
      v7->_type = 2;
    }
  }

  return v7;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AMSError();
  (*(completion + 2))(completionCopy, 0, v5);
}

- (id)_bagValueForKey:(id)key valueType:(unint64_t)type
{
  keyCopy = key;
  v7 = [(ISAMSBagShim *)self bag];

  if (v7)
  {
    uRLBag = 0;
    v9 = 0;
    if (type <= 2)
    {
      if (type)
      {
        if (type == 1)
        {
          v10 = [(ISAMSBagShim *)self bag];
          v24 = 0;
          uRLBag = [v10 BOOLForKey:keyCopy error:&v24];
          v11 = v24;
        }

        else
        {
          v14 = 0;
          if (type != 2)
          {
            goto LABEL_27;
          }

          v10 = [(ISAMSBagShim *)self bag];
          v23 = 0;
          uRLBag = [v10 doubleForKey:keyCopy error:&v23];
          v11 = v23;
        }
      }

      else
      {
        v10 = [(ISAMSBagShim *)self bag];
        v25 = 0;
        uRLBag = [v10 arrayForKey:keyCopy error:&v25];
        v11 = v25;
      }
    }

    else if (type > 4)
    {
      if (type == 5)
      {
        v10 = [(ISAMSBagShim *)self bag];
        v20 = 0;
        uRLBag = [v10 URLForKey:keyCopy error:&v20];
        v11 = v20;
      }

      else
      {
        v14 = 0;
        if (type != 6)
        {
          goto LABEL_27;
        }

        v10 = [(ISAMSBagShim *)self bag];
        v19 = 0;
        uRLBag = [v10 dictionaryForKey:keyCopy error:&v19];
        v11 = v19;
      }
    }

    else
    {
      v10 = [(ISAMSBagShim *)self bag];
      if (type == 3)
      {
        v22 = 0;
        uRLBag = [v10 integerForKey:keyCopy error:&v22];
        v11 = v22;
      }

      else
      {
        v21 = 0;
        uRLBag = [v10 stringForKey:keyCopy error:&v21];
        v11 = v21;
      }
    }

    v14 = v11;
  }

  else
  {
    uRLBag = [(ISAMSBagShim *)self URLBag];

    if (!uRLBag)
    {
      v9 = 0;
      v14 = 0;
      goto LABEL_27;
    }

    uRLBag2 = [(ISAMSBagShim *)self URLBag];
    v13 = uRLBag2;
    if (type == 5)
    {
      [uRLBag2 urlForKey:keyCopy];
    }

    else
    {
      [uRLBag2 valueForKey:keyCopy];
    }
    uRLBag = ;

    v14 = 0;
  }

  v9 = uRLBag != 0;
  if (!v14 && uRLBag)
  {
    v15 = [MEMORY[0x277CEE418] frozenBagValueWithKey:keyCopy value:uRLBag valueType:type];
    v14 = 0;
    goto LABEL_31;
  }

LABEL_27:
  if (!v14 && !v9)
  {
    v17 = keyCopy;
    type = [(ISAMSBagShim *)self type];
    v14 = AMSErrorWithFormat();
  }

  v15 = [MEMORY[0x277CEE418] failingBagValueWithKey:keyCopy valueType:type error:{v14, v17, type}];
LABEL_31:

  return v15;
}

@end