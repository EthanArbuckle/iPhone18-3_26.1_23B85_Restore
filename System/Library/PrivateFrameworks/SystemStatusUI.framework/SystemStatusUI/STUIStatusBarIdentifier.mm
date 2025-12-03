@interface STUIStatusBarIdentifier
+ (id)displayIdentifierFromStringRepresentation:(id)representation;
+ (id)identifierForObject:(id)object string:(id)string;
+ (id)uninternedIdentifierForObject:(id)object string:(id)string;
- (NSString)stringRepresentation;
- (id)description;
@end

@implementation STUIStatusBarIdentifier

+ (id)identifierForObject:(id)object string:(id)string
{
  objectCopy = object;
  stringCopy = string;
  v7 = stringCopy;
  v8 = &stru_287D04F38;
  if (stringCopy)
  {
    v8 = stringCopy;
  }

  v9 = v8;
  v10 = objc_getAssociatedObject(objectCopy, &STUIStatusBarIdentifiers);
  if (v10)
  {
    dictionary = v10;
    v12 = [v10 objectForKeyedSubscript:v9];
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objc_setAssociatedObject(objectCopy, &STUIStatusBarIdentifiers, dictionary, 1);
  }

  v12 = objc_alloc_init(STUIStatusBarIdentifier);
  [(STUIStatusBarIdentifier *)v12 setObject:objectCopy];
  [(STUIStatusBarIdentifier *)v12 setString:v7];
  [dictionary setObject:v12 forKeyedSubscript:v9];
LABEL_8:

  return v12;
}

+ (id)uninternedIdentifierForObject:(id)object string:(id)string
{
  stringCopy = string;
  objectCopy = object;
  v7 = objc_alloc_init(STUIStatusBarIdentifier);
  [(STUIStatusBarIdentifier *)v7 setObject:objectCopy];

  [(STUIStatusBarIdentifier *)v7 setString:stringCopy];

  return v7;
}

- (id)description
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringRepresentation = [(STUIStatusBarIdentifier *)self stringRepresentation];
  }

  else
  {
    v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
    object = [(STUIStatusBarIdentifier *)self object];
    v6 = [v4 appendObject:object withName:@"object"];

    string = [(STUIStatusBarIdentifier *)self string];
    [v4 appendString:string withName:@"string"];

    stringRepresentation = [v4 build];
  }

  return stringRepresentation;
}

+ (id)displayIdentifierFromStringRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy rangeOfString:@"."];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = representationCopy;
    v7 = 0;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v6 = [representationCopy substringToIndex:v4];
    v7 = [representationCopy substringFromIndex:v8 + v9];
  }

  v10 = v6;
  v11 = [v10 rangeOfString:@"/"];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = v11;
    v16 = v12;
    v14 = [v10 substringToIndex:v11];

    v13 = [v10 substringFromIndex:v15 + v16];
  }

  v17 = NSClassFromString(v14);
  if (v17)
  {
    v18 = [STUIStatusBarIdentifier identifierForObject:v17 string:v13];
    v19 = [STUIStatusBarIdentifier identifierForObject:v18 string:v7];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (NSString)stringRepresentation
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  object = self->_object;
  if (isKindOfClass)
  {
    v5 = object;
    string = [v5 string];
    v7 = [string length];

    if (v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = NSStringFromClass([v5 object]);
      string2 = [v5 string];
      v11 = [v8 stringWithFormat:@"%@/%@", v9, string2];
    }

    else
    {
      v11 = NSStringFromClass([v5 object]);
    }

    if ([(NSString *)self->_string length])
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v11, self->_string];
    }

    else
    {
      v13 = v11;
    }

    v12 = v13;
  }

  else
  {
    v12 = NSStringFromClass(object);
  }

  return v12;
}

@end