@interface SAOnBehalfOfSingle
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation SAOnBehalfOfSingle

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    equalCopy = equal;
    v7 = equalCopy;
    if (self)
    {
      proximatePid = self->_proximatePid;
      if (equalCopy)
      {
LABEL_5:
        v9 = *(equalCopy + 2);
        goto LABEL_6;
      }
    }

    else
    {
      proximatePid = 0;
      if (equalCopy)
      {
        goto LABEL_5;
      }
    }

    v9 = 0;
LABEL_6:
    if (proximatePid != v9)
    {
      goto LABEL_23;
    }

    if (self)
    {
      originPid = self->_originPid;
      if (equalCopy)
      {
LABEL_9:
        v11 = *(equalCopy + 3);
        goto LABEL_10;
      }
    }

    else
    {
      originPid = 0;
      if (equalCopy)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_10:
    if (originPid == v11)
    {
      if (self)
      {
        Property = objc_getProperty(self, v6, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v14 = Property;
      if (v7)
      {
        v15 = objc_getProperty(v7, v13, 16, 1);
      }

      else
      {
        v15 = 0;
      }

      if ([v14 isEqualToString:v15])
      {
        if (self)
        {
          v17 = objc_getProperty(self, v16, 24, 1);
        }

        else
        {
          v17 = 0;
        }

        v19 = v17;
        if (v7)
        {
          v20 = objc_getProperty(v7, v18, 24, 1);
        }

        else
        {
          v20 = 0;
        }

        v21 = [v19 isEqualToString:v20];
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_26;
    }

LABEL_23:
    v21 = 0;
LABEL_26:

    return v21;
  }

  return 0;
}

- (unint64_t)hash
{
  if (self)
  {
    return *(self + 8) | (*(self + 12) << 32);
  }

  return self;
}

@end