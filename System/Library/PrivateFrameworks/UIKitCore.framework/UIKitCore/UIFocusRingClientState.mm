@interface UIFocusRingClientState
- (UIFocusItem)currentFocusItem;
- (UIFocusRingClientState)initWithClientID:(id)d;
- (id)description;
@end

@implementation UIFocusRingClientState

- (UIFocusItem)currentFocusItem
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFocusItem);

  return WeakRetained;
}

- (UIFocusRingClientState)initWithClientID:(id)d
{
  v6.receiver = self;
  v6.super_class = UIFocusRingClientState;
  dCopy = d;
  v4 = [(UIFocusRingClientState *)&v6 init];
  [(UIFocusRingClientState *)v4 setClientID:dCopy, v6.receiver, v6.super_class];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  clientID = [(UIFocusRingClientState *)self clientID];
  activeFocusLayersToItems = [(UIFocusRingClientState *)self activeFocusLayersToItems];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, active focus layers: %@>", v5, self, clientID, activeFocusLayersToItems];

  return v8;
}

@end