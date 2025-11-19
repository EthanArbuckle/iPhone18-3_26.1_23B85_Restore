@interface SXImageController
- (CGSize)sizeConstraintForComponent:(id)a3;
- (CGSize)viewportSize;
- (NSDictionary)image2ResourcesGroupedByImageIdentifier;
- (NSDictionary)imageResourcesGroupedByImageIdentifier;
- (SXDocumentController)documentController;
- (SXImageController)initWithDocumentController:(id)a3 columnCalculator:(id)a4;
- (id)Image2ResourcesForImageIdentifier:(id)a3;
- (id)allImageResources;
- (id)allResourcesForImageIdentifier:(id)a3;
- (id)imageResourceForAudioComponent:(id)a3;
- (id)imageResourceForDataTableComponent:(id)a3;
- (id)imageResourceForGalleryItem:(id)a3;
- (id)imageResourceForIdentifier:(id)a3;
- (id)imageResourceForImageComponent:(id)a3;
- (id)imageResourceForImageFill:(id)a3;
- (id)imageResourceForImageIdentifier:(id)a3 constrainedToSize:(CGSize)a4;
- (id)imageResourceForRepeatableImageFill:(id)a3;
- (id)imageResourceForScalableImageComponent:(id)a3;
- (id)imageResourceForVideoComponent:(id)a3;
- (id)imageResourceForVideoFill:(id)a3;
- (id)imageResourcesForComponent:(id)a3;
- (id)imageResourcesForComponentStyle:(id)a3;
- (id)imageResourcesForGalleryComponent:(id)a3;
- (id)imageResourcesForImageIdentifier:(id)a3;
- (id)taggedEquivalentOfImageResource:(id)a3;
- (void)determineOptimalImagesForComponentStyles:(id)a3;
- (void)determineOptimalImagesForComponents:(id)a3;
- (void)determineOptimalImagesForMetadata;
- (void)prepareImageResources;
@end

@implementation SXImageController

