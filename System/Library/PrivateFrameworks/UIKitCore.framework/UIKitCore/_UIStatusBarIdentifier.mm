@interface _UIStatusBarIdentifier
+ (id)displayIdentifierFromStringRepresentation:(id)representation;
+ (id)identifierForObject:(id)object string:(id)string;
+ (id)uninternedIdentifierForObject:(id)object string:(id)string;
- (NSString)stringRepresentation;
- (id)description;
@end

@implementation _UIStatusBarIdentifier

+ (id)identifierForObject:(id)object string:(id)string
{
  objectCopy = object;
  stringCopy = string;
  v7 = stringCopy;
  v8 = &stru_1EFB14550;
  if (stringCopy)
  {
    v8 = stringCopy;
  }

  v9 = v8;
  v10 = objc_getAssociatedObject(objectCopy, 0);
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objc_setAssociatedObject(objectCopy, 0, dictionary, 1);
  }

  v12 = objc_alloc_init(_UIStatusBarIdentifier);
  [(_UIStatusBarIdentifier *)v12 setObject:objectCopy];
  [(_UIStatusBarIdentifier *)v12 setString:v7];
  [dictionary setObject:v12 forKeyedSubscript:v9];
LABEL_8:

  return v12;
}

+ (id)uninternedIdentifierForObject:(id)object string:(id)string
{
  stringCopy = string;
  objectCopy = object;
  v7 = objc_alloc_init(_UIStatusBarIdentifier);
  [(_UIStatusBarIdentifier *)v7 setObject:objectCopy];

  [(_UIStatusBarIdentifier *)v7 setString:stringCopy];

  return v7;
}

- (id)description
{
  v8[2] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringRepresentation = [(_UIStatusBarIdentifier *)self stringRepresentation];
  }

  else
  {
    v4 = NSStringFromSelector(sel_object);
    v8[0] = v4;
    v5 = NSStringFromSelector(sel_string);
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
    stringRepresentation = [UIDescriptionBuilder descriptionForObject:self keys:v6];
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
    v18 = [_UIStatusBarIdentifier identifierForObject:v17 string:v13];
    v19 = [_UIStatusBarIdentifier identifierForObject:v18 string:v7];
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
      v8 = MEMORY[0x1E696AEC0];
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
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v11, self->_string];
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