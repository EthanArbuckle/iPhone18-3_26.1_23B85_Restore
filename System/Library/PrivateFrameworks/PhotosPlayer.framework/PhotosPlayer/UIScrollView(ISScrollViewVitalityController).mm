@interface UIScrollView(ISScrollViewVitalityController)
- (ISUIScrollViewVitalityController)is_vitalityControllerCreateIfNeeded:()ISScrollViewVitalityController;
- (uint64_t)canDriveVitality;
- (void)is_didLayoutPlayerViews;
- (void)setCanDriveVitality:()ISScrollViewVitalityController;
@end

@implementation UIScrollView(ISScrollViewVitalityController)

- (void)is_didLayoutPlayerViews
{
  is_vitalityController = [self is_vitalityController];
  [is_vitalityController didLayoutPlayerViews];
}

- (void)setCanDriveVitality:()ISScrollViewVitalityController
{
  if ([self canDriveVitality] != a3)
  {
    v5 = ISScrollViewCanDriveVitalityAssociationKey;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    objc_setAssociatedObject(self, v5, v6, 1);

    if ((a3 & 1) == 0)
    {
      v7 = ISScrollViewVitalityControllerAssociationKey;

      objc_setAssociatedObject(self, v7, 0, 1);
    }
  }
}

- (uint64_t)canDriveVitality
{
  v1 = objc_getAssociatedObject(self, ISScrollViewCanDriveVitalityAssociationKey);
  v2 = v1;
  v3 = MEMORY[0x277CBEC38];
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (ISUIScrollViewVitalityController)is_vitalityControllerCreateIfNeeded:()ISScrollViewVitalityController
{
  v5 = objc_getAssociatedObject(self, ISScrollViewVitalityControllerAssociationKey);
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
    if ([self canDriveVitality])
    {
      v5 = objc_alloc_init(ISUIScrollViewVitalityController);
      [(ISUIScrollViewVitalityController *)v5 _setScrollView:self];
      objc_setAssociatedObject(self, ISScrollViewVitalityControllerAssociationKey, v5, 1);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end