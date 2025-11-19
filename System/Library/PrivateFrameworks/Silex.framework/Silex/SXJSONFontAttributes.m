@interface SXJSONFontAttributes
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)familyNameWithValue:(id)a3 withType:(int)a4;
- (int64_t)styleWithValue:(id)a3 withType:(int)a4;
- (int64_t)weightWithValue:(id)a3 withType:(int)a4;
- (int64_t)widthWithValue:(id)a3 withType:(int)a4;
- (unint64_t)hash;
@end

@implementation SXJSONFontAttributes

- (int64_t)weightWithValue:(id)a3 withType:(int)a4
{
  if (a3 && a4 == 2)
  {
    return [a3 integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)familyNameWithValue:(id)a3 withType:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && a4 == 3)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(SXJSONFontAttributes *)self fontFamily];
  }

  v9 = v8;

  return v9;
}

- (int64_t)widthWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  if ([v4 isEqualToString:@"ultra-condensed"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"extra-condensed"])
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:@"condensed"])
  {
    v5 = 5;
  }

  else if ([v4 isEqualToString:@"semi-condensed"])
  {
    v5 = 6;
  }

  else if ([v4 isEqualToString:@"normal"])
  {
    v5 = 7;
  }

  else if ([v4 isEqualToString:@"semi-expanded"])
  {
    v5 = 8;
  }

  else if ([v4 isEqualToString:@"expanded"])
  {
    v5 = 9;
  }

  else if ([v4 isEqualToString:@"extra-expanded"])
  {
    v5 = 10;
  }

  else if ([v4 isEqualToString:@"ultra-expanded"])
  {
    v5 = 11;
  }

  else if ([v4 isEqualToString:@"compressed"])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"extra-compressed"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"ultra-compressed"])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (int64_t)styleWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  if ([v4 isEqualToString:@"italic"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"oblique"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"normal"])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SXJSONFontAttributes *)self weight];
  v5 = [(SXJSONFontAttributes *)self style];
  v6 = [(SXJSONFontAttributes *)self width];
  v7 = [(SXJSONFontAttributes *)self grade];
  v8 = [v3 stringWithFormat:@"<%@: %p weight: %lu; style: %lu; width: %lu; grade: %@>", self, self, v4, v5, v6, v7];;

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SXJSONFontAttributes *)self weight];
  v4 = [(SXJSONFontAttributes *)self width]^ v3;
  v5 = v4 ^ [(SXJSONFontAttributes *)self style];
  v6 = [(SXJSONFontAttributes *)self familyName];
  v7 = [v6 hash];
  v8 = [(SXJSONFontAttributes *)self grade];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(SXJSONFontAttributes *)self weight];
    if (v5 == [(SXJSONFontAttributes *)v4 weight]&& (v6 = [(SXJSONFontAttributes *)self width], v6 == [(SXJSONFontAttributes *)v4 width]) && (v7 = [(SXJSONFontAttributes *)self style], v7 == [(SXJSONFontAttributes *)v4 style]))
    {
      v8 = [(SXJSONFontAttributes *)self familyName];
      v9 = [(SXJSONFontAttributes *)v4 familyName];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SXJSONObject *)self jsonDictionary];
  v6 = [(SXJSONObject *)self specificationVersion];
  v7 = [v4 initWithJSONObject:v5 andVersion:v6];

  return v7;
}

@end