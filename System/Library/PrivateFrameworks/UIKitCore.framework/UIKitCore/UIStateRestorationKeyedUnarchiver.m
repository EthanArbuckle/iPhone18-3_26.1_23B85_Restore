@interface UIStateRestorationKeyedUnarchiver
- (id)decodeObjectForKey:(id)a3;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (id)decodeTopLevelObjectOfClasses:(id)a3 forKey:(id)a4 error:(id *)a5;
- (id)initForReadingWithData:(id)a3 defaultValues:(id)a4 requiresSecureCoding:(BOOL)a5;
- (void)dealloc;
@end

@implementation UIStateRestorationKeyedUnarchiver

- (id)initForReadingWithData:(id)a3 defaultValues:(id)a4 requiresSecureCoding:(BOOL)a5
{
  v5 = a5;
  v10.receiver = self;
  v10.super_class = UIStateRestorationKeyedUnarchiver;
  v7 = [(UIStateRestorationKeyedUnarchiver *)&v10 initForReadingFromData:a3 error:0];
  v8 = v7;
  if (v7)
  {
    [v7 setDecodingFailurePolicy:0];
    [v8 setRequiresSecureCoding:v5];
    v8[18] = a4;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIStateRestorationKeyedUnarchiver;
  [(UIStateRestorationKeyedUnarchiver *)&v3 dealloc];
}

- (id)decodeObjectForKey:(id)a3
{
  if ([(UIStateRestorationKeyedUnarchiver *)self requiresSecureCoding])
  {
    v8 = self;
    v5 = &v8;
  }

  else
  {
    result = [(NSDictionary *)self->_defaultValues objectForKey:a3];
    if (result)
    {
      return result;
    }

    v7 = self;
    v5 = &v7;
  }

  v5[1] = UIStateRestorationKeyedUnarchiver;
  return objc_msgSendSuper2(v5, sel_decodeObjectForKey_, a3, v7);
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  if (([(UIStateRestorationKeyedUnarchiver *)self requiresSecureCoding]& 1) != 0)
  {
    v7 = [(NSDictionary *)self->_defaultValues objectForKey:a4];
    if (v7)
    {
      v8 = v7;
      v9 = [(UIStateRestorationKeyedUnarchiver *)self decodingFailurePolicy];

      return verifyDecodedObject(v8, a4, a3, v9);
    }

    else
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SDecodingObjec.isa, "[UIStateRestorationKeyedUnarchiver decodeObjectOfClasses:forKey:]", a4, a3);
      }

      v11 = decodeSomeKindOfObject(a3, a4, sel_decodeObjectOfClasses_forKey_, self);
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SDecodedObject.isa, "[UIStateRestorationKeyedUnarchiver decodeObjectOfClasses:forKey:]", a4, v11);
      }

      return v11;
    }
  }

  else
  {

    return [(UIStateRestorationKeyedUnarchiver *)self decodeObjectForKey:a4];
  }
}

- (id)decodeTopLevelObjectOfClasses:(id)a3 forKey:(id)a4 error:(id *)a5
{
  if ([(UIStateRestorationKeyedUnarchiver *)self requiresSecureCoding])
  {

    return decodeSomeKindOfObject(a3, a4, sel_decodeTopLevelObjectOfClasses_forKey_error_, self);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIStateRestorationKeyedUnarchiver;
    return [(UIStateRestorationKeyedUnarchiver *)&v10 decodeTopLevelObjectOfClasses:a3 forKey:a4 error:a5];
  }
}

@end