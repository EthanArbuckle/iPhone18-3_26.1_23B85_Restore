@interface GPBBoolEnumDictionary
- (BOOL)getEnum:(int *)a3 forKey:(BOOL)a4;
- (BOOL)getRawValue:(int *)a3 forKey:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (GPBBoolEnumDictionary)initWithDictionary:(id)a3;
- (GPBBoolEnumDictionary)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 forKeys:(const BOOL *)a5 count:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)a3;
- (void)addRawEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)a3;
- (void)enumerateKeysAndEnumsUsingBlock:(id)a3;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)a3;
- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4;
- (void)setRawValue:(int)a3 forKey:(BOOL)a4;
- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4;
@end

@implementation GPBBoolEnumDictionary

- (GPBBoolEnumDictionary)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 forKeys:(const BOOL *)a5 count:(unint64_t)a6
{
  v15.receiver = self;
  v15.super_class = GPBBoolEnumDictionary;
  result = [(GPBBoolEnumDictionary *)&v15 init];
  if (result)
  {
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = sub_100321780;
    }

    for (result->_validationFunc = v11; a6; --a6)
    {
      v13 = *a5++;
      v12 = v13;
      v14 = *a4++;
      result->_values[v12] = v14;
      result->_valueSet[v12] = 1;
    }
  }

  return result;
}

- (GPBBoolEnumDictionary)initWithDictionary:(id)a3
{
  result = -[GPBBoolEnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [a3 validationFunc], 0, 0, 0);
  if (a3 && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(a3 + v5 + 32) == 1)
      {
        result->_values[v5] = *(a3 + v5 + 6);
        result->_valueSet[v5] = 1;
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  return result;
}

- (void)dealloc
{
  v2 = a2;
  if (self->_autocreator)
  {
    sub_10033C84C();
  }

  v4.receiver = self;
  v4.super_class = GPBBoolEnumDictionary;
  [(GPBBoolEnumDictionary *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GPBBoolEnumDictionary allocWithZone:a3];

  return [(GPBBoolEnumDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(a3 + 32) && self->_valueSet[1] == *(a3 + 33) && (!self->_valueSet[0] || self->_values[0] == *(a3 + 6)) && (!self->_valueSet[1] || self->_values[1] == *(a3 + 7));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %d", self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %d", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getEnum:(int *)a3 forKey:(BOOL)a4
{
  v4 = self->_valueSet[a4];
  if (a3 && self->_valueSet[a4])
  {
    v6 = self->_values[a4];
    if ((self->_validationFunc)(v6, a2))
    {
      v7 = v6;
    }

    else
    {
      v7 = -72499473;
    }

    *a3 = v7;
  }

  return v4;
}

- (BOOL)getRawValue:(int *)a3 forKey:(BOOL)a4
{
  v5 = self->_valueSet[a4];
  if (a3 && v5)
  {
    *a3 = self->_values[a4];
  }

  return v5;
}

- (void)enumerateKeysAndRawValuesUsingBlock:(id)a3
{
  v5 = 0;
  if (!self->_valueSet[0] || ((*(a3 + 2))(a3, 0, self->_values[0], &v5), (v5 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      (*(a3 + 2))(a3, 1, self->_values[1], &v5);
    }
  }
}

- (void)enumerateKeysAndEnumsUsingBlock:(id)a3
{
  v10 = 0;
  validationFunc = self->_validationFunc;
  if (!self->_valueSet[0] || ((v6 = self->_values[0], !(validationFunc)(v6, a2)) ? (v7 = 4222467823) : (v7 = v6), (*(a3 + 2))(a3, 0, v7, &v10), (v10 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      v8 = self->_values[1];
      if (validationFunc(v8))
      {
        v9 = v8;
      }

      else
      {
        v9 = 4222467823;
      }

      (*(a3 + 2))(a3, 1, v9, &v10);
    }
  }
}

- (unint64_t)computeSerializedSizeAsField:(id)a3
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(*(a3 + 1) + 30);
  valueSet = self->_valueSet;
  values = self->_values;
  v10 = 1;
  do
  {
    v11 = v10;
    if (valueSet[v4])
    {
      ++v5;
      v12 = GPBComputeBoolSize(1);
      v13 = sub_10031DFD8(values[v4], 2, v7) + v12;
      v6 += v13 + GPBComputeRawVarint32SizeForInteger(v13);
    }

    v10 = 0;
    v4 = 1;
  }

  while ((v11 & 1) != 0);
  return v6 + GPBComputeWireFormatTagSize(*(*(a3 + 1) + 16), 15) * v5;
}

- (void)writeToCodedOutputStream:(id)a3 asField:(id)a4
{
  v6 = *(a4 + 1);
  v7 = *(v6 + 30);
  Tag = GPBWireFormatMakeTag(*(v6 + 16), 2);
  v9 = 0;
  v10 = 0;
  valueSet = self->_valueSet;
  values = self->_values;
  v13 = 1;
  do
  {
    v14 = v13;
    if (valueSet[v10])
    {
      [a3 writeInt32NoTag:Tag];
      v15 = GPBComputeBoolSize(1);
      [a3 writeInt32NoTag:{sub_10031DFD8(values[v10], 2, v7) + v15}];
      [a3 writeBool:1 value:v9 & 1];
      sub_10031E218(a3, values[v10], 2, v7);
    }

    v13 = 0;
    v9 = 1;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
}

- (void)enumerateForTextFormat:(id)a3
{
  if (self->_valueSet[0])
  {
    (*(a3 + 2))(a3, @"false", [NSNumber numberWithInt:self->_values[0]]);
  }

  if (self->_valueSet[1])
  {
    v5 = [NSNumber numberWithInt:self->_values[1]];
    v6 = *(a3 + 2);

    v6(a3, @"true", v5);
  }
}

- (void)setGPBGenericValue:(id *)a3 forGPBGenericValueKey:(id *)a4
{
  var0 = a4->var0;
  self->_values[var0] = a3->var1;
  self->_valueSet[var0] = 1;
}

- (void)addRawEntriesFromDictionary:(id)a3
{
  if (a3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(a3 + v4 + 32) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(a3 + v4 + 6);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    autocreator = self->_autocreator;
    if (autocreator)
    {
      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

- (void)setRawValue:(int)a3 forKey:(BOOL)a4
{
  self->_values[a4] = a3;
  self->_valueSet[a4] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end