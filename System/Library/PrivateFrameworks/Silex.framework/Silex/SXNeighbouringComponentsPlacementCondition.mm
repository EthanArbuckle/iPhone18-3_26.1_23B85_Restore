@interface SXNeighbouringComponentsPlacementCondition
- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider;
@end

@implementation SXNeighbouringComponentsPlacementCondition

- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider
{
  markerCopy = marker;
  leadingComponent = [markerCopy leadingComponent];
  if ([leadingComponent role] == 3)
  {

LABEL_4:
    leadingComponent2 = [markerCopy leadingComponent];
    classification = [leadingComponent2 classification];
    trailingComponent = [markerCopy trailingComponent];
    classification2 = [trailingComponent classification];
    v13 = [classification hasAffiliationWithClassification:classification2 forDirection:1];

    trailingComponent2 = [markerCopy trailingComponent];
    classification3 = [trailingComponent2 classification];
    leadingComponent3 = [markerCopy leadingComponent];
    classification4 = [leadingComponent3 classification];
    v18 = [classification3 hasAffiliationWithClassification:classification4 forDirection:0];

    v19 = (v13 | v18) ^ 1;
    goto LABEL_5;
  }

  trailingComponent3 = [markerCopy trailingComponent];
  role = [trailingComponent3 role];

  if (role == 3)
  {
    goto LABEL_4;
  }

  leadingComponent4 = [markerCopy leadingComponent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    trailingComponent4 = [markerCopy trailingComponent];
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

  leadingComponent5 = [markerCopy leadingComponent];
  if (leadingComponent5)
  {
    trailingComponent5 = [markerCopy trailingComponent];
    if (trailingComponent5)
    {
      v19 = 0;
    }

    else
    {
      path = [markerCopy path];
      v19 = [path count] == 0;
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