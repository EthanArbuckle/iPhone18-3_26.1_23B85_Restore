@interface PKApplicationMessageSummaryItem
- (BOOL)isEqual:(id)equal;
- (id)initWithTitle:(void *)title messageIcon:(char)icon badged:;
@end

@implementation PKApplicationMessageSummaryItem

- (id)initWithTitle:(void *)title messageIcon:(char)icon badged:
{
  v7 = a2;
  titleCopy = title;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = PKApplicationMessageSummaryItem;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v9 = [v7 copy];
      v10 = self[2];
      self[2] = v9;

      objc_storeStrong(self + 3, title);
      *(self + 8) = icon;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        title = self->_title;
        v8 = v6[2];
        image2 = title;
        v10 = v8;
        image = v10;
        if (image2 == v10)
        {
        }

        else
        {
          if (!image2 || !v10)
          {

            v13 = 0;
LABEL_15:

            goto LABEL_16;
          }

          v12 = [(NSString *)image2 isEqualToString:v10];

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

        image = [(PKApplicationMessageIcon *)self->_messageIcon image];
        image2 = [v6[3] image];
        v13 = [image isEqual:image2];
        goto LABEL_15;
      }
    }

    v13 = 0;
  }

LABEL_19:

  return v13;
}

@end