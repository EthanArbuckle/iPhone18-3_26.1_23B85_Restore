@interface UICollectionViewTableLayoutSwipeAction
+ (id)actionWithStyle:(int64_t)style title:(id)title handler:(id)handler;
@end

@implementation UICollectionViewTableLayoutSwipeAction

+ (id)actionWithStyle:(int64_t)style title:(id)title handler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__UICollectionViewTableLayoutSwipeAction_actionWithStyle_title_handler___block_invoke;
  v13[3] = &unk_1E70FEB88;
  v14 = handlerCopy;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___UICollectionViewTableLayoutSwipeAction;
  v9 = handlerCopy;
  v10 = objc_msgSendSuper2(&v12, sel_contextualActionWithStyle_title_handler_, style, title, v13);

  return v10;
}

void __72__UICollectionViewTableLayoutSwipeAction_actionWithStyle_title_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = a4;
  v7(v6, a2, a3);
  v8[2](v8, 1);
}

@end