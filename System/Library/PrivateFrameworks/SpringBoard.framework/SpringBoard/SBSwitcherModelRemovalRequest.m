@interface SBSwitcherModelRemovalRequest
- (void)setAction:(id)a3 forAppLayout:(id)a4;
@end

@implementation SBSwitcherModelRemovalRequest

- (void)setAction:(id)a3 forAppLayout:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  v8 = v6;
  appLayoutToAction = self->_appLayoutToAction;
  if (v13)
  {
    if (!appLayoutToAction)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v11 = self->_appLayoutToAction;
      self->_appLayoutToAction = v10;

      v7 = v13;
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