@interface PKApplicationMessageSummaryItem
- (BOOL)isEqual:(id)a3;
- (id)initWithTitle:(void *)a3 messageIcon:(char)a4 badged:;
@end

@implementation PKApplicationMessageSummaryItem

- (id)initWithTitle:(void *)a3 messageIcon:(char)a4 badged:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = PKApplicationMessageSummaryItem;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v9 = [v7 copy];
      v10 = a1[2];
      a1[2] = v9;

      objc_storeStrong(a1 + 3, a3);
      *(a1 + 8) = a4;
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        title = self->_title;
        v8 = v6[2];
        v9 = title;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          if (!v9 || !v10)
          {

            v13 = 0;
LABEL_15:

            goto LABEL_16;
          }

          v12 = [(NSString *)v9 isEqualToString:v10];

          if (!v12)
          {
            v13 = 0;
LABEL_16:

LABEL_18:
            goto LABEL_19;
          }
        }

        badged = self->_badged;
        v15 = *(v6 + 8);

        if (badged != v15)
        {
          v13 = 0;
          goto LABEL_18;
        }

        v11 = [(PKApplicationMessageIcon *)self->_messageIcon image];
        v9 = [v6[3] image];
        v13 = [v11 isEqual:v9];
        goto LABEL_15;
      }
    }

    v13 = 0;
  }

LABEL_19:

  return v13;
}

@end