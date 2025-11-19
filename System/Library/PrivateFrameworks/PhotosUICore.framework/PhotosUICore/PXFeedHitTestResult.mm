@interface PXFeedHitTestResult
- (PXFeedHitTestResult)initWithSpriteIndex:(unsigned int)a3 layout:(id)a4 identifier:(id)a5;
- (PXSimpleIndexPath)dataSourceIndexPath;
- (id)hoverAction:(id)a3;
- (id)objectReference:(id)a3;
- (id)presentMenuAction:(id)a3;
- (id)primaryAction:(id)a3;
- (id)touchAction:(id)a3;
- (void)setDataSourceIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXFeedHitTestResult

- (void)setDataSourceIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  *&self->_dataSourceIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
  *&self->_dataSourceIndexPath.item = v3;
}

- (PXSimpleIndexPath)dataSourceIndexPath
{
  v3 = *&self[3].item;
  *&retstr->dataSourceIdentifier = *&self[3].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (id)objectReference:(id)a3
{
  v4 = [a3 copy];
  objectReference = self->_objectReference;
  self->_objectReference = v4;

  return self;
}

- (id)presentMenuAction:(id)a3
{
  v4 = [a3 copy];
  presentMenuAction = self->_presentMenuAction;
  self->_presentMenuAction = v4;

  return self;
}

- (id)hoverAction:(id)a3
{
  v4 = [a3 copy];
  hoverAction = self->_hoverAction;
  self->_hoverAction = v4;

  return self;
}

- (id)touchAction:(id)a3
{
  v4 = [a3 copy];
  touchAction = self->_touchAction;
  self->_touchAction = v4;

  return self;
}

- (id)primaryAction:(id)a3
{
  v4 = [a3 copy];
  primaryAction = self->_primaryAction;
  self->_primaryAction = v4;

  return self;
}

- (PXFeedHitTestResult)initWithSpriteIndex:(unsigned int)a3 layout:(id)a4 identifier:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 spriteReferenceForSpriteIndex:v6];
  v11 = [(PXGHitTestResult *)self initWithSpriteReference:v10 layout:v9 identifier:v8 userData:0];

  return v11;
}

@end