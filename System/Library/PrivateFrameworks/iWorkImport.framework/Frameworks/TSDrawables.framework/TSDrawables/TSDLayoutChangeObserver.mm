@interface TSDLayoutChangeObserver
- (TSDLayoutChangeObserver)initWithDocumentRoot:(id)root layoutController:(id)controller;
- (void)i_layoutRegistered:(id)registered;
- (void)i_layoutUnregistered:(id)unregistered;
- (void)preprocessChanges:(id)changes forChangeSource:(id)source;
@end

@implementation TSDLayoutChangeObserver

- (TSDLayoutChangeObserver)initWithDocumentRoot:(id)root layoutController:(id)controller
{
  rootCopy = root;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = TSDLayoutChangeObserver;
  v8 = [(TSDLayoutChangeObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_documentRoot, rootCopy);
    objc_storeWeak(&v9->_layoutController, controllerCopy);
  }

  return v9;
}

- (void)i_layoutRegistered:(id)registered
{
  registeredCopy = registered;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v7 = objc_msgSend_changeNotifier(WeakRetained, v5, v6);
  v10 = objc_msgSend_info(registeredCopy, v8, v9);

  objc_msgSend_addObserver_forChangeSource_(v7, v11, self, v10);
}

- (void)i_layoutUnregistered:(id)unregistered
{
  unregisteredCopy = unregistered;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v7 = objc_msgSend_changeNotifier(WeakRetained, v5, v6);
  v10 = objc_msgSend_info(unregisteredCopy, v8, v9);

  objc_msgSend_removeObserver_forChangeSource_(v7, v11, self, v10);
}

- (void)preprocessChanges:(id)changes forChangeSource:(id)source
{
  changesCopy = changes;
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v10 = objc_msgSend_accessController(WeakRetained, v8, v9);
  objc_msgSend_assertHasWrite(v10, v11, v12);

  v13 = TSUProtocolCast();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_layoutController);
    v16 = objc_msgSend_layoutsForInfo_(v14, v15, v13, &unk_2885A16B8);
    objc_msgSend_makeObjectsPerformSelector_withObject_(v16, v17, sel_processChanges_, changesCopy);
  }
}

@end