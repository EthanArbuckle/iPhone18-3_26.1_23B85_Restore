@interface RBLayerGroup
- (RBLayerGroup)init;
- (id).cxx_construct;
- (uint64_t)beginInstance;
- (void)addHandler:(int)a3 forInstance:;
- (void)endInstance:(os_unfair_lock_s *)a1;
@end

@implementation RBLayerGroup

- (uint64_t)beginInstance
{
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E6979518] valueForKey:*(a1 + 8)];
  if (v2)
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = atomic_fetch_add_explicit((a1 + 16), 1u, memory_order_relaxed) + 1;
    [MEMORY[0x1E6979518] setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", v3), *(a1 + 8)}];
  }

  os_unfair_lock_lock((a1 + 20));
  v4 = (a1 + 24);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      operator new();
    }
  }

  while (*(v4 + 2) != v3);
  ++*(v4 + 3);
  os_unfair_lock_unlock((a1 + 20));
  return v3;
}

- (void)addHandler:(int)a3 forInstance:
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 5);
    v6 = a1 + 6;
    while (1)
    {
      v6 = *&v6->_os_unfair_lock_opaque;
      if (!v6)
      {
        break;
      }

      if (v6[2]._os_unfair_lock_opaque == a3)
      {
        v7 = [a2 copy];
        v8 = *&v6[14]._os_unfair_lock_opaque;
        v9 = v8 + 1;
        if (*&v6[16]._os_unfair_lock_opaque < (v8 + 1))
        {
          RB::vector<RB::DisplayList::Clip *,4ul,unsigned long>::reserve_slow(&v6[4], v9);
          v8 = *&v6[14]._os_unfair_lock_opaque;
          v9 = v8 + 1;
        }

        v10 = *&v6[12]._os_unfair_lock_opaque;
        if (!v10)
        {
          v10 = v6 + 4;
        }

        *&v10[2 * v8]._os_unfair_lock_opaque = v7;
        *&v6[14]._os_unfair_lock_opaque = v9;
        break;
      }
    }

    os_unfair_lock_unlock(a1 + 5);
  }
}

- (RBLayerGroup)init
{
  v5.receiver = self;
  v5.super_class = RBLayerGroup;
  v2 = [(RBLayerGroup *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"RBLayerGroup:%p", v2];

    v2->_id_key._p = v3;
  }

  return v2;
}

uint64_t __28__RBLayerGroup_endInstance___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] activateBackground:1];
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v2[6])
  {
    v4 = v2[6];
  }

  else
  {
    v4 = v2 + 2;
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = 8 * v3;
  do
  {
    v6 = *v4++;
    (*(v6 + 16))();
    v5 -= 8;
  }

  while (v5);
  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_8:
    v7 = v2[6];
    if (v7)
    {
      v8 = v2[6];
    }

    else
    {
      v8 = v2 + 2;
    }

    if (v2[7])
    {
      v9 = 0;
      do
      {
      }

      while (v9 < v2[7]);
      v7 = v2[6];
    }

    if (v7)
    {
      free(v7);
    }

    MEMORY[0x19A8C09E0](v2, 0x1020C402DB317EDLL);
  }

  v10 = MEMORY[0x1E6979518];

  return [v10 flush];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)endInstance:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 5);
    v4 = a1 + 6;
    while (1)
    {
      v5 = v4;
      v4 = *&v4->_os_unfair_lock_opaque;
      if (!v4)
      {
        break;
      }

      if (v4[2]._os_unfair_lock_opaque == a2)
      {
        v6 = v4[3]._os_unfair_lock_opaque - 1;
        v4[3]._os_unfair_lock_opaque = v6;
        if (!v6)
        {
          *&v5->_os_unfair_lock_opaque = *&v4->_os_unfair_lock_opaque;
          os_unfair_lock_unlock(a1 + 5);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __28__RBLayerGroup_endInstance___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = v4;
          dispatch_async(v8, block);
          return;
        }

        break;
      }
    }

    os_unfair_lock_unlock(a1 + 5);
  }
}

@end