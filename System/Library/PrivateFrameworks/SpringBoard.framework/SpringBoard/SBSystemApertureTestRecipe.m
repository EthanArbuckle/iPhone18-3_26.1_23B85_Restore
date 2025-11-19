@interface SBSystemApertureTestRecipe
- (SBSystemApertureTestRecipe)init;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBSystemApertureTestRecipe

- (SBSystemApertureTestRecipe)init
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SBSystemApertureTestRecipe;
  v2 = [(SBSystemApertureTestRecipe *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    elementAssertions = v2->_elementAssertions;
    v2->_elementAssertions = v3;

    v5 = objc_opt_self();
    v12[0] = v5;
    v6 = objc_opt_self();
    v12[1] = v6;
    v7 = objc_opt_self();
    v12[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    prototypeElementClasses = v2->_prototypeElementClasses;
    v2->_prototypeElementClasses = v8;
  }

  return v2;
}

- (void)handleVolumeIncrease
{
  v3 = [(NSArray *)self->_prototypeElementClasses objectAtIndex:self->_elementClassToInsertIndex];
  v4 = [SBApp systemApertureControllerForMainDisplay];
  v5 = objc_alloc_init(v3);
  v6 = [v4 registerElement:v5];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __50__SBSystemApertureTestRecipe_handleVolumeIncrease__block_invoke;
  v11 = &unk_2783B4B88;
  objc_copyWeak(&v12, &location);
  [v6 addInvalidationBlock:&v8];
  if (v6)
  {
    [(NSMutableArray *)self->_elementAssertions addObject:v6, v8, v9, v10, v11];
    elementClassToInsertIndex = self->_elementClassToInsertIndex;
    self->_elementClassToInsertIndex = (elementClassToInsertIndex + 1) % [(NSArray *)self->_prototypeElementClasses count];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __50__SBSystemApertureTestRecipe_handleVolumeIncrease__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [*(WeakRetained + 2) indexOfObject:v9];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = v4[2];
      v8 = [MEMORY[0x277CBEB68] null];
      [v7 replaceObjectAtIndex:v6 withObject:v8];
    }
  }
}

- (void)handleVolumeDecrease
{
  v3 = [(NSMutableArray *)self->_elementAssertions lastObject];
  v6 = v3;
  if (v3)
  {
    [(NSMutableArray *)self->_elementAssertions removeObject:v3];
    v4 = objc_opt_respondsToSelector();
    v3 = v6;
    if (v4)
    {
      [v6 invalidateWithReason:@"volume decrease"];
      v3 = v6;
    }
  }

  elementClassToInsertIndex = self->_elementClassToInsertIndex;
  if (elementClassToInsertIndex <= 0)
  {
    elementClassToInsertIndex = [(NSArray *)self->_prototypeElementClasses count];
    v3 = v6;
  }

  self->_elementClassToInsertIndex = elementClassToInsertIndex - 1;
}

@end