@interface _UIContextMenuNode
- (_UIContextMenuNode)next;
- (_UIContextMenuNode)previous;
- (id)description;
@end

@implementation _UIContextMenuNode

- (_UIContextMenuNode)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_previous);

  return WeakRetained;
}

- (_UIContextMenuNode)next
{
  WeakRetained = objc_loadWeakRetained(&self->_next);

  return WeakRetained;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(_UIContextMenuNode *)self listView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 appendFormat:@"; rect = (%g %g; %g %g)", v6, v8, v10, v12];
  [v3 appendString:@">"];

  return v3;
}

@end