@interface KNLiveVideoSourceCollaborationCommandUsageState
+ (id)emptyUsageState;
- (BOOL)isEqual:(id)a3;
- (KNLiveVideoSourceCollaborationCommandUsageState)initWithMessage:(const void *)a3 unarchiver:(id)a4;
- (KNLiveVideoSourceCollaborationCommandUsageState)initWithSingleCollaborationCommandUsageToken:(id)a3 hasMultipleCollaborationCommandUsageTokens:(BOOL)a4;
- (id)description;
- (id)usageStateByAddingCollaborationCommandUsageToken:(id)a3;
- (unint64_t)hash;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation KNLiveVideoSourceCollaborationCommandUsageState

- (KNLiveVideoSourceCollaborationCommandUsageState)initWithSingleCollaborationCommandUsageToken:(id)a3 hasMultipleCollaborationCommandUsageTokens:(BOOL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = KNLiveVideoSourceCollaborationCommandUsageState;
  v9 = [(KNLiveVideoSourceCollaborationCommandUsageState *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    singleCollaborationCommandUsageToken = v9->_singleCollaborationCommandUsageToken;
    v9->_singleCollaborationCommandUsageToken = v10;

    v9->_definedSingleCollaborationCommandUsageToken = v9->_singleCollaborationCommandUsageToken != 0;
    v9->_hasMultipleCollaborationCommandUsageTokens = a4;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v6 = objc_msgSend_initWithFormat_(v3, v5, @"<%@ %p: singleCollaborationCommandUsageToken=%@ hasMultipleCollaborationCommandUsageTokens=%d>", v4, self, self->_singleCollaborationCommandUsageToken, self->_hasMultipleCollaborationCommandUsageTokens);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v6 = v5;
    v13 = v5 && ((v7 = *(v5 + 16), v8 = self->_singleCollaborationCommandUsageToken, v9 = v7, !(v8 | v9)) || (v11 = v9, isEqual = objc_msgSend_isEqual_(v8, v10, v9), v11, v8, isEqual)) && self->_hasMultipleCollaborationCommandUsageTokens == v6[8];
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addObject_(v3, v4, self->_singleCollaborationCommandUsageToken);
  objc_msgSend_addBool_(v3, v5, self->_hasMultipleCollaborationCommandUsageTokens);
  v8 = objc_msgSend_hashValue(v3, v6, v7);

  return v8;
}

+ (id)emptyUsageState
{
  v2 = [a1 alloc];
  hasMultipleCollaborationCommandUsageTokens = objc_msgSend_initWithSingleCollaborationCommandUsageToken_hasMultipleCollaborationCommandUsageTokens_(v2, v3, 0, 0);

  return hasMultipleCollaborationCommandUsageTokens;
}

- (id)usageStateByAddingCollaborationCommandUsageToken:(id)a3
{
  v5 = a3;
  if (self->_hasMultipleCollaborationCommandUsageTokens)
  {
    goto LABEL_4;
  }

  singleCollaborationCommandUsageToken = self->_singleCollaborationCommandUsageToken;
  if (singleCollaborationCommandUsageToken)
  {
    if (objc_msgSend_isEqual_(self->_singleCollaborationCommandUsageToken, v4, v5))
    {
LABEL_4:
      hasMultipleCollaborationCommandUsageTokens = self;
      goto LABEL_8;
    }

    v8 = [KNLiveVideoSourceCollaborationCommandUsageState alloc];
    v10 = 0;
  }

  else
  {
    v8 = [KNLiveVideoSourceCollaborationCommandUsageState alloc];
    v10 = v5;
  }

  hasMultipleCollaborationCommandUsageTokens = objc_msgSend_initWithSingleCollaborationCommandUsageToken_hasMultipleCollaborationCommandUsageTokens_(v8, v9, v10, singleCollaborationCommandUsageToken != 0);
LABEL_8:
  v11 = hasMultipleCollaborationCommandUsageTokens;

  return v11;
}

- (KNLiveVideoSourceCollaborationCommandUsageState)initWithMessage:(const void *)a3 unarchiver:(id)a4
{
  v13.receiver = self;
  v13.super_class = KNLiveVideoSourceCollaborationCommandUsageState;
  v5 = [(KNLiveVideoSourceCollaborationCommandUsageState *)&v13 init:a3];
  v6 = v5;
  if (v5)
  {
    v7 = *(a3 + 4);
    if ((v7 & 2) != 0)
    {
      v5->_hasMultipleCollaborationCommandUsageTokens = *(a3 + 32);
    }

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      if (*(a3 + 3))
      {
        v10 = objc_msgSend_tsp_initWithMessage_(v8, v9, *(a3 + 3));
      }

      else
      {
        v10 = objc_msgSend_tsp_initWithMessage_(v8, v9, MEMORY[0x277D809E0]);
      }

      singleCollaborationCommandUsageToken = v6->_singleCollaborationCommandUsageToken;
      v6->_singleCollaborationCommandUsageToken = v10;

      v6->_definedSingleCollaborationCommandUsageToken = 1;
    }
  }

  return v6;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v12 = a4;
  hasMultipleCollaborationCommandUsageTokens = self->_hasMultipleCollaborationCommandUsageTokens;
  v8 = *(a3 + 4);
  *(a3 + 4) = v8 | 2;
  *(a3 + 32) = hasMultipleCollaborationCommandUsageTokens;
  singleCollaborationCommandUsageToken = self->_singleCollaborationCommandUsageToken;
  if (singleCollaborationCommandUsageToken)
  {
    *(a3 + 4) = v8 | 3;
    v10 = *(a3 + 3);
    if (!v10)
    {
      v11 = *(a3 + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C8F000](v11);
      *(a3 + 3) = v10;
    }

    objc_msgSend_tsp_saveToMessage_(singleCollaborationCommandUsageToken, v6, v10);
  }
}

@end