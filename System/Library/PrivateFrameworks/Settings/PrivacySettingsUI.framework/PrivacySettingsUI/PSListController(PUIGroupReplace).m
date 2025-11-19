@interface PSListController(PUIGroupReplace)
- (id)pui_replaceRows:()PUIGroupReplace withRows:header:insertPoint:;
@end

@implementation PSListController(PUIGroupReplace)

- (id)pui_replaceRows:()PUIGroupReplace withRows:header:insertPoint:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 count])
  {
    v14 = [a1 specifiers];
    v15 = [v12 firstObject];
    v16 = [v14 containsObject:v15];

    if ((v16 & 1) == 0)
    {
      [a1 insertContiguousSpecifiers:v12 afterSpecifier:v13];
    }

    v17 = [v12 lastObject];

    v18 = [a1 table];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __81__PSListController_PUIGroupReplace__pui_replaceRows_withRows_header_insertPoint___block_invoke;
    v24 = &unk_279BA17B8;
    v25 = a1;
    v26 = v10;
    v19 = v11;
    v27 = v19;
    v28 = v17;
    [v18 performBatchUpdates:&v21 completion:0];

    v13 = [v19 lastObject];
  }

  else
  {
    [a1 removeContiguousSpecifiers:v10 animated:0];
    [a1 removeContiguousSpecifiers:v12 animated:0];
  }

  return v13;
}

@end