- (SXImageController)initWithDocumentController:(id)a3 columnCalculator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SXImageController;
  v8 = [(SXImageController *)&v23 init];
  v9 = v8;
  if (v8)
  {
    [(SXImageController *)v8 viewportSize];
    v11 = v10;
    v13 = v12;
    objc_storeWeak(&v9->_documentController, v6);
    v14 = [v6 document];
    v15 = [v14 layout];
    v16 = [v7 columnLayoutWithViewportSize:v15 constrainedToWidth:v11 documentLayout:v13 contentScaleFactor:v11 safeAreaInsets:{1.0, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    columnLayout = v9->_columnLayout;
    v9->_columnLayout = v16;

    v18 = [MEMORY[0x1E695DFA0] orderedSet];
    optimalImageResources = v9->_optimalImageResources;
    v9->_optimalImageResources = v18;

    v20 = [MEMORY[0x1E695DF90] dictionary];
    optimalImageResourcesByID = v9->_optimalImageResourcesByID;
    v9->_optimalImageResourcesByID = v20;

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
    v10 = [v8 mainScreen];
    [v10 scale];
    v12 = v11;
    v13 = [MEMORY[0x1E69DC938] sx_isSpectreDevice];
    v14 = @"NO";
    *v22 = 134218754;
    *&v22[4] = v4;
    *&v22[12] = 2048;
    if (v13)
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

  v15 = [(SXImageController *)self documentController];
  v16 = [v15 document];
  v17 = [v16 components];
  [(SXImageController *)self determineOptimalImagesForComponents:v17];

  v18 = [(SXImageController *)self documentController];
  v19 = [v18 document];
  v20 = [v19 componentStyles];
  v21 = [v20 allObjects];
  [(SXImageController *)self determineOptimalImagesForComponentStyles:v21];

  [(SXImageController *)self determineOptimalImagesForMetadata];
}

- (void)determineOptimalImagesForMetadata
{
  v3 = [(SXImageController *)self documentController];
  v4 = [v3 document];
  v5 = [v4 metadata];
  v6 = [v5 tabBarAppearance];

  if (v6)
  {
    v7 = [(SXImageController *)self documentController];
    v8 = [v7 document];
    v9 = [v8 metadata];
    v10 = [v9 tabBarAppearance];

    v11 = [v10 icon2xImageIdentifier_v2];

    if (v11)
    {
      v12 = [v10 icon2xImageIdentifier_v2];
      v13 = [(SXImageController *)self imageResourceForImageIdentifier:v12 constrainedToSize:1.79769313e308, 1.79769313e308];

      if (v13)
      {
        v14 = [(SXImageController *)self optimalImageResources];
        [v14 addObject:v13];

        v15 = [(SXImageController *)self optimalImageResourcesByID];
        v16 = [v10 icon2xImageIdentifier_v2];
        [v15 setObject:v13 forKey:v16];
      }
    }

    v17 = [v10 icon3xImageIdentifier_v2];

    if (v17)
    {
      v18 = [v10 icon3xImageIdentifier_v2];
      v19 = [(SXImageController *)self imageResourceForImageIdentifier:v18 constrainedToSize:1.79769313e308, 1.79769313e308];

      if (v19)
      {
        v20 = [(SXImageController *)self optimalImageResources];
        [v20 addObject:v19];

        v21 = [(SXImageController *)self optimalImageResourcesByID];
        v22 = [v10 icon3xImageIdentifier_v2];
        [v21 setObject:v19 forKey:v22];
      }
    }
  }

  v23 = [(SXImageController *)self documentController];
  v24 = [v23 document];
  v25 = [v24 metadata];
  v26 = [v25 feedNavigationAppearance];

  if (v26)
  {
    v27 = [(SXImageController *)self documentController];
    v28 = [v27 document];
    v29 = [v28 metadata];
    v36 = [v29 feedNavigationAppearance];

    v30 = [v36 iconImageIdentifier];

    if (v30)
    {
      v31 = [v36 iconImageIdentifier];
      v32 = [(SXImageController *)self imageResourceForImageIdentifier:v31 constrainedToSize:1.79769313e308, 1.79769313e308];

      if (v32)
      {
        v33 = [(SXImageController *)self optimalImageResources];
        [v33 addObject:v32];

        v34 = [(SXImageController *)self optimalImageResourcesByID];
        v35 = [v36 iconImageIdentifier];
        [v34 setObject:v32 forKey:v35];
      }
    }
  }
}

- (void)determineOptimalImagesForComponents:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 components];
          [(SXImageController *)self determineOptimalImagesForComponents:v10];
        }

        else
        {
          v10 = [(SXImageController *)self imageResourcesForComponent:v9];
          v11 = [(SXImageController *)self optimalImageResources];
          v12 = [v10 allValues];
          [v11 addObjectsFromArray:v12];

          v13 = [(SXImageController *)self optimalImageResourcesByID];
          [v13 addEntriesFromDictionary:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)imageResourcesForComponent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForImageComponent:v4];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForScalableImageComponent:v4];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForVideoComponent:v4];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForAudioComponent:v4];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourcesForGalleryComponent:v4];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForDataTableComponent:v4];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)imageResourceForImageComponent:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXImageController *)self sizeConstraintForComponent:v4];
  v6 = v5;
  v8 = v7;
  v9 = [v4 imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:v9 constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = v9;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForScalableImageComponent:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  v9 = [v4 imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:v9 constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = v9;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourcesForGalleryComponent:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 items];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(SXImageController *)self imageResourceForGalleryItem:*(*(&v13 + 1) + 8 * i)];
        [v5 addEntriesFromDictionary:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)imageResourceForGalleryItem:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  v9 = [v4 imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:v9 constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = v9;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForVideoComponent:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXImageController *)self sizeConstraintForComponent:v4];
  v6 = v5;
  v8 = v7;
  v9 = [v4 stillImageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:v9 constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = v9;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForAudioComponent:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXImageController *)self sizeConstraintForComponent:v4];
  v6 = v5;
  v8 = v7;
  v9 = [v4 stillImageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:v9 constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = v9;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForDataTableComponent:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = [MEMORY[0x1E695DF90] dictionary];
  v27 = v4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 data];
  v6 = [v5 recordsUsingSortDescriptors:0];

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
        v9 = [v27 data];
        v10 = [v9 descriptors];

        v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
                objc_enumerationMutation(v10);
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
                      [v26 setObject:v20 forKey:v19];
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

            v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
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

  return v26;
}

