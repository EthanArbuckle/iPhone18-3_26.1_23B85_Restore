@interface UIStateRestorationKeyedUnarchiver
- (id)decodeObjectForKey:(id)key;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (id)decodeTopLevelObjectOfClasses:(id)classes forKey:(id)key error:(id *)error;
- (id)initForReadingWithData:(id)data defaultValues:(id)values requiresSecureCoding:(BOOL)coding;
- (void)dealloc;
@end

@implementation UIStateRestorationKeyedUnarchiver

- (id)initForReadingWithData:(id)data defaultValues:(id)values requiresSecureCoding:(BOOL)coding
{
  codingCopy = coding;
  v10.receiver = self;
  v10.super_class = UIStateRestorationKeyedUnarchiver;
  v7 = [(UIStateRestorationKeyedUnarchiver *)&v10 initForReadingFromData:data error:0];
  v8 = v7;
  if (v7)
  {
    [v7 setDecodingFailurePolicy:0];
    [v8 setRequiresSecureCoding:codingCopy];
    v8[18] = values;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIStateRestorationKeyedUnarchiver;
  [(UIStateRestorationKeyedUnarchiver *)&v3 dealloc];
}

- (id)decodeObjectForKey:(id)key
{
  if ([(UIStateRestorationKeyedUnarchiver *)self requiresSecureCoding])
  {
    selfCopy = self;
    v5 = &selfCopy;
  }

  else
  {
    result = [(NSDictionary *)self->_defaultValues objectForKey:key];
    if (result)
    {
      return result;
    }

    selfCopy2 = self;
    v5 = &selfCopy2;
  }

  v5[1] = UIStateRestorationKeyedUnarchiver;
  return objc_msgSendSuper2(v5, sel_decodeObjectForKey_, key, selfCopy2);
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  if (([(UIStateRestorationKeyedUnarchiver *)self requiresSecureCoding]& 1) != 0)
  {
    v7 = [(NSDictionary *)self->_defaultValues objectForKey:key];
    if (v7)
    {
      v8 = v7;
      decodingFailurePolicy = [(UIStateRestorationKeyedUnarchiver *)self decodingFailurePolicy];

      return verifyDecodedObject(v8, key, classes, decodingFailurePolicy);
    }

    else
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SDecodingObjec.isa, "[UIStateRestorationKeyedUnarchiver decodeObjectOfClasses:forKey:]", key, classes);
      }

      v11 = decodeSomeKindOfObject(classes, key, sel_decodeObjectOfClasses_forKey_, self);
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SDecodedObject.isa, "[UIStateRestorationKeyedUnarchiver decodeObjectOfClasses:forKey:]", key, v11);
      }

      return v11;
    }
  }

  else
  {

    return [(UIStateRestorationKeyedUnarchiver *)self decodeObjectForKey:key];
  }
}

- (id)decodeTopLevelObjectOfClasses:(id)classes forKey:(id)key error:(id *)error
{
  if ([(UIStateRestorationKeyedUnarchiver *)self requiresSecureCoding])
  {

    return decodeSomeKindOfObject(classes, key, sel_decodeTopLevelObjectOfClasses_forKey_error_, self);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIStateRestorationKeyedUnarchiver;
    return [(UIStateRestorationKeyedUnarchiver *)&v10 decodeTopLevelObjectOfClasses:classes forKey:key error:error];
  }
}

@end