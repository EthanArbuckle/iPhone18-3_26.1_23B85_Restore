@interface SXFontAttributes
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SXFontAttributes)initWithFamilyName:(id)a3 weight:(int64_t)a4 width:(int64_t)a5 style:(int64_t)a6 grade:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForStyle:(int64_t)a3;
- (id)stringForWeight:(int64_t)a3;
- (id)stringForWidth:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation SXFontAttributes

- (SXFontAttributes)initWithFamilyName:(id)a3 weight:(int64_t)a4 width:(int64_t)a5 style:(int64_t)a6 grade:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = SXFontAttributes;
  v15 = [(SXFontAttributes *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_familyName, a3);
    v16->_weight = a4;
    v16->_width = a5;
    v16->_style = a6;
    objc_storeStrong(&v16->_grade, a7);
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = self->_width ^ self->_weight ^ self->_style;
  v4 = [(NSString *)self->_familyName hash];
  return v3 ^ v4 ^ [(NSNumber *)self->_grade hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && self->_weight == v4->_weight && self->_width == v4->_width && self->_style == v4->_style && [(NSString *)self->_familyName isEqual:v4->_familyName]&& [(NSNumber *)self->_grade isEqualToNumber:v5->_grade];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(SXFontAttributes *)self familyName];
  [v3 appendFormat:@"; familyName: %@", v4];

  v5 = [(SXFontAttributes *)self stringForWeight:[(SXFontAttributes *)self weight]];
  [v3 appendFormat:@"; weight: %@", v5];

  v6 = [(SXFontAttributes *)self stringForWidth:[(SXFontAttributes *)self width]];
  [v3 appendFormat:@"; width: %@", v6];

  v7 = [(SXFontAttributes *)self stringForStyle:[(SXFontAttributes *)self style]];
  [v3 appendFormat:@"; style: %@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (id)stringForStyle:(int64_t)a3
{
  v3 = @"normal";
  if (a3 == 1)
  {
    v3 = @"italic";
  }

  if (a3 == 2)
  {
    v3 = @"oblique";
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"undefined";
  }

  else
  {
    return v3;
  }
}

- (id)stringForWeight:(int64_t)a3
{
  v3 = @"thin";
  v4 = @"extra-bold";
  v5 = @"black";
  v6 = @"undefined";
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"thin";
  }

  if (a3 != 900)
  {
    v5 = v6;
  }

  if (a3 != 800)
  {
    v4 = v5;
  }

  v7 = @"bold";
  if (a3 != 700)
  {
    v7 = @"thin";
  }

  if (a3 == 600)
  {
    v7 = @"semi-bold";
  }

  if (a3 <= 799)
  {
    v4 = v7;
  }

  v8 = @"normal";
  v9 = @"medium";
  if (a3 != 500)
  {
    v9 = @"thin";
  }

  if (a3 != 400)
  {
    v8 = v9;
  }

  if (a3 == 300)
  {
    v3 = @"light";
  }

  if (a3 == 200)
  {
    v3 = @"extra-light";
  }

  if (a3 > 399)
  {
    v3 = v8;
  }

  if (a3 <= 599)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (id)stringForWidth:(int64_t)a3
{
  v3 = @"ultra-condensed";
  if (a3 > 6)
  {
    v4 = @"extra-expanded";
    v8 = @"ultra-expanded";
    v9 = @"undefined";
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = @"ultra-condensed";
    }

    if (a3 != 11)
    {
      v8 = v9;
    }

    if (a3 != 10)
    {
      v4 = v8;
    }

    if (a3 == 9)
    {
      v3 = @"expanded";
    }

    if (a3 == 8)
    {
      v3 = @"semi-expanded";
    }

    if (a3 == 7)
    {
      v3 = @"normal";
    }

    v7 = a3 <= 9;
  }

  else
  {
    v4 = @"extra-condensed";
    v5 = @"condensed";
    v6 = @"semi-condensed";
    if (a3 != 6)
    {
      v6 = @"ultra-condensed";
    }

    if (a3 != 5)
    {
      v5 = v6;
    }

    if (a3 != 4)
    {
      v4 = v5;
    }

    if (a3 == 3)
    {
      v3 = @"compressed";
    }

    if (a3 == 1)
    {
      v3 = @"extra-compressed";
    }

    if (!a3)
    {
      v3 = @"ultra-compressed";
    }

    v7 = a3 <= 3;
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