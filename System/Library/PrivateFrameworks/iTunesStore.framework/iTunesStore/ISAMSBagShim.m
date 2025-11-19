@interface ISAMSBagShim
- (ISAMSBagShim)initWithBag:(id)a3;
- (ISAMSBagShim)initWithURLBag:(id)a3;
- (id)_bagValueForKey:(id)a3 valueType:(unint64_t)a4;
- (void)createSnapshotWithCompletion:(id)a3;
@end

@implementation ISAMSBagShim

- (ISAMSBagShim)initWithBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISAMSBagShim;
  v6 = [(ISAMSBagShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
    if (v5)
    {
      v7->_type = 1;
    }
  }

  return v7;
}

- (ISAMSBagShim)initWithURLBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISAMSBagShim;
  v6 = [(ISAMSBagShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URLBag, a3);
    if (v5)
    {
      v7->_type = 2;
    }
  }

  return v7;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AMSError();
  (*(a3 + 2))(v4, 0, v5);
}

- (id)_bagValueForKey:(id)a3 valueType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ISAMSBagShim *)self bag];

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    if (a4 <= 2)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          v10 = [(ISAMSBagShim *)self bag];
          v24 = 0;
          v8 = [v10 BOOLForKey:v6 error:&v24];
          v11 = v24;
        }

        else
        {
          v14 = 0;
          if (a4 != 2)
          {
            goto LABEL_27;
          }

          v10 = [(ISAMSBagShim *)self bag];
          v23 = 0;
          v8 = [v10 doubleForKey:v6 error:&v23];
          v11 = v23;
        }
      }

      else
      {
        v10 = [(ISAMSBagShim *)self bag];
        v25 = 0;
        v8 = [v10 arrayForKey:v6 error:&v25];
        v11 = v25;
      }
    }

    else if (a4 > 4)
    {
      if (a4 == 5)
      {
        v10 = [(ISAMSBagShim *)self bag];
        v20 = 0;
        v8 = [v10 URLForKey:v6 error:&v20];
        v11 = v20;
      }

      else
      {
        v14 = 0;
        if (a4 != 6)
        {
          goto LABEL_27;
        }

        v10 = [(ISAMSBagShim *)self bag];
        v19 = 0;
        v8 = [v10 dictionaryForKey:v6 error:&v19];
        v11 = v19;
      }
    }

    else
    {
      v10 = [(ISAMSBagShim *)self bag];
      if (a4 == 3)
      {
        v22 = 0;
        v8 = [v10 integerForKey:v6 error:&v22];
        v11 = v22;
      }

      else
      {
        v21 = 0;
        v8 = [v10 stringForKey:v6 error:&v21];
        v11 = v21;
      }
    }

    v14 = v11;
  }

  else
  {
    v8 = [(ISAMSBagShim *)self URLBag];

    if (!v8)
    {
      v9 = 0;
      v14 = 0;
      goto LABEL_27;
    }

    v12 = [(ISAMSBagShim *)self URLBag];
    v13 = v12;
    if (a4 == 5)
    {
      [v12 urlForKey:v6];
    }

    else
    {
      [v12 valueForKey:v6];
    }
    v8 = ;

    v14 = 0;
  }

  v9 = v8 != 0;
  if (!v14 && v8)
  {
    v15 = [MEMORY[0x277CEE418] frozenBagValueWithKey:v6 value:v8 valueType:a4];
    v14 = 0;
    goto LABEL_31;
  }

LABEL_27:
  if (!v14 && !v9)
  {
    v17 = v6;
    v18 = [(ISAMSBagShim *)self type];
    v14 = AMSErrorWithFormat();
  }

  v15 = [MEMORY[0x277CEE418] failingBagValueWithKey:v6 valueType:a4 error:{v14, v17, v18}];
LABEL_31:

  return v15;
}

@end