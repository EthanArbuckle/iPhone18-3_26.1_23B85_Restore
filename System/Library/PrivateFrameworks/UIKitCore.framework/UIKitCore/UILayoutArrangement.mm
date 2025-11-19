@interface UILayoutArrangement
@end

@implementation UILayoutArrangement

id __69___UILayoutArrangement__updateCanvasConnectionConstraintsIfNecessary__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v7;
  v10 = [*(a1 + 32) _layoutRelationForCanvasConnectionForAttribute:a3];
  if ([v9 firstAttribute] != a3)
  {
    goto LABEL_6;
  }

  v11 = [v9 firstItem];
  if (v11 != *(a1 + 40))
  {
    goto LABEL_5;
  }

  v12 = [v9 secondItem];
  v13 = v12;
  if (v12 != v8)
  {

LABEL_5:
LABEL_6:
    [v9 setActive:0];
    v14 = [MEMORY[0x1E69977A0] constraintWithItem:*(a1 + 40) attribute:a3 relatedBy:v10 toItem:v8 attribute:a3];

    [v14 setIdentifier:@"UISV-canvas-connection"];
LABEL_7:
    [v14 setActive:1];
    goto LABEL_8;
  }

  v16 = [v9 relation];

  if (v16 != v10)
  {
    goto LABEL_6;
  }

  v14 = v9;
  if (([v9 isActive] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v14;
}

void __72___UILayoutArrangement__updateSpanningLayoutGuideConstraintsIfNecessary__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69977A0] constraintWithItem:*(*(a1 + 32) + 88) attribute:objc_msgSend(*(a1 + 32) relatedBy:"_dimensionAttributeForCurrentAxis") constant:{0, 0.0}];
  [*(a1 + 32) _spanningLayoutGuideFittingPriority];
  [v2 setPriority:?];
  [v2 setIdentifier:@"UISV-spanning-fit"];
  [*(a1 + 40) addObject:v2];
}

void __72___UILayoutArrangement__updateSpanningLayoutGuideConstraintsIfNecessary__block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v11 = a2;
  if (*(*(a1 + 32) + 112))
  {
    v5 = 5;
  }

  else
  {
    v5 = 3;
  }

  if ((a3 & 1) == 0)
  {
    v5 = _UILAFacingAttributeOfAttribute(v5);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v11;
  }

  else
  {
    v6 = [v11 _viewOrGuideForLocationAttribute:v5];
  }

  v7 = v6;
  v8 = (*(*(a1 + 48) + 16))();
  v9 = [MEMORY[0x1E69977A0] constraintWithItem:*(*(a1 + 32) + 88) attribute:v5 relatedBy:v8 toItem:v7 attribute:v5];
  [v9 setIdentifier:@"UISV-spanning-boundary"];
  LODWORD(v10) = 1148846080;
  if (!v8)
  {
    *&v10 = 999.5;
  }

  [v9 setPriority:v10];
  [*(a1 + 40) addObject:v9];
}

uint64_t __72___UILayoutArrangement__updateSpanningLayoutGuideConstraintsIfNecessary__block_invoke(uint64_t a1, int a2, int a3)
{
  v3 = -1;
  if (!a2)
  {
    v3 = 1;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t __56___UILayoutArrangement__hasBaselineChangedNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __56___UILayoutArrangement__hasBaselineChangedNotification___block_invoke_2;
  v15 = &unk_1E71292A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = v4;
  v17 = v5;
  v6 = v3;
  v7 = v6;
  v18 = v6;
  if (v6)
  {
    v6 = [objc_msgSend(v6 "firstItem")];
  }

  v8 = v6;
  if ((v14)(v13, v8, 0))
  {
    v9 = 1;
  }

  else
  {
    v9 = 1;
    if (((v14)(v13, v8, 1) & 1) == 0)
    {
      if (v7)
      {
        v10 = [objc_msgSend(v7 "secondItem")];
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      if (((v14)(v13, v11, 0) & 1) == 0)
      {
        v9 = (v14)(v13, v11, 1);
      }
    }
  }

  return v9;
}

BOOL __56___UILayoutArrangement__hasBaselineChangedNotification___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = 12;
  }

  else
  {
    v4 = 11;
  }

  v5 = [a2 _viewForLoweringBaselineLayoutAttribute:v4];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    [*(a1 + 40) _invalidateBaselineConstraint:*(a1 + 48)];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56___UILayoutArrangement__hasBaselineChangedNotification___block_invoke_3;
    v9[3] = &unk_1E7129278;
    v7 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v7 _trackChangesWithConfigBlock:v9];
  }

  return v5 == v6;
}

uint64_t __105___UILayoutArrangement__respondToChangesWithIncomingItem_outgoingItem_newlyHiddenItem_newlyUnhiddenItem___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _pendingHiddenCount];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 setHidden:1];
  }

  return result;
}

@end