@interface RadioTrackHistorySectionInfo
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation RadioTrackHistorySectionInfo

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[RadioMutableTrackHistorySectionInfo allocWithZone:?]];
  v5 = [(NSString *)self->_indexTitle copy];
  indexTitle = v4->super._indexTitle;
  v4->super._indexTitle = v5;

  v7 = [(NSString *)self->_name copy];
  name = v4->super._name;
  v4->super._name = v7;

  v4->super._numberOfObjects = self->_numberOfObjects;
  v9 = [(NSArray *)self->_objects copy];
  objects = v4->super._objects;
  v4->super._objects = v9;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[RadioTrackHistorySectionInfo allocWithZone:?]];
  v5 = [(NSString *)self->_indexTitle copy];
  indexTitle = v4->_indexTitle;
  v4->_indexTitle = v5;

  v7 = [(NSString *)self->_name copy];
  name = v4->_name;
  v4->_name = v7;

  v4->_numberOfObjects = self->_numberOfObjects;
  v9 = [(NSArray *)self->_objects copy];
  objects = v4->_objects;
  v4->_objects = v9;

  return v4;
}

@end