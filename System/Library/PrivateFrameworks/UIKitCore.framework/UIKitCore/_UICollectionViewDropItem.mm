@interface _UICollectionViewDropItem
- (CGSize)previewSize;
- (NSString)description;
- (_UICollectionViewDropItem)initWithDragItem:(id)a3 previewSize:(CGSize)a4 sourceIndexPath:(id)a5;
@end

@implementation _UICollectionViewDropItem

- (_UICollectionViewDropItem)initWithDragItem:(id)a3 previewSize:(CGSize)a4 sourceIndexPath:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UICollectionViewDropItem;
  v12 = [(_UICollectionViewDropItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dragItem, a3);
    v13->_previewSize.width = width;
    v13->_previewSize.height = height;
    objc_storeStrong(&v13->_sourceIndexPath, a5);
  }

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGSize(self->_previewSize);
  v7 = __UICVIndexPathDescription(self->_sourceIndexPath);
  v8 = [v3 stringWithFormat:@"<%@:%p previewSize = %@ sourceIndexPath = %@; dragItem = %@>", v5, self, v6, v7, self->_dragItem];;

  return v8;
}

- (CGSize)previewSize
{
  width = self->_previewSize.width;
  height = self->_previewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end