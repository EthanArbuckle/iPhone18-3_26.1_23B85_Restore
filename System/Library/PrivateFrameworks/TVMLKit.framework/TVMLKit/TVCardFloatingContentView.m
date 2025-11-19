@interface TVCardFloatingContentView
@end

@implementation TVCardFloatingContentView

uint64_t __76___TVCardFloatingContentView_setSelected_animated_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 992) != 1.0)
  {
    [MEMORY[0x277D75D18] inheritedAnimationDuration];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76___TVCardFloatingContentView_setSelected_animated_withAnimationCoordinator___block_invoke_2;
    v8[3] = &unk_279D6E6D0;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 40);
    [MEMORY[0x277D75D18] animateWithDuration:32 delay:v8 options:0 animations:v3 * 0.3 completion:0.0];
    v2 = *(a1 + 32);
  }

  v4 = 0.0;
  v5 = 0.0;
  if (*(a1 + 40) == 1)
  {
    v5 = *(v2 + 1016);
  }

  [*(v2 + 984) setAlpha:v5];
  v6 = *(a1 + 32);
  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = *(v6 + 1008);
  }

  return [*(v6 + 976) setAlpha:v4];
}

uint64_t __76___TVCardFloatingContentView_setSelected_animated_withAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 1.0;
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = v2[124];
  }

  return [v2 setAlpha:v3];
}

@end