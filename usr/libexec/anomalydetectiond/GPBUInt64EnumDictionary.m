@interface GPBUInt64EnumDictionary
- (BOOL)getEnum:(int *)a3 forKey:(unint64_t)a4;
- (BOOL)getRawValue:(int *)a3 forKey:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (GPBUInt64EnumDictionary)initWithDictionary:(id)a3;
- (GPBUInt64EnumDictionary)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 forKeys:(const unint64_t *)a5 count:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addRawEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndEnumsUsingBlock:(id)a3;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)a3;
- (void)removeEnumForKey:(unint64_t)a3;
- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation GPBUInt64EnumDictionary

- (GPBUInt64EnumDictionary)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 forKeys:(const unint64_t *)a5 count:(unint64_t)a6
{
  v18.receiver = self;
  v18.super_class = GPBUInt64EnumDictionary;
  v10 = [(GPBUInt64EnumDictionary *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = sub_100321780;
    }

    v10->_dictionary = v11;
    v10->_validationFunc = v12;
    if (a5 && a4 && a6)
    {
      do
      {
        dictionary = v10->_dictionary;
        v14 = *a4++;
        v15 = [NSNumber numberWithInt:v14];
        v16 = *a5++;
        [(NSMutableDictionary *)dictionary setObject:v15 forKey:[NSNumber numberWithUnsignedLongLong:v16]];
        --a6;
      }

      while (a6);
    }
  }

  return v10;
}

- (GPBUInt64EnumDictionary)initWithDictionary:(id)a3
{
  v4 = -[GPBUInt64EnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [a3 validationFunc], 0, 0, 0);
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
    sub_10033BD54();
  }

  v3.receiver = self;
  v3.super_class = GPBUInt64EnumDictionary;
  [(GPBUInt64EnumDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GPBUInt64EnumDictionary allocWithZone:a3];

  return [(GPBUInt64EnumDictionary *)v4 initWithDictionary:self];
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

    (*(a3 + 2))(a3, [v6 unsignedLongLongValue], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](dictionary, "objectForKeyedSubscript:", v6), "intValue"), &v7);
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
        v14 = sub_10031EA6C([v11 unsignedLongLongValue], 1, v8);
        v15 = sub_100321B38([v13 intValue], v7) + v14;
        v12 += v15 + GPBComputeRawVarint32SizeForInteger(v15);
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
      v15 = [v13 unsignedLongLongValue];
      v16 = [v14 intValue];
      v17 = sub_10031EA6C(v15, 1, v8);
      [a3 writeInt32NoTag:{sub_100321B38(v16, v7) + v17}];
      sub_10031EC7C(a3, v15, 1, v8);
      sub_100321CB4(a3, v16, v7);
      v13 = [v11 nextObject];
    }

    while (v13);
  }
}

- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithInt:a3->var3];
  v7 = [NSNumber numberWithUnsignedLongLong:a4->var2];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10032C1FC;
  v3[3] = &unk_100435968;
  v3[4] = a3;
  [(GPBUInt64EnumDictionary *)self enumerateKeysAndRawValuesUsingBlock:v3];
}

- (BOOL)getEnum:(int *)a3 forKey:(unint64_t)a4
{
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:a4]];
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

- (BOOL)getRawValue:(int *)a3 forKey:(unint64_t)a4
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:a4]];
  v6 = v5;
  if (a3 && v5)
  {
    *a3 = [v5 intValue];
  }

  return v6 != 0;
}

- (void)enumerateKeysAndEnumsUsingBlock:(id)a3
{
  v10 = 0;
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
    LODWORD(v9) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{v7), "intValue"}];
    v9 = validationFunc() ? v9 : 4222467823;
    (*(a3 + 2))(a3, [v8 unsignedLongLongValue], v9, &v10);
  }

  while (v10 != 1);
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

- (void)removeEnumForKey:(unint64_t)a3
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:a3];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end