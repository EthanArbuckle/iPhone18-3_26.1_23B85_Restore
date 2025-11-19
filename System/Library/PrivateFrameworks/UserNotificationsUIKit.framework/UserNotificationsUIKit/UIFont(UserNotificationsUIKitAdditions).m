@interface UIFont(UserNotificationsUIKitAdditions)
+ (id)unui_excessiveLineHeightChars;
- (double)unui_drawingHeightForText:()UserNotificationsUIKitAdditions withNumberOfLines:additionalPadding:;
- (double)unui_measuringHeightForText:()UserNotificationsUIKitAdditions withNumberOfLines:;
- (uint64_t)unui_effectiveLineHeightForText:()UserNotificationsUIKitAdditions;
- (uint64_t)unui_effectiveScaledValueForValue:()UserNotificationsUIKitAdditions hasExuberatedLineHeight:;
- (uint64_t)unui_hasExuberatedLineHeightForAttributedText:()UserNotificationsUIKitAdditions;
- (uint64_t)unui_hasExuberatedLineHeightForText:()UserNotificationsUIKitAdditions;
- (unint64_t)unui_numberOfLinesForText:()UserNotificationsUIKitAdditions inFrame:maximum:drawingContext:;
@end

@implementation UIFont(UserNotificationsUIKitAdditions)

+ (id)unui_excessiveLineHeightChars
{
  if (unui_excessiveLineHeightChars_onceToken != -1)
  {
    +[UIFont(UserNotificationsUIKitAdditions) unui_excessiveLineHeightChars];
  }

  v1 = unui_excessiveLineHeightChars___excessiveLineHeightChars;

  return v1;
}

- (uint64_t)unui_hasExuberatedLineHeightForText:()UserNotificationsUIKitAdditions
{
  v4 = a3;
  if ([v4 length] && objc_msgSend(a1, "unui_hasExuberatedLineHeight"))
  {
    v5 = [v4 unui_containsExcessiveLineHeightCharacters];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)unui_hasExuberatedLineHeightForAttributedText:()UserNotificationsUIKitAdditions
{
  v4 = a3;
  if ([v4 length] && objc_msgSend(a1, "unui_hasExuberatedLineHeight"))
  {
    v5 = [v4 unui_containsExcessiveLineHeightCharacters];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)unui_effectiveScaledValueForValue:()UserNotificationsUIKitAdditions hasExuberatedLineHeight:
{
  if (a4)
  {
    v6 = objc_opt_class();
    [a1 _scaledValueForValue:a2];

    return [v6 unui_exuberatedValueForValue:?];
  }

  else
  {

    return [a1 _scaledValueForValue:?];
  }
}

- (uint64_t)unui_effectiveLineHeightForText:()UserNotificationsUIKitAdditions
{
  if ([a1 unui_hasExuberatedLineHeightForText:?])
  {
    v2 = objc_opt_class();
    [a1 lineHeight];

    return [v2 unui_exuberatedValueForValue:?];
  }

  else
  {

    return [a1 lineHeight];
  }
}

- (unint64_t)unui_numberOfLinesForText:()UserNotificationsUIKitAdditions inFrame:maximum:drawingContext:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = a7;
  v15 = a9;
  if ([v14 length])
  {
    if (a8 != 1)
    {
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x277D74260]);
        [v15 setWantsNumberOfLineFragments:1];
      }

      v19 = *MEMORY[0x277D740A8];
      v20[0] = a1;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v14 boundingRectWithSize:1 options:v16 attributes:v15 context:{a4, a5}];

      if (!a8)
      {
        a8 = -1;
      }

      v17 = [v15 numberOfLineFragments];
      if (a8 >= v17)
      {
        a8 = v17;
      }
    }
  }

  else
  {
    a8 = 0;
  }

  return a8;
}

- (double)unui_measuringHeightForText:()UserNotificationsUIKitAdditions withNumberOfLines:
{
  v6 = a4;
  [a1 unui_effectiveLineHeightForText:?];
  v8 = v7;
  v9 = a4 - 1;
  if (!a4)
  {
    v9 = 0;
  }

  v10 = v9;
  [a1 leading];
  return v11 * v10 + v6 * v8;
}

- (double)unui_drawingHeightForText:()UserNotificationsUIKitAdditions withNumberOfLines:additionalPadding:
{
  v8 = [a1 unui_hasExuberatedLineHeightForText:?];
  if (v8)
  {
    v9 = objc_opt_class();
    [a1 lineHeight];
    [v9 unui_exuberatedValueForValue:?];
  }

  else
  {
    [a1 lineHeight];
  }

  v11 = v10;
  [a1 unui_effectiveScaledValueForValue:v8 hasExuberatedLineHeight:a2];
  v13 = v12;
  [a1 leading];
  return (v13 + v11 + v14) * a5;
}

@end