@interface MTLHUDConfigViewControllerEntry
- (MTLHUDConfigViewControllerEntry)initWithTitle:(id)a3 envVar:(id)a4 enabled:(BOOL)a5 representedObject:(id)a6 type:(unsigned int)a7 didChange:(id)a8;
- (NSObject)representedView;
- (NSObject)rootView;
@end

@implementation MTLHUDConfigViewControllerEntry

- (MTLHUDConfigViewControllerEntry)initWithTitle:(id)a3 envVar:(id)a4 enabled:(BOOL)a5 representedObject:(id)a6 type:(unsigned int)a7 didChange:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = MTLHUDConfigViewControllerEntry;
  v19 = [(MTLHUDConfigViewControllerEntry *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, a3);
    objc_storeStrong(&v20->_representedObject, a6);
    v20->_entryType = a7;
    v20->_enabled = a5;
    v21 = objc_retainBlock(v18);
    didChangeBlock = v20->_didChangeBlock;
    v20->_didChangeBlock = v21;

    v23 = objc_opt_new();
    children = v20->_children;
    v20->_children = v23;

    v25 = objc_opt_new();
    linkedEntries = v20->_linkedEntries;
    v20->_linkedEntries = v25;

    objc_storeStrong(&v20->_envVar, a4);
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