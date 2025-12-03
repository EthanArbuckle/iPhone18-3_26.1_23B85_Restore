@interface SXDataDescriptor
- (id)description;
- (id)formatWithValue:(id)value withType:(int)type;
- (id)labelWithValue:(id)value withType:(int)type;
- (unint64_t)dataTypeWithValue:(id)value withType:(int)type;
@end

@implementation SXDataDescriptor

- (id)formatWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [valueCopy objectForKey:@"type"];
    if (v6)
    {
      v7 = objc_alloc([SXClassFactory classForBaseClass:objc_opt_class() type:v6]);
      specificationVersion = [(SXJSONObject *)self specificationVersion];
      v9 = [v7 initWithJSONObject:valueCopy andVersion:specificationVersion];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)labelWithValue:(id)value withType:(int)type
{
  v5 = [(SXJSONObject *)self valueForLookupKey:@"label", *&type];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [SXFormattedText alloc];
    specificationVersion = [(SXJSONObject *)self specificationVersion];
    v8 = [(SXJSONObject *)v6 initWithJSONObject:v5 andVersion:specificationVersion];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      specificationVersion = v5;
    }

    else
    {
      specificationVersion = &stru_1F532F6C0;
    }

    v8 = [[SXFormattedText alloc] initWithText:specificationVersion];
  }

  v9 = v8;

  return v9;
}

- (unint64_t)dataTypeWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    if ([valueCopy isEqualToString:@"string"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"text"])
    {
      v7 = 2;
    }

    else if ([v6 isEqualToString:@"number"])
    {
      v7 = 3;
    }

    else if ([v6 isEqualToString:@"integer"])
    {
      v7 = 4;
    }

    else if ([v6 isEqualToString:@"float"])
    {
      v7 = 5;
    }

    else if ([v6 isEqualToString:@"image"])
    {
      v7 = 6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];;
  v4 = [(SXDataDescriptor *)self key];
  [v3 appendFormat:@" key: %@", v4];

  v5 = [(SXJSONObject *)self valueForLookupKey:@"dataType"];
  [v3 appendFormat:@" dataType: %@", v5];

  identifier = [(SXDataDescriptor *)self identifier];
  v7 = identifier;
  if (identifier)
  {
    v8 = identifier;
  }

  else
  {
    v8 = @"(undefined)";
  }

  v9 = v8;

  [v3 appendFormat:@" identifier: %@;", v9];
  label = [(SXDataDescriptor *)self label];
  v11 = label;
  if (label)
  {
    v12 = label;
  }

  else
  {
    v12 = @"(undefined)";
  }

  v13 = v12;

  [v3 appendFormat:@" label: %@>", v13];

  return v3;
}

@end