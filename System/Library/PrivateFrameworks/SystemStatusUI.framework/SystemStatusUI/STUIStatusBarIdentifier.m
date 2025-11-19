@interface STUIStatusBarIdentifier
+ (id)displayIdentifierFromStringRepresentation:(id)a3;
+ (id)identifierForObject:(id)a3 string:(id)a4;
+ (id)uninternedIdentifierForObject:(id)a3 string:(id)a4;
- (NSString)stringRepresentation;
- (id)description;
@end

@implementation STUIStatusBarIdentifier

+ (id)identifierForObject:(id)a3 string:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = &stru_287D04F38;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = objc_getAssociatedObject(v5, &STUIStatusBarIdentifiers);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 objectForKeyedSubscript:v9];
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    objc_setAssociatedObject(v5, &STUIStatusBarIdentifiers, v11, 1);
  }

  v12 = objc_alloc_init(STUIStatusBarIdentifier);
  [(STUIStatusBarIdentifier *)v12 setObject:v5];
  [(STUIStatusBarIdentifier *)v12 setString:v7];
  [v11 setObject:v12 forKeyedSubscript:v9];
LABEL_8:

  return v12;
}

+ (id)uninternedIdentifierForObject:(id)a3 string:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(STUIStatusBarIdentifier);
  [(STUIStatusBarIdentifier *)v7 setObject:v6];

  [(STUIStatusBarIdentifier *)v7 setString:v5];

  return v7;
}

- (id)description
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(STUIStatusBarIdentifier *)self stringRepresentation];
  }

  else
  {
    v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
    v5 = [(STUIStatusBarIdentifier *)self object];
    v6 = [v4 appendObject:v5 withName:@"object"];

    v7 = [(STUIStatusBarIdentifier *)self string];
    [v4 appendString:v7 withName:@"string"];

    v3 = [v4 build];
  }

  return v3;
}

+ (id)displayIdentifierFromStringRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"."];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3;
    v7 = 0;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v6 = [v3 substringToIndex:v4];
    v7 = [v3 substringFromIndex:v8 + v9];
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
    v6 = [v5 string];
    v7 = [v6 length];

    if (v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = NSStringFromClass([v5 object]);
      v10 = [v5 string];
      v11 = [v8 stringWithFormat:@"%@/%@", v9, v10];
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