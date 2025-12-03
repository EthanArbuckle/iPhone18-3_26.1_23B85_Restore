@interface SBFlexibleWindowingAutoLayoutSpace
- (BOOL)containsDisplayItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBox;
- (CGRect)compactedBoundingBox;
- (CGRect)exposeBoundingBox;
- (CGRect)stageArea;
- (SBFlexibleWindowingAutoLayoutSpace)initWithItems:(id)items;
- (id)_copyWithClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)flexibleAutoLayoutItemForDisplayItem:(id)item;
- (id)flexibleAutoLayoutItemForDisplayItemIfExists:(id)exists;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation SBFlexibleWindowingAutoLayoutSpace

- (SBFlexibleWindowingAutoLayoutSpace)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = SBFlexibleWindowingAutoLayoutSpace;
  v5 = [(SBFlexibleWindowingAutoLayoutSpace *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    autoLayoutItems = v5->_autoLayoutItems;
    v5->_autoLayoutItems = v6;
  }

  return v5;
}

- (id)flexibleAutoLayoutItemForDisplayItem:(id)item
{
  itemCopy = item;
  v6 = [(SBFlexibleWindowingAutoLayoutSpace *)self flexibleAutoLayoutItemForDisplayItemIfExists:itemCopy];
  if (!v6)
  {
    [(SBFlexibleWindowingAutoLayoutSpace *)a2 flexibleAutoLayoutItemForDisplayItem:itemCopy];
  }

  return v6;
}

