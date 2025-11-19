@interface _UICollectionViewDragSourceControllerSessionState
- (id)description;
@end

@implementation _UICollectionViewDragSourceControllerSessionState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    dragSession = self->_dragSession;
    v8 = dragSession != 0;
  }

  else
  {
    v8 = 0;
    dragSession = 0;
  }

  v9 = [v3 stringWithFormat:@"<%@:%p isActive = %d dragSession = %@>", v5, self, v8, dragSession];;

  return v9;
}

@end