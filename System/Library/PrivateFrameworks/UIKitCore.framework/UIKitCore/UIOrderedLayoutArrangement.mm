@interface UIOrderedLayoutArrangement
@end

@implementation UIOrderedLayoutArrangement

id __50___UIOrderedLayoutArrangement_insertItem_atIndex___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = _UIOrderedLayoutArrangement;
  return objc_msgSendSuper2(&v4, sel_insertItem_atIndex_, v1, v2);
}

id __42___UIOrderedLayoutArrangement_removeItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createUnanimatedConfigurationTargetIfNecessary];
  v2 = [*(a1 + 32) customSpacings];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) _orderedPropertySource];
  v4 = [v3 customSpacings];
  [v4 removeObjectForKey:*(a1 + 40)];

  v5 = *(a1 + 40);
  v7.receiver = *(a1 + 32);
  v7.super_class = _UIOrderedLayoutArrangement;
  return objc_msgSendSuper2(&v7, sel_removeItem_, v5);
}

uint64_t __64___UIOrderedLayoutArrangement__indexOfItemForLocationAttribute___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mutableItems];
  v3 = [v2 count];
  if (v3)
  {
    v4 = v3 - 1;
    do
    {
      v5 = v4;
      if ((v4 & 0x8000000000000000) != 0)
      {
        break;
      }

      v6 = *(a1 + 32);
      v7 = [v2 objectAtIndexedSubscript:v4];
      LODWORD(v6) = [v6 _itemWantsLayoutAsIfVisible:v7];

      v4 = v5 - 1;
    }

    while (!v6);
  }

  else
  {
    v5 = -1;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

void __79___UIOrderedLayoutArrangement__insertIndividualGuidesAndConstraintsAsNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [*(a1 + 40) _setUpMultilineTextWidthDisambiguationConstraintForItem:v3 numberOfVisibleMultilineItems:*(a1 + 48)];
}

uint64_t __71___UIOrderedLayoutArrangement__visibleItemAtEndWithEnumerationOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _itemWantsLayoutAsIfVisible:a2];
  *a4 = result;
  return result;
}

@end