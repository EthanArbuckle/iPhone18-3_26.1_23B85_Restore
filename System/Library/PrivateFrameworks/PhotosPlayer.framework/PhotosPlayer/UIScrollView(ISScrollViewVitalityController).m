@interface UIScrollView(ISScrollViewVitalityController)
- (ISUIScrollViewVitalityController)is_vitalityControllerCreateIfNeeded:()ISScrollViewVitalityController;
- (uint64_t)canDriveVitality;
- (void)is_didLayoutPlayerViews;
- (void)setCanDriveVitality:()ISScrollViewVitalityController;
@end

@implementation UIScrollView(ISScrollViewVitalityController)

- (void)is_didLayoutPlayerViews
{
  v1 = [a1 is_vitalityController];
  [v1 didLayoutPlayerViews];
}

- (void)setCanDriveVitality:()ISScrollViewVitalityController
{
  if ([a1 canDriveVitality] != a3)
  {
    v5 = ISScrollViewCanDriveVitalityAssociationKey;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    objc_setAssociatedObject(a1, v5, v6, 1);

    if ((a3 & 1) == 0)
    {
      v7 = ISScrollViewVitalityControllerAssociationKey;

      objc_setAssociatedObject(a1, v7, 0, 1);
    }
  }
}

- (uint64_t)canDriveVitality
{
  v1 = objc_getAssociatedObject(a1, ISScrollViewCanDriveVitalityAssociationKey);
  v2 = v1;
  v3 = MEMORY[0x277CBEC38];
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

- (ISUIScrollViewVitalityController)is_vitalityControllerCreateIfNeeded:()ISScrollViewVitalityController
{
  v5 = objc_getAssociatedObject(a1, ISScrollViewVitalityControllerAssociationKey);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 0;
  }

  if (!v6)
  {
    if ([a1 canDriveVitality])
    {
      v5 = objc_alloc_init(ISUIScrollViewVitalityController);
      [(ISUIScrollViewVitalityController *)v5 _setScrollView:a1];
      objc_setAssociatedObject(a1, ISScrollViewVitalityControllerAssociationKey, v5, 1);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end