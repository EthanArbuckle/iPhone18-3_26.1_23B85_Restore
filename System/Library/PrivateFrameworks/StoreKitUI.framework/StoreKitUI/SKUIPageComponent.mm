@interface SKUIPageComponent
- (SKUIPageComponent)initWithCustomPageContext:(id)context;
- (SKUIPageComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind;
- (SKUIPageComponent)initWithViewElement:(id)element;
- (int64_t)componentType;
- (void)_enumerateMissingItemIdentifiersFromBricks:(id)bricks startIndex:(int64_t)index usingBlock:(id)block;
- (void)_enumerateMissingItemIdentifiersFromLinks:(id)links startIndex:(int64_t)index usingBlock:(id)block;
- (void)_enumerateMissingItemIdentifiersFromLockups:(id)lockups startIndex:(int64_t)index usingBlock:(id)block;
@end

@implementation SKUIPageComponent

- (SKUIPageComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
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

  componentDictionary = [contextCopy componentDictionary];
  v14 = [componentDictionary objectForKey:@"startTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [contextCopy pageGenerationTime];
    v16 = v15;
    [v14 doubleValue];
    v18 = v16 < v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [componentDictionary objectForKey:@"endTime"];
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

  [contextCopy pageGenerationTime];
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

- (SKUIPageComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind
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

- (SKUIPageComponent)initWithViewElement:(id)element
{
  elementCopy = element;
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
    objc_storeStrong(&v6->_viewElement, element);
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

- (void)_enumerateMissingItemIdentifiersFromBricks:(id)bricks startIndex:(int64_t)index usingBlock:(id)block
{
  bricksCopy = bricks;
  blockCopy = block;
  v9 = [bricksCopy count];
  if (v9 > index)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v17 = 0;
      v12 = [bricksCopy objectAtIndex:index];
      link = [v12 link];
      itemIdentifier = [link itemIdentifier];
      if (([link isActionable] & 1) == 0 && itemIdentifier)
      {
        blockCopy[2](blockCopy, itemIdentifier, index, &v17);
      }

      v15 = v17;

      objc_autoreleasePoolPop(v11);
      if (v15)
      {
        break;
      }
    }

    while (v10 != index++);
  }
}

- (void)_enumerateMissingItemIdentifiersFromLinks:(id)links startIndex:(int64_t)index usingBlock:(id)block
{
  linksCopy = links;
  blockCopy = block;
  v9 = [linksCopy count];
  if (v9 > index)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v16 = 0;
      v12 = [linksCopy objectAtIndex:index];
      itemIdentifier = [v12 itemIdentifier];
      if (([v12 isActionable] & 1) == 0 && itemIdentifier)
      {
        blockCopy[2](blockCopy, itemIdentifier, index, &v16);
      }

      v14 = v16;

      objc_autoreleasePoolPop(v11);
      if (v14)
      {
        break;
      }
    }

    while (v10 != index++);
  }
}

- (void)_enumerateMissingItemIdentifiersFromLockups:(id)lockups startIndex:(int64_t)index usingBlock:(id)block
{
  lockupsCopy = lockups;
  blockCopy = block;
  v9 = [lockupsCopy count];
  if (v9 > index)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v18 = 0;
      v12 = [lockupsCopy objectAtIndex:index];
      itemIdentifier = [v12 itemIdentifier];
      if (itemIdentifier)
      {
        v14 = itemIdentifier;
        if ([v12 _needsItemData])
        {
          v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v14];
          blockCopy[2](blockCopy, v15, index, &v18);
        }
      }

      v16 = v18;

      objc_autoreleasePoolPop(v11);
      if (v16)
      {
        break;
      }
    }

    while (v10 != index++);
  }
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPageComponent initWithViewElement:]";
}

@end