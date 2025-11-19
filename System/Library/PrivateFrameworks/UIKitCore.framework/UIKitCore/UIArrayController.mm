@interface UIArrayController
@end

@implementation UIArrayController

void __41___UIArrayController_setSortDescriptors___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 16) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    if ([*(*(a1 + 32) + 48) count])
    {
      v7 = *(a1 + 32);
      v8 = [v7[6] array];
      [v7 processUpdate:v8 changedObjects:0];
    }
  }
}

void __37___UIArrayController_sortDescriptors__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __35___UIArrayController_setPredicate___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 24) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }
}

void __31___UIArrayController_predicate__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __32___UIArrayController_invalidate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setDelegate:0];
  *(*(a1 + 32) + 9) = 1;
  return result;
}

void __51___UIArrayController_processUpdate_changedObjects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = v3;
    if (*(a1 + 40))
    {
      v5 = [MEMORY[0x1E695DFA0] orderedSetWithArray:?];
      v6 = *(a1 + 32);
      v11 = v5;
      if (*(v6 + 24))
      {
        [v5 filterUsingPredicate:?];
        v6 = *(a1 + 32);
      }

      if (*(v6 + 16))
      {
        [v11 sortUsingDescriptors:?];
      }

      v7 = v11;
    }

    else
    {
      v7 = v3;
    }

    v12 = v7;
    v8 = [*(a1 + 32) _computeUpdatesFromOld:*(*(a1 + 32) + 48) toNew:? changedItems:?];
    v9 = v8;
    if ((*(a1 + 56) & 1) != 0 || v8)
    {
      v10 = [v12 copy];
      [*(a1 + 32) callUpdateHandler:v10 changeDictionary:v9];
    }
  }
}

@end