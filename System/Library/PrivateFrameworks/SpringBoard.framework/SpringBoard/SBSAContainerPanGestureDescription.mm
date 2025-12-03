@interface SBSAContainerPanGestureDescription
- (BOOL)isEqual:(id)equal;
- (CGPoint)initialLocation;
- (CGPoint)translation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBSAContainerPanGestureDescription

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__SBSAContainerPanGestureDescription_isEqual___block_invoke;
  v20[3] = &unk_2783A94B0;
  v6 = equalCopy;
  v21 = v6;
  selfCopy = self;
  v7 = [v5 appendEqualsBlocks:{v20, 0}];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__SBSAContainerPanGestureDescription_isEqual___block_invoke_2;
  v18[3] = &unk_2783A94D8;
  v8 = v6;
  v19 = v8;
  v9 = [v7 appendCGPoint:v18 counterpart:{self->_initialLocation.x, self->_initialLocation.y}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__SBSAContainerPanGestureDescription_isEqual___block_invoke_3;
  v16[3] = &unk_2783A94D8;
  v17 = v8;
  x = self->_translation.x;
  y = self->_translation.y;
  v12 = v8;
  v13 = [v9 appendCGPoint:v16 counterpart:{x, y}];
  v14 = [v13 isEqual];

  return v14;
}

id __46__SBSAContainerPanGestureDescription_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = SBSAContainerPanGestureDescription;
  return objc_msgSendSuper2(&v3, sel_isEqual_, v1);
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__SBSAContainerPanGestureDescription_hash__block_invoke;
  v9[3] = &unk_2783A9500;
  v9[4] = self;
  v4 = [builder appendHashingBlocks:{v9, 0}];
  v5 = [v4 appendCGPoint:{self->_initialLocation.x, self->_initialLocation.y}];
  v6 = [v5 appendCGPoint:{self->_translation.x, self->_translation.y}];
  v7 = [v6 hash];

  return v7;
}

id __42__SBSAContainerPanGestureDescription_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = SBSAContainerPanGestureDescription;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = SBSAContainerPanGestureDescription;
  v3 = [(SBSAGestureDescription *)&v10 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromCGPoint(self->_initialLocation);
  v7 = NSStringFromCGPoint(self->_translation);
  v8 = [v5 stringWithFormat:@" initialLocation: %@; translation: %@; ", v6, v7];;

  [v4 insertString:v8 atIndex:{objc_msgSend(v4, "rangeOfString:options:", @">", 4)}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = SBSAContainerPanGestureDescription;
  result = [(SBSAGestureDescription *)&v5 copyWithZone:zone];
  *(result + 2) = self->_initialLocation;
  *(result + 3) = self->_translation;
  return result;
}

- (CGPoint)initialLocation
{
  x = self->_initialLocation.x;
  y = self->_initialLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end