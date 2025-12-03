@interface SXTraitDistanceComponentInsertionCondition
- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider;
- (SXTraitDistanceComponentInsertionCondition)initWithTrait:(unint64_t)trait otherTrait:(unint64_t)otherTrait distance:(_SXConvertibleValue)distance;
- (_SXConvertibleValue)distance;
- (void)insertedComponent:(id)component approximateLocation:(CGPoint)location;
- (void)inspectTraitAreasForComponents:(id)components layoutProvider:(id)provider DOMObjectProvider:(id)objectProvider;
- (void)prepareWithComponents:(id)components layoutProvider:(id)provider DOMObjectProvider:(id)objectProvider;
@end

@implementation SXTraitDistanceComponentInsertionCondition

- (SXTraitDistanceComponentInsertionCondition)initWithTrait:(unint64_t)trait otherTrait:(unint64_t)otherTrait distance:(_SXConvertibleValue)distance
{
  unit = distance.unit;
  value = distance.value;
  v10.receiver = self;
  v10.super_class = SXTraitDistanceComponentInsertionCondition;
  result = [(SXTraitDistanceComponentInsertionCondition *)&v10 init];
  if (result)
  {
    result->_componentTrait = trait;
    result->_otherComponentTrait = otherTrait;
    result->_distance.value = value;
    result->_distance.unit = unit;
  }

  return result;
}

- (void)prepareWithComponents:(id)components layoutProvider:(id)provider DOMObjectProvider:(id)objectProvider
{
  v8 = MEMORY[0x1E696AD50];
  objectProviderCopy = objectProvider;
  providerCopy = provider;
  componentsCopy = components;
  indexSet = [v8 indexSet];
  traitAreas = self->_traitAreas;
  self->_traitAreas = indexSet;

  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  otherTraitAreas = self->_otherTraitAreas;
  self->_otherTraitAreas = indexSet2;

  [(SXTraitDistanceComponentInsertionCondition *)self inspectTraitAreasForComponents:componentsCopy layoutProvider:providerCopy DOMObjectProvider:objectProviderCopy];
}

- (void)insertedComponent:(id)component approximateLocation:(CGPoint)location
{
  y = location.y;
  componentCopy = component;
  traits = [componentCopy traits];
  if (([(SXTraitDistanceComponentInsertionCondition *)self componentTrait]& traits) != 0)
  {
    traitAreas = [(SXTraitDistanceComponentInsertionCondition *)self traitAreas];
    [traitAreas addIndex:y];
  }

  traits2 = [componentCopy traits];
  if (([(SXTraitDistanceComponentInsertionCondition *)self otherComponentTrait]& traits2) != 0)
  {
    otherTraitAreas = [(SXTraitDistanceComponentInsertionCondition *)self otherTraitAreas];
    [otherTraitAreas addIndex:y];
  }
}

- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider
{
  markerCopy = marker;
  v9 = [provider unitConverterForMarker:markerCopy];
  distance = [(SXTraitDistanceComponentInsertionCondition *)self distance];
  [v9 convertValueToPoints:{distance, v11}];
  v13 = v12;
  [markerCopy approximateLocation];
  v15 = v14;

  v20 = 0;
  if ((-[SXTraitDistanceComponentInsertionCondition otherComponentTrait](self, "otherComponentTrait") & traits) == 0 || (-[SXTraitDistanceComponentInsertionCondition traitAreas](self, "traitAreas"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 intersectsIndexesInRange:{(v15 - v13), (v13 + v13)}], v16, (v17 & 1) == 0))
  {
    if ((-[SXTraitDistanceComponentInsertionCondition componentTrait](self, "componentTrait") & traits) == 0 || (-[SXTraitDistanceComponentInsertionCondition otherTraitAreas](self, "otherTraitAreas"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 intersectsIndexesInRange:{(v15 - v13), (v13 + v13)}], v18, (v19 & 1) == 0))
    {
      v20 = 1;
    }
  }

  return v20;
}

- (void)inspectTraitAreasForComponents:(id)components layoutProvider:(id)provider DOMObjectProvider:(id)objectProvider
{
  v47 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  providerCopy = provider;
  objectProviderCopy = objectProvider;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = componentsCopy;
  v11 = [componentsCopy countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v41 = *v43;
    do
    {
      v13 = 0;
      do
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v42 + 1) + 8 * v13);
        v15 = [[SXComponentTraitsProvider alloc] initWithDOMObjectProvider:objectProviderCopy];
        v16 = [(SXComponentTraitsProvider *)v15 traitsForComponent:v14];
        if (([(SXTraitDistanceComponentInsertionCondition *)self componentTrait]& v16) != 0)
        {
          [providerCopy frameForComponent:v14];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          traitAreas = [(SXTraitDistanceComponentInsertionCondition *)self traitAreas];
          v48.origin.x = v18;
          v48.origin.y = v20;
          v48.size.width = v22;
          v48.size.height = v24;
          MinY = CGRectGetMinY(v48);
          v49.origin.x = v18;
          v49.origin.y = v20;
          v49.size.width = v22;
          v49.size.height = v24;
          Height = CGRectGetHeight(v49);
          if (Height < 1.0)
          {
            Height = 1.0;
          }

          [traitAreas addIndexesInRange:{MinY, Height}];
        }

        if (([(SXTraitDistanceComponentInsertionCondition *)self otherComponentTrait]& v16) != 0)
        {
          [providerCopy frameForComponent:v14];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          otherTraitAreas = [(SXTraitDistanceComponentInsertionCondition *)self otherTraitAreas];
          v50.origin.x = v29;
          v50.origin.y = v31;
          v50.size.width = v33;
          v50.size.height = v35;
          v37 = CGRectGetMinY(v50);
          v51.origin.x = v29;
          v51.origin.y = v31;
          v51.size.width = v33;
          v51.size.height = v35;
          v38 = CGRectGetHeight(v51);
          if (v38 < 1.0)
          {
            v38 = 1.0;
          }

          [otherTraitAreas addIndexesInRange:{v37, v38}];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          components = [v14 components];
          [(SXTraitDistanceComponentInsertionCondition *)self inspectTraitAreasForComponents:components layoutProvider:providerCopy DOMObjectProvider:objectProviderCopy];
        }

        ++v13;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v12);
  }
}

- (_SXConvertibleValue)distance
{
  unit = self->_distance.unit;
  value = self->_distance.value;
  result.unit = unit;
  result.value = value;
  return result;
}

@end