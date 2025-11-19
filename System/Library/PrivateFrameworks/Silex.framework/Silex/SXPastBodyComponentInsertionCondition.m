@interface SXPastBodyComponentInsertionCondition
- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5;
- (CGPoint)firstBodyComponentThreshold;
- (id)findFirstBodyComponentInComponents:(id)a3;
- (void)prepareWithComponents:(id)a3 layoutProvider:(id)a4 DOMObjectProvider:(id)a5;
@end

@implementation SXPastBodyComponentInsertionCondition

- (void)prepareWithComponents:(id)a3 layoutProvider:(id)a4 DOMObjectProvider:(id)a5
{
  v8 = a4;
  v7 = [(SXPastBodyComponentInsertionCondition *)self findFirstBodyComponentInComponents:a3];
  if (v7)
  {
    [v8 frameForComponent:v7];
    [(SXPastBodyComponentInsertionCondition *)self setFirstBodyComponentThreshold:0.0, CGRectGetMaxY(v10)];
    [(SXPastBodyComponentInsertionCondition *)self setFirstBodyComponent:v7];
  }
}

- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5
{
  v6 = a3;
  [v6 approximateLocation];
  v8 = v7;
  [(SXPastBodyComponentInsertionCondition *)self firstBodyComponentThreshold];
  if (v8 >= v9)
  {
    v14 = 1;
  }

  else
  {
    v10 = [v6 componentAnchor];
    v11 = [v10 targetComponentIdentifier];
    v12 = [(SXPastBodyComponentInsertionCondition *)self firstBodyComponent];
    v13 = [v12 identifier];
    v14 = [v11 isEqualToString:v13];
  }

  return v14;
}

- (id)findFirstBodyComponentInComponents:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v3);
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
        v13 = [v12 components];
        v14 = [v13 NSArray];
        v9 = [(SXPastBodyComponentInsertionCondition *)self findFirstBodyComponentInComponents:v14];

        if (v9)
        {

          goto LABEL_17;
        }

        goto LABEL_12;
      }

LABEL_13:
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v9 = v8;
    v10 = [v9 text];
    v11 = [v10 length];

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