@interface WFRecordProperty
- (WFRecordProperty)initWithName:(id)a3 property:(objc_property *)a4;
@end

@implementation WFRecordProperty

- (WFRecordProperty)initWithName:(id)a3 property:(objc_property *)a4
{
  v7 = a3;
  v29.receiver = self;
  v29.super_class = WFRecordProperty;
  v8 = [(WFRecordProperty *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    outCount = 0;
    v10 = property_copyAttributeList(a4, &outCount);
    v11 = v10;
    if (outCount)
    {
      v12 = 0;
      p_value = &v10->value;
      do
      {
        v14 = **(p_value - 1);
        if (v14 <= 0x4D)
        {
          if (v14 == 68)
          {
            v9->_dynamic = 1;
            goto LABEL_16;
          }

          if (v14 == 71)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*p_value];
            getter = v9->_getter;
            v9->_getter = v15;
LABEL_14:
          }
        }

        else
        {
          if (v14 != 78)
          {
            if (v14 != 83)
            {
              if (v14 == 82)
              {
                v9->_readOnly = 1;
              }

              goto LABEL_16;
            }

            v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*p_value];
            getter = v9->_setter;
            v9->_setter = v17;
            goto LABEL_14;
          }

          v9->_nonAtomic = 1;
        }

LABEL_16:
        ++v12;
        p_value += 2;
      }

      while (v12 < outCount);
    }

    free(v11);
    if (!v9->_getter)
    {
      objc_storeStrong(&v9->_getter, v9->_name);
    }

    if (!v9->_setter && !v9->_readOnly)
    {
      v18 = [(NSString *)v9->_name characterAtIndex:0]- 97;
      v19 = [(NSString *)v9->_name substringToIndex:1];
      v20 = v19;
      if (v18 <= 0x19)
      {
        v21 = [v19 uppercaseString];

        v20 = v21;
      }

      v22 = MEMORY[0x1E696AEC0];
      v23 = [(NSString *)v9->_name substringFromIndex:1];
      v24 = [v22 stringWithFormat:@"set%@%@:", v20, v23];
      setter = v9->_setter;
      v9->_setter = v24;
    }

    v26 = v9;
  }

  return v9;
}

@end