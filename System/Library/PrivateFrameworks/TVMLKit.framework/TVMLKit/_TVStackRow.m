@interface _TVStackRow
- (BOOL)isEqual:(id)a3;
- (TVRowMetrics)rowMetrics;
- (unint64_t)hash;
- (void)setRowMetrics:(TVRowMetrics *)a3;
@end

@implementation _TVStackRow

- (unint64_t)hash
{
  v3 = [(_TVStackRow *)self sectionIndex];
  v4 = v3 ^ [(_TVStackRow *)self isHosted];
  v5 = v4 ^ [(_TVStackRow *)self isBounded];
  [(_TVStackRow *)self rowMetrics];
  v6 = v5 ^ v25;
  [(_TVStackRow *)self rowMetrics];
  v7 = v6 ^ v24;
  [(_TVStackRow *)self rowMetrics];
  v8 = v23;
  [(_TVStackRow *)self rowMetrics];
  v9 = v7 ^ v8 ^ v22;
  [(_TVStackRow *)self rowMetrics];
  v10 = v21;
  [(_TVStackRow *)self rowMetrics];
  v11 = v10 ^ v20;
  [(_TVStackRow *)self rowMetrics];
  v12 = v9 ^ v11 ^ v19;
  [(_TVStackRow *)self rowMetrics];
  v13 = v18;
  [(_TVStackRow *)self rowMetrics];
  v14 = v13 ^ v17;
  [(_TVStackRow *)self rowMetrics];
  return v12 ^ v14 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v14.receiver = self;
  v14.super_class = _TVStackRow;
  if (![(_TVStackRow *)&v14 isEqual:v4])
  {
    goto LABEL_11;
  }

  [(_TVStackRow *)self rowMetrics];
  if (v6)
  {
    [v6 rowMetrics];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  if (TVRowMetricsEqualToRowMetrics(v13, v12) && (v7 = -[_TVStackRow isHosted](self, "isHosted"), v7 == [v6 isHosted]) && (v8 = -[_TVStackRow isBounded](self, "isBounded"), v8 == objc_msgSend(v6, "isBounded")))
  {
    v11 = [(_TVStackRow *)self sectionIndex];
    v9 = v11 == [v6 sectionIndex];
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

  return v9;
}

- (TVRowMetrics)rowMetrics
{
  v3 = *&self->rowInset.bottom;
  v4 = *&self->rowMargin.bottom;
  retstr->rowInset = *&self->rowInsetAlt.bottom;
  retstr->rowInsetAlt = v4;
  retstr->rowMargin = *&self[1].rowHeight;
  *&retstr->rowType = *&self->rowPadding.bottom;
  retstr->rowPadding = v3;
  return self;
}

- (void)setRowMetrics:(TVRowMetrics *)a3
{
  *&self->_rowMetrics.rowType = *&a3->rowType;
  rowPadding = a3->rowPadding;
  rowInset = a3->rowInset;
  rowInsetAlt = a3->rowInsetAlt;
  self->_rowMetrics.rowMargin = a3->rowMargin;
  self->_rowMetrics.rowInsetAlt = rowInsetAlt;
  self->_rowMetrics.rowInset = rowInset;
  self->_rowMetrics.rowPadding = rowPadding;
}

@end