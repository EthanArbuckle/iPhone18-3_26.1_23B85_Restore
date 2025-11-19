@interface TSWPFontVerificationCache
- (TSWPFontVerificationCache)init;
- (id)filterFontNames:(id)a3 withStatus:(int64_t)a4;
- (id)filterFontNames:(id)a3 withStatusInSet:(id)a4;
- (id)filterFontNames:(id)a3 withoutStatus:(int64_t)a4;
- (id)fontNamesWithStatus:(int64_t)a3;
- (id)fontNamesWithStatusInSet:(id)a3;
- (int64_t)statusForFontName:(id)a3;
- (void)resetFontNames:(id)a3 withStatus:(int64_t)a4;
- (void)resetFontNames:(id)a3 withStatusInSet:(id)a4;
- (void)setStatus:(int64_t)a3 forFontName:(id)a4;
- (void)setStatus:(int64_t)a3 forFontNames:(id)a4;
@end

@implementation TSWPFontVerificationCache

- (TSWPFontVerificationCache)init
{
  v6.receiver = self;
  v6.super_class = TSWPFontVerificationCache;
  v2 = [(TSWPFontVerificationCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    verifiedFonts = v2->_verifiedFonts;
    v2->_verifiedFonts = v3;
  }

  return v2;
}

- (int64_t)statusForFontName:(id)a3
{
  v3 = objc_msgSend_objectForKeyedSubscript_(self->_verifiedFonts, a2, a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_integerValue(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setStatus:(int64_t)a3 forFontName:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = a4;
    v12 = objc_msgSend_numberWithInteger_(v6, v8, a3);
    objc_msgSend_setObject_forKeyedSubscript_(self->_verifiedFonts, v9, v12, v7);
  }

  else
  {
    verifiedFonts = self->_verifiedFonts;
    v12 = a4;
    objc_msgSend_removeObjectForKey_(verifiedFonts, v11, v12);
  }
}

- (void)setStatus:(int64_t)a3 forFontNames:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3)
  {
    v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v6, a3);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v16, v20, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v9);
          }

          objc_msgSend_setObject_forKeyedSubscript_(self->_verifiedFonts, v12, v8, *(*(&v16 + 1) + 8 * v15++), v16);
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v16, v20, 16);
      }

      while (v13);
    }
  }

  else
  {
    objc_msgSend_removeObjectsForKeys_(self->_verifiedFonts, v6, v7);
  }
}

- (void)resetFontNames:(id)a3 withStatus:(int64_t)a4
{
  if (a4)
  {
    v10 = objc_msgSend_fontNamesWithStatus_(self, a2, a4);
    verifiedFonts = self->_verifiedFonts;
    v8 = objc_msgSend_allObjects(v10, v6, v7);
    objc_msgSend_removeObjectsForKeys_(verifiedFonts, v9, v8);
  }
}

- (void)resetFontNames:(id)a3 withStatusInSet:(id)a4
{
  v10 = objc_msgSend_fontNamesWithStatusInSet_(self, a2, a4);
  verifiedFonts = self->_verifiedFonts;
  v8 = objc_msgSend_allObjects(v10, v6, v7);
  objc_msgSend_removeObjectsForKeys_(verifiedFonts, v9, v8);
}

- (id)fontNamesWithStatus:(int64_t)a3
{
  if (a3)
  {
    verifiedFonts = self->_verifiedFonts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_276DDF000;
    v6[3] = &unk_27A6F4870;
    v6[4] = a3;
    v4 = objc_msgSend_keysOfEntriesPassingTest_(verifiedFonts, a2, v6);
  }

  else
  {
    v4 = objc_msgSend_set(MEMORY[0x277CBEB98], a2, 0);
  }

  return v4;
}

- (id)fontNamesWithStatusInSet:(id)a3
{
  v4 = a3;
  verifiedFonts = self->_verifiedFonts;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276DDF0E8;
  v10[3] = &unk_27A6F4898;
  v11 = v4;
  v6 = v4;
  v8 = objc_msgSend_keysOfEntriesPassingTest_(verifiedFonts, v7, v10);

  return v8;
}

- (id)filterFontNames:(id)a3 withStatus:(int64_t)a4
{
  v8 = objc_msgSend_mutableCopy(a3, a2, a3);
  if (a4)
  {
    v9 = objc_msgSend_fontNamesWithStatus_(self, v6, a4);
    objc_msgSend_intersectSet_(v8, v10, v9);
  }

  else
  {
    v11 = MEMORY[0x277CBEB98];
    v9 = objc_msgSend_allKeys(self->_verifiedFonts, v6, v7);
    v13 = objc_msgSend_setWithArray_(v11, v12, v9);
    objc_msgSend_minusSet_(v8, v14, v13);
  }

  v17 = objc_msgSend_copy(v8, v15, v16);

  return v17;
}

- (id)filterFontNames:(id)a3 withStatusInSet:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276DDF268;
  v11[3] = &unk_27A6F48C0;
  v11[4] = self;
  v12 = v6;
  v7 = v6;
  v9 = objc_msgSend_objectsPassingTest_(a3, v8, v11);

  return v9;
}

- (id)filterFontNames:(id)a3 withoutStatus:(int64_t)a4
{
  v6 = MEMORY[0x277CBEB58];
  v7 = a3;
  v9 = objc_msgSend_setWithObjects_(v6, v8, &unk_2886275C0, &unk_2886275D8, &unk_2886275F0, &unk_288627608, 0);
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, a4);
  objc_msgSend_removeObject_(v9, v12, v11);

  v14 = objc_msgSend_filterFontNames_withStatusInSet_(self, v13, v7, v9);

  return v14;
}

@end