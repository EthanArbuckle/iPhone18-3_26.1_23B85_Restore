@interface SPItemSharingDataIntegrity
- (SPItemSharingDataIntegrity)initWithCoder:(id)coder;
- (SPItemSharingDataIntegrity)initWithOwnedCircles:(id)circles memberCircles:(id)memberCircles;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPItemSharingDataIntegrity

- (SPItemSharingDataIntegrity)initWithOwnedCircles:(id)circles memberCircles:(id)memberCircles
{
  circlesCopy = circles;
  memberCirclesCopy = memberCircles;
  v12.receiver = self;
  v12.super_class = SPItemSharingDataIntegrity;
  v9 = [(SPItemSharingDataIntegrity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ownedCircles, circles);
    objc_storeStrong(&v10->_memberCircles, memberCircles);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPItemSharingDataIntegrity alloc];
  ownedCircles = [(SPItemSharingDataIntegrity *)self ownedCircles];
  memberCircles = [(SPItemSharingDataIntegrity *)self memberCircles];
  v7 = [(SPItemSharingDataIntegrity *)v4 initWithOwnedCircles:ownedCircles memberCircles:memberCircles];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  ownedCircles = self->_ownedCircles;
  coderCopy = coder;
  [coderCopy encodeObject:ownedCircles forKey:@"ownedCircles"];
  [coderCopy encodeObject:self->_memberCircles forKey:@"memberCircles"];
}

- (SPItemSharingDataIntegrity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ownedCircles"];
  ownedCircles = self->_ownedCircles;
  self->_ownedCircles = v5;

  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"memberCircles"];

  memberCircles = self->_memberCircles;
  self->_memberCircles = v7;

  return self;
}

@end