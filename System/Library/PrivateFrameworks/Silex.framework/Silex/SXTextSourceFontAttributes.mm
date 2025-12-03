@interface SXTextSourceFontAttributes
+ (id)attributesWithFamilyName:(id)name style:(int64_t)style weight:(int64_t)weight;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SXTextSourceFontAttributes

+ (id)attributesWithFamilyName:(id)name style:(int64_t)style weight:(int64_t)weight
{
  nameCopy = name;
  v8 = [(SXFontAttributes *)[SXTextSourceFontAttributes alloc] initWithFamilyName:nameCopy weight:weight width:7 style:style];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  familyName = [(SXFontAttributes *)self familyName];
  v5 = [SXTextSourceFontAttributes attributesWithFamilyName:familyName style:[(SXFontAttributes *)self style] weight:[(SXFontAttributes *)self weight]];

  return v5;
}

@end