@interface SXTextStyleAttributes
+ (id)attributesWithRange:(_NSRange)range;
- (NSDictionary)attributes;
- (SXTextStyleAttributes)initWithRange:(_NSRange)range;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addAttribute:(id)attribute value:(id)value;
@end

@implementation SXTextStyleAttributes

+ (id)attributesWithRange:(_NSRange)range
{
  v3 = [[SXTextStyleAttributes alloc] initWithRange:range.location, range.length];

  return v3;
}

- (SXTextStyleAttributes)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = SXTextStyleAttributes;
  v5 = [(SXTextStyleAttributes *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_range.location = location;
    v5->_range.length = length;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    mutableAttributes = v6->_mutableAttributes;
    v6->_mutableAttributes = dictionary;
  }

  return v6;
}

- (void)addAttribute:(id)attribute value:(id)value
{
  if (attribute && value)
  {
    valueCopy = value;
    attributeCopy = attribute;
    mutableAttributes = [(SXTextStyleAttributes *)self mutableAttributes];
    [mutableAttributes setObject:valueCopy forKey:attributeCopy];
  }
}

- (NSDictionary)attributes
{
  mutableAttributes = [(SXTextStyleAttributes *)self mutableAttributes];
  v3 = [mutableAttributes copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v5[2] = [(SXTextStyleAttributes *)self range];
  v5[3] = v6;
  mutableAttributes = [(SXTextStyleAttributes *)self mutableAttributes];
  v8 = [mutableAttributes copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v25.location = [(SXTextStyleAttributes *)self range];
  v5 = NSStringFromRange(v25);
  v6 = [v3 initWithFormat:@"<%@: %p; range: %@", v4, self, v5];

  [v6 appendString:@" attributes(%d)"];
  mutableAttributes = [(SXTextStyleAttributes *)self mutableAttributes];
  v8 = [mutableAttributes count];

  if (v8)
  {
    [v6 appendString:@": \n"];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    mutableAttributes2 = [(SXTextStyleAttributes *)self mutableAttributes];
    v10 = [mutableAttributes2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(mutableAttributes2);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          mutableAttributes3 = [(SXTextStyleAttributes *)self mutableAttributes];
          v16 = [mutableAttributes3 objectForKey:v14];
          [v6 appendFormat:@"key: %@ value: %@\n", v14, v16];
        }

        v11 = [mutableAttributes2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  [v6 appendString:@">"];

  return v6;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end