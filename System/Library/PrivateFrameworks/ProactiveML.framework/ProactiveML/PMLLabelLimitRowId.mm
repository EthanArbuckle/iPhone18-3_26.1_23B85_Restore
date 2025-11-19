@interface PMLLabelLimitRowId
+ (id)labelLimitRowIdWithLabel:(id)a3 limit:(int64_t)a4 rowId:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLabelLimitRowId:(id)a3;
- (PMLLabelLimitRowId)initWithLabel:(id)a3 limit:(int64_t)a4 rowId:(int64_t)a5;
- (unint64_t)hash;
@end

@implementation PMLLabelLimitRowId

- (unint64_t)hash
{
  v3 = [(NSString *)self->_label hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_limit];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_rowId];
  v7 = [v6 hash] - v5 + 32 * v5;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLLabelLimitRowId *)self isEqualToLabelLimitRowId:v5];
  }

  return v6;
}

- (BOOL)isEqualToLabelLimitRowId:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = self->_label == 0;
  v7 = [v4 label];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_7;
  }

  label = self->_label;
  if (label)
  {
    v10 = [v5 label];
    v11 = [(NSString *)label isEqual:v10];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  limit = self->_limit;
  if (limit == [v5 limit])
  {
    rowId = self->_rowId;
    v14 = rowId == [v5 rowId];
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14;
}

- (PMLLabelLimitRowId)initWithLabel:(id)a3 limit:(int64_t)a4 rowId:(int64_t)a5
{
  v10 = a3;
  if (v10)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PMLLabelLimitRowId.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"limit >= 0"}];

    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"PMLLabelLimitRowId.m" lineNumber:10 description:{@"Invalid parameter not satisfying: %@", @"label"}];

  if (a4 < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a5 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_9:
  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PMLLabelLimitRowId.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"rowId >= 0"}];

LABEL_4:
  v17.receiver = self;
  v17.super_class = PMLLabelLimitRowId;
  v11 = [(PMLLabelLimitRowId *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, a3);
    v12->_limit = a4;
    v12->_rowId = a5;
  }

  return v12;
}

+ (id)labelLimitRowIdWithLabel:(id)a3 limit:(int64_t)a4 rowId:(int64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithLabel:v8 limit:a4 rowId:a5];

  return v9;
}

@end