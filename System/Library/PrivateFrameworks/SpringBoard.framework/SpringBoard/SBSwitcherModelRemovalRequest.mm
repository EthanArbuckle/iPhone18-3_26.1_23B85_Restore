@interface SBSwitcherModelRemovalRequest
- (void)setAction:(id)action forAppLayout:(id)layout;
@end

@implementation SBSwitcherModelRemovalRequest

- (void)setAction:(id)action forAppLayout:(id)layout
{
  actionCopy = action;
  layoutCopy = layout;
  v7 = actionCopy;
  v8 = layoutCopy;
  appLayoutToAction = self->_appLayoutToAction;
  if (actionCopy)
  {
    if (!appLayoutToAction)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v11 = self->_appLayoutToAction;
      self->_appLayoutToAction = v10;

      v7 = actionCopy;
      appLayoutToAction = self->_appLayoutToAction;
    }

    [(NSMutableDictionary *)appLayoutToAction setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)appLayoutToAction removeObjectForKey:v8];
    if (![(NSMutableDictionary *)self->_appLayoutToAction count])
    {
      v12 = self->_appLayoutToAction;
      self->_appLayoutToAction = 0;
    }
  }
}

@end