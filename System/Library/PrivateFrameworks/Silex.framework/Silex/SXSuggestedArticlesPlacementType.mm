@interface SXSuggestedArticlesPlacementType
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (NSString)description;
- (unint64_t)themeWithValue:(id)value withType:(int)type;
@end

@implementation SXSuggestedArticlesPlacementType

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_15;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXSuggestedArticlesPlacementType;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"layout"])
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXSuggestedArticlesPlacementType;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

- (unint64_t)themeWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type != 3)
  {
    goto LABEL_8;
  }

  if (([valueCopy isEqualToString:@"dark"] & 1) == 0)
  {
    if ([v6 isEqualToString:@"light"])
    {
      v7 = 2;
      goto LABEL_9;
    }

    if ([v6 isEqualToString:@"white"])
    {
      v7 = 3;
      goto LABEL_9;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; enabled: %d", -[SXSuggestedArticlesPlacementType enabled](self, "enabled")];
  layout = [(SXSuggestedArticlesPlacementType *)self layout];
  [v3 appendFormat:@"; layout: %@", layout];

  [v3 appendFormat:@"; theme: %lu", -[SXSuggestedArticlesPlacementType theme](self, "theme")];
  [v3 appendString:@">"];

  return v3;
}

@end