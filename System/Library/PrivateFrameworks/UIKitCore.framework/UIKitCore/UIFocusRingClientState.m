@interface UIFocusRingClientState
- (UIFocusItem)currentFocusItem;
- (UIFocusRingClientState)initWithClientID:(id)a3;
- (id)description;
@end

@implementation UIFocusRingClientState

- (UIFocusItem)currentFocusItem
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFocusItem);

  return WeakRetained;
}

- (UIFocusRingClientState)initWithClientID:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIFocusRingClientState;
  v3 = a3;
  v4 = [(UIFocusRingClientState *)&v6 init];
  [(UIFocusRingClientState *)v4 setClientID:v3, v6.receiver, v6.super_class];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIFocusRingClientState *)self clientID];
  v7 = [(UIFocusRingClientState *)self activeFocusLayersToItems];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, active focus layers: %@>", v5, self, v6, v7];

  return v8;
}

@end