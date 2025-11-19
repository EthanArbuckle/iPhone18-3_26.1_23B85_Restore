@interface TSTLayoutCellIterator
- (TSTLayoutCellIterator)initWithLayout:(id)a3;
- (TSTLayoutCellIterator)initWithLayout:(id)a3 range:(id)a4;
- (TSTLayoutCellIterator)initWithLayout:(id)a3 range:(id)a4 flags:(unint64_t)a5;
- (TSTLayoutCellIterator)initWithMasterLayout:(id)a3;
- (TSTLayoutCellIterator)initWithMasterLayout:(id)a3 range:(id)a4 flags:(unint64_t)a5;
- (void)dealloc;
@end

@implementation TSTLayoutCellIterator

- (TSTLayoutCellIterator)initWithLayout:(id)a3
{
  v4 = [a3 masterLayout];

  return [(TSTLayoutCellIterator *)self initWithMasterLayout:v4];
}

- (TSTLayoutCellIterator)initWithMasterLayout:(id)a3
{
  Range = TSTMasterLayoutGetRange(a3);

  return [(TSTLayoutCellIterator *)self initWithMasterLayout:a3 range:Range];
}

- (TSTLayoutCellIterator)initWithLayout:(id)a3 range:(id)a4
{
  v6 = [a3 masterLayout];

  return [(TSTLayoutCellIterator *)self initWithMasterLayout:v6 range:a4];
}

- (TSTLayoutCellIterator)initWithLayout:(id)a3 range:(id)a4 flags:(unint64_t)a5
{
  v8 = [a3 masterLayout];

  return [(TSTLayoutCellIterator *)self initWithMasterLayout:v8 range:a4 flags:a5];
}

