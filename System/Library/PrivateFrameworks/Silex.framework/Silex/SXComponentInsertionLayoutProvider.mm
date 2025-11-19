@interface SXComponentInsertionLayoutProvider
- (CGRect)frameForComponent:(id)a3;
- (CGSize)documentSize;
- (CGSize)viewportSize;
- (SXColumnLayout)columnLayout;
- (SXComponentInsertionLayoutProvider)initWithBlueprint:(id)a3 DOMObjectProvider:(id)a4 unitConverterFactory:(id)a5;
- (id)layoutBlueprintForMarker:(id)a3;
- (id)suggestedMarginForMarker:(id)a3;
- (id)unitConverterForMarker:(id)a3;
@end

@implementation SXComponentInsertionLayoutProvider

- (SXComponentInsertionLayoutProvider)initWithBlueprint:(id)a3 DOMObjectProvider:(id)a4 unitConverterFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXComponentInsertionLayoutProvider;
  v12 = [(SXComponentInsertionLayoutProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layoutBlueprint, a3);
    objc_storeStrong(&v13->_DOMObjectProvider, a4);
    objc_storeStrong(&v13->_unitConverterFactory, a5);
  }

  return v13;
}

- (CGSize)viewportSize
{
  v2 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  v3 = [v2 layoutOptions];
  [v3 viewportSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)documentSize
{
  v2 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  [v2 blueprintSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (SXColumnLayout)columnLayout
{
  v2 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  v3 = [v2 layoutOptions];
  v4 = [v3 columnLayout];

  return v4;
}

- (CGRect)frameForComponent:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  v6 = [v4 identifier];

  v7 = [v5 componentBlueprintForComponentIdentifier:v6 includeChildren:1];
  [v7 absoluteFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)suggestedMarginForMarker:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprintForMarker:v4];
  v6 = [v4 componentAnchor];

  if (!v6)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = [v5 componentIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (!v11)
    {
      v8 = 0;
      v9 = 0;
      v29 = 0;
      goto LABEL_20;
    }

    v40 = self;
    v8 = 0;
    v9 = 0;
    v12 = *v43;
    v13 = 1.79769313e308;
    v14 = 1.79769313e308;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [v5 componentBlueprintForComponentIdentifier:*(*(&v42 + 1) + 8 * i)];
        [v4 approximateLocation];
        v18 = v17;
        [v16 absoluteFrame];
        v19 = v18 - CGRectGetMaxY(v48);
        if (v19 < v14 && v19 >= 0.0)
        {
          v20 = [v16 component];

          v9 = v20;
          v14 = v19;
        }

        [v16 absoluteFrame];
        MinY = CGRectGetMinY(v49);
        [v4 approximateLocation];
        v23 = MinY - v22;
        if (v23 < v13 && v23 >= 0.0)
        {
          v24 = [v16 component];

          v8 = v24;
          v13 = v23;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v11);

    if (v9)
    {
      v25 = v40;
      v26 = [(SXComponentInsertionLayoutProvider *)v40 DOMObjectProvider];
      v27 = [v9 layout];
      v11 = [v26 componentLayoutForIdentifier:v27];

      if (v8)
      {
LABEL_18:
        v10 = [(SXComponentInsertionLayoutProvider *)v25 DOMObjectProvider];
        v28 = [v8 layout];
        v29 = [v10 componentLayoutForIdentifier:v28];

LABEL_20:
LABEL_23:
        v41 = v11;
        v30 = [SXInsertEdgeSpacing alloc];
        v31 = [v29 margin];
        v32 = [v31 top];
        v34 = v33;
        v35 = [v11 margin];
        v36 = [v35 bottom];
        v7 = [(SXInsertEdgeSpacing *)v30 initWithTop:v32 bottom:v34, v36, v37];

        goto LABEL_24;
      }
    }

    else
    {
      v11 = 0;
      v25 = v40;
      if (v8)
      {
        goto LABEL_18;
      }
    }

    v29 = 0;
    goto LABEL_23;
  }

  v7 = [[SXInsertEdgeSpacing alloc] initWithTop:1 bottom:0, 1];
  v8 = 0;
  v9 = 0;
LABEL_24:
  v38 = v7;

  return v7;
}

- (id)unitConverterForMarker:(id)a3
{
  v4 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprintForMarker:a3];
  v5 = [(SXComponentInsertionLayoutProvider *)self unitConverterFactory];
  [v4 blueprintSize];
  v7 = v6;
  v8 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  v9 = [v8 layoutOptions];
  v10 = [v5 createUnitConverterWithComponentWidth:v9 parentWidth:0.0 layoutOptions:v7];

  return v10;
}

- (id)layoutBlueprintForMarker:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 path];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v15 + 1) + 8 * v10) identifier];
        v13 = [v11 componentBlueprintForComponentIdentifier:v12];

        v5 = [v13 layoutBlueprint];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end