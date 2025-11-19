@interface TNChartSelection
- (BOOL)isEqual:(id)a3;
- (TNChartSelection)initWithChartInfo:(id)a3;
- (TNChartSelection)initWithChartInfo:(id)a3 reference:(TSCERangeRef *)a4;
- (TSCERangeRef)reference;
- (id).cxx_construct;
- (id)initFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TNChartSelection

- (TNChartSelection)initWithChartInfo:(id)a3 reference:(TSCERangeRef *)a4
{
  v7 = a3;
  v9 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v8, v7, 0);
  v13.receiver = self;
  v13.super_class = TNChartSelection;
  v10 = [(TSDDrawableSelection *)&v13 initWithInfos:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_chart, a3);
    tableUID = a4->_tableUID;
    v10->_reference.range = a4->range;
    v10->_reference._tableUID = tableUID;
  }

  return v10;
}

- (TNChartSelection)initWithChartInfo:(id)a3
{
  v4 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v5 = 0;
  v6 = 0;
  return objc_msgSend_initWithChartInfo_reference_(self, a2, a3, &v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v7 = v6;
    if (v6 && self->_chart == *(v6 + 16))
    {
      v8 = TSCERangeRef::operator==();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 6))
  {
    v7 = *(a3 + 6);
  }

  else
  {
    v7 = MEMORY[0x277D804E8];
  }

  v26.receiver = self;
  v26.super_class = TNChartSelection;
  v8 = [(TSDDrawableSelection *)&v26 initWithArchive:v7 unarchiver:v6];
  if (v8)
  {
    v9 = *(a3 + 4);
    if (v9)
    {
      TSCERangeRefFromArchive();
      v10 = v25;
      *(v8 + 24) = v24;
      *(v8 + 40) = v10;
      v9 = *(a3 + 4);
    }

    if ((v9 & 4) != 0)
    {
      v17 = *(a3 + 5);
      v13 = v23;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_275F37750;
      v23[3] = &unk_27A6A32B8;
      v23[4] = v8;
      v18 = v6;
      v19 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v18, v20, v17, v19, 0, v23);
      goto LABEL_12;
    }

    if ((v9 & 2) != 0)
    {
      v11 = *(a3 + 4);
      if (*(v11 + 16))
      {
        v12 = *(v11 + 48);
        v13 = v22;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = sub_275F37764;
        v22[3] = &unk_27A6A32B8;
        v22[4] = v8;
        v14 = v6;
        v15 = objc_opt_class();
        objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v16, v12, v15, 0, v22);
LABEL_12:
      }
    }
  }

  return v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v7 = a4;
  chart = self->_chart;
  if (chart)
  {
    *(a3 + 4) |= 4u;
    v9 = *(a3 + 5);
    if (!v9)
    {
      v10 = *(a3 + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C90F90](v10);
      *(a3 + 5) = v9;
    }

    objc_msgSend_setWeakReference_message_(v7, v6, chart, v9);
  }

  if (TSCERangeRef::isValid(&self->_reference))
  {
    *(a3 + 4) |= 1u;
    if (!*(a3 + 3))
    {
      v11 = *(a3 + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(a3 + 3) = MEMORY[0x277C90FE0](v11);
    }

    TSCERangeRefEncodeToArchive();
  }

  *(a3 + 4) |= 8u;
  v12 = *(a3 + 6);
  if (!v12)
  {
    v13 = *(a3 + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x277C90F30](v13);
    *(a3 + 6) = v12;
  }

  v14.receiver = self;
  v14.super_class = TNChartSelection;
  [(TSDDrawableSelection *)&v14 saveToArchive:v12 archiver:v7];
}

- (TSCERangeRef)reference
{
  v3 = *&self[1].range._bottomRight.row;
  retstr->range = *&self->_tableUID._upper;
  retstr->_tableUID = v3;
  return self;
}

- (id).cxx_construct
{
  *(self + 24) = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end