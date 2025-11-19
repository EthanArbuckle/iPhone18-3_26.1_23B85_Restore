@interface SXTransitionDataSourceProvider
- (SXTransitionDataSourceProvider)initWithComponentController:(id)a3 scrollView:(id)a4 documentMetadataProvider:(id)a5;
- (id)transitionDataSourceForType:(unint64_t)a3;
@end

@implementation SXTransitionDataSourceProvider

- (SXTransitionDataSourceProvider)initWithComponentController:(id)a3 scrollView:(id)a4 documentMetadataProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXTransitionDataSourceProvider;
  v12 = [(SXTransitionDataSourceProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_componentController, a3);
    objc_storeStrong(&v13->_scrollView, a4);
    objc_storeStrong(&v13->_documentMetadataProvider, a5);
  }

  return v13;
}

- (id)transitionDataSourceForType:(unint64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(SXTransitionDataSourceProvider *)self currentNode];
  if (!v5 || (v6 = v5, -[SXTransitionDataSourceProvider currentNode](self, "currentNode"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 transitionType], v7, v6, v8 != a3))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [(SXTransitionDataSourceProvider *)self componentController];
    v10 = [v9 flattenedComponentViews];

    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v26 = a3;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          if ([v14 transitionViewIsVisible])
          {
            if ([v14 isTransitionable])
            {
              v15 = [(SXTransitionDataSourceProvider *)self documentMetadataProvider];
              v16 = [v15 metadata];
              v17 = [v16 thumbnailImageIdentifier];
              v18 = [v14 usesThumbnailWithImageIdentifier:v17];

              if (v18)
              {
                v11 = v14;
                v19 = [(SXTransitionDataSourceProvider *)self scrollView];

                v20 = v11;
                a3 = v26;
                if (v11)
                {
                  v20 = v11;
                  if (v11 != v19)
                  {
                    v21 = v11;
                    do
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v21 prepareForTransitionType:v26];
                      }

                      v20 = [v21 superview];

                      v22 = [(SXTransitionDataSourceProvider *)self scrollView];

                      if (!v20)
                      {
                        break;
                      }

                      v21 = v20;
                    }

                    while (v20 != v22);
                  }
                }

                goto LABEL_22;
              }
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      a3 = v26;
    }

LABEL_22:

    v23 = [[SXTransitionDataSourceNode alloc] initWithComponentView:v11 transitionType:a3 usesThumbnail:v11 != 0];
    [(SXTransitionDataSourceProvider *)self setCurrentNode:v23];
  }

  v24 = [(SXTransitionDataSourceProvider *)self currentNode];

  return v24;
}

@end