@interface SXTransitionDataSourceProvider
- (SXTransitionDataSourceProvider)initWithComponentController:(id)controller scrollView:(id)view documentMetadataProvider:(id)provider;
- (id)transitionDataSourceForType:(unint64_t)type;
@end

@implementation SXTransitionDataSourceProvider

- (SXTransitionDataSourceProvider)initWithComponentController:(id)controller scrollView:(id)view documentMetadataProvider:(id)provider
{
  controllerCopy = controller;
  viewCopy = view;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = SXTransitionDataSourceProvider;
  v12 = [(SXTransitionDataSourceProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_componentController, controller);
    objc_storeStrong(&v13->_scrollView, view);
    objc_storeStrong(&v13->_documentMetadataProvider, provider);
  }

  return v13;
}

- (id)transitionDataSourceForType:(unint64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  currentNode = [(SXTransitionDataSourceProvider *)self currentNode];
  if (!currentNode || (v6 = currentNode, -[SXTransitionDataSourceProvider currentNode](self, "currentNode"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 transitionType], v7, v6, v8 != type))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    componentController = [(SXTransitionDataSourceProvider *)self componentController];
    flattenedComponentViews = [componentController flattenedComponentViews];

    v11 = [flattenedComponentViews countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      typeCopy = type;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(flattenedComponentViews);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          if ([v14 transitionViewIsVisible])
          {
            if ([v14 isTransitionable])
            {
              documentMetadataProvider = [(SXTransitionDataSourceProvider *)self documentMetadataProvider];
              metadata = [documentMetadataProvider metadata];
              thumbnailImageIdentifier = [metadata thumbnailImageIdentifier];
              v18 = [v14 usesThumbnailWithImageIdentifier:thumbnailImageIdentifier];

              if (v18)
              {
                v11 = v14;
                scrollView = [(SXTransitionDataSourceProvider *)self scrollView];

                superview = v11;
                type = typeCopy;
                if (v11)
                {
                  superview = v11;
                  if (v11 != scrollView)
                  {
                    v21 = v11;
                    do
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v21 prepareForTransitionType:typeCopy];
                      }

                      superview = [v21 superview];

                      scrollView2 = [(SXTransitionDataSourceProvider *)self scrollView];

                      if (!superview)
                      {
                        break;
                      }

                      v21 = superview;
                    }

                    while (superview != scrollView2);
                  }
                }

                goto LABEL_22;
              }
            }
          }
        }

        v11 = [flattenedComponentViews countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      type = typeCopy;
    }

LABEL_22:

    v23 = [[SXTransitionDataSourceNode alloc] initWithComponentView:v11 transitionType:type usesThumbnail:v11 != 0];
    [(SXTransitionDataSourceProvider *)self setCurrentNode:v23];
  }

  currentNode2 = [(SXTransitionDataSourceProvider *)self currentNode];

  return currentNode2;
}

@end