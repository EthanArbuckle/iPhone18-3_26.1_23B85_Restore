@interface _TVAlertTemplateController_iOS
- (void)_dismissAlertControllerAnimated:(BOOL)animated;
- (void)_presentAlertController;
- (void)didMoveToParentViewController:(id)controller;
- (void)updateWithTemplateElement:(id)element;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _TVAlertTemplateController_iOS

- (void)updateWithTemplateElement:(id)element
{
  v54 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = elementCopy;
  children = [elementCopy children];
  v7 = [children countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    v10 = &OBJC_IVAR___TVTimeRange__endDate;
    v42 = children;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(children);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        if ([v12 tv_elementType] == 16)
        {
          tv_imageProxy = [v12 tv_imageProxy];
          v14 = v10[107];
          v15 = *(&self->super.super.super.isa + v14);
          *(&self->super.super.super.isa + v14) = tv_imageProxy;

          [v12 width];
          v17 = v16;
          [v12 height];
          v19 = fmin(v18, 112.0);
          self->_imageSize.width = round(v17 * (v19 / v18));
          self->_imageSize.height = v19;
          continue;
        }

        if ([v12 tv_elementType] == 55)
        {
          elementName = [v12 elementName];
          v21 = [elementName isEqualToString:@"title"];

          if (v21)
          {
            text = [v12 text];
            string = [text string];
            title = self->_title;
            self->_title = string;

            continue;
          }

          elementName2 = [v12 elementName];
          v26 = [elementName2 isEqualToString:@"description"];

          text2 = [v12 text];
          string2 = [text2 string];
          v29 = string2;
          if (v26)
          {
            message = self->_message;
            self->_message = string2;
          }

          else
          {
            [v43 addObject:string2];
          }

          goto LABEL_28;
        }

        if ([v12 tv_elementType] == 6)
        {
          [v5 addObject:v12];
          continue;
        }

        if ([v12 tv_elementType] == 44)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          children2 = [v12 children];
          v32 = [children2 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v45;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v45 != v34)
                {
                  objc_enumerationMutation(children2);
                }

                v36 = *(*(&v44 + 1) + 8 * j);
                if ([v36 tv_elementType] == 6)
                {
                  [v5 addObject:v36];
                }
              }

              v33 = [children2 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v33);
          }

          children = v42;
LABEL_28:
          v10 = &OBJC_IVAR___TVTimeRange__endDate;
          continue;
        }
      }

      v8 = [children countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v8);
  }

  v37 = [v5 copy];
  buttonElements = self->_buttonElements;
  self->_buttonElements = v37;

  v39 = [v43 copy];
  additionalLabels = self->_additionalLabels;
  self->_additionalLabels = v39;

  if (self->_alertController)
  {
    [(_TVAlertTemplateController_iOS *)self _presentAlertController];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _TVAlertTemplateController_iOS;
  [(_TVAlertTemplateController_iOS *)&v4 viewDidAppear:appear];
  [(_TVAlertTemplateController_iOS *)self _presentAlertController];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = _TVAlertTemplateController_iOS;
  [(_TVAlertTemplateController_iOS *)&v5 viewWillDisappear:?];
  [(_TVAlertTemplateController_iOS *)self _dismissAlertControllerAnimated:disappearCopy];
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setOpaque:0];
  }
}

- (void)_dismissAlertControllerAnimated:(BOOL)animated
{
  alertController = self->_alertController;
  if (alertController)
  {
    animatedCopy = animated;
    presentingViewController = [(UIAlertController *)alertController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:0];

    v7 = self->_alertController;
    self->_alertController = 0;
  }
}

- (void)_presentAlertController
{
  v43 = *MEMORY[0x277D85DE8];
  alertController = self->_alertController;
  [(_TVAlertTemplateController_iOS *)self _dismissAlertControllerAnimated:alertController == 0];
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
  v4 = self->_alertController;
  self->_alertController = v3;

  v5 = objc_alloc_init(_TVAlertView);
  [(_TVAlertView *)v5 setImageProxy:self->_imageProxy];
  [(_TVAlertView *)v5 setImageSize:self->_imageSize.width, self->_imageSize.height];
  [(_TVAlertView *)v5 setTitle:self->_title];
  [(_TVAlertView *)v5 setAdditionalLabels:self->_additionalLabels];
  [(_TVAlertView *)v5 sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v7 = v6;
  [(_TVAlertView *)v5 setFrame:0.0, 0.0, 270.0, v6];
  v8 = objc_alloc_init(MEMORY[0x277D75D28]);
  [v8 setPreferredContentSize:{270.0, v7}];
  v22 = v5;
  [v8 setView:v5];
  v23 = v8;
  [(UIAlertController *)self->_alertController setContentViewController:v8];
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v37 = 0u;
  obj = self->_buttonElements;
  v27 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v27)
  {
    v26 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v26)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v11 = *(*(&v37 + 1) + 8 * v9);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v28 = v9;
        v29 = v11;
        children = [v11 children];
        v13 = [children countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v13)
        {
          v14 = *v34;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v34 != v14)
              {
                objc_enumerationMutation(children);
              }

              v16 = *(*(&v33 + 1) + 8 * i);
              if ([v16 elementType] == 55)
              {
                v17 = v16;
                text = [v17 text];
                string = [text string];

                objc_initWeak(&location, self->_alertController);
                v20 = MEMORY[0x277D750F8];
                v30[0] = MEMORY[0x277D85DD0];
                v30[1] = 3221225472;
                v30[2] = __57___TVAlertTemplateController_iOS__presentAlertController__block_invoke;
                v30[3] = &unk_279D6EED8;
                objc_copyWeak(&v31, &location);
                v30[4] = v29;
                v21 = [v20 actionWithTitle:string style:0 handler:v30];
                [(UIAlertController *)self->_alertController addAction:v21];

                objc_destroyWeak(&v31);
                objc_destroyWeak(&location);
              }
            }

            v13 = [children countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v13);
        }

        v9 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v27);
  }

  [(_TVAlertTemplateController_iOS *)self presentViewController:self->_alertController animated:alertController == 0 completion:0];
}

@end