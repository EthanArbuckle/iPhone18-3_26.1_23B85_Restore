@interface TSCHCDESelection
+ (id)selectionWithChartInfo:(id)a3 rowRange:(_NSRange)a4 columnRange:(_NSRange)a5;
- (BOOL)isEqual:(id)a3;
- (TSCHCDESelection)initWithChartInfo:(id)a3 rowRange:(_NSRange)a4 columnRange:(_NSRange)a5;
- (TSCHCDESelection)initWithRowRange:(_NSRange)a3 columnRange:(_NSRange)a4;
- (_NSRange)columnRange;
- (_NSRange)rowRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCHCDESelection

+ (id)selectionWithChartInfo:(id)a3 rowRange:(_NSRange)a4 columnRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  v10 = a3;
  v11 = [a1 alloc];
  v16 = objc_msgSend_initWithChartInfo_rowRange_columnRange_(v11, v12, v13, v14, v15, v10, v8, v7, location, length);

  return v16;
}

- (TSCHCDESelection)initWithChartInfo:(id)a3 rowRange:(_NSRange)a4 columnRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = TSCHCDESelection;
  v12 = [(TSCHCDESelection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_info, a3);
    v13->_rowRange.location = v8;
    v13->_rowRange.length = v7;
    v13->_columnRange.location = location;
    v13->_columnRange.length = length;
  }

  return v13;
}

- (TSCHCDESelection)initWithRowRange:(_NSRange)a3 columnRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3.length;
  v7 = a3.location;
  v9.receiver = self;
  v9.super_class = TSCHCDESelection;
  result = [(TSCHCDESelection *)&v9 init];
  if (result)
  {
    result->_rowRange.location = v7;
    result->_rowRange.length = v6;
    result->_columnRange.location = location;
    result->_columnRange.length = length;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_chartInfo(self, v5, v6, v7, v8);
  v14 = objc_msgSend_rowRange(self, v10, v11, v12, v13);
  v16 = v15;
  v20 = objc_msgSend_columnRange(self, v15, v17, v18, v19);
  v25 = objc_msgSend_initWithChartInfo_rowRange_columnRange_(v4, v21, v22, v23, v24, v9, v14, v16, v20, v21);

  return v25;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSCHCDESelection;
  v3 = [(TSCHCDESelection *)&v10 description];
  v8 = objc_msgSend_stringWithFormat_(v2, v4, v5, v6, v7, @"%@", v3);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    if (v5)
    {
      v6 = sub_276363CAC(self, v5);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)initFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  v11 = *(a3 + 4);
  if ((v11 & 4) != 0)
  {
    v12 = *(a3 + 9);
  }

  else
  {
    v12 = 1;
  }

  if ((v11 & 8) != 0)
  {
    v13 = *(a3 + 10);
  }

  else
  {
    v13 = 1;
  }

  if ((v11 & 0x10) != 0)
  {
    v14 = *(a3 + 11);
  }

  else
  {
    v14 = 1;
  }

  if ((v11 & 0x20) != 0)
  {
    v15 = objc_msgSend_initWithRowRange_columnRange_(self, v6, v8, v9, v10, v12, v13, v14, *(a3 + 12));
  }

  else
  {
    v15 = objc_msgSend_initWithRowRange_columnRange_(self, v6, v8, v9, v10, v12, v13, v14, 1);
  }

  v16 = v15;
  if (v15)
  {
    v17 = *(a3 + 3);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2763642B8;
    v25[3] = &unk_27A6B9620;
    v26 = v15;
    v18 = v7;
    v20 = objc_opt_class();
    if (v17)
    {
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v18, v19, v21, v22, v23, v17, v20, 0, v25);
    }

    else
    {
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v18, v19, v21, v22, v23, MEMORY[0x277D80A18], v20, 0, v25);
    }
  }

  return v16;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v37 = a4;
  v10 = objc_msgSend_chartInfo(self, v6, v7, v8, v9);

  if (v10)
  {
    v16 = objc_msgSend_chartInfo(self, v11, v12, v13, v14);
    *(a3 + 4) |= 1u;
    v20 = *(a3 + 3);
    if (!v20)
    {
      v21 = *(a3 + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C97B90](v21);
      *(a3 + 3) = v20;
    }

    objc_msgSend_setWeakReference_message_(v37, v15, v17, v18, v19, v16, v20);
  }

  v22 = objc_msgSend_rowRange(self, v11, v12, v13, v14);
  *(a3 + 4) |= 4u;
  *(a3 + 9) = v22;
  objc_msgSend_rowRange(self, v23, v24, v25, v26);
  *(a3 + 4) |= 8u;
  *(a3 + 10) = v27;
  v31 = objc_msgSend_columnRange(self, v27, v28, v29, v30);
  *(a3 + 4) |= 0x10u;
  *(a3 + 11) = v31;
  objc_msgSend_columnRange(self, v32, v33, v34, v35);
  *(a3 + 4) |= 0x20u;
  *(a3 + 12) = v36;
}

- (_NSRange)rowRange
{
  p_rowRange = &self->_rowRange;
  location = self->_rowRange.location;
  length = p_rowRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)columnRange
{
  p_columnRange = &self->_columnRange;
  location = self->_columnRange.location;
  length = p_columnRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end