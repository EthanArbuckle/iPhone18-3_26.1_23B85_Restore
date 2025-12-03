@interface _UITableViewDropItemImpl
- (CGSize)previewSize;
- (NSIndexPath)sourceIndexPath;
- (_UITableViewDropItemImpl)initWithDragItem:(id)item sourceIndexPath:(id)path;
- (void)_translateSourceIndexPath:(id)path;
@end

@implementation _UITableViewDropItemImpl

- (_UITableViewDropItemImpl)initWithDragItem:(id)item sourceIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = _UITableViewDropItemImpl;
  v9 = [(_UITableViewDropItemImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dragItem, item);
    objc_storeStrong(&v10->_sourceIndexPath, path);
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
  dragItem = [(_UITableViewDropItemImpl *)self dragItem];
  [dragItem _visibleDropItemSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_translateSourceIndexPath:(id)path
{
  v4 = (*(path + 2))(path, self->_sourceIndexPath);
  translatedSourceIndexPath = self->_translatedSourceIndexPath;
  self->_translatedSourceIndexPath = v4;
}

@end