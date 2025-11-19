@interface UIIndexPathIdentityTracker
@end

@implementation UIIndexPathIdentityTracker

void __71___UIIndexPathIdentityTracker__mappingIdentifierForSanitizedIndexPath___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __69___UIIndexPathIdentityTracker__identifierBasedUpdateWithUpdateItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 length];
  v7 = *(*(a1 + 32) + 24);
  v11 = v5;
  if (v6 == 1)
  {
    v8 = [v7 indexForSectionIdentifier:v11];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathWithIndex:v8];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [v7 indexPathForItemIdentifier:v11];
    if ([v9 section] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "item") != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:

  v10 = *(*(a1 + 32) + 32);
  if (v9)
  {
    [v10 setObject:v9 forKey:v11];
  }

  else
  {
    [v10 removeObjectForKey:v11];
  }
}

void __62___UIIndexPathIdentityTracker__manuallyUpdateWithUpdateItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = _manuallyUpdateSanitizedIndexPath(a3, v5, 1);
  v8 = *(*(a1 + 40) + 32);
  v9 = v7;
  if (v7)
  {
    [v8 setObject:v7 forKey:v6];
  }

  else
  {
    [v8 removeObjectForKey:v6];
  }
}

void __62___UIIndexPathIdentityTracker__manuallyUpdateWithUpdateItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = _manuallyUpdateSanitizedIndexPath(a3, v5, 0);
  v8 = *(*(a1 + 40) + 32);
  v9 = v7;
  if (v7)
  {
    [v8 setObject:v7 forKey:v6];
  }

  else
  {
    [v8 removeObjectForKey:v6];
  }
}

@end