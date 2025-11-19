@interface UITextSimpleLinkInteraction
@end

@implementation UITextSimpleLinkInteraction

void __42___UITextSimpleLinkInteraction_highlight___block_invoke(uint64_t a1)
{
  [*(a1 + 32) highlight];
  v2 = *(a1 + 32);
  v3 = (*(a1 + 40) + 136);

  objc_storeStrong(v3, v2);
}

void __42___UITextSimpleLinkInteraction_highlight___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 136);
  v3 = v2;
  v4 = v3;
  if (v11 == v3)
  {

    v6 = v11;
  }

  else
  {
    if (v11)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
    }

    else
    {
      v7 = [v11 isEqual:v3];

      if (v7)
      {
        return;
      }
    }

    [*(*(a1 + 32) + 136) unhighlight];
    [*(a1 + 40) highlight];
    v9 = a1 + 32;
    v8 = *(a1 + 32);
    v10 = *(v9 + 8);
    v6 = *(v8 + 136);
    *(v8 + 136) = v10;
  }
}

void __42___UITextSimpleLinkInteraction_highlight___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) unhighlight];
  v2 = *(a1 + 40);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
}

@end