@interface GPBStringEnumDictionary
- (BOOL)getEnum:(int *)a3 forKey:(id)a4;
- (BOOL)getRawValue:(int *)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (GPBStringEnumDictionary)initWithDictionary:(id)a3;
- (GPBStringEnumDictionary)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 forKeys:(id *)a5 count:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addRawEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndEnumsUsingBlock:(id)a3;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)a3;
- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation GPBStringEnumDictionary

- (GPBStringEnumDictionary)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 forKeys:(id *)a5 count:(unint64_t)a6
{
  v18.receiver = self;
  v18.super_class = GPBStringEnumDictionary;
  v10 = [(GPBStringEnumDictionary *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = a3 ? a3 : sub_100321780;
    v10->_dictionary = v11;
    v10->_validationFunc = v12;
    if (a5)
    {
      if (a4 && a6)
      {
        do
        {
          if (!*a5)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
          }

          dictionary = v10->_dictionary;
          v14 = *a4++;
          v15 = [NSNumber numberWithInt:v14];
          v16 = *a5++;
          [(NSMutableDictionary *)dictionary setObject:v15 forKey:v16];
          --a6;
        }

        while (a6);
      }
    }
  }

  return v10;
}

- (GPBStringEnumDictionary)initWithDictionary:(id)a3
{
  v4 = -[GPBStringEnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [a3 validationFunc], 0, 0, 0);
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
    sub_10033C4EC();
  }

  v3.receiver = self;
  v3.super_class = GPBStringEnumDictionary;
  [(GPBStringEnumDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GPBStringEnumDictionary allocWithZone:a3];

  return [(GPBStringEnumDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndRawValuesUsingBlock:(id)a3
{
  v7 = 0;
  dictionary = self->_dictionary;
  v5 = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    v6 = [v5 nextObject];
    if (!v6)
    {
      break;
    }

    (*(a3 + 2))(a3, v6, [-[NSMutableDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{v6), "intValue"}], &v7);
  }

  while (v7 != 1);
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
        v15 = &v14[sub_100321B38([v13 intValue], v7)];
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
      v15 = [v14 intValue];
      v16 = sub_100332660(v13, v8);
      [a3 writeInt32NoTag:{sub_100321B38(v15, v7) + v16}];
      sub_1003327D0(a3, v13, v8);
      sub_100321CB4(a3, v15, v7);
      v13 = [v11 nextObject];
    }

    while (v13);
  }
}

- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithInt:a3->var3];
  var2 = a4->var2;

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:var2];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100336230;
  v3[3] = &unk_100435BE8;
  v3[4] = a3;
  [(GPBStringEnumDictionary *)self enumerateKeysAndRawValuesUsingBlock:v3];
}

- (BOOL)getEnum:(int *)a3 forKey:(id)a4
{
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:a4];
  v7 = v6;
  if (a3 && v6)
  {
    v8 = [v6 intValue];
    if ((self->_validationFunc)())
    {
      v9 = v8;
    }

    else
    {
      v9 = -72499473;
    }

    *a3 = v9;
  }

  return v7 != 0;
}

- (BOOL)getRawValue:(int *)a3 forKey:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:a4];
  v6 = v5;
  if (a3 && v5)
  {
    *a3 = [v5 intValue];
  }

  return v6 != 0;
}

- (void)enumerateKeysAndEnumsUsingBlock:(id)a3
{
  v11 = 0;
  validationFunc = self->_validationFunc;
  v6 = [(NSMutableDictionary *)self->_dictionary keyEnumerator];
  do
  {
    v7 = [v6 nextObject];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{v7), "intValue"}];
    v10 = validationFunc() ? v9 : 4222467823;
    (*(a3 + 2))(a3, v8, v10, &v11);
  }

  while (v11 != 1);
}

- (void)addRawEntriesFromDictionary:(id)a3
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