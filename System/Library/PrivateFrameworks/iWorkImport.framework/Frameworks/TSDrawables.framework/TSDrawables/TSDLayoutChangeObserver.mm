@interface TSDLayoutChangeObserver
- (TSDLayoutChangeObserver)initWithDocumentRoot:(id)a3 layoutController:(id)a4;
- (void)i_layoutRegistered:(id)a3;
- (void)i_layoutUnregistered:(id)a3;
- (void)preprocessChanges:(id)a3 forChangeSource:(id)a4;
@end

@implementation TSDLayoutChangeObserver

- (TSDLayoutChangeObserver)initWithDocumentRoot:(id)a3 layoutController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSDLayoutChangeObserver;
  v8 = [(TSDLayoutChangeObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_documentRoot, v6);
    objc_storeWeak(&v9->_layoutController, v7);
  }

  return v9;
}

- (void)i_layoutRegistered:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v7 = objc_msgSend_changeNotifier(WeakRetained, v5, v6);
  v10 = objc_msgSend_info(v4, v8, v9);

  objc_msgSend_addObserver_forChangeSource_(v7, v11, self, v10);
}

- (void)i_layoutUnregistered:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v7 = objc_msgSend_changeNotifier(WeakRetained, v5, v6);
  v10 = objc_msgSend_info(v4, v8, v9);

  objc_msgSend_removeObserver_forChangeSource_(v7, v11, self, v10);
}

- (void)preprocessChanges:(id)a3 forChangeSource:(id)a4
{
  v18 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v10 = objc_msgSend_accessController(WeakRetained, v8, v9);
  objc_msgSend_assertHasWrite(v10, v11, v12);

  v13 = TSUProtocolCast();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_layoutController);
    v16 = objc_msgSend_layoutsForInfo_(v14, v15, v13, &unk_2885A16B8);
    objc_msgSend_makeObjectsPerformSelector_withObject_(v16, v17, sel_processChanges_, v18);
  }
}

@end