@interface SBMutableWindowingItemViewModel
+ (id)viewModelWithItem:(id)item fromViewModel:(id)model;
- (SBMutableWindowingItemViewModel)initWithItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBMutableWindowingItemViewModel

- (SBMutableWindowingItemViewModel)initWithItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    [(SBMutableWindowingItemViewModel *)a2 initWithItem:?];
  }

  v9.receiver = self;
  v9.super_class = SBMutableWindowingItemViewModel;
  v6 = [(SBMutableWindowingItemViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SBWindowingItemViewModel *)v6 setItem:itemCopy];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  item = [(SBWindowingItemViewModel *)self item];
  v5 = [SBWindowingItemViewModel viewModelWithItem:item fromViewModel:self];

  return v5;
}

+ (id)viewModelWithItem:(id)item fromViewModel:(id)model
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SBMutableWindowingItemViewModel;
  v4 = objc_msgSendSuper2(&v6, sel_viewModelWithItem_fromViewModel_, item, model);

  return v4;
}

- (void)initWithItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowingItemViewModel.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

@end