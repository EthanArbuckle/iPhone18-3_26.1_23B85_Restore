@interface SXDataStringSortDescriptor
- (id)stringFromObject:(id)object;
- (int64_t)compareObject:(id)object toObject:(id)toObject;
@end

@implementation SXDataStringSortDescriptor

- (int64_t)compareObject:(id)object toObject:(id)toObject
{
  toObjectCopy = toObject;
  objectCopy = object;
  v8 = [(SXDataStringSortDescriptor *)self key];
  v9 = [objectCopy valueForKey:v8];

  v10 = [(SXDataStringSortDescriptor *)self stringFromObject:v9];

  v11 = [(SXDataStringSortDescriptor *)self key];
  v12 = [toObjectCopy valueForKey:v11];

  v13 = [(SXDataStringSortDescriptor *)self stringFromObject:v12];

  if (v10)
  {
    if (v13)
    {
      if (([(SXDataStringSortDescriptor *)self ascending]& 1) != 0)
      {
        v14 = v10;
        v15 = v13;
      }

      else
      {
        v14 = v13;
        v15 = v10;
      }

      v16 = [v14 compare:v15];
    }

    else
    {
      v16 = -1;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)stringFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objectCopy valueForKey:@"text"];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end