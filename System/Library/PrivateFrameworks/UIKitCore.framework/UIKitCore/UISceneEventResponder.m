@interface UISceneEventResponder
@end

@implementation UISceneEventResponder

void __58___UISceneEventResponder__enqueueCommitResponse_forPhase___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v12 = v2;
    os_unfair_lock_lock((v1 + 8));
    os_unfair_lock_lock((v1 + 12));
    v12[24] = 1;
    v3 = (v1 + 16);
    v4 = *(v1 + 16);
    while (1)
    {
      v5 = *v3;
      if (!*v3)
      {
        break;
      }

      if (*(v5 + 24) != 1)
      {
        goto LABEL_7;
      }

      objc_storeStrong((v1 + 16), *(v5 + 8));
    }

    v6 = *(v1 + 24);
    *(v1 + 24) = 0;

    v5 = *(v1 + 16);
LABEL_7:
    v7 = v5;
    os_unfair_lock_unlock((v1 + 12));
    if (v4 == v7)
    {
      v8 = v4;
    }

    else
    {
      do
      {
        v8 = v4[1];
        v9 = v4[2];
        if (v9)
        {
          v9[2]();
          v10 = v4[2];
          v4[2] = 0;
        }

        v11 = v4[1];
        v4[1] = 0;

        v4 = v8;
      }

      while (v8 != v7);
    }

    os_unfair_lock_unlock((v1 + 8));

    v2 = v12;
  }
}

@end