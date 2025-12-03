@interface SXDataNumberSortDescriptor
- (id)numberForObject:(id)object;
- (int64_t)compareObject:(id)object toObject:(id)toObject;
@end

@implementation SXDataNumberSortDescriptor

- (int64_t)compareObject:(id)object toObject:(id)toObject
{
  toObjectCopy = toObject;
  objectCopy = object;
  v8 = [(SXDataNumberSortDescriptor *)self key];
  v9 = [objectCopy valueForKey:v8];

  v10 = [(SXDataNumberSortDescriptor *)self numberForObject:v9];

  v11 = [(SXDataNumberSortDescriptor *)self key];
  v12 = [toObjectCopy valueForKey:v11];

  v13 = [(SXDataNumberSortDescriptor *)self numberForObject:v12];

  if (v10)
  {
    if (v13)
    {
      if (([(SXDataNumberSortDescriptor *)self ascending]& 1) != 0)
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

- (id)numberForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end