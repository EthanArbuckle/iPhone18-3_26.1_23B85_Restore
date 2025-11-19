@interface SXNeighbouringComponentsPlacementCondition
- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5;
@end

@implementation SXNeighbouringComponentsPlacementCondition

- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5
{
  v5 = a3;
  v6 = [v5 leadingComponent];
  if ([v6 role] == 3)
  {

LABEL_4:
    v9 = [v5 leadingComponent];
    v10 = [v9 classification];
    v11 = [v5 trailingComponent];
    v12 = [v11 classification];
    v13 = [v10 hasAffiliationWithClassification:v12 forDirection:1];

    v14 = [v5 trailingComponent];
    v15 = [v14 classification];
    v16 = [v5 leadingComponent];
    v17 = [v16 classification];
    v18 = [v15 hasAffiliationWithClassification:v17 forDirection:0];

    v19 = (v13 | v18) ^ 1;
    goto LABEL_5;
  }

  v7 = [v5 trailingComponent];
  v8 = [v7 role];

  if (v8 == 3)
  {
    goto LABEL_4;
  }

  v21 = [v5 leadingComponent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v5 trailingComponent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = 1;
      goto LABEL_5;
    }
  }

  else
  {
  }

  v24 = [v5 leadingComponent];
  if (v24)
  {
    v25 = [v5 trailingComponent];
    if (v25)
    {
      v19 = 0;
    }

    else
    {
      v26 = [v5 path];
      v19 = [v26 count] == 0;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_5:
  return v19 & 1;
}

@end