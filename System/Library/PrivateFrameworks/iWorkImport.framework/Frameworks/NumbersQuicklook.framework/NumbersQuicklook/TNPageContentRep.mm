@interface TNPageContentRep
- (TNPageContentRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)pageController;
- (void)willBeRemoved;
@end

@implementation TNPageContentRep

- (TNPageContentRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v18.receiver = self;
  v18.super_class = TNPageContentRep;
  v4 = [(TSDRep *)&v18 initWithLayout:layout canvas:canvas];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_pageController(v4, v5, v6);
    v11 = objc_msgSend_documentRoot(v8, v9, v10);
    v14 = objc_msgSend_changeNotifier(v11, v12, v13);

    v15 = objc_opt_class();
    objc_msgSend_addObserver_forChangeSourceOfClass_(v14, v16, v7, v15);
  }

  return v7;
}

- (void)willBeRemoved
{
  v4 = objc_msgSend_pageController(self, a2, v2);
  v7 = objc_msgSend_documentRoot(v4, v5, v6);
  v10 = objc_msgSend_changeNotifier(v7, v8, v9);

  v11 = objc_opt_class();
  objc_msgSend_removeObserver_forChangeSourceOfClass_(v10, v12, self, v11);
  v13.receiver = self;
  v13.super_class = TNPageContentRep;
  [(TSDRep *)&v13 willBeRemoved];
}

- (id)pageController
{
  v3 = objc_msgSend_layout(self, a2, v2);
  v6 = objc_msgSend_pageLayout(v3, v4, v5);
  v9 = objc_msgSend_pageController(v6, v7, v8);

  return v9;
}

@end