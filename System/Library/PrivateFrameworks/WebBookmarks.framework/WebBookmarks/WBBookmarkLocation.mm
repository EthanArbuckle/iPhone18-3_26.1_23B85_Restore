@interface WBBookmarkLocation
- (BOOL)isEqual:(id)equal;
- (WBBookmarkLocation)initWithCoder:(id)coder;
- (WBBookmarkLocation)initWithParentID:(int)d position:(id)position;
- (WBBookmarkLocation)locationWithPosition:(id)position;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBBookmarkLocation

- (WBBookmarkLocation)initWithParentID:(int)d position:(id)position
{
  positionCopy = position;
  v12.receiver = self;
  v12.super_class = WBBookmarkLocation;
  v8 = [(WBBookmarkLocation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_parentID = d;
    objc_storeStrong(&v8->_position, position);
    v10 = v9;
  }

  return v9;
}

- (WBBookmarkLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"Parent"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Position"];

  v7 = [(WBBookmarkLocation *)self initWithParentID:v5 position:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  parentID = self->_parentID;
  coderCopy = coder;
  [coderCopy encodeInt32:parentID forKey:@"Parent"];
  [coderCopy encodeObject:self->_position forKey:@"Position"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      parentID = [(WBBookmarkLocation *)v5 parentID];
      if (parentID == [(WBBookmarkLocation *)self parentID])
      {
        position = [(WBBookmarkLocation *)v5 position];
        position2 = [(WBBookmarkLocation *)self position];
        v9 = WBSIsEqual();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (WBBookmarkLocation)locationWithPosition:(id)position
{
  positionCopy = position;
  v5 = [objc_alloc(objc_opt_class()) initWithParentID:self->_parentID position:positionCopy];

  return v5;
}

@end