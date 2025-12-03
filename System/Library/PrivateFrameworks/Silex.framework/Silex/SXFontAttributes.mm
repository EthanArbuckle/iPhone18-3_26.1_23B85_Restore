@interface SXFontAttributes
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SXFontAttributes)initWithFamilyName:(id)name weight:(int64_t)weight width:(int64_t)width style:(int64_t)style grade:(id)grade;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForStyle:(int64_t)style;
- (id)stringForWeight:(int64_t)weight;
- (id)stringForWidth:(int64_t)width;
- (unint64_t)hash;
@end

@implementation SXFontAttributes

- (SXFontAttributes)initWithFamilyName:(id)name weight:(int64_t)weight width:(int64_t)width style:(int64_t)style grade:(id)grade
{
  nameCopy = name;
  gradeCopy = grade;
  v18.receiver = self;
  v18.super_class = SXFontAttributes;
  v15 = [(SXFontAttributes *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_familyName, name);
    v16->_weight = weight;
    v16->_width = width;
    v16->_style = style;
    objc_storeStrong(&v16->_grade, grade);
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = self->_width ^ self->_weight ^ self->_style;
  v4 = [(NSString *)self->_familyName hash];
  return v3 ^ v4 ^ [(NSNumber *)self->_grade hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && self->_weight == equalCopy->_weight && self->_width == equalCopy->_width && self->_style == equalCopy->_style && [(NSString *)self->_familyName isEqual:equalCopy->_familyName]&& [(NSNumber *)self->_grade isEqualToNumber:v5->_grade];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SXFontAttributes alloc];
  familyName = self->_familyName;
  weight = self->_weight;
  width = self->_width;
  style = self->_style;
  grade = self->_grade;

  return [(SXFontAttributes *)v4 initWithFamilyName:familyName weight:weight width:width style:style grade:grade];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  familyName = [(SXFontAttributes *)self familyName];
  [v3 appendFormat:@"; familyName: %@", familyName];

  v5 = [(SXFontAttributes *)self stringForWeight:[(SXFontAttributes *)self weight]];
  [v3 appendFormat:@"; weight: %@", v5];

  v6 = [(SXFontAttributes *)self stringForWidth:[(SXFontAttributes *)self width]];
  [v3 appendFormat:@"; width: %@", v6];

  v7 = [(SXFontAttributes *)self stringForStyle:[(SXFontAttributes *)self style]];
  [v3 appendFormat:@"; style: %@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (id)stringForStyle:(int64_t)style
{
  v3 = @"normal";
  if (style == 1)
  {
    v3 = @"italic";
  }

  if (style == 2)
  {
    v3 = @"oblique";
  }

  if (style == 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"undefined";
  }

  else
  {
    return v3;
  }
}

- (id)stringForWeight:(int64_t)weight
{
  v3 = @"thin";
  v4 = @"extra-bold";
  v5 = @"black";
  v6 = @"undefined";
  if (weight != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"thin";
  }

  if (weight != 900)
  {
    v5 = v6;
  }

  if (weight != 800)
  {
    v4 = v5;
  }

  v7 = @"bold";
  if (weight != 700)
  {
    v7 = @"thin";
  }

  if (weight == 600)
  {
    v7 = @"semi-bold";
  }

  if (weight <= 799)
  {
    v4 = v7;
  }

  v8 = @"normal";
  v9 = @"medium";
  if (weight != 500)
  {
    v9 = @"thin";
  }

  if (weight != 400)
  {
    v8 = v9;
  }

  if (weight == 300)
  {
    v3 = @"light";
  }

  if (weight == 200)
  {
    v3 = @"extra-light";
  }

  if (weight > 399)
  {
    v3 = v8;
  }

  if (weight <= 599)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (id)stringForWidth:(int64_t)width
{
  v3 = @"ultra-condensed";
  if (width > 6)
  {
    v4 = @"extra-expanded";
    v8 = @"ultra-expanded";
    v9 = @"undefined";
    if (width != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = @"ultra-condensed";
    }

    if (width != 11)
    {
      v8 = v9;
    }

    if (width != 10)
    {
      v4 = v8;
    }

    if (width == 9)
    {
      v3 = @"expanded";
    }

    if (width == 8)
    {
      v3 = @"semi-expanded";
    }

    if (width == 7)
    {
      v3 = @"normal";
    }

    v7 = width <= 9;
  }

  else
  {
    v4 = @"extra-condensed";
    v5 = @"condensed";
    v6 = @"semi-condensed";
    if (width != 6)
    {
      v6 = @"ultra-condensed";
    }

    if (width != 5)
    {
      v5 = v6;
    }

    if (width != 4)
    {
      v4 = v5;
    }

    if (width == 3)
    {
      v3 = @"compressed";
    }

    if (width == 1)
    {
      v3 = @"extra-compressed";
    }

    if (!width)
    {
      v3 = @"ultra-compressed";
    }

    v7 = width <= 3;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

@end