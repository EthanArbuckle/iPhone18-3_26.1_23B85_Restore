@interface PSListController(PUIGroupReplace)
- (id)pui_replaceRows:()PUIGroupReplace withRows:header:insertPoint:;
@end

@implementation PSListController(PUIGroupReplace)

- (id)pui_replaceRows:()PUIGroupReplace withRows:header:insertPoint:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  lastObject2 = a6;
  if ([v11 count])
  {
    specifiers = [self specifiers];
    firstObject = [v12 firstObject];
    v16 = [specifiers containsObject:firstObject];

    if ((v16 & 1) == 0)
    {
      [self insertContiguousSpecifiers:v12 afterSpecifier:lastObject2];
    }

    lastObject = [v12 lastObject];

    table = [self table];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __81__PSListController_PUIGroupReplace__pui_replaceRows_withRows_header_insertPoint___block_invoke;
    v24 = &unk_279BA17B8;
    selfCopy = self;
    v26 = v10;
    v19 = v11;
    v27 = v19;
    v28 = lastObject;
    [table performBatchUpdates:&v21 completion:0];

    lastObject2 = [v19 lastObject];
  }

  else
  {
    [self removeContiguousSpecifiers:v10 animated:0];
    [self removeContiguousSpecifiers:v12 animated:0];
  }

  return lastObject2;
}

@end