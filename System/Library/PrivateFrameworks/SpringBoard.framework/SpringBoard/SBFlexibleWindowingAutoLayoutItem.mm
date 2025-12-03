@interface SBFlexibleWindowingAutoLayoutItem
- (BOOL)isEqual:(id)equal;
- (CGPoint)compactedPosition;
- (CGPoint)exposePosition;
- (CGPoint)position;
- (CGRect)frame;
- (CGSize)size;
- (SBFlexibleWindowingAutoLayoutItem)initWithDisplayItem:(id)item;
- (id)_copyWithClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation SBFlexibleWindowingAutoLayoutItem

- (SBFlexibleWindowingAutoLayoutItem)initWithDisplayItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingAutoLayoutItem;
  v7 = [(SBFlexibleWindowingAutoLayoutItem *)&v11 init];
  if (v7)
  {
    if (!itemCopy)
    {
      [(SBFlexibleWindowingAutoLayoutItem *)a2 initWithDisplayItem:v7];
    }

    objc_storeStrong(&v7->_displayItem, item);
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    identifier = v7->_identifier;
    v7->_identifier = uniqueIdentifier;
  }

  return v7;
}

- (CGRect)frame
{
  width = self->_size.width;
  height = self->_size.height;
  v4 = self->_position.x - width * 0.5;
  v5 = self->_position.y - height * 0.5;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
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
    v11.super_class = SBFlexibleWindowingAutoLayoutItem;
    if ([(SBFlexibleWindowingAutoLayoutItem *)&v11 isEqual:equalCopy])
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

      if (!v9 || ![(SBDisplayItem *)self->_displayItem isEqualToItem:?])
      {
        goto LABEL_28;
      }

      v8 = 0;
      if (self->_size.width != *(v9 + 8))
      {
        goto LABEL_29;
      }

      if (self->_size.height != *(v9 + 9))
      {
        goto LABEL_29;
      }

      v8 = 0;
      if (self->_position.x != *(v9 + 10))
      {
        goto LABEL_29;
      }

      if (self->_position.y != *(v9 + 11))
      {
        goto LABEL_29;
      }

      v8 = 0;
      if (self->_compactedPosition.x != *(v9 + 12))
      {
        goto LABEL_29;
      }

      if (self->_compactedPosition.y != *(v9 + 13))
      {
        goto LABEL_29;
      }

      v8 = 0;
      if (self->_exposePosition.x != *(v9 + 14) || self->_exposePosition.y != *(v9 + 15))
      {
        goto LABEL_29;
      }

      if (BSFloatEqualToFloat() && self->_positionIsSystemManaged == *(v9 + 8) && self->_overlapped == *(v9 + 9) && self->_fullyOccluded == *(v9 + 10) && self->_ownedDisplayRectCorners == v9[5] && self->_intersectedDisplayRectCorners == v9[6] && self->_inSlideOver == *(v9 + 11))
      {
        v8 = self->_sceneRelevancyHint == v9[7];
      }

      else
      {
LABEL_28:
        v8 = 0;
      }

LABEL_29:

      goto LABEL_30;
    }

    v8 = 0;
  }

LABEL_30:

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v4 = [v3 appendCGSize:{self->_size.width, self->_size.height}];
  v5 = [v3 appendCGPoint:{self->_position.x, self->_position.y}];
  v6 = [v3 appendCGPoint:{self->_compactedPosition.x, self->_compactedPosition.y}];
  v7 = [v3 appendCGPoint:{self->_exposePosition.x, self->_exposePosition.y}];
  v8 = [v3 appendCGFloat:self->_exposeScale];
  v9 = [v3 appendBool:self->_positionIsSystemManaged];
  v10 = [v3 appendBool:self->_overlapped];
  v11 = [v3 appendBool:self->_fullyOccluded];
  v12 = [v3 appendUnsignedInteger:self->_ownedDisplayRectCorners];
  v13 = [v3 appendUnsignedInteger:self->_intersectedDisplayRectCorners];
  v14 = [v3 appendBool:self->_inSlideOver];
  v15 = [v3 appendInteger:self->_sceneRelevancyHint];
  v16 = [v3 hash];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBFlexibleWindowingAutoLayoutItem *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBFlexibleWindowingAutoLayoutItem *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)class
{
  v4 = [class alloc];
  v5 = [(SBDisplayItem *)self->_displayItem copy];
  v6 = [v4 initWithDisplayItem:v5];

  *(v6 + 64) = self->_size;
  *(v6 + 80) = self->_position;
  *(v6 + 96) = self->_compactedPosition;
  *(v6 + 112) = self->_exposePosition;
  *(v6 + 32) = self->_exposeScale;
  *(v6 + 8) = self->_positionIsSystemManaged;
  *(v6 + 9) = self->_overlapped;
  *(v6 + 10) = self->_fullyOccluded;
  *(v6 + 40) = self->_ownedDisplayRectCorners;
  *(v6 + 48) = self->_intersectedDisplayRectCorners;
  *(v6 + 11) = self->_inSlideOver;
  *(v6 + 56) = self->_sceneRelevancyHint;
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFlexibleWindowingAutoLayoutItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFlexibleWindowingAutoLayoutItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFlexibleWindowingAutoLayoutItem *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_displayItem withName:@"displayItem"];
  [(SBFlexibleWindowingAutoLayoutItem *)self frame];
  v6 = [succinctDescriptionBuilder appendRect:@"frame" withName:?];
  v7 = [succinctDescriptionBuilder appendSize:@"size" withName:{self->_size.width, self->_size.height}];
  v8 = [succinctDescriptionBuilder appendPoint:@"position" withName:{self->_position.x, self->_position.y}];
  v9 = [succinctDescriptionBuilder appendPoint:@"exposePosition" withName:{self->_exposePosition.x, self->_exposePosition.y}];
  v10 = [succinctDescriptionBuilder appendFloat:@"exposeScale" withName:self->_exposeScale];
  v11 = [succinctDescriptionBuilder appendBool:self->_positionIsSystemManaged withName:@"positionIsSystemManaged"];
  v12 = [succinctDescriptionBuilder appendBool:self->_overlapped withName:@"overlapped"];
  v13 = [succinctDescriptionBuilder appendBool:self->_fullyOccluded withName:@"fullyOccluded"];
  v14 = [succinctDescriptionBuilder appendUnsignedInteger:self->_ownedDisplayRectCorners withName:@"ownedDisplayRectCorners"];
  v15 = [succinctDescriptionBuilder appendUnsignedInteger:self->_intersectedDisplayRectCorners withName:@"intersectedDisplayRectCorners"];
  v16 = [succinctDescriptionBuilder appendBool:self->_inSlideOver withName:@"inSlideOver"];
  v17 = [succinctDescriptionBuilder appendInteger:self->_sceneRelevancyHint withName:@"sceneRelevancyHint"];

  return succinctDescriptionBuilder;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)compactedPosition
{
  x = self->_compactedPosition.x;
  y = self->_compactedPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)exposePosition
{
  x = self->_exposePosition.x;
  y = self->_exposePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithDisplayItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFlexibleWindowingAutoLayoutItem.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end