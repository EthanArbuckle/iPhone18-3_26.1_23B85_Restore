@interface UINavigationBarTitleControl
@end

@implementation UINavigationBarTitleControl

id __86___UINavigationBarTitleControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = (*(v4 + 16))(v4, v3);
    v6 = v5;
    if (!*(a1 + 32))
    {
      goto LABEL_8;
    }

    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(a1 + 32))
  {
LABEL_6:
    v6 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
LABEL_7:
    objc_initWeak(&location, *(a1 + 40));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86___UINavigationBarTitleControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    v8[3] = &unk_1E71063A0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    objc_copyWeak(&v11, &location);
    [v6 setHeaderViewProvider:v8];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

id __86___UINavigationBarTitleControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86___UINavigationBarTitleControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
  v8[3] = &unk_1E7106378;
  objc_copyWeak(&v9, (a1 + 48));
  v6 = [v4 _headerViewForMenuInteraction:v5 sourceViewProvider:v8];
  objc_destroyWeak(&v9);

  return v6;
}

id __86___UINavigationBarTitleControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

uint64_t __86___UINavigationBarTitleControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end