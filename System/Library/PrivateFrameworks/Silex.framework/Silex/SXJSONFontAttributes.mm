@interface SXJSONFontAttributes
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)familyNameWithValue:(id)value withType:(int)type;
- (int64_t)styleWithValue:(id)value withType:(int)type;
- (int64_t)weightWithValue:(id)value withType:(int)type;
- (int64_t)widthWithValue:(id)value withType:(int)type;
- (unint64_t)hash;
@end

@implementation SXJSONFontAttributes

- (int64_t)weightWithValue:(id)value withType:(int)type
{
  if (value && type == 2)
  {
    return [value integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)familyNameWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v7 = valueCopy;
  if (valueCopy && type == 3)
  {
    fontFamily = valueCopy;
  }

  else
  {
    fontFamily = [(SXJSONFontAttributes *)self fontFamily];
  }

  v9 = fontFamily;

  return v9;
}

- (int64_t)widthWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"ultra-condensed"])
  {
    v5 = 2;
  }

  else if ([valueCopy isEqualToString:@"extra-condensed"])
  {
    v5 = 4;
  }

  else if ([valueCopy isEqualToString:@"condensed"])
  {
    v5 = 5;
  }

  else if ([valueCopy isEqualToString:@"semi-condensed"])
  {
    v5 = 6;
  }

  else if ([valueCopy isEqualToString:@"normal"])
  {
    v5 = 7;
  }

  else if ([valueCopy isEqualToString:@"semi-expanded"])
  {
    v5 = 8;
  }

  else if ([valueCopy isEqualToString:@"expanded"])
  {
    v5 = 9;
  }

  else if ([valueCopy isEqualToString:@"extra-expanded"])
  {
    v5 = 10;
  }

  else if ([valueCopy isEqualToString:@"ultra-expanded"])
  {
    v5 = 11;
  }

  else if ([valueCopy isEqualToString:@"compressed"])
  {
    v5 = 3;
  }

  else if ([valueCopy isEqualToString:@"extra-compressed"])
  {
    v5 = 1;
  }

  else if ([valueCopy isEqualToString:@"ultra-compressed"])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (int64_t)styleWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"italic"])
  {
    v5 = 1;
  }

  else if ([valueCopy isEqualToString:@"oblique"])
  {
    v5 = 2;
  }

  else if ([valueCopy isEqualToString:@"normal"])
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
  weight = [(SXJSONFontAttributes *)self weight];
  style = [(SXJSONFontAttributes *)self style];
  width = [(SXJSONFontAttributes *)self width];
  grade = [(SXJSONFontAttributes *)self grade];
  v8 = [v3 stringWithFormat:@"<%@: %p weight: %lu; style: %lu; width: %lu; grade: %@>", self, self, weight, style, width, grade];;

  return v8;
}

- (unint64_t)hash
{
  weight = [(SXJSONFontAttributes *)self weight];
  v4 = [(SXJSONFontAttributes *)self width]^ weight;
  v5 = v4 ^ [(SXJSONFontAttributes *)self style];
  familyName = [(SXJSONFontAttributes *)self familyName];
  v7 = [familyName hash];
  grade = [(SXJSONFontAttributes *)self grade];
  v9 = v7 ^ [grade hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    weight = [(SXJSONFontAttributes *)self weight];
    if (weight == [(SXJSONFontAttributes *)equalCopy weight]&& (v6 = [(SXJSONFontAttributes *)self width], v6 == [(SXJSONFontAttributes *)equalCopy width]) && (v7 = [(SXJSONFontAttributes *)self style], v7 == [(SXJSONFontAttributes *)equalCopy style]))
    {
      familyName = [(SXJSONFontAttributes *)self familyName];
      familyName2 = [(SXJSONFontAttributes *)equalCopy familyName];
      v10 = [familyName isEqual:familyName2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  jsonDictionary = [(SXJSONObject *)self jsonDictionary];
  specificationVersion = [(SXJSONObject *)self specificationVersion];
  v7 = [v4 initWithJSONObject:jsonDictionary andVersion:specificationVersion];

  return v7;
}

@end