@interface MTLHUDConfigViewControllerEntry
- (MTLHUDConfigViewControllerEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled representedObject:(id)object type:(unsigned int)type didChange:(id)change;
- (NSObject)representedView;
- (NSObject)rootView;
@end

@implementation MTLHUDConfigViewControllerEntry

- (MTLHUDConfigViewControllerEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled representedObject:(id)object type:(unsigned int)type didChange:(id)change
{
  titleCopy = title;
  varCopy = var;
  objectCopy = object;
  changeCopy = change;
  v28.receiver = self;
  v28.super_class = MTLHUDConfigViewControllerEntry;
  v19 = [(MTLHUDConfigViewControllerEntry *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v20->_representedObject, object);
    v20->_entryType = type;
    v20->_enabled = enabled;
    v21 = objc_retainBlock(changeCopy);
    didChangeBlock = v20->_didChangeBlock;
    v20->_didChangeBlock = v21;

    v23 = objc_opt_new();
    children = v20->_children;
    v20->_children = v23;

    v25 = objc_opt_new();
    linkedEntries = v20->_linkedEntries;
    v20->_linkedEntries = v25;

    objc_storeStrong(&v20->_envVar, var);
  }

  return v20;
}

- (NSObject)representedView
{
  WeakRetained = objc_loadWeakRetained(&self->_representedView);

  return WeakRetained;
}

- (NSObject)rootView
{
  WeakRetained = objc_loadWeakRetained(&self->_rootView);

  return WeakRetained;
}

@end