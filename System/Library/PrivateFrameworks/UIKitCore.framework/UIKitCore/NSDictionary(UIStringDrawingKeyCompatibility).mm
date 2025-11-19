@interface NSDictionary(UIStringDrawingKeyCompatibility)
- (id)_ui_attributesForDictionaryContainingUIStringDrawingKeys;
- (uint64_t)_ui_dictionaryContainsUIStringDrawingKeys;
@end

@implementation NSDictionary(UIStringDrawingKeyCompatibility)

- (id)_ui_attributesForDictionaryContainingUIStringDrawingKeys
{
  v2 = [a1 allKeys];
  if ([v2 containsObject:@"Font"] && (v3 = *off_1E70EC918, (objc_msgSend(v2, "containsObject:", *off_1E70EC918) & 1) == 0))
  {
    v4 = [a1 mutableCopy];
    [v4 setValue:objc_msgSend(a1 forKey:{"valueForKey:", @"Font", v3}];
  }

  else
  {
    v4 = 0;
  }

  if ([v2 containsObject:@"TextColor"])
  {
    v5 = *off_1E70EC920;
    if (([v2 containsObject:*off_1E70EC920] & 1) == 0)
    {
      if (!v4)
      {
        v4 = [a1 mutableCopy];
      }

      [v4 setValue:objc_msgSend(a1 forKey:{"valueForKey:", @"TextColor", v5}];
    }
  }

  if (([v2 containsObject:@"TextShadowColor"] & 1) != 0 || objc_msgSend(v2, "containsObject:", @"TextShadowOffset"))
  {
    v6 = *off_1E70EC9B0;
    if (([v2 containsObject:*off_1E70EC9B0] & 1) == 0)
    {
      if (!v4)
      {
        v4 = [a1 mutableCopy];
      }

      v7 = objc_alloc_init(off_1E70ECB90);
      if ([v2 containsObject:@"TextShadowColor"])
      {
        [v7 setShadowColor:{objc_msgSend(a1, "valueForKey:", @"TextShadowColor"}];
      }

      if ([v2 containsObject:@"TextShadowOffset"])
      {
        [objc_msgSend(a1 valueForKey:{@"TextShadowOffset", "CGSizeValue"}];
        [v7 setShadowOffset:?];
      }

      [v4 setValue:v7 forKey:v6];
    }
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return a1;
  }
}

- (uint64_t)_ui_dictionaryContainsUIStringDrawingKeys
{
  v1 = [a1 allKeys];
  if ([v1 containsObject:@"Font"] & 1) != 0 || (objc_msgSend(v1, "containsObject:", @"TextColor") & 1) != 0 || (objc_msgSend(v1, "containsObject:", @"TextShadowColor"))
  {
    return 1;
  }

  return [v1 containsObject:@"TextShadowOffset"];
}

@end