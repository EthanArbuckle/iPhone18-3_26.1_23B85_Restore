@interface SSBagKey
- (SSBagKey)initWithStringRepresentation:(id)representation valueType:(unint64_t)type defaultValue:(id)value;
- (id)valueFromDictionary:(id)dictionary;
@end

@implementation SSBagKey

- (SSBagKey)initWithStringRepresentation:(id)representation valueType:(unint64_t)type defaultValue:(id)value
{
  representationCopy = representation;
  valueCopy = value;
  if (valueCopy && !SSBagValueTypeIsPrimitive(type))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Default values are only supported for primitive types." userInfo:0];
    objc_exception_throw(v15);
  }

  v10 = [(SSBagKey *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_defaultValue, value);
    v12 = [representationCopy componentsSeparatedByString:@"/"];
    stringRepresentation = v11->_stringRepresentation;
    v11->_stringRepresentation = v12;

    v11->_valueType = type;
  }

  return v11;
}

- (id)valueFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  stringRepresentation = [(SSBagKey *)self stringRepresentation];
  v6 = [stringRepresentation count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      stringRepresentation2 = [(SSBagKey *)self stringRepresentation];
      v9 = [stringRepresentation2 objectAtIndexedSubscript:v7];

      v10 = [dictionaryCopy objectForKeyedSubscript:v9];
      if (!v10)
      {
LABEL_9:
        v15 = 0;
        goto LABEL_11;
      }

      stringRepresentation3 = [(SSBagKey *)self stringRepresentation];
      v12 = [stringRepresentation3 count] - 1;

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
      stringRepresentation4 = [(SSBagKey *)self stringRepresentation];
      v14 = [stringRepresentation4 count];

      dictionaryCopy = v10;
      if (v7 >= v14)
      {
        v15 = 0;
        dictionaryCopy = v10;
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