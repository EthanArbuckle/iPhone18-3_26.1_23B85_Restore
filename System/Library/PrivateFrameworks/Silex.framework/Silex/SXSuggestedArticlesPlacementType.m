@interface SXSuggestedArticlesPlacementType
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (NSString)description;
- (unint64_t)themeWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXSuggestedArticlesPlacementType

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_15;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXSuggestedArticlesPlacementType;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"layout"])
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___SXSuggestedArticlesPlacementType;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v9 = v8;

  return v9;
}

- (unint64_t)themeWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 != 3)
  {
    goto LABEL_8;
  }

  if (([v5 isEqualToString:@"dark"] & 1) == 0)
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
  v4 = [(SXSuggestedArticlesPlacementType *)self layout];
  [v3 appendFormat:@"; layout: %@", v4];

  [v3 appendFormat:@"; theme: %lu", -[SXSuggestedArticlesPlacementType theme](self, "theme")];
  [v3 appendString:@">"];

  return v3;
}

@end