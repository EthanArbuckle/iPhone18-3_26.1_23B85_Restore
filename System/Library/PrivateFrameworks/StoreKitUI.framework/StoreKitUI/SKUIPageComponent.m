@interface SKUIPageComponent
- (SKUIPageComponent)initWithCustomPageContext:(id)a3;
- (SKUIPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (SKUIPageComponent)initWithViewElement:(id)a3;
- (int64_t)componentType;
- (void)_enumerateMissingItemIdentifiersFromBricks:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5;
- (void)_enumerateMissingItemIdentifiersFromLinks:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5;
- (void)_enumerateMissingItemIdentifiersFromLockups:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5;
@end

@implementation SKUIPageComponent

- (SKUIPageComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageComponent *)v5 initWithCustomPageContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 componentDictionary];
  v14 = [v13 objectForKey:@"startTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 pageGenerationTime];
    v16 = v15;
    [v14 doubleValue];
    v18 = v16 < v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v13 objectForKey:@"endTime"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

LABEL_12:

    v23 = 0;
    goto LABEL_13;
  }

  [v4 pageGenerationTime];
  v21 = v20;
  [v19 doubleValue];
  if (v21 > v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v25.receiver = self;
  v25.super_class = SKUIPageComponent;
  v23 = [(SKUIPageComponent *)&v25 init];
LABEL_13:

  return v23;
}

- (SKUIPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIPageComponent *)v5 initWithFeaturedContentContext:v6 kind:v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v14.receiver = self;
  v14.super_class = SKUIPageComponent;
  return [(SKUIPageComponent *)&v14 init];
}

- (SKUIPageComponent)initWithViewElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIPageComponent initWithViewElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUIPageComponent;
  v6 = [(SKUIPageComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, a3);
  }

  return v7;
}

- (int64_t)componentType
{
  result = self->_viewElement;
  if (result)
  {
    return [result pageComponentType];
  }

  return result;
}

- (void)_enumerateMissingItemIdentifiersFromBricks:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  if (v9 > a4)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v17 = 0;
      v12 = [v7 objectAtIndex:a4];
      v13 = [v12 link];
      v14 = [v13 itemIdentifier];
      if (([v13 isActionable] & 1) == 0 && v14)
      {
        v8[2](v8, v14, a4, &v17);
      }

      v15 = v17;

      objc_autoreleasePoolPop(v11);
      if (v15)
      {
        break;
      }
    }

    while (v10 != a4++);
  }
}

- (void)_enumerateMissingItemIdentifiersFromLinks:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  if (v9 > a4)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v16 = 0;
      v12 = [v7 objectAtIndex:a4];
      v13 = [v12 itemIdentifier];
      if (([v12 isActionable] & 1) == 0 && v13)
      {
        v8[2](v8, v13, a4, &v16);
      }

      v14 = v16;

      objc_autoreleasePoolPop(v11);
      if (v14)
      {
        break;
      }
    }

    while (v10 != a4++);
  }
}

- (void)_enumerateMissingItemIdentifiersFromLockups:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  if (v9 > a4)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v18 = 0;
      v12 = [v7 objectAtIndex:a4];
      v13 = [v12 itemIdentifier];
      if (v13)
      {
        v14 = v13;
        if ([v12 _needsItemData])
        {
          v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v14];
          v8[2](v8, v15, a4, &v18);
        }
      }

      v16 = v18;

      objc_autoreleasePoolPop(v11);
      if (v16)
      {
        break;
      }
    }

    while (v10 != a4++);
  }
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPageComponent initWithViewElement:]";
}

@end