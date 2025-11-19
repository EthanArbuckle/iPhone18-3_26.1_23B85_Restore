@interface SXTextSourceFontAttributes
+ (id)attributesWithFamilyName:(id)a3 style:(int64_t)a4 weight:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SXTextSourceFontAttributes

+ (id)attributesWithFamilyName:(id)a3 style:(int64_t)a4 weight:(int64_t)a5
{
  v7 = a3;
  v8 = [(SXFontAttributes *)[SXTextSourceFontAttributes alloc] initWithFamilyName:v7 weight:a5 width:7 style:a4];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SXFontAttributes *)self familyName];
  v5 = [SXTextSourceFontAttributes attributesWithFamilyName:v4 style:[(SXFontAttributes *)self style] weight:[(SXFontAttributes *)self weight]];

  return v5;
}

@end