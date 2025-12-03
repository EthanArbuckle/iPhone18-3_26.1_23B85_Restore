@interface SXImageController
- (CGSize)sizeConstraintForComponent:(id)component;
- (CGSize)viewportSize;
- (NSDictionary)image2ResourcesGroupedByImageIdentifier;
- (NSDictionary)imageResourcesGroupedByImageIdentifier;
- (SXDocumentController)documentController;
- (SXImageController)initWithDocumentController:(id)controller columnCalculator:(id)calculator;
- (id)Image2ResourcesForImageIdentifier:(id)identifier;
- (id)allImageResources;
- (id)allResourcesForImageIdentifier:(id)identifier;
- (id)imageResourceForAudioComponent:(id)component;
- (id)imageResourceForDataTableComponent:(id)component;
- (id)imageResourceForGalleryItem:(id)item;
- (id)imageResourceForIdentifier:(id)identifier;
- (id)imageResourceForImageComponent:(id)component;
- (id)imageResourceForImageFill:(id)fill;
- (id)imageResourceForImageIdentifier:(id)identifier constrainedToSize:(CGSize)size;
- (id)imageResourceForRepeatableImageFill:(id)fill;
- (id)imageResourceForScalableImageComponent:(id)component;
- (id)imageResourceForVideoComponent:(id)component;
- (id)imageResourceForVideoFill:(id)fill;
- (id)imageResourcesForComponent:(id)component;
- (id)imageResourcesForComponentStyle:(id)style;
- (id)imageResourcesForGalleryComponent:(id)component;
- (id)imageResourcesForImageIdentifier:(id)identifier;
- (id)taggedEquivalentOfImageResource:(id)resource;
- (void)determineOptimalImagesForComponentStyles:(id)styles;
- (void)determineOptimalImagesForComponents:(id)components;
- (void)determineOptimalImagesForMetadata;
- (void)prepareImageResources;
@end

@implementation SXImageController

- (SXImageController)initWithDocumentController:(id)controller columnCalculator:(id)calculator
{
  controllerCopy = controller;
  calculatorCopy = calculator;
  v23.receiver = self;
  v23.super_class = SXImageController;
  v8 = [(SXImageController *)&v23 init];
  v9 = v8;
  if (v8)
  {
    [(SXImageController *)v8 viewportSize];
    v11 = v10;
    v13 = v12;
    objc_storeWeak(&v9->_documentController, controllerCopy);
    document = [controllerCopy document];
    layout = [document layout];
    v16 = [calculatorCopy columnLayoutWithViewportSize:layout constrainedToWidth:v11 documentLayout:v13 contentScaleFactor:v11 safeAreaInsets:{1.0, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    columnLayout = v9->_columnLayout;
    v9->_columnLayout = v16;

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    optimalImageResources = v9->_optimalImageResources;
    v9->_optimalImageResources = orderedSet;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    optimalImageResourcesByID = v9->_optimalImageResourcesByID;
    v9->_optimalImageResourcesByID = dictionary;

    [(SXImageController *)v9 prepareImageResources];
  }

  return v9;
}

- (void)prepareImageResources
{
  v27 = *MEMORY[0x1E69E9840];
  [(SXImageController *)self viewportSize];
  v4 = v3;
  v6 = v5;
  v7 = SXDefaultLog;
  if (os_log_type_enabled(SXDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E69DCEB0];
    v9 = v7;
    mainScreen = [v8 mainScreen];
    [mainScreen scale];
    v12 = v11;
    sx_isSpectreDevice = [MEMORY[0x1E69DC938] sx_isSpectreDevice];
    v14 = @"NO";
    *v22 = 134218754;
    *&v22[4] = v4;
    *&v22[12] = 2048;
    if (sx_isSpectreDevice)
    {
      v14 = @"YES";
    }

    *&v22[14] = v6;
    v23 = 2048;
    v24 = v12;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_1D825C000, v9, OS_LOG_TYPE_DEFAULT, "Will determine optimal image resources, viewportSize=(%.0f, %.0f), screenScale=%0.1f, extendedColor=%{public}@", v22, 0x2Au);
  }

  documentController = [(SXImageController *)self documentController];
  document = [documentController document];
  components = [document components];
  [(SXImageController *)self determineOptimalImagesForComponents:components];

  documentController2 = [(SXImageController *)self documentController];
  document2 = [documentController2 document];
  componentStyles = [document2 componentStyles];
  allObjects = [componentStyles allObjects];
  [(SXImageController *)self determineOptimalImagesForComponentStyles:allObjects];

  [(SXImageController *)self determineOptimalImagesForMetadata];
}

- (void)determineOptimalImagesForMetadata
{
  documentController = [(SXImageController *)self documentController];
  document = [documentController document];
  metadata = [document metadata];
  tabBarAppearance = [metadata tabBarAppearance];

  if (tabBarAppearance)
  {
    documentController2 = [(SXImageController *)self documentController];
    document2 = [documentController2 document];
    metadata2 = [document2 metadata];
    tabBarAppearance2 = [metadata2 tabBarAppearance];

    icon2xImageIdentifier_v2 = [tabBarAppearance2 icon2xImageIdentifier_v2];

    if (icon2xImageIdentifier_v2)
    {
      icon2xImageIdentifier_v22 = [tabBarAppearance2 icon2xImageIdentifier_v2];
      v13 = [(SXImageController *)self imageResourceForImageIdentifier:icon2xImageIdentifier_v22 constrainedToSize:1.79769313e308, 1.79769313e308];

      if (v13)
      {
        optimalImageResources = [(SXImageController *)self optimalImageResources];
        [optimalImageResources addObject:v13];

        optimalImageResourcesByID = [(SXImageController *)self optimalImageResourcesByID];
        icon2xImageIdentifier_v23 = [tabBarAppearance2 icon2xImageIdentifier_v2];
        [optimalImageResourcesByID setObject:v13 forKey:icon2xImageIdentifier_v23];
      }
    }

    icon3xImageIdentifier_v2 = [tabBarAppearance2 icon3xImageIdentifier_v2];

    if (icon3xImageIdentifier_v2)
    {
      icon3xImageIdentifier_v22 = [tabBarAppearance2 icon3xImageIdentifier_v2];
      v19 = [(SXImageController *)self imageResourceForImageIdentifier:icon3xImageIdentifier_v22 constrainedToSize:1.79769313e308, 1.79769313e308];

      if (v19)
      {
        optimalImageResources2 = [(SXImageController *)self optimalImageResources];
        [optimalImageResources2 addObject:v19];

        optimalImageResourcesByID2 = [(SXImageController *)self optimalImageResourcesByID];
        icon3xImageIdentifier_v23 = [tabBarAppearance2 icon3xImageIdentifier_v2];
        [optimalImageResourcesByID2 setObject:v19 forKey:icon3xImageIdentifier_v23];
      }
    }
  }

  documentController3 = [(SXImageController *)self documentController];
  document3 = [documentController3 document];
  metadata3 = [document3 metadata];
  feedNavigationAppearance = [metadata3 feedNavigationAppearance];

  if (feedNavigationAppearance)
  {
    documentController4 = [(SXImageController *)self documentController];
    document4 = [documentController4 document];
    metadata4 = [document4 metadata];
    feedNavigationAppearance2 = [metadata4 feedNavigationAppearance];

    iconImageIdentifier = [feedNavigationAppearance2 iconImageIdentifier];

    if (iconImageIdentifier)
    {
      iconImageIdentifier2 = [feedNavigationAppearance2 iconImageIdentifier];
      v32 = [(SXImageController *)self imageResourceForImageIdentifier:iconImageIdentifier2 constrainedToSize:1.79769313e308, 1.79769313e308];

      if (v32)
      {
        optimalImageResources3 = [(SXImageController *)self optimalImageResources];
        [optimalImageResources3 addObject:v32];

        optimalImageResourcesByID3 = [(SXImageController *)self optimalImageResourcesByID];
        iconImageIdentifier3 = [feedNavigationAppearance2 iconImageIdentifier];
        [optimalImageResourcesByID3 setObject:v32 forKey:iconImageIdentifier3];
      }
    }
  }
}

- (void)determineOptimalImagesForComponents:(id)components
{
  v19 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [componentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          components = [v9 components];
          [(SXImageController *)self determineOptimalImagesForComponents:components];
        }

        else
        {
          components = [(SXImageController *)self imageResourcesForComponent:v9];
          optimalImageResources = [(SXImageController *)self optimalImageResources];
          allValues = [components allValues];
          [optimalImageResources addObjectsFromArray:allValues];

          optimalImageResourcesByID = [(SXImageController *)self optimalImageResourcesByID];
          [optimalImageResourcesByID addEntriesFromDictionary:components];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [componentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)imageResourcesForComponent:(id)component
{
  componentCopy = component;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForImageComponent:componentCopy];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForScalableImageComponent:componentCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForVideoComponent:componentCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForAudioComponent:componentCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourcesForGalleryComponent:componentCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForDataTableComponent:componentCopy];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)imageResourceForImageComponent:(id)component
{
  v15[1] = *MEMORY[0x1E69E9840];
  componentCopy = component;
  [(SXImageController *)self sizeConstraintForComponent:componentCopy];
  v6 = v5;
  v8 = v7;
  imageIdentifier = [componentCopy imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:imageIdentifier constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = imageIdentifier;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForScalableImageComponent:(id)component
{
  v15[1] = *MEMORY[0x1E69E9840];
  componentCopy = component;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  imageIdentifier = [componentCopy imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:imageIdentifier constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = imageIdentifier;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourcesForGalleryComponent:(id)component
{
  v18 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [componentCopy items];
  v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(items);
        }

        v11 = [(SXImageController *)self imageResourceForGalleryItem:*(*(&v13 + 1) + 8 * i)];
        [dictionary addEntriesFromDictionary:v11];
      }

      v8 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (id)imageResourceForGalleryItem:(id)item
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  imageIdentifier = [itemCopy imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:imageIdentifier constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = imageIdentifier;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForVideoComponent:(id)component
{
  v15[1] = *MEMORY[0x1E69E9840];
  componentCopy = component;
  [(SXImageController *)self sizeConstraintForComponent:componentCopy];
  v6 = v5;
  v8 = v7;
  stillImageIdentifier = [componentCopy stillImageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:stillImageIdentifier constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = stillImageIdentifier;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForAudioComponent:(id)component
{
  v15[1] = *MEMORY[0x1E69E9840];
  componentCopy = component;
  [(SXImageController *)self sizeConstraintForComponent:componentCopy];
  v6 = v5;
  v8 = v7;
  stillImageIdentifier = [componentCopy stillImageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:stillImageIdentifier constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = stillImageIdentifier;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForDataTableComponent:(id)component
{
  v38 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = componentCopy;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  data = [componentCopy data];
  v6 = [data recordsUsingSortDescriptors:0];

  obj = v6;
  v24 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v24)
  {
    v23 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        data2 = [v27 data];
        descriptors = [data2 descriptors];

        v11 = [descriptors countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(descriptors);
              }

              v15 = *(*(&v28 + 1) + 8 * i);
              if ([v15 dataType] == 6)
              {
                v16 = [v15 key];
                v17 = [v8 valueForKey:v16];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = v17;
LABEL_16:
                  v19 = v18;
                  if (v18)
                  {
                    [(SXImageController *)self sizeConstraintForComponent:v27];
                    v20 = [(SXImageController *)self imageResourceForImageIdentifier:v19 constrainedToSize:?];
                    if (v20)
                    {
                      [dictionary setObject:v20 forKey:v19];
                    }
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v18 = [v17 objectForKey:@"imageIdentifier"];
                    goto LABEL_16;
                  }
                }

                continue;
              }
            }

            v12 = [descriptors countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v12);
        }

        v7 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v24);
  }

  return dictionary;
}

- (CGSize)sizeConstraintForComponent:(id)component
{
  componentCopy = component;
  documentController = [(SXImageController *)self documentController];
  layout = [componentCopy layout];

  v7 = [documentController componentLayoutForIdentifier:layout];

  columnLayout = [(SXImageController *)self columnLayout];
  columnRange = [v7 columnRange];
  [columnLayout widthForColumnRange:columnRange ignoreMargin:v10 ignoreGutter:objc_msgSend(v7 ignoreViewportPadding:{"ignoreDocumentMargin"), objc_msgSend(v7, "ignoreDocumentGutter"), objc_msgSend(v7, "ignoreViewportPadding")}];
  v12 = v11;

  v13 = 1.79769313e308;
  v14 = v12;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)determineOptimalImagesForComponentStyles:(id)styles
{
  v21 = *MEMORY[0x1E69E9840];
  stylesCopy = styles;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [stylesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(stylesCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(SXImageController *)self imageResourcesForComponentStyle:v9];
        if (v10)
        {
          optimalImageResources = [(SXImageController *)self optimalImageResources];
          allValues = [v10 allValues];
          [optimalImageResources addObjectsFromArray:allValues];

          optimalImageResourcesByID = [(SXImageController *)self optimalImageResourcesByID];
          [optimalImageResourcesByID addEntriesFromDictionary:v10];
        }

        conditional = [v9 conditional];
        nSArray = [conditional NSArray];
        [(SXImageController *)self determineOptimalImagesForComponentStyles:nSArray];
      }

      v6 = [stylesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)imageResourcesForComponentStyle:(id)style
{
  fill = [style fill];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForImageFill:fill];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForVideoFill:fill];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForRepeatableImageFill:fill];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)imageResourceForImageFill:(id)fill
{
  v15[1] = *MEMORY[0x1E69E9840];
  fillCopy = fill;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  imageIdentifier = [fillCopy imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:imageIdentifier constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = imageIdentifier;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForRepeatableImageFill:(id)fill
{
  v15[1] = *MEMORY[0x1E69E9840];
  fillCopy = fill;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  imageIdentifier = [fillCopy imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:imageIdentifier constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = imageIdentifier;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForVideoFill:(id)fill
{
  v15[1] = *MEMORY[0x1E69E9840];
  fillCopy = fill;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  stillImageIdentifier = [fillCopy stillImageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:stillImageIdentifier constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = stillImageIdentifier;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForImageIdentifier:(id)identifier constrainedToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v52 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = [(SXImageController *)self imageResourcesForImageIdentifier:identifierCopy];
  selfCopy = self;
  optimalImageResourcesByID = [(SXImageController *)self optimalImageResourcesByID];
  v10 = [optimalImageResourcesByID objectForKey:identifierCopy];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    v15 = 1.79769313e308;
    v16 = height == 1.79769313e308 || width >= height;
    if (v16)
    {
      height = width;
    }

    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v46 + 1) + 8 * i);
        [v18 dimensions];
        if (v16)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen scale];
        v24 = v21 / v23;

        if (height - v24 >= 0.0)
        {
          v25 = height - v24;
        }

        else
        {
          v25 = -(height - v24);
        }

        if (v25 < v15)
        {
          v26 = v18;

          v15 = v25;
          v10 = v26;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v13);
  }

  if (!v10)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = v11;
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v10 = 0;
      v30 = *v43;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v42 + 1) + 8 * j);
          if (v10)
          {
            [*(*(&v42 + 1) + 8 * j) dimensions];
            v34 = v33;
            [v10 dimensions];
            if (v34 <= v35)
            {
              continue;
            }
          }

          v36 = v32;

          v10 = v36;
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v29);
    }

    else
    {
      v10 = 0;
    }
  }

  if ([MEMORY[0x1E69DC938] sx_isSpectreDevice])
  {
    v37 = [(SXImageController *)selfCopy taggedEquivalentOfImageResource:v10];
    v38 = v37;
    if (v37)
    {
      v39 = v37;

      v10 = v39;
    }
  }

  return v10;
}

- (id)allResourcesForImageIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  v16 = identifierCopy;
  v6 = [(SXImageController *)self imageResourcesForImageIdentifier:identifierCopy];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_54];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([MEMORY[0x1E69DC938] sx_isSpectreDevice] && (-[SXImageController taggedEquivalentOfImageResource:](self, "taggedEquivalentOfImageResource:", v12), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v14 = v13;
          [array addObject:v13];
        }

        else
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return array;
}

uint64_t __52__SXImageController_allResourcesForImageIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 dimensions];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 dimensions];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)taggedEquivalentOfImageResource:(id)resource
{
  v28 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  imageIdentifier = [resourceCopy imageIdentifier];
  v6 = [(SXImageController *)self Image2ResourcesForImageIdentifier:imageIdentifier];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        [v13 dimensions];
        v15 = v14;
        v17 = v16;
        [resourceCopy dimensions];
        if (v15 == v19 && v17 == v18)
        {
          v21 = v13;

          v10 = v21;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  if (*MEMORY[0x1E695F060] == width && *(MEMORY[0x1E695F060] + 8) == height)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v7 = CGRectGetHeight(v10);
    [mainScreen bounds];
    v8 = CGRectGetWidth(v11);
    if (v7 >= v8)
    {
      v8 = v7;
    }

    self->_viewportSize.width = v8;
    self->_viewportSize.height = v8;

    width = self->_viewportSize.width;
    height = self->_viewportSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)allImageResources
{
  optimalImageResources = [(SXImageController *)self optimalImageResources];
  array = [optimalImageResources array];

  return array;
}

- (id)imageResourceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  optimalImageResourcesByID = [(SXImageController *)self optimalImageResourcesByID];
  v6 = [optimalImageResourcesByID objectForKey:identifierCopy];

  return v6;
}

- (id)imageResourcesForImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageResourcesGroupedByImageIdentifier = [(SXImageController *)self imageResourcesGroupedByImageIdentifier];
  v6 = [imageResourcesGroupedByImageIdentifier objectForKey:identifierCopy];

  return v6;
}

- (id)Image2ResourcesForImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  image2ResourcesGroupedByImageIdentifier = [(SXImageController *)self image2ResourcesGroupedByImageIdentifier];
  v6 = [image2ResourcesGroupedByImageIdentifier objectForKey:identifierCopy];

  return v6;
}

- (NSDictionary)imageResourcesGroupedByImageIdentifier
{
  v27 = *MEMORY[0x1E69E9840];
  imageResourcesGroupedByImageIdentifier = self->_imageResourcesGroupedByImageIdentifier;
  if (!imageResourcesGroupedByImageIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    documentController = [(SXImageController *)self documentController];
    document = [documentController document];
    resources = [document resources];

    obj = resources;
    v8 = [resources countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          documentController2 = [(SXImageController *)self documentController];
          document2 = [documentController2 document];
          resources2 = [document2 resources];
          v16 = [resources2 objectForKey:v12];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            imageIdentifier = [v16 imageIdentifier];
            if (imageIdentifier)
            {
              array = [(NSDictionary *)dictionary objectForKey:imageIdentifier];
              if (!array)
              {
                array = [MEMORY[0x1E695DF70] array];
              }

              [array addObject:v16];
              [(NSDictionary *)dictionary setObject:array forKey:imageIdentifier];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v19 = self->_imageResourcesGroupedByImageIdentifier;
    self->_imageResourcesGroupedByImageIdentifier = dictionary;

    imageResourcesGroupedByImageIdentifier = self->_imageResourcesGroupedByImageIdentifier;
  }

  return imageResourcesGroupedByImageIdentifier;
}

- (NSDictionary)image2ResourcesGroupedByImageIdentifier
{
  v27 = *MEMORY[0x1E69E9840];
  image2ResourcesGroupedByImageIdentifier = self->_image2ResourcesGroupedByImageIdentifier;
  if (!image2ResourcesGroupedByImageIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    documentController = [(SXImageController *)self documentController];
    document = [documentController document];
    resources = [document resources];

    obj = resources;
    v8 = [resources countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          documentController2 = [(SXImageController *)self documentController];
          document2 = [documentController2 document];
          resources2 = [document2 resources];
          v16 = [resources2 objectForKey:v12];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            imageIdentifier = [v16 imageIdentifier];
            if (imageIdentifier)
            {
              array = [(NSDictionary *)dictionary objectForKey:imageIdentifier];
              if (!array)
              {
                array = [MEMORY[0x1E695DF70] array];
              }

              [array addObject:v16];
              [(NSDictionary *)dictionary setObject:array forKey:imageIdentifier];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v19 = self->_image2ResourcesGroupedByImageIdentifier;
    self->_image2ResourcesGroupedByImageIdentifier = dictionary;

    image2ResourcesGroupedByImageIdentifier = self->_image2ResourcesGroupedByImageIdentifier;
  }

  return image2ResourcesGroupedByImageIdentifier;
}

- (SXDocumentController)documentController
{
  WeakRetained = objc_loadWeakRetained(&self->_documentController);

  return WeakRetained;
}

@end