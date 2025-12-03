@interface SKUIStorePageSplitsDescription
- (SKUIStorePageSplit)firstSplit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)numberOfSplits;
- (void)description;
- (void)enumerateSplitsUsingBlock:(id)block;
- (void)sizeSplitsToFitWidth:(double)width usingBlock:(id)block;
@end

@implementation SKUIStorePageSplitsDescription

- (void)enumerateSplitsUsingBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIStorePageSplitsDescription *)v5 enumerateSplitsUsingBlock:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = self->_topSplit;
  v14 = self->_leftSplit;
  v15 = self->_rightSplit;
  v16 = self->_bottomSplit;
  v17 = 0;
  v18 = 0;
  *&v19 = v15;
  *(&v19 + 1) = v16;
  *&v20 = v13;
  *(&v20 + 1) = v14;
  v24[0] = v20;
  v24[1] = v19;
  do
  {
    v23 = 0;
    v21 = *(v24 + v17);
    if (v21)
    {
      blockCopy[2](blockCopy, v21, v18, &v23);
      if (v23)
      {
        break;
      }

      ++v18;
    }

    v17 += 8;
  }

  while (v17 != 32);
  for (i = 24; i != -8; i -= 8)
  {
  }
}

- (SKUIStorePageSplit)firstSplit
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIStorePageSplitsDescription *)v3 firstSplit:v4];
      }
    }
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__57;
  v18 = __Block_byref_object_dispose__57;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__SKUIStorePageSplitsDescription_firstSplit__block_invoke;
  v13[3] = &unk_2781FDFC0;
  v13[4] = &v14;
  [(SKUIStorePageSplitsDescription *)self enumerateSplitsUsingBlock:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (int64_t)numberOfSplits
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIStorePageSplitsDescription *)v3 numberOfSplits:v4];
      }
    }
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__SKUIStorePageSplitsDescription_numberOfSplits__block_invoke;
  v13[3] = &unk_2781FDFC0;
  v13[4] = &v14;
  [(SKUIStorePageSplitsDescription *)self enumerateSplitsUsingBlock:v13];
  v11 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (void)sizeSplitsToFitWidth:(double)width usingBlock:(id)block
{
  blockCopy = block;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIStorePageSplitsDescription *)v7 sizeSplitsToFitWidth:v8 usingBlock:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  rightSplit = self->_rightSplit;
  if (!rightSplit)
  {
    rightSplit = self->_leftSplit;
  }

  v16 = rightSplit;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  *&v24[3] = width;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__SKUIStorePageSplitsDescription_sizeSplitsToFitWidth_usingBlock___block_invoke;
  v19[3] = &unk_2781FDFE8;
  v19[4] = self;
  v17 = blockCopy;
  v21 = v17;
  widthCopy = width;
  v18 = v16;
  v20 = v18;
  v22 = v24;
  [(SKUIStorePageSplitsDescription *)self enumerateSplitsUsingBlock:v19];

  _Block_object_dispose(v24, 8);
}

void __66__SKUIStorePageSplitsDescription_sizeSplitsToFitWidth_usingBlock___block_invoke(double *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = v7;
  v10 = *(a1 + 4);
  v16 = v7;
  if (v10[4] == v7 || v10[1] == v7)
  {
    v15 = *(a1 + 6);
    v8.n128_f64[0] = a1[8];
LABEL_8:
    (*(v15 + 16))(v15, v9, a3, a4, v8);
    goto LABEL_9;
  }

  if (*(a1 + 5) == v7)
  {
    v15 = *(a1 + 6);
    v8.n128_u64[0] = *(*(*(a1 + 7) + 8) + 24);
    goto LABEL_8;
  }

  [v10[2] widthFraction];
  if (v11 < 0.00000011920929)
  {
    [*(*(a1 + 4) + 24) widthFraction];
    v11 = 1.0 - v12;
  }

  v13 = v11 * a1[8];
  v14 = roundf(v13);
  (*(*(a1 + 6) + 16))(v14);
  *(*(*(a1 + 7) + 8) + 24) = *(*(*(a1 + 7) + 8) + 24) - v14;
LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIStorePageSplitsDescription *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v13 setBottomSplit:self->_bottomSplit];
  [v13 setLeftSplit:self->_leftSplit];
  [v13 setRightSplit:self->_rightSplit];
  [v13 setTopSplit:self->_topSplit];
  return v13;
}

- (id)description
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStorePageSplitsDescription description];
  }

  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIStorePageSplitsDescription;
  v4 = [(SKUIStorePageSplitsDescription *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: Splits: [T: %@, L: %@, R: %@, B: %@]", v4, self->_topSplit, self->_leftSplit, self->_rightSplit, self->_bottomSplit];

  return v5;
}

- (void)description
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStorePageSplitsDescription description]";
}

@end