- (TSTLayoutCellIterator)initWithMasterLayout:(id)a3 range:(id)a4 flags:(unint64_t)a5
{
  Range = TSTMasterLayoutGetRange(a3);
  v10 = 0;
  v11 = 16711680;
  v12 = 0xFFFFLL;
  if (Range == 0xFFFF)
  {
    goto LABEL_23;
  }

  v13 = 0;
  if ((Range & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v10 = 0;
  v11 = 16711680;
  v12 = 0xFFFFLL;
  if (!HIWORD(Range))
  {
    goto LABEL_23;
  }

  v13 = 0;
  if ((Range & 0xFFFF00000000) == 0)
  {
    goto LABEL_24;
  }

  v10 = 0;
  v11 = 16711680;
  v12 = 0xFFFFLL;
  if (a4.var0.var0 == 0xFFFF)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v13 = 0;
  if ((*&a4 & 0xFF0000) != 0xFF0000)
  {
    v10 = 0;
    v11 = 16711680;
    v12 = 0xFFFFLL;
    if (HIWORD(*&a4))
    {
      v13 = 0;
      if ((*&a4 & 0xFFFF00000000) != 0)
      {
        v12 = 0;
        if (BYTE2(Range) <= a4.var0.var1)
        {
          var1 = a4.var0.var1;
        }

        else
        {
          var1 = BYTE2(Range);
        }

        if (Range <= a4.var0.var0)
        {
          var0 = a4.var0.var0;
        }

        else
        {
          var0 = Range;
        }

        if ((BYTE4(Range) + BYTE2(Range) - 1) >= (LOBYTE(a4.var1.var0) + a4.var0.var1 - 1))
        {
          v16 = (LOBYTE(a4.var1.var0) + a4.var0.var1 - 1);
        }

        else
        {
          v16 = (BYTE4(Range) + BYTE2(Range) - 1);
        }

        v17 = (a4.var0.var0 + a4.var1.var1 - 1);
        if ((Range + HIWORD(Range) - 1) < v17)
        {
          v17 = (Range + HIWORD(Range) - 1);
        }

        v11 = 0;
        v10 = 0;
        v13 = 0;
        if (var0 <= v17 && var1 <= v16)
        {
          v13 = ((v17 - var0) << 48) + 0x1000000000000;
          v10 = (((v16 - var1) << 32) + 0x100000000) & 0xFFFF00000000;
          v11 = var1 << 16;
          v12 = var0;
        }
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_24:
  v18 = v11 | v12;
  v19 = v10 | v13;
  v20 = v18 | v19;
  v21 = ~(v18 | v19);
  self->mNumberOfLayoutColumns = TSTMasterLayoutGetTableNumberOfColumns(a3);
  v22 = [objc_msgSend(a3 "tableModel")];
  LOBYTE(v23) = 0;
  LOBYTE(v24) = -1;
  v25 = -1;
  v26 = 0xFFFFFFLL;
  if (!v21)
  {
    goto LABEL_46;
  }

  LOWORD(v27) = 0;
  LOWORD(v28) = 0;
  if ((v20 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_49;
  }

  LOBYTE(v23) = 0;
  LOBYTE(v24) = -1;
  v26 = 0xFFFFFFLL;
  if (!HIWORD(v20))
  {
LABEL_46:
    LOWORD(v27) = 0;
    LOWORD(v28) = 0;
    goto LABEL_49;
  }

  LOWORD(v27) = 0;
  LOWORD(v28) = 0;
  if ((v20 & 0xFFFF00000000) == 0)
  {
    goto LABEL_49;
  }

  v29 = 0;
  v30 = 16711680;
  v31 = 0xFFFFLL;
  v27 = HIDWORD(v20);
  if (v22 == 0xFFFF)
  {
LABEL_47:
    v32 = 0;
    goto LABEL_48;
  }

  v32 = 0;
  if ((v22 & 0xFF0000) != 0xFF0000)
  {
    v29 = 0;
    v30 = 16711680;
    v31 = 0xFFFFLL;
    if (HIWORD(v22))
    {
      v32 = 0;
      if ((v22 & 0xFFFF00000000) != 0)
      {
        v31 = 0;
        if (BYTE2(v20) <= BYTE2(v22))
        {
          v33 = BYTE2(v22);
        }

        else
        {
          v33 = BYTE2(v20);
        }

        if (v20 <= v22)
        {
          v34 = v22;
        }

        else
        {
          v34 = v20;
        }

        if ((BYTE4(v20) + BYTE2(v20) - 1) >= (BYTE4(v22) + BYTE2(v22) - 1))
        {
          v35 = (BYTE4(v22) + BYTE2(v22) - 1);
        }

        else
        {
          v35 = (BYTE4(v20) + BYTE2(v20) - 1);
        }

        v36 = v22 + HIWORD(v22) - 1;
        v37 = v36;
        if ((v20 + HIWORD(v20) - 1) < v36)
        {
          v37 = (v20 + HIWORD(v20) - 1);
        }

        v30 = 0;
        v29 = 0;
        v32 = 0;
        if (v34 <= v37 && v33 <= v35)
        {
          v32 = ((v37 - v34) << 48) + 0x1000000000000;
          v29 = (((v35 - v33) << 32) + 0x100000000) & 0xFFFF00000000;
          v30 = v33 << 16;
          v31 = v34;
        }
      }

      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_48:
  v26 = v30 | v31 | v29 | v32;
  v24 = v20 >> 16;
  v23 = v20 >> 24;
  v25 = v20;
  v28 = HIWORD(v20);
LABEL_49:
  v38 = -[TSTCellIterator initWithTableModel:region:flags:](self, "initWithTableModel:region:flags:", [a3 tableModel], +[TSTCellRegion regionFromRange:](TSTCellRegion, "regionFromRange:", v26), a5 | 0x48);
  if (v38)
  {
    v38->mMasterLayout = a3;
    v38->mLayoutRange.origin.row = v25;
    v38->mLayoutRange.origin.column = v24;
    v38->mLayoutRange.origin.reserved = v23;
    v38->mLayoutRange.size.numberOfColumns = v27;
    v38->mLayoutRange.size.numberOfRows = v28;
    v39 = v24 + v27 - 1;
    if ((a5 & 4) == 0)
    {
      v39 = v24;
    }

    v38->mLayoutCellID = (v25 | (v39 << 16));
    v38->mModelIteratorData.mCellID = 0xFFFFFF;
    v38->mLayoutCell = objc_alloc_init(TSTCell);
    v38->mNumberOfRows = [objc_msgSend(a3 "tableModel")];
    v38->mNumberOfColumns = [objc_msgSend(a3 "tableModel")];
  }

  return v38;
}

- (void)dealloc
{
  self->mLayoutCell = 0;

  self->mMasterLayout = 0;
  v3.receiver = self;
  v3.super_class = TSTLayoutCellIterator;
  [(TSTCellIterator *)&v3 dealloc];
}

@end