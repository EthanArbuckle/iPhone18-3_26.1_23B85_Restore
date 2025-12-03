@interface BRCSideCarInfo
- (id)debugDescription;
- (id)descriptionWithContext:(id)context;
@end

@implementation BRCSideCarInfo

- (id)descriptionWithContext:(id)context
{
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:128];
  ckInfo = self->_ckInfo;
  if (ckInfo)
  {
    etag = [(BRFieldCKInfo *)ckInfo etag];
    [v4 appendFormat:@" etag:%@", etag];
  }

  if (self->_favoriteRank)
  {
    [v4 appendFormat:@" fav:%lld", self->_favoriteRank];
  }

  if (self->_lastUsedTime)
  {
    [v4 appendFormat:@" lu:%lld", self->_lastUsedTime];
  }

  if (self->_finderTags)
  {
    [v4 appendFormat:@" has-finder-tags"];
  }

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  etag = [(BRFieldCKInfo *)self->_ckInfo etag];
  v6 = etag;
  if (self->_finderTags)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v8 = [v3 stringWithFormat:@"<%@:%p {etag : %@ fr: %lld; lu : %lld; ft: %s}>", v4, self, etag, self->_favoriteRank, self->_lastUsedTime, v7];;

  return v8;
}

@end