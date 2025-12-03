@interface RadioRecentStationsGroup
- (BOOL)isEqual:(id)equal;
- (id)_copyWithRecentStationsGroupClass:(Class)class;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation RadioRecentStationsGroup

- (id)_copyWithRecentStationsGroupClass:(Class)class
{
  v4 = objc_alloc_init(class);
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_active;
    objc_storeStrong(v4 + 2, self->_localizedTitle);
    objc_storeStrong(v5 + 3, self->_stations);
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(RadioRecentStationsGroup *)self _copyWithRecentStationsGroupClass:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_active != equalCopy->_active || (localizedTitle = self->_localizedTitle, localizedTitle != equalCopy->_localizedTitle) && ![(NSString *)localizedTitle isEqualToString:?])
  {
    v7 = 0;
    goto LABEL_10;
  }

  stations = self->_stations;
  if (stations == equalCopy->_stations)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v7 = [(NSArray *)stations isEqualToArray:?];
LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  active = self->_active;
  v4 = [(NSString *)self->_localizedTitle hash]^ active;
  return v4 ^ [(NSArray *)self->_stations hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_active)
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p '%@' active:%@ stations:%@>", v5, self, self->_localizedTitle, v7, self->_stations];

  return v8;
}

@end