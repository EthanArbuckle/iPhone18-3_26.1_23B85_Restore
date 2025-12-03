@interface _TVDescriptiveAlertTemplateController
- (CGSize)_backgroundImageProxySize;
- (id)_backgroundImageProxy;
- (int64_t)_blurEffectStyle;
- (void)_configureWithBgImage:(id)image backdropImage:(id)backdropImage;
- (void)_normalizeButtonsInViews:(id)views;
- (void)loadView;
- (void)updateWithViewElement:(id)element;
@end

@implementation _TVDescriptiveAlertTemplateController

- (void)updateWithViewElement:(id)element
{
  v157 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v147.receiver = self;
  v147.super_class = _TVDescriptiveAlertTemplateController;
  [(_TVBgImageLoadingViewController *)&v147 updateWithViewElement:elementCopy];
  objc_storeStrong(&self->_templateElement, element);
  p_bgImageElement = &self->_bgImageElement;
  bgImageElement = self->_bgImageElement;
  self->_bgImageElement = 0;

  p_bgHeroImageElement = &self->_bgHeroImageElement;
  bgHeroImageElement = self->_bgHeroImageElement;
  self->_bgHeroImageElement = 0;

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  children = [elementCopy children];
  v102 = [v10 initWithCapacity:{objc_msgSend(children, "count")}];

  v101 = [(NSArray *)self->_templateSubcontrollers mutableCopy];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v98 = elementCopy;
  obj = [elementCopy children];
  v108 = [obj countByEnumeratingWithState:&v143 objects:v156 count:16];
  v97 = 1056;
  if (v108)
  {
    v103 = 0;
    v107 = *v144;
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    selfCopy = self;
    do
    {
      for (i = 0; i != v108; ++i)
      {
        if (*v144 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v143 + 1) + 8 * i);
        if ([v17 tv_elementType] == 4)
        {
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          children2 = [v17 children];
          v19 = [children2 countByEnumeratingWithState:&v139 objects:v155 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v140;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v140 != v21)
                {
                  objc_enumerationMutation(children2);
                }

                v23 = *(*(&v139 + 1) + 8 * j);
                if ([v23 tv_elementType] == 16)
                {
                  if (!*p_bgImageElement && (v24 = [v23 tv_imageType], v25 = p_bgImageElement, !v24) || !*p_bgHeroImageElement && (v26 = objc_msgSend(v23, "tv_imageType"), v25 = p_bgHeroImageElement, v26 == 3))
                  {
                    objc_storeStrong(v25, v23);
                  }
                }
              }

              v20 = [children2 countByEnumeratingWithState:&v139 objects:v155 count:16];
            }

            while (v20);
          }
        }

        else
        {
          autoHighlightIdentifier = [v17 autoHighlightIdentifier];

          v109 = i;
          if (autoHighlightIdentifier)
          {
            [v17 resetProperty:2];
            v106 = 0;
          }

          else if ([v17 tv_elementType] == 44)
          {
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            children3 = [v17 children];
            v29 = [children3 countByEnumeratingWithState:&v135 objects:v154 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = 0;
              v32 = *v136;
              do
              {
                for (k = 0; k != v30; ++k)
                {
                  if (*v136 != v32)
                  {
                    objc_enumerationMutation(children3);
                  }

                  autoHighlightIdentifier2 = [*(*(&v135 + 1) + 8 * k) autoHighlightIdentifier];

                  v31 |= autoHighlightIdentifier2 != 0;
                }

                v30 = [children3 countByEnumeratingWithState:&v135 objects:v154 count:16];
              }

              while (v30);
              v106 = v31 ^ 1;
              i = v109;
            }

            else
            {
              v106 = 1;
            }
          }

          else
          {
            v106 = 1;
          }

          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v35 = self->_templateSubviews;
          v36 = [(NSArray *)v35 countByEnumeratingWithState:&v131 objects:v153 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v132;
LABEL_37:
            v39 = 0;
            while (1)
            {
              if (*v132 != v38)
              {
                objc_enumerationMutation(v35);
              }

              children2 = *(*(&v131 + 1) + 8 * v39);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                subviews = [children2 subviews];
                firstObject = [subviews firstObject];

                children2 = firstObject;
              }

              tv_associatedIKViewElement = [children2 tv_associatedIKViewElement];

              if (tv_associatedIKViewElement == v17)
              {
                break;
              }

              if (v37 == ++v39)
              {
                v37 = [(NSArray *)v35 countByEnumeratingWithState:&v131 objects:v153 count:16];
                if (v37)
                {
                  goto LABEL_37;
                }

                children2 = 0;
                break;
              }
            }

            self = selfCopy;
            i = v109;
          }

          else
          {
            children2 = 0;
          }

          v43 = +[TVInterfaceFactory sharedInterfaceFactory];
          view = [v43 _viewFromElement:v17 existingView:children2];

          if (!view)
          {
            v110 = v17;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v45 = v101;
            v46 = [v45 countByEnumeratingWithState:&v127 objects:v152 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v128;
              while (2)
              {
                for (m = 0; m != v47; ++m)
                {
                  if (*v128 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v50 = *(*(&v127 + 1) + 8 * m);
                  tv_associatedIKViewElement2 = [v50 tv_associatedIKViewElement];
                  v52 = [tv_associatedIKViewElement2 isEqual:v110];

                  if (v52)
                  {
                    v53 = v50;

                    if (v53)
                    {
                      [v45 removeObject:v53];
                    }

                    goto LABEL_60;
                  }
                }

                v47 = [v45 countByEnumeratingWithState:&v127 objects:v152 count:16];
                if (v47)
                {
                  continue;
                }

                break;
              }
            }

            v53 = 0;
LABEL_60:
            i = v109;
            v54 = +[TVInterfaceFactory sharedInterfaceFactory];
            v17 = v110;
            v55 = [v54 _viewControllerFromElement:v110 existingController:v53];

            if (v55)
            {
              self = selfCopy;
              if (v55 != v53)
              {
                [array addObject:v55];
              }

              [array2 addObject:v55];
              view = [v55 view];
            }

            else
            {
              view = 0;
              self = selfCopy;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            style = [v17 style];
            [style tv_width];
            [view sizeThatFits:?];
            v58 = v57;
            v60 = v59;

            [view setSize:{v58, v60}];
            superview = [view superview];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              superview2 = [view superview];
            }

            else
            {
              superview2 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v12, v13, v14, v15}];
            }

            v63 = superview2;

            [v63 addSubview:view];
            [v63 transferLayoutStylesFromElement:v17];
            [v63 setContentSize:{v58, v60}];
            [v63 setBounces:1];

            view = v63;
          }

          if (view)
          {
            if (!((v103 != 0) | v106 & 1))
            {
              v103 = view;
            }

            if ([v17 tv_elementType] == 44)
            {
              components = [view components];
              [(_TVDescriptiveAlertTemplateController *)self _normalizeButtonsInViews:components];
            }

            [v102 addObject:view];
          }
        }
      }

      v108 = [obj countByEnumeratingWithState:&v143 objects:v156 count:16];
    }

    while (v108);
  }

  else
  {
    v103 = 0;
  }

  [(_TVDescriptiveAlertTemplateController *)self _normalizeButtonsInViews:v102];
  v65 = [v102 copy];
  templateSubviews = self->_templateSubviews;
  self->_templateSubviews = v65;

  v67 = [array2 copy];
  v68 = *(&self->super.super.super.super.isa + v97);
  *(&self->super.super.super.super.isa + v97) = v67;

  style2 = [v98 style];
  tv_backgroundColor = [style2 tv_backgroundColor];
  color = [tv_backgroundColor color];
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = color;

  objc_storeStrong(&self->_preferredFocusView, v103);
  if ([(_TVDescriptiveAlertTemplateController *)self isViewLoaded])
  {
    view2 = [(_TVDescriptiveAlertTemplateController *)self view];
    [view2 setBackgroundColor:self->_backgroundColor];

    view3 = [(_TVDescriptiveAlertTemplateController *)self view];
    [view3 transferLayoutStylesFromElement:v98];

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v75 = v101;
    v76 = [v75 countByEnumeratingWithState:&v123 objects:v151 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v124;
      do
      {
        for (n = 0; n != v77; ++n)
        {
          if (*v124 != v78)
          {
            objc_enumerationMutation(v75);
          }

          [*(*(&v123 + 1) + 8 * n) willMoveToParentViewController:{0, v97}];
        }

        v77 = [v75 countByEnumeratingWithState:&v123 objects:v151 count:16];
      }

      while (v77);
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v80 = array;
    v81 = [v80 countByEnumeratingWithState:&v119 objects:v150 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v120;
      do
      {
        for (ii = 0; ii != v82; ++ii)
        {
          if (*v120 != v83)
          {
            objc_enumerationMutation(v80);
          }

          [(_TVDescriptiveAlertTemplateController *)self addChildViewController:*(*(&v119 + 1) + 8 * ii), v97];
        }

        v82 = [v80 countByEnumeratingWithState:&v119 objects:v150 count:16];
      }

      while (v82);
    }

    view4 = [(_TVDescriptiveAlertTemplateController *)self view];
    [view4 setChildViews:self->_templateSubviews];

    if (self->_preferredFocusView)
    {
      view5 = [(_TVDescriptiveAlertTemplateController *)self view];
      [view5 setDefaultFocusView:self->_preferredFocusView];
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v87 = v75;
    v88 = [v87 countByEnumeratingWithState:&v115 objects:v149 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v116;
      do
      {
        for (jj = 0; jj != v89; ++jj)
        {
          if (*v116 != v90)
          {
            objc_enumerationMutation(v87);
          }

          [*(*(&v115 + 1) + 8 * jj) removeFromParentViewController];
        }

        v89 = [v87 countByEnumeratingWithState:&v115 objects:v149 count:16];
      }

      while (v89);
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v92 = v80;
    v93 = [v92 countByEnumeratingWithState:&v111 objects:v148 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v112;
      do
      {
        for (kk = 0; kk != v94; ++kk)
        {
          if (*v112 != v95)
          {
            objc_enumerationMutation(v92);
          }

          [*(*(&v111 + 1) + 8 * kk) didMoveToParentViewController:{self, v97}];
        }

        v94 = [v92 countByEnumeratingWithState:&v111 objects:v148 count:16];
      }

      while (v94);
    }

    [(_TVDescriptiveAlertTemplateController *)self setNeedsFocusUpdate];
  }
}

- (void)loadView
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [_TVDescriptiveAlertView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [(_TVDescriptiveAlertView *)v3 initWithFrame:?];

  [(_TVDescriptiveAlertView *)v5 setBackgroundColor:self->_backgroundColor];
  [(UIView *)v5 transferLayoutStylesFromElement:self->_templateElement];
  [(_TVDescriptiveAlertTemplateController *)self setView:v5];
  if (self->_templateSubviews)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_templateSubcontrollers;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(_TVDescriptiveAlertTemplateController *)self addChildViewController:*(*(&v20 + 1) + 8 * i)];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    [(_TVDescriptiveAlertView *)v5 setChildViews:self->_templateSubviews];
    if (self->_preferredFocusView)
    {
      [(_TVDescriptiveAlertView *)v5 setDefaultFocusView:?];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_templateSubcontrollers;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * j) didMoveToParentViewController:{self, v16}];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)_normalizeButtonsInViews:(id)views
{
  v36 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  array = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = viewsCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        tv_associatedIKViewElement = [v14 tv_associatedIKViewElement];
        if ([tv_associatedIKViewElement tv_elementType] == 6)
        {
          [v14 tv_sizeThatFits:{v9, v10}];
          v12 = fmax(v12, v16);
          v11 = fmax(v11, v17);
          [array addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = array;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:{v12, v26}];
        [v23 setValue:v24 forTVViewStyle:@"width"];

        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [v23 setValue:v25 forTVViewStyle:@"height"];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }
}

