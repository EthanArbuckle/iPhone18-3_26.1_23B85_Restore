@interface SXComponentInsertionLayoutProvider
- (CGRect)frameForComponent:(id)component;
- (CGSize)documentSize;
- (CGSize)viewportSize;
- (SXColumnLayout)columnLayout;
- (SXComponentInsertionLayoutProvider)initWithBlueprint:(id)blueprint DOMObjectProvider:(id)provider unitConverterFactory:(id)factory;
- (id)layoutBlueprintForMarker:(id)marker;
- (id)suggestedMarginForMarker:(id)marker;
- (id)unitConverterForMarker:(id)marker;
@end

@implementation SXComponentInsertionLayoutProvider

- (SXComponentInsertionLayoutProvider)initWithBlueprint:(id)blueprint DOMObjectProvider:(id)provider unitConverterFactory:(id)factory
{
  blueprintCopy = blueprint;
  providerCopy = provider;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = SXComponentInsertionLayoutProvider;
  v12 = [(SXComponentInsertionLayoutProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layoutBlueprint, blueprint);
    objc_storeStrong(&v13->_DOMObjectProvider, provider);
    objc_storeStrong(&v13->_unitConverterFactory, factory);
  }

  return v13;
}

- (CGSize)viewportSize
{
  layoutBlueprint = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  layoutOptions = [layoutBlueprint layoutOptions];
  [layoutOptions viewportSize];
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
  layoutBlueprint = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  [layoutBlueprint blueprintSize];
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
  layoutBlueprint = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  layoutOptions = [layoutBlueprint layoutOptions];
  columnLayout = [layoutOptions columnLayout];

  return columnLayout;
}

- (CGRect)frameForComponent:(id)component
{
  componentCopy = component;
  layoutBlueprint = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  identifier = [componentCopy identifier];

  v7 = [layoutBlueprint componentBlueprintForComponentIdentifier:identifier includeChildren:1];
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

- (id)suggestedMarginForMarker:(id)marker
{
  v47 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  v5 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprintForMarker:markerCopy];
  componentAnchor = [markerCopy componentAnchor];

  if (!componentAnchor)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    componentIdentifiers = [v5 componentIdentifiers];
    v11 = [componentIdentifiers countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (!v11)
    {
      v8 = 0;
      v9 = 0;
      v29 = 0;
      goto LABEL_20;
    }

    selfCopy = self;
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
          objc_enumerationMutation(componentIdentifiers);
        }

        v16 = [v5 componentBlueprintForComponentIdentifier:*(*(&v42 + 1) + 8 * i)];
        [markerCopy approximateLocation];
        v18 = v17;
        [v16 absoluteFrame];
        v19 = v18 - CGRectGetMaxY(v48);
        if (v19 < v14 && v19 >= 0.0)
        {
          component = [v16 component];

          v9 = component;
          v14 = v19;
        }

        [v16 absoluteFrame];
        MinY = CGRectGetMinY(v49);
        [markerCopy approximateLocation];
        v23 = MinY - v22;
        if (v23 < v13 && v23 >= 0.0)
        {
          component2 = [v16 component];

          v8 = component2;
          v13 = v23;
        }
      }

      v11 = [componentIdentifiers countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v11);

    if (v9)
    {
      v25 = selfCopy;
      dOMObjectProvider = [(SXComponentInsertionLayoutProvider *)selfCopy DOMObjectProvider];
      layout = [v9 layout];
      v11 = [dOMObjectProvider componentLayoutForIdentifier:layout];

      if (v8)
      {
LABEL_18:
        componentIdentifiers = [(SXComponentInsertionLayoutProvider *)v25 DOMObjectProvider];
        layout2 = [v8 layout];
        v29 = [componentIdentifiers componentLayoutForIdentifier:layout2];

LABEL_20:
LABEL_23:
        v41 = v11;
        v30 = [SXInsertEdgeSpacing alloc];
        margin = [v29 margin];
        v32 = [margin top];
        v34 = v33;
        margin2 = [v11 margin];
        bottom = [margin2 bottom];
        v7 = [(SXInsertEdgeSpacing *)v30 initWithTop:v32 bottom:v34, bottom, v37];

        goto LABEL_24;
      }
    }

    else
    {
      v11 = 0;
      v25 = selfCopy;
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

- (id)unitConverterForMarker:(id)marker
{
  v4 = [(SXComponentInsertionLayoutProvider *)self layoutBlueprintForMarker:marker];
  unitConverterFactory = [(SXComponentInsertionLayoutProvider *)self unitConverterFactory];
  [v4 blueprintSize];
  v7 = v6;
  layoutBlueprint = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  layoutOptions = [layoutBlueprint layoutOptions];
  v10 = [unitConverterFactory createUnitConverterWithComponentWidth:layoutOptions parentWidth:0.0 layoutOptions:v7];

  return v10;
}

- (id)layoutBlueprintForMarker:(id)marker
{
  v20 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  layoutBlueprint = [(SXComponentInsertionLayoutProvider *)self layoutBlueprint];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  path = [markerCopy path];
  v7 = [path countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = layoutBlueprint;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(path);
        }

        identifier = [*(*(&v15 + 1) + 8 * v10) identifier];
        v13 = [v11 componentBlueprintForComponentIdentifier:identifier];

        layoutBlueprint = [v13 layoutBlueprint];

        ++v10;
        v11 = layoutBlueprint;
      }

      while (v8 != v10);
      v8 = [path countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return layoutBlueprint;
}

@end