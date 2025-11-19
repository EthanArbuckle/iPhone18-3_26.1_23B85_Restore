@interface LSPropertyList
@end

@implementation LSPropertyList

uint64_t __63__LSPropertyList_PBFAdditions__pbf_staticDescriptorIdentifiers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = [v7 objectForKey:@"sort_relative_index"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "indexOfObject:", v5)}];
  }

  v11 = v10;

  v12 = [*(a1 + 32) objectForKey:v6];
  v13 = [v12 objectForKey:@"sort_relative_index"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "indexOfObject:", v6)}];
  }

  v16 = v15;

  v17 = [v11 compare:v16];
  return v17;
}

@end