@interface WBBookmarkLocation
- (BOOL)isEqual:(id)a3;
- (WBBookmarkLocation)initWithCoder:(id)a3;
- (WBBookmarkLocation)initWithParentID:(int)a3 position:(id)a4;
- (WBBookmarkLocation)locationWithPosition:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBBookmarkLocation

- (WBBookmarkLocation)initWithParentID:(int)a3 position:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WBBookmarkLocation;
  v8 = [(WBBookmarkLocation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_parentID = a3;
    objc_storeStrong(&v8->_position, a4);
    v10 = v9;
  }

  return v9;
}

- (WBBookmarkLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"Parent"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Position"];

  v7 = [(WBBookmarkLocation *)self initWithParentID:v5 position:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  parentID = self->_parentID;
  v5 = a3;
  [v5 encodeInt32:parentID forKey:@"Parent"];
  [v5 encodeObject:self->_position forKey:@"Position"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBBookmarkLocation *)v5 parentID];
      if (v6 == [(WBBookmarkLocation *)self parentID])
      {
        v7 = [(WBBookmarkLocation *)v5 position];
        v8 = [(WBBookmarkLocation *)self position];
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

- (WBBookmarkLocation)locationWithPosition:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithParentID:self->_parentID position:v4];

  return v5;
}

@end