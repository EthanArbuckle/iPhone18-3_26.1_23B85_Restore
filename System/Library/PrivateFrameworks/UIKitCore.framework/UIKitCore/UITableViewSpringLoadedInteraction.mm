@interface UITableViewSpringLoadedInteraction
@end

@implementation UITableViewSpringLoadedInteraction

void __71___UITableViewSpringLoadedInteraction_tableViewSpringLoadedInteraction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a2 view];
  v6 = [v4 overrideTargetItem];

  [v5 _unhighlightSpringLoadedRow];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 _selectRowsAtIndexPaths:v7 animated:0 scrollPosition:0 notifyDelegate:1];
}

@end