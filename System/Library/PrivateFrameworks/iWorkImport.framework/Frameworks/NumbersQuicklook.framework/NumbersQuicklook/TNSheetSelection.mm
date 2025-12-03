@interface TNSheetSelection
+ (id)selectionForSheet:(id)sheet paginated:(BOOL)paginated;
- (BOOL)isEqual:(id)equal;
- (TNSheetSelection)initWithSheet:(id)sheet paginated:(BOOL)paginated;
- (id)UUIDDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation TNSheetSelection

+ (id)selectionForSheet:(id)sheet paginated:(BOOL)paginated
{
  paginatedCopy = paginated;
  v6 = [TNSheetSelection alloc];
  v8 = objc_msgSend_initWithSheet_paginated_(v6, v7, sheet, paginatedCopy);

  return v8;
}

- (TNSheetSelection)initWithSheet:(id)sheet paginated:(BOOL)paginated
{
  v8.receiver = self;
  v8.super_class = TNSheetSelection;
  v6 = [(TNSheetSelection *)&v8 init];
  if (v6)
  {
    v6->mSheet = sheet;
    v6->mIsPaginated = paginated;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TNSheetSelection;
  [(TNSheetSelection *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_sheet(self, v5, v6);
  isPaginated = objc_msgSend_isPaginated(self, v8, v9);

  return objc_msgSend_initWithSheet_paginated_(v4, v10, v7, isPaginated);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(isEqual) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_sheet(self, v5, v6);
      v10 = objc_msgSend_sheet(equal, v8, v9);
      isPaginated = objc_msgSend_isPaginated(self, v11, v12);
      v17 = objc_msgSend_isPaginated(equal, v14, v15);
      if (v7 == v10 || (isEqual = objc_msgSend_isEqual_(v7, v16, v10)) != 0)
      {
        LOBYTE(isEqual) = isPaginated ^ v17 ^ 1;
      }
    }

    else
    {
      LOBYTE(isEqual) = 0;
    }
  }

  return isEqual;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_sheet(self, a2, v2);
  v8 = objc_msgSend_name(v5, v6, v7);
  v11 = objc_msgSend_sheet(self, v9, v10);
  if (objc_msgSend_isForm(v11, v12, v13))
  {
    v16 = @" (Form)";
  }

  else
  {
    v16 = &stru_2884F65E0;
  }

  if (objc_msgSend_isPaginated(self, v14, v15))
  {
    return objc_msgSend_stringWithFormat_(v4, v17, @"<TNSheetSelection %p %@%@, %@>", self, v8, v16, @"Paginated");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v4, v17, @"<TNSheetSelection %p %@%@, %@>", self, v8, v16, @"Not Paginated");
  }
}

- (id)UUIDDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_description(self, a2, v2);
  v8 = objc_msgSend_sheet(self, v6, v7);
  v11 = objc_msgSend_objectUUIDPath(v8, v9, v10);
  return objc_msgSend_stringWithFormat_(v4, v12, @"%@ %@", v5, v11);
}

@end