- (CGSize)_backgroundImageProxySize
{
  bgImageElement = self->_bgImageElement;
  if (bgImageElement || (bgImageElement = self->_bgHeroImageElement) != 0)
  {

    [(IKImageElement *)bgImageElement tv_imageScaleToSize];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = _TVDescriptiveAlertTemplateController;
    [(_TVBgImageLoadingViewController *)&v7 _backgroundImageProxySize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_backgroundImageProxy
{
  if (self->_bgImageElement)
  {
    appDocument = [(IKViewElement *)self->_templateElement appDocument];
    [appDocument tv_adjustedWindowSize];
    v5 = v4;
    v7 = v6;

    v8 = objc_opt_new();
    [v8 setImageSize:{v5, v7}];
    v9 = [TVImageLayout layoutWithLayout:v8 element:self->_bgImageElement];
    tv_imageProxy = [(IKImageElement *)self->_bgImageElement tv_imageProxyWithLayout:v8];
  }

  else
  {
    bgHeroImageElement = self->_bgHeroImageElement;
    if (bgHeroImageElement)
    {
      tv_imageProxy = [(IKImageElement *)bgHeroImageElement tv_imageProxy];
    }

    else
    {
      tv_imageProxy = 0;
    }
  }

  return tv_imageProxy;
}

- (int64_t)_blurEffectStyle
{
  if ([TVMLUtilities interfaceStyleForTemplateElement:self->_templateElement]== 1)
  {
    return 4000;
  }

  else
  {
    return 4005;
  }
}

- (void)_configureWithBgImage:(id)image backdropImage:(id)backdropImage
{
  imageCopy = image;
  view = [(_TVDescriptiveAlertTemplateController *)self view];
  [view setBgImage:imageCopy];
}

@end