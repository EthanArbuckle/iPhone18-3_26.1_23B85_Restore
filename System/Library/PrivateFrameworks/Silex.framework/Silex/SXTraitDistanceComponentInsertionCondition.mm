@interface SXTraitDistanceComponentInsertionCondition
- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5;
- (SXTraitDistanceComponentInsertionCondition)initWithTrait:(unint64_t)a3 otherTrait:(unint64_t)a4 distance:(_SXConvertibleValue)a5;
- (_SXConvertibleValue)distance;
- (void)insertedComponent:(id)a3 approximateLocation:(CGPoint)a4;
- (void)inspectTraitAreasForComponents:(id)a3 layoutProvider:(id)a4 DOMObjectProvider:(id)a5;
- (void)prepareWithComponents:(id)a3 layoutProvider:(id)a4 DOMObjectProvider:(id)a5;
@end

@implementation SXTraitDistanceComponentInsertionCondition

- (SXTraitDistanceComponentInsertionCondition)initWithTrait:(unint64_t)a3 otherTrait:(unint64_t)a4 distance:(_SXConvertibleValue)a5
{
  unit = a5.unit;
  value = a5.value;
  v10.receiver = self;
  v10.super_class = SXTraitDistanceComponentInsertionCondition;
  result = [(SXTraitDistanceComponentInsertionCondition *)&v10 init];
  if (result)
  {
    result->_componentTrait = a3;
    result->_otherComponentTrait = a4;
    result->_distance.value = value;
    result->_distance.unit = unit;
  }

  return result;
}

- (void)prepareWithComponents:(id)a3 layoutProvider:(id)a4 DOMObjectProvider:(id)a5
{
  v8 = MEMORY[0x1E696AD50];
  v9 = a5;
  v10 = a4;
  v15 = a3;
  v11 = [v8 indexSet];
  traitAreas = self->_traitAreas;
  self->_traitAreas = v11;

  v13 = [MEMORY[0x1E696AD50] indexSet];
  otherTraitAreas = self->_otherTraitAreas;
  self->_otherTraitAreas = v13;

  [(SXTraitDistanceComponentInsertionCondition *)self inspectTraitAreasForComponents:v15 layoutProvider:v10 DOMObjectProvider:v9];
}

- (void)insertedComponent:(id)a3 approximateLocation:(CGPoint)a4
{
  y = a4.y;
  v10 = a3;
  v6 = [v10 traits];
  if (([(SXTraitDistanceComponentInsertionCondition *)self componentTrait]& v6) != 0)
  {
    v7 = [(SXTraitDistanceComponentInsertionCondition *)self traitAreas];
    [v7 addIndex:y];
  }

  v8 = [v10 traits];
  if (([(SXTraitDistanceComponentInsertionCondition *)self otherComponentTrait]& v8) != 0)
  {
    v9 = [(SXTraitDistanceComponentInsertionCondition *)self otherTraitAreas];
    [v9 addIndex:y];
  }
}

- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5
{
  v8 = a3;
  v9 = [a5 unitConverterForMarker:v8];
  v10 = [(SXTraitDistanceComponentInsertionCondition *)self distance];
  [v9 convertValueToPoints:{v10, v11}];
  v13 = v12;
  [v8 approximateLocation];
  v15 = v14;

  v20 = 0;
  if ((-[SXTraitDistanceComponentInsertionCondition otherComponentTrait](self, "otherComponentTrait") & a4) == 0 || (-[SXTraitDistanceComponentInsertionCondition traitAreas](self, "traitAreas"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 intersectsIndexesInRange:{(v15 - v13), (v13 + v13)}], v16, (v17 & 1) == 0))
  {
    if ((-[SXTraitDistanceComponentInsertionCondition componentTrait](self, "componentTrait") & a4) == 0 || (-[SXTraitDistanceComponentInsertionCondition otherTraitAreas](self, "otherTraitAreas"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 intersectsIndexesInRange:{(v15 - v13), (v13 + v13)}], v18, (v19 & 1) == 0))
    {
      v20 = 1;
    }
  }

  return v20;
}

- (void)inspectTraitAreasForComponents:(id)a3 layoutProvider:(id)a4 DOMObjectProvider:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v8;
  v11 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
        v15 = [[SXComponentTraitsProvider alloc] initWithDOMObjectProvider:v10];
        v16 = [(SXComponentTraitsProvider *)v15 traitsForComponent:v14];
        if (([(SXTraitDistanceComponentInsertionCondition *)self componentTrait]& v16) != 0)
        {
          [v9 frameForComponent:v14];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v25 = [(SXTraitDistanceComponentInsertionCondition *)self traitAreas];
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

          [v25 addIndexesInRange:{MinY, Height}];
        }

        if (([(SXTraitDistanceComponentInsertionCondition *)self otherComponentTrait]& v16) != 0)
        {
          [v9 frameForComponent:v14];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v36 = [(SXTraitDistanceComponentInsertionCondition *)self otherTraitAreas];
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

          [v36 addIndexesInRange:{v37, v38}];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = [v14 components];
          [(SXTraitDistanceComponentInsertionCondition *)self inspectTraitAreasForComponents:v39 layoutProvider:v9 DOMObjectProvider:v10];
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