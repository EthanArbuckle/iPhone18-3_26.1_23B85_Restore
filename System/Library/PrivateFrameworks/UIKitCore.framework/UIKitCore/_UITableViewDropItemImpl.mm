@interface _UITableViewDropItemImpl
- (CGSize)previewSize;
- (NSIndexPath)sourceIndexPath;
- (_UITableViewDropItemImpl)initWithDragItem:(id)a3 sourceIndexPath:(id)a4;
- (void)_translateSourceIndexPath:(id)a3;
@end

@implementation _UITableViewDropItemImpl

- (_UITableViewDropItemImpl)initWithDragItem:(id)a3 sourceIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UITableViewDropItemImpl;
  v9 = [(_UITableViewDropItemImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dragItem, a3);
    objc_storeStrong(&v10->_sourceIndexPath, a4);
  }

  return v10;
}

- (NSIndexPath)sourceIndexPath
{
  translatedSourceIndexPath = self->_translatedSourceIndexPath;
  if (!translatedSourceIndexPath)
  {
    translatedSourceIndexPath = self->_sourceIndexPath;
  }

  return translatedSourceIndexPath;
}

- (CGSize)previewSize
{
  v2 = [(_UITableViewDropItemImpl *)self dragItem];
  [v2 _visibleDropItemSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_translateSourceIndexPath:(id)a3
{
  v4 = (*(a3 + 2))(a3, self->_sourceIndexPath);
  translatedSourceIndexPath = self->_translatedSourceIndexPath;
  self->_translatedSourceIndexPath = v4;
}

@end