- (id)flexibleAutoLayoutItemForDisplayItemIfExists:(id)exists
{
  existsCopy = exists;
  autoLayoutItems = [(SBFlexibleWindowingAutoLayoutSpace *)self autoLayoutItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__SBFlexibleWindowingAutoLayoutSpace_flexibleAutoLayoutItemForDisplayItemIfExists___block_invoke;
  v9[3] = &unk_2783B6060;
  v10 = existsCopy;
  v6 = existsCopy;
  v7 = [autoLayoutItems bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __83__SBFlexibleWindowingAutoLayoutSpace_flexibleAutoLayoutItemForDisplayItemIfExists___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [(SBDisplayItem *)v3 isEqualToItem:?];

  return v4;
}

- (BOOL)containsDisplayItem:(id)item
{
  itemCopy = item;
  autoLayoutItems = [(SBFlexibleWindowingAutoLayoutSpace *)self autoLayoutItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SBFlexibleWindowingAutoLayoutSpace_containsDisplayItem___block_invoke;
  v9[3] = &unk_2783B6060;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [autoLayoutItems bs_containsObjectPassingTest:v9];

  return v7;
}

uint64_t __58__SBFlexibleWindowingAutoLayoutSpace_containsDisplayItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [(SBDisplayItem *)v3 isEqualToItem:?];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBFlexibleWindowingAutoLayoutSpace *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBFlexibleWindowingAutoLayoutSpace *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)class
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_autoLayoutItems;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) mutableCopy];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [[class alloc] initWithItems:v5];
  objc_storeStrong((v12 + 24), self->_configuration);
  origin = self->_boundingBox.origin;
  *(v12 + 72) = self->_boundingBox.size;
  *(v12 + 56) = origin;
  v14 = self->_stageArea.origin;
  *(v12 + 104) = self->_stageArea.size;
  *(v12 + 88) = v14;
  v15 = self->_compactedBoundingBox.origin;
  *(v12 + 136) = self->_compactedBoundingBox.size;
  *(v12 + 120) = v15;
  v16 = self->_exposeBoundingBox.origin;
  *(v12 + 168) = self->_exposeBoundingBox.size;
  *(v12 + 152) = v16;
  *(v12 + 8) = self->_stripVisible;
  *(v12 + 9) = self->_dockVisible;
  v17 = [(NSSet *)self->_groups copy];
  v18 = *(v12 + 32);
  *(v12 + 32) = v17;

  *(v12 + 40) = self->_ownedDisplayRectCorners;
  *(v12 + 48) = self->_occupiedAreaPercentage;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBFlexibleWindowingAutoLayoutSpace;
    if ([(SBFlexibleWindowingAutoLayoutSpace *)&v11 isEqual:equalCopy])
    {
      v5 = objc_opt_class();
      v6 = equalCopy;
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = v7;

      if (v9 && BSEqualArrays() && CGRectEqualToRect(self->_boundingBox, v9->_boundingBox) && CGRectEqualToRect(self->_stageArea, v9->_stageArea) && CGRectEqualToRect(self->_compactedBoundingBox, v9->_compactedBoundingBox) && CGRectEqualToRect(self->_exposeBoundingBox, v9->_exposeBoundingBox) && self->_stripVisible == v9->_stripVisible && self->_dockVisible == v9->_dockVisible && BSEqualSets() && self->_ownedDisplayRectCorners == v9->_ownedDisplayRectCorners)
      {
        v8 = BSFloatEqualToFloat();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v4 = [v3 appendObject:self->_autoLayoutItems];
  v5 = [v3 appendCGRect:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  v6 = [v3 appendCGRect:{self->_stageArea.origin.x, self->_stageArea.origin.y, self->_stageArea.size.width, self->_stageArea.size.height}];
  v7 = [v3 appendCGRect:{self->_compactedBoundingBox.origin.x, self->_compactedBoundingBox.origin.y, self->_compactedBoundingBox.size.width, self->_compactedBoundingBox.size.height}];
  v8 = [v3 appendCGRect:{self->_exposeBoundingBox.origin.x, self->_exposeBoundingBox.origin.y, self->_exposeBoundingBox.size.width, self->_exposeBoundingBox.size.height}];
  v9 = [v3 appendBool:self->_stripVisible];
  v10 = [v3 appendBool:self->_dockVisible];
  v11 = [v3 appendObject:self->_groups];
  v12 = [v3 appendUnsignedInteger:self->_ownedDisplayRectCorners];
  v13 = [v3 appendCGFloat:self->_occupiedAreaPercentage];
  v14 = [v3 hash];

  return v14;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFlexibleWindowingAutoLayoutSpace *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFlexibleWindowingAutoLayoutSpace *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFlexibleWindowingAutoLayoutSpace *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendRect:@"stageArea" withName:{self->_stageArea.origin.x, self->_stageArea.origin.y, self->_stageArea.size.width, self->_stageArea.size.height}];
  v6 = [succinctDescriptionBuilder appendRect:@"boundingBox" withName:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  v7 = [succinctDescriptionBuilder appendRect:@"exposeBoundingBox" withName:{self->_exposeBoundingBox.origin.x, self->_exposeBoundingBox.origin.y, self->_exposeBoundingBox.size.width, self->_exposeBoundingBox.size.height}];
  [succinctDescriptionBuilder appendCollectionSection:self->_groups withName:@"groups" skipIfEmpty:0 objectTransformer:&__block_literal_global_172];
  [succinctDescriptionBuilder appendArraySection:self->_autoLayoutItems withName:@"autoLayoutItems" skipIfEmpty:0];
  v8 = [succinctDescriptionBuilder appendUnsignedInteger:self->_ownedDisplayRectCorners withName:@"ownedDisplayRectCorners"];
  v9 = [succinctDescriptionBuilder appendFloat:@"occupiedAreaPercentage" withName:self->_occupiedAreaPercentage];

  return succinctDescriptionBuilder;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)stageArea
{
  x = self->_stageArea.origin.x;
  y = self->_stageArea.origin.y;
  width = self->_stageArea.size.width;
  height = self->_stageArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)compactedBoundingBox
{
  x = self->_compactedBoundingBox.origin.x;
  y = self->_compactedBoundingBox.origin.y;
  width = self->_compactedBoundingBox.size.width;
  height = self->_compactedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)exposeBoundingBox
{
  x = self->_exposeBoundingBox.origin.x;
  y = self->_exposeBoundingBox.origin.y;
  width = self->_exposeBoundingBox.size.width;
  height = self->_exposeBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)flexibleAutoLayoutItemForDisplayItem:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBFlexibleWindowingAutoLayoutSpace.m" lineNumber:42 description:{@"Expected to get a flexible autolayout item for displayItem: '%@' in flexible windowing autolayout space: '%@'", a3, a2}];
}

@end