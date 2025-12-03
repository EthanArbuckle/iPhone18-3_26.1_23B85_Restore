@interface SBWindowingStrip
+ (id)emptyStrip;
- (BOOL)containsDisplayItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (SBWindowingStrip)initWithAppLayoutsInStrip:(id)strip;
@end

@implementation SBWindowingStrip

- (SBWindowingStrip)initWithAppLayoutsInStrip:(id)strip
{
  stripCopy = strip;
  v12.receiver = self;
  v12.super_class = SBWindowingStrip;
  v6 = [(SBWindowingStrip *)&v12 init];
  if (v6)
  {
    if (!stripCopy)
    {
      [(SBWindowingStrip *)a2 initWithAppLayoutsInStrip:v6];
    }

    v7 = [stripCopy copy];
    appLayoutsInStrip = v6->_appLayoutsInStrip;
    v6->_appLayoutsInStrip = v7;

    v9 = objc_alloc_init(MEMORY[0x277CF0C40]);
    v10 = [v9 appendObject:v6->_appLayoutsInStrip];
    v6->_hash = [v9 hash];
  }

  return v6;
}

+ (id)emptyStrip
{
  if (emptyStrip_onceToken != -1)
  {
    +[SBWindowingStrip emptyStrip];
  }

  v3 = emptyStrip_emptyStrip;

  return v3;
}

void __30__SBWindowingStrip_emptyStrip__block_invoke()
{
  v0 = [SBWindowingStrip alloc];
  v1 = [(SBWindowingStrip *)v0 initWithAppLayoutsInStrip:MEMORY[0x277CBEBF8]];
  v2 = emptyStrip_emptyStrip;
  emptyStrip_emptyStrip = v1;
}

- (BOOL)containsDisplayItem:(id)item
{
  itemCopy = item;
  appLayoutsInStrip = self->_appLayoutsInStrip;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SBWindowingStrip_containsDisplayItem___block_invoke;
  v8[3] = &unk_2783C11D8;
  v9 = itemCopy;
  v6 = itemCopy;
  LOBYTE(appLayoutsInStrip) = [(NSArray *)appLayoutsInStrip bs_containsObjectPassingTest:v8];

  return appLayoutsInStrip;
}

uint64_t __40__SBWindowingStrip_containsDisplayItem___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SBWindowingStrip_containsDisplayItem___block_invoke_2;
  v5[3] = &unk_2783A8CB8;
  v6 = *(a1 + 32);
  v3 = [a2 bs_containsObjectPassingTest:v5];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9)
    {
      v8 = BSEqualArrays();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)initWithAppLayoutsInStrip:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowingStrip.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"appLayoutsInStrip"}];
}

@end