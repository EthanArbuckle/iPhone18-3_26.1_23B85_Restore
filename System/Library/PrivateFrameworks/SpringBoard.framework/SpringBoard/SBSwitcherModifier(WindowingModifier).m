@interface SBSwitcherModifier(WindowingModifier)
@end

@implementation SBSwitcherModifier(WindowingModifier)

- (uint64_t)cornersForItem:()WindowingModifier .cold.1(void *a1, void *a2, uint64_t a3)
{
  v5 = [(SBSwitcherModifier *)a1 _indexOfAppLayout:a2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v7 = v5;
  [a1 cornerRadiiForIndex:v5];
  SBWindowingItemCornersMake([a1 maskedCornersForIndex:v7], a3, v8, v9, v10, v11);
  return 0;
}

- (uint64_t)shadowForItem:()WindowingModifier .cold.1(void *a1, void *a2, void *a3)
{
  if ([(SBSwitcherModifier *)a1 _indexOfAppLayout:a2]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  [OUTLINED_FUNCTION_0_41() shadowOpacityForLayoutRole:? atIndex:?];
  [OUTLINED_FUNCTION_0_41() shadowStyleForLayoutRole:? inAppLayout:?];
  SBWindowingItemShadowMake();
  v6 = v5;
  result = 0;
  *a3 = v6;
  a3[1] = v7;
  return result;
}

- (uint64_t)titleStyleForItem:()WindowingModifier .cold.1(void *a1, void *a2, uint64_t a3)
{
  if ([(SBSwitcherModifier *)a1 _indexOfAppLayout:a2]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  [OUTLINED_FUNCTION_0_41() titleOpacityForIndex:?];
  v8 = v7;
  [OUTLINED_FUNCTION_0_41() iconOpacityForIndex:?];
  v10 = v9;
  [OUTLINED_FUNCTION_0_41() titleAndIconOpacityForIndex:?];
  v12 = v11;
  v13 = [OUTLINED_FUNCTION_0_41() headerStyleForIndex:?];
  SBWindowingItemTitleStyleMake(v13, [a1 footerViewIconAlignmentForAppLayout:a2], a3, v12, v8, v10);
  return 0;
}

- (uint64_t)opacityForItem:()WindowingModifier .cold.1(void *a1, void *a2, void *a3)
{
  v6 = [a1 appLayoutContainingAppLayout:a2];
  v7 = [OUTLINED_FUNCTION_0_41() appLayoutContainingAppLayout:?];
  v8 = [(SBSwitcherModifier *)a1 _indexOfAppLayout:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 1;
  }

  else
  {
    v10 = [a2 itemForLayoutRole:1];
    [a1 opacityForLayoutRole:objc_msgSend(v6 inAppLayout:"layoutRoleForItem:" atIndex:{v10), v6, v8}];
    *a3 = v11;

    v9 = 0;
  }

  return v9;
}

@end