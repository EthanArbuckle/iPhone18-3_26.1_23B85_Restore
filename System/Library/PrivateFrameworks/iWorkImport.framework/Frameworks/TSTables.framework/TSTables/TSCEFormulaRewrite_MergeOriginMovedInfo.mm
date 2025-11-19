@interface TSCEFormulaRewrite_MergeOriginMovedInfo
- (TSCEFormulaRewrite_MergeOriginMovedInfo)initWithMergeOriginsMap:(const void *)a3 reverseMap:(const void *)a4;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)a3;
- (void)saveToMessage:(void *)a3;
@end

@implementation TSCEFormulaRewrite_MergeOriginMovedInfo

- (TSCEFormulaRewrite_MergeOriginMovedInfo)initWithMergeOriginsMap:(const void *)a3 reverseMap:(const void *)a4
{
  v7 = objc_msgSend_init(self, a2, a3, a4, v4);
  v8 = v7;
  if (v7)
  {
    v9 = (v7 + 8);
    if ((v8 + 8) != a3)
    {
      *(v8 + 40) = *(a3 + 8);
      sub_2214C0E20(v9, *(a3 + 2), 0);
    }

    if ((v8 + 48) != a4)
    {
      *(v8 + 80) = *(a4 + 8);
      sub_2214C0E20((v8 + 48), *(a4 + 2), 0);
    }
  }

  return v8;
}

- (id)initFromMessage:(const void *)a3
{
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  if (*(a3 + 4) >= 1)
  {
    v6 = 0;
    do
    {
      v13 = 0;
      v7 = *(*(a3 + 5) + 4 * v6) | (*(*(a3 + 3) + 4 * v6) << 32);
      v12 = 0;
      v13 = v7;
      v12 = *(*(a3 + 9) + 4 * v6) | (*(*(a3 + 7) + 4 * v6) << 32);
      v18 = &v13;
      v8 = sub_2214C13E4(v16, &v13);
      v8[3] = v12;
      v18 = &v12;
      v9 = sub_2214C13E4(v14, &v12);
      v9[3] = v13;
      ++v6;
    }

    while (v6 < *(a3 + 4));
  }

  v10 = objc_msgSend_initWithMergeOriginsMap_reverseMap_(self, a2, v16, v14, v3);
  sub_2210BDEC0(v14);
  sub_2210BDEC0(v16);
  return v10;
}

- (void)saveToMessage:(void *)a3
{
  for (i = self->_mergeOriginsMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v5 = *(i + 10);
    v6 = *(a3 + 4);
    if (v6 == *(a3 + 5))
    {
      v7 = v6 + 1;
      sub_2210BBC64(a3 + 4, v6 + 1);
      *(*(a3 + 3) + 4 * v6) = v5;
    }

    else
    {
      *(*(a3 + 3) + 4 * v6) = v5;
      v7 = v6 + 1;
    }

    *(a3 + 4) = v7;
    v8 = i[4];
    v9 = *(a3 + 8);
    if (v9 == *(a3 + 9))
    {
      v10 = v9 + 1;
      sub_2210BBC64(a3 + 8, v9 + 1);
      *(*(a3 + 5) + 4 * v9) = v8;
    }

    else
    {
      *(*(a3 + 5) + 4 * v9) = v8;
      v10 = v9 + 1;
    }

    *(a3 + 8) = v10;
    v11 = *(i + 14);
    v12 = *(a3 + 12);
    if (v12 == *(a3 + 13))
    {
      v13 = v12 + 1;
      sub_2210BBC64(a3 + 12, v12 + 1);
      *(*(a3 + 7) + 4 * v12) = v11;
    }

    else
    {
      *(*(a3 + 7) + 4 * v12) = v11;
      v13 = v12 + 1;
    }

    *(a3 + 12) = v13;
    v14 = i[6];
    v15 = *(a3 + 16);
    if (v15 == *(a3 + 17))
    {
      v16 = v15 + 1;
      sub_2210BBC64(a3 + 16, v15 + 1);
      *(*(a3 + 9) + 4 * v15) = v14;
    }

    else
    {
      *(*(a3 + 9) + 4 * v15) = v14;
      v16 = v15 + 1;
    }

    *(a3 + 16) = v16;
  }
}

- (id)description
{
  v5 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"merge origin map:\n", v2, v3);
  for (i = self->_mergeOriginsMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = NSStringFromTSUCellCoord();
    v8 = NSStringFromTSUCellCoord();
    objc_msgSend_appendFormat_(v5, v9, @"%@ -> %@", v10, v11, v7, v8);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end