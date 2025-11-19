@interface UISwipeAction
+ (id)swipeActionWithStyle:(int64_t)a3 title:(id)a4 handler:(id)a5;
- (UISwipeAction)init;
- (void)resetSwipedRow;
@end

@implementation UISwipeAction

+ (id)swipeActionWithStyle:(int64_t)a3 title:(id)a4 handler:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__UISwipeAction_swipeActionWithStyle_title_handler___block_invoke;
  v12[3] = &unk_1E70FEB88;
  v13 = v8;
  v9 = v8;
  v10 = [a1 contextualActionWithStyle:a3 title:a4 handler:v12];

  return v10;
}

void __52__UISwipeAction_swipeActionWithStyle_title_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a4;
  v8(v7, v10, a3);
  if ([v10 resetsSwipedRow])
  {
    v9[2](v9, 1);
  }

  else
  {
    [v10 setCompletionHandler:v9];
  }
}

- (UISwipeAction)init
{
  v5.receiver = self;
  v5.super_class = UISwipeAction;
  v2 = [(UISwipeAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UISwipeAction *)v2 setResetsSwipedRow:1];
    [(UISwipeAction *)v3 setCanBeTriggeredBySwipe:1];
  }

  return v3;
}

- (void)resetSwipedRow
{
  v3 = [(UISwipeAction *)self completionHandler];

  if (v3)
  {
    v4 = [(UISwipeAction *)self completionHandler];
    v4[2](v4, 1);

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

@end