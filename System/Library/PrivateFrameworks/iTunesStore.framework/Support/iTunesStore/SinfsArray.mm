@interface SinfsArray
- (BOOL)_isRecognizedProperty:(id)property;
- (NSArray)sinfs;
- (SinfsArray)initWithSINFs:(id)fs;
- (id)_copyValueForSINF:(id)f property:(id)property error:(id *)error;
- (id)copyValueForField:(int64_t)field error:(id *)error;
- (id)copyValueForProperty:(id)property error:(id *)error;
- (void)dealloc;
@end

@implementation SinfsArray

- (SinfsArray)initWithSINFs:(id)fs
{
  if (![fs count])
  {
    sub_100271FD0(a2, self);
  }

  v8.receiver = self;
  v8.super_class = SinfsArray;
  v6 = [(SinfsArray *)&v8 init];
  if (v6)
  {
    v6->_sinfs = [fs copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SinfsArray;
  [(SinfsArray *)&v3 dealloc];
}

- (id)copyValueForField:(int64_t)field error:(id *)error
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  sinfs = self->_sinfs;
  v7 = [(NSArray *)sinfs countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
LABEL_13:
    v15 = SSError();
    result = 0;
    if (!error)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = v7;
  v9 = *v18;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v18 != v9)
    {
      objc_enumerationMutation(sinfs);
    }

    v11 = *(*(&v17 + 1) + 8 * v10);
    v16 = 0;
    sub_1000B2914(v11, field, &v16);
    if (!v12)
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSArray *)sinfs countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }
  }

  v13 = [NSNumber alloc];
  result = [v13 initWithUnsignedLongLong:v16];
  if (!result)
  {
    goto LABEL_13;
  }

  v15 = 0;
  if (error)
  {
LABEL_14:
    *error = v15;
  }

  return result;
}

- (id)copyValueForProperty:(id)property error:(id *)error
{
  v17 = 0;
  if (![(SinfsArray *)self _isRecognizedProperty:?])
  {
    goto LABEL_14;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sinfs = self->_sinfs;
  result = [(NSArray *)sinfs countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v14;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(sinfs);
      }

      result = [(SinfsArray *)self _copyValueForSINF:*(*(&v13 + 1) + 8 * v11) property:property error:&v17];
      v12 = v17;
      if (result | v17)
      {
        break;
      }

      if (v9 == ++v11)
      {
        result = [(NSArray *)sinfs countByEnumeratingWithState:&v13 objects:v18 count:16];
        v9 = result;
        if (result)
        {
          goto LABEL_4;
        }

        v12 = v17;
        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (!(result | v12))
  {
LABEL_14:
    v12 = SSError();
    result = 0;
  }

  if (error)
  {
    *error = v12;
  }

  return result;
}

- (NSArray)sinfs
{
  v2 = self->_sinfs;

  return v2;
}

- (id)_copyValueForSINF:(id)f property:(id)property error:(id *)error
{
  if ([property isEqualToString:@"SinfPropertyAccountIdentifier"])
  {
    v17 = 0;
    fCopy2 = f;
    v9 = 2;
LABEL_5:
    sub_1000B2914(fCopy2, v9, &v17);
    v11 = v10;
    v12 = 0;
    if (!v10)
    {
      v13 = [NSNumber alloc];
      v12 = [v13 initWithUnsignedLongLong:v17];
    }

    if (error && v11)
    {
      *error = SSError();
    }

    return v12;
  }

  if ([property isEqualToString:@"SinfPropertyFairPlayKeyIdentifier"])
  {
    v17 = 0;
    fCopy2 = f;
    v9 = 5;
    goto LABEL_5;
  }

  if (![property isEqualToString:@"SinfPropertyRentalInformation"] || !objc_msgSend(f, "length"))
  {
    return 0;
  }

  v17 = 0;
  v18 = 0;
  v14 = sub_1000B33F4();
  sub_10001A4B4(v14, [f bytes], objc_msgSend(f, "length"), &v17);
  v12 = 0;
  if (!v15)
  {
    v12 = objc_alloc_init(ISFairPlayRentalInfo);
    [(ISFairPlayRentalInfo *)v12 setPlaybackDuration:HIDWORD(v18)];
    [(ISFairPlayRentalInfo *)v12 setPlaybackStartTime:v18];
    [(ISFairPlayRentalInfo *)v12 setRentalDuration:HIDWORD(v17)];
    [(ISFairPlayRentalInfo *)v12 setRentalStartTime:v17];
  }

  return v12;
}

- (BOOL)_isRecognizedProperty:(id)property
{
  if ([property isEqualToString:@"SinfPropertyAccountIdentifier"] & 1) != 0 || (objc_msgSend(property, "isEqualToString:", @"SinfPropertyFairPlayKeyIdentifier"))
  {
    return 1;
  }

  return [property isEqualToString:@"SinfPropertyRentalInformation"];
}

@end