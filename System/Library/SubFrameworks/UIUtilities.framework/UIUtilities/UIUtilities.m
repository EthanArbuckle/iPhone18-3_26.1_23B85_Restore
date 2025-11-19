id _prefixForItem(int a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString * _Nonnull _prefixForItem(BOOL, BOOL, _UIDebugLogNodeTreeStyle * _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"_UIDebugLogTree.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"treeStyle != nil"}];
  }

  if (a1)
  {
    if (a2)
    {
      [v5 node];
    }

    else
    {
      [v5 lastNode];
    }
  }

  else if (a2)
  {
    [v5 intermediate];
  }

  else
  {
    [v5 trailing];
  }
  v6 = ;
  v7 = v6;

  return v7;
}