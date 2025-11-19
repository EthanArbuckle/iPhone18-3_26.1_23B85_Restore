@interface SSBagKey
- (SSBagKey)initWithStringRepresentation:(id)a3 valueType:(unint64_t)a4 defaultValue:(id)a5;
- (id)valueFromDictionary:(id)a3;
@end

@implementation SSBagKey

- (SSBagKey)initWithStringRepresentation:(id)a3 valueType:(unint64_t)a4 defaultValue:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9 && !SSBagValueTypeIsPrimitive(a4))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Default values are only supported for primitive types." userInfo:0];
    objc_exception_throw(v15);
  }

  v10 = [(SSBagKey *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_defaultValue, a5);
    v12 = [v8 componentsSeparatedByString:@"/"];
    stringRepresentation = v11->_stringRepresentation;
    v11->_stringRepresentation = v12;

    v11->_valueType = a4;
  }

  return v11;
}

- (id)valueFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(SSBagKey *)self stringRepresentation];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(SSBagKey *)self stringRepresentation];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v10 = [v4 objectForKeyedSubscript:v9];
      if (!v10)
      {
LABEL_9:
        v15 = 0;
        goto LABEL_11;
      }

      v11 = [(SSBagKey *)self stringRepresentation];
      v12 = [v11 count] - 1;

      if (v7 == v12)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      ++v7;
      v13 = [(SSBagKey *)self stringRepresentation];
      v14 = [v13 count];

      v4 = v10;
      if (v7 >= v14)
      {
        v15 = 0;
        v4 = v10;
        goto LABEL_12;
      }
    }

    v15 = v10;
LABEL_11:
  }

  else
  {
    v15 = 0;
  }

LABEL_12:

  return v15;
}

@end