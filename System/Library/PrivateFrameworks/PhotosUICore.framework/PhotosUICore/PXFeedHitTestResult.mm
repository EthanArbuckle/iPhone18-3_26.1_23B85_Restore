@interface PXFeedHitTestResult
- (PXFeedHitTestResult)initWithSpriteIndex:(unsigned int)index layout:(id)layout identifier:(id)identifier;
- (PXSimpleIndexPath)dataSourceIndexPath;
- (id)hoverAction:(id)action;
- (id)objectReference:(id)reference;
- (id)presentMenuAction:(id)action;
- (id)primaryAction:(id)action;
- (id)touchAction:(id)action;
- (void)setDataSourceIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXFeedHitTestResult

- (void)setDataSourceIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_dataSourceIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_dataSourceIndexPath.item = v3;
}

- (PXSimpleIndexPath)dataSourceIndexPath
{
  v3 = *&self[3].item;
  *&retstr->dataSourceIdentifier = *&self[3].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (id)objectReference:(id)reference
{
  v4 = [reference copy];
  objectReference = self->_objectReference;
  self->_objectReference = v4;

  return self;
}

- (id)presentMenuAction:(id)action
{
  v4 = [action copy];
  presentMenuAction = self->_presentMenuAction;
  self->_presentMenuAction = v4;

  return self;
}

- (id)hoverAction:(id)action
{
  v4 = [action copy];
  hoverAction = self->_hoverAction;
  self->_hoverAction = v4;

  return self;
}

- (id)touchAction:(id)action
{
  v4 = [action copy];
  touchAction = self->_touchAction;
  self->_touchAction = v4;

  return self;
}

- (id)primaryAction:(id)action
{
  v4 = [action copy];
  primaryAction = self->_primaryAction;
  self->_primaryAction = v4;

  return self;
}

- (PXFeedHitTestResult)initWithSpriteIndex:(unsigned int)index layout:(id)layout identifier:(id)identifier
{
  v6 = *&index;
  identifierCopy = identifier;
  layoutCopy = layout;
  v10 = [layoutCopy spriteReferenceForSpriteIndex:v6];
  v11 = [(PXGHitTestResult *)self initWithSpriteReference:v10 layout:layoutCopy identifier:identifierCopy userData:0];

  return v11;
}

@end