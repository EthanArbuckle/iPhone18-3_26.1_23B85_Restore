@interface SXPastBodyComponentInsertionCondition
- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider;
- (CGPoint)firstBodyComponentThreshold;
- (id)findFirstBodyComponentInComponents:(id)components;
- (void)prepareWithComponents:(id)components layoutProvider:(id)provider DOMObjectProvider:(id)objectProvider;
@end

@implementation SXPastBodyComponentInsertionCondition

- (void)prepareWithComponents:(id)components layoutProvider:(id)provider DOMObjectProvider:(id)objectProvider
{
  providerCopy = provider;
  v7 = [(SXPastBodyComponentInsertionCondition *)self findFirstBodyComponentInComponents:components];
  if (v7)
  {
    [providerCopy frameForComponent:v7];
    [(SXPastBodyComponentInsertionCondition *)self setFirstBodyComponentThreshold:0.0, CGRectGetMaxY(v10)];
    [(SXPastBodyComponentInsertionCondition *)self setFirstBodyComponent:v7];
  }
}

- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider
{
  markerCopy = marker;
  [markerCopy approximateLocation];
  v8 = v7;
  [(SXPastBodyComponentInsertionCondition *)self firstBodyComponentThreshold];
  if (v8 >= v9)
  {
    v14 = 1;
  }

  else
  {
    componentAnchor = [markerCopy componentAnchor];
    targetComponentIdentifier = [componentAnchor targetComponentIdentifier];
    firstBodyComponent = [(SXPastBodyComponentInsertionCondition *)self firstBodyComponent];
    identifier = [firstBodyComponent identifier];
    v14 = [targetComponentIdentifier isEqualToString:identifier];
  }

  return v14;
}

- (id)findFirstBodyComponentInComponents:(id)components
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  componentsCopy = components;
  v4 = [componentsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(componentsCopy);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      if ([v8 role] == 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v8;
        components = [v12 components];
        nSArray = [components NSArray];
        v9 = [(SXPastBodyComponentInsertionCondition *)self findFirstBodyComponentInComponents:nSArray];

        if (v9)
        {

          goto LABEL_17;
        }

        goto LABEL_12;
      }

LABEL_13:
      if (v5 == ++v7)
      {
        v5 = [componentsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v9 = v8;
    text = [v9 text];
    v11 = [text length];

    if (v11 >= 0x65)
    {
      goto LABEL_17;
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
  v9 = 0;
LABEL_17:

  return v9;
}

- (CGPoint)firstBodyComponentThreshold
{
  x = self->_firstBodyComponentThreshold.x;
  y = self->_firstBodyComponentThreshold.y;
  result.y = y;
  result.x = x;
  return result;
}

@end