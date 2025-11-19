@interface UIViewController(TVRUIAdditions)
- (uint64_t)tvrui_adjustChildScrollViewContentInset:()TVRUIAdditions recursingFromView:;
- (void)tvrui_adjustTopMostChildScrollViewContentInset:()TVRUIAdditions;
@end

@implementation UIViewController(TVRUIAdditions)

- (void)tvrui_adjustTopMostChildScrollViewContentInset:()TVRUIAdditions
{
  v10 = [a1 view];
  [a1 tvrui_adjustChildScrollViewContentInset:v10 recursingFromView:{a2, a3, a4, a5}];
}

- (uint64_t)tvrui_adjustChildScrollViewContentInset:()TVRUIAdditions recursingFromView:
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__UIViewController_TVRUIAdditions__tvrui_adjustChildScrollViewContentInset_recursingFromView___block_invoke;
  aBlock[3] = &__block_descriptor_64_e16_B16__0__UIView_8l;
  *&aBlock[4] = a2;
  *&aBlock[5] = a3;
  *&aBlock[6] = a4;
  *&aBlock[7] = a5;
  v13 = _Block_copy(aBlock);
  if (v13[2](v13, v12))
  {
    v14 = 1;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = [v12 subviews];
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if ([a1 tvrui_adjustChildScrollViewContentInset:*(*(&v21 + 1) + 8 * v19) recursingFromView:{a2, a3, a4, a5}])
          {
            v14 = 1;
            goto LABEL_13;
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_13:
  }

  return v14;
}

@end