- (CGSize)sizeConstraintForComponent:(id)a3
{
  v4 = a3;
  v5 = [(SXImageController *)self documentController];
  v6 = [v4 layout];

  v7 = [v5 componentLayoutForIdentifier:v6];

  v8 = [(SXImageController *)self columnLayout];
  v9 = [v7 columnRange];
  [v8 widthForColumnRange:v9 ignoreMargin:v10 ignoreGutter:objc_msgSend(v7 ignoreViewportPadding:{"ignoreDocumentMargin"), objc_msgSend(v7, "ignoreDocumentGutter"), objc_msgSend(v7, "ignoreViewportPadding")}];
  v12 = v11;

  v13 = 1.79769313e308;
  v14 = v12;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)determineOptimalImagesForComponentStyles:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(SXImageController *)self imageResourcesForComponentStyle:v9];
        if (v10)
        {
          v11 = [(SXImageController *)self optimalImageResources];
          v12 = [v10 allValues];
          [v11 addObjectsFromArray:v12];

          v13 = [(SXImageController *)self optimalImageResourcesByID];
          [v13 addEntriesFromDictionary:v10];
        }

        v14 = [v9 conditional];
        v15 = [v14 NSArray];
        [(SXImageController *)self determineOptimalImagesForComponentStyles:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)imageResourcesForComponentStyle:(id)a3
{
  v4 = [a3 fill];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForImageFill:v4];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForVideoFill:v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SXImageController *)self imageResourceForRepeatableImageFill:v4];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)imageResourceForImageFill:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  v9 = [v4 imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:v9 constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = v9;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForRepeatableImageFill:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  v9 = [v4 imageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:v9 constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = v9;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForVideoFill:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXImageController *)self viewportSize];
  v6 = v5;
  v8 = v7;
  v9 = [v4 stillImageIdentifier];

  v10 = [(SXImageController *)self imageResourceForImageIdentifier:v9 constrainedToSize:v6, v8];
  v11 = v10;
  if (v10)
  {
    v14 = v9;
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)imageResourceForImageIdentifier:(id)a3 constrainedToSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(SXImageController *)self imageResourcesForImageIdentifier:v7];
  v41 = self;
  v9 = [(SXImageController *)self optimalImageResourcesByID];
  v10 = [v9 objectForKey:v7];

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

        v22 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v22 scale];
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
    v37 = [(SXImageController *)v41 taggedEquivalentOfImageResource:v10];
    v38 = v37;
    if (v37)
    {
      v39 = v37;

      v10 = v39;
    }
  }

  return v10;
}

- (id)allResourcesForImageIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = v4;
  v6 = [(SXImageController *)self imageResourcesForImageIdentifier:v4];
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
          [v5 addObject:v13];
        }

        else
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v5;
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

- (id)taggedEquivalentOfImageResource:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 imageIdentifier];
  v6 = [(SXImageController *)self Image2ResourcesForImageIdentifier:v5];

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
        [v4 dimensions];
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
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 bounds];
    v7 = CGRectGetHeight(v10);
    [v6 bounds];
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
  v2 = [(SXImageController *)self optimalImageResources];
  v3 = [v2 array];

  return v3;
}

- (id)imageResourceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXImageController *)self optimalImageResourcesByID];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)imageResourcesForImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXImageController *)self imageResourcesGroupedByImageIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)Image2ResourcesForImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXImageController *)self image2ResourcesGroupedByImageIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (NSDictionary)imageResourcesGroupedByImageIdentifier
{
  v27 = *MEMORY[0x1E69E9840];
  imageResourcesGroupedByImageIdentifier = self->_imageResourcesGroupedByImageIdentifier;
  if (!imageResourcesGroupedByImageIdentifier)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [(SXImageController *)self documentController];
    v6 = [v5 document];
    v7 = [v6 resources];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          v13 = [(SXImageController *)self documentController];
          v14 = [v13 document];
          v15 = [v14 resources];
          v16 = [v15 objectForKey:v12];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 imageIdentifier];
            if (v17)
            {
              v18 = [(NSDictionary *)v4 objectForKey:v17];
              if (!v18)
              {
                v18 = [MEMORY[0x1E695DF70] array];
              }

              [v18 addObject:v16];
              [(NSDictionary *)v4 setObject:v18 forKey:v17];
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
    self->_imageResourcesGroupedByImageIdentifier = v4;

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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [(SXImageController *)self documentController];
    v6 = [v5 document];
    v7 = [v6 resources];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          v13 = [(SXImageController *)self documentController];
          v14 = [v13 document];
          v15 = [v14 resources];
          v16 = [v15 objectForKey:v12];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 imageIdentifier];
            if (v17)
            {
              v18 = [(NSDictionary *)v4 objectForKey:v17];
              if (!v18)
              {
                v18 = [MEMORY[0x1E695DF70] array];
              }

              [v18 addObject:v16];
              [(NSDictionary *)v4 setObject:v18 forKey:v17];
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
    self->_image2ResourcesGroupedByImageIdentifier = v4;

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