@interface UIApplicationMainSceneForDisplayIdentity
@end

@implementation UIApplicationMainSceneForDisplayIdentity

void ___UIApplicationMainSceneForDisplayIdentity_block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 settings];
  v7 = [v6 displayIdentity];

  v8 = a1[4];
  if (v8)
  {
    if (([v8 isEqual:v7] & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = [UIScreen _screenWithFBSDisplayIdentity:v7];
    v10 = [v9 _isMainScreen];

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = a1[5];
  if (v11)
  {
    v12 = [v16 identityToken];
    if ([v11 isEqual:v12])
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v13);
  }

  else
  {
    v14 = *(a1[6] + 8);
    v15 = v16;
    v12 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

  if (*(*(a1[6] + 8) + 40))
  {
    *a4 = 1;
  }

LABEL_13:
}

@end