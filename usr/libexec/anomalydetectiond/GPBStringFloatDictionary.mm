@interface GPBStringFloatDictionary
- (BOOL)getFloat:(float *)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (GPBStringFloatDictionary)initWithDictionary:(id)a3;
- (GPBStringFloatDictionary)initWithFloats:(const float *)a3 forKeys:(id *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndFloatsUsingBlock:(id)a3;
- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation GPBStringFloatDictionary

- (GPBStringFloatDictionary)initWithFloats:(const float *)a3 forKeys:(id *)a4 count:(unint64_t)a5
{
  v15.receiver = self;
  v15.super_class = GPBStringFloatDictionary;
  v8 = [(GPBStringFloatDictionary *)&v15 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (a4)
    {
      if (a3 && a5)
      {
        do
        {
          if (!*a4)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
          }

          dictionary = v8->_dictionary;
          v11 = *a3++;
          LODWORD(v9) = v11;
          v12 = [NSNumber numberWithFloat:v9];
          v13 = *a4++;
          [(NSMutableDictionary *)dictionary setObject:v12 forKey:v13];
          --a5;
        }

        while (a5);
      }
    }
  }

  return v8;
}

- (GPBStringFloatDictionary)initWithDictionary:(id)a3
{
  v4 = [(GPBStringFloatDictionary *)self initWithFloats:0 forKeys:0 count:0];
  v5 = v4;
  if (a3 && v4)
  {
    [(NSMutableDictionary *)v4->_dictionary addEntriesFromDictionary:*(a3 + 2)];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_10033C42C();
  }

  v3.receiver = self;
  v3.super_class = GPBStringFloatDictionary;
  [(GPBStringFloatDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GPBStringFloatDictionary allocWithZone:a3];

  return [(GPBStringFloatDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = self->_dictionary;
  v6 = *(a3 + 2);

  return [(NSMutableDictionary *)dictionary isEqual:v6];
}

- (void)enumerateKeysAndFloatsUsingBlock:(id)a3
{
  v8 = 0;
  dictionary = self->_dictionary;
  v5 = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    v6 = [v5 nextObject];
    if (!v6)
    {
      break;
    }

    v7 = v6;
    [-[NSMutableDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{v6), "floatValue"}];
    (*(a3 + 2))(a3, v7, &v8);
  }

  while (v8 != 1);
}

- (unint64_t)computeSerializedSizeAsField:(id)a3
{
  dictionary = self->_dictionary;
  result = [(NSMutableDictionary *)dictionary count];
  if (result)
  {
    v6 = result;
    v7 = *(*(a3 + 1) + 30);
    v8 = [a3 mapKeyDataType];
    v9 = [(NSMutableDictionary *)dictionary keyEnumerator];
    v10 = [v9 nextObject];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      do
      {
        v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v11];
        v14 = sub_100332660(v11, v8);
        [v13 floatValue];
        v15 = &v14[sub_100320864(v7)];
        v12 += &v15[GPBComputeRawVarint32SizeForInteger(v15)];
        v11 = [v9 nextObject];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    return v12 + GPBComputeWireFormatTagSize(*(*(a3 + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v7 = *(*(a4 + 1) + 30);
  v8 = [a4 mapKeyDataType];
  Tag = GPBWireFormatMakeTag(*(*(a4 + 1) + 16), 2);
  dictionary = self->_dictionary;
  v11 = [(NSMutableDictionary *)dictionary keyEnumerator];
  v12 = [v11 nextObject];
  if (v12)
  {
    v13 = v12;
    do
    {
      v14 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:v13];
      [a3 writeInt32NoTag:Tag];
      [v14 floatValue];
      v16 = v15;
      LODWORD(v14) = sub_100332660(v13, v8);
      [a3 writeInt32NoTag:sub_100320864(v7) + v14];
      sub_1003327D0(a3, v13, v8);
      LODWORD(v17) = v16;
      sub_1003209DC(a3, v7, v17);
      v13 = [v11 nextObject];
    }

    while (v13);
  }
}

- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  LODWORD(v4) = a3->var1;
  v7 = [NSNumber numberWithFloat:v4];
  var2 = a4->var2;

  [(NSMutableDictionary *)dictionary setObject:v7 forKey:var2];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100335108;
  v3[3] = &unk_100435C88;
  v3[4] = a3;
  [(GPBStringFloatDictionary *)self enumerateKeysAndFloatsUsingBlock:v3];
}

- (BOOL)getFloat:(float *)a3 forKey:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:a4];
  v6 = v5;
  if (a3 && v5)
  {
    [v5 floatValue];
    *a3 = v7;
  }

  return v6 != 0;
}

- (void)addEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(a3 + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

@end