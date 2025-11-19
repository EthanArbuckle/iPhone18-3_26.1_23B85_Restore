@interface SBMutableWindowingItemViewModel
+ (id)viewModelWithItem:(id)a3 fromViewModel:(id)a4;
- (SBMutableWindowingItemViewModel)initWithItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBMutableWindowingItemViewModel

- (SBMutableWindowingItemViewModel)initWithItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBMutableWindowingItemViewModel *)a2 initWithItem:?];
  }

  v9.receiver = self;
  v9.super_class = SBMutableWindowingItemViewModel;
  v6 = [(SBMutableWindowingItemViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SBWindowingItemViewModel *)v6 setItem:v5];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SBWindowingItemViewModel *)self item];
  v5 = [SBWindowingItemViewModel viewModelWithItem:v4 fromViewModel:self];

  return v5;
}

+ (id)viewModelWithItem:(id)a3 fromViewModel:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___SBMutableWindowingItemViewModel;
  v4 = objc_msgSendSuper2(&v6, sel_viewModelWithItem_fromViewModel_, a3, a4);

  return v4;
}

- (void)initWithItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowingItemViewModel.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"item"}];
}

@end