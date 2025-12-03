@interface PMLLabelLimitRowId
+ (id)labelLimitRowIdWithLabel:(id)label limit:(int64_t)limit rowId:(int64_t)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLabelLimitRowId:(id)id;
- (PMLLabelLimitRowId)initWithLabel:(id)label limit:(int64_t)limit rowId:(int64_t)id;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLLabelLimitRowId *)self isEqualToLabelLimitRowId:v5];
  }

  return v6;
}

- (BOOL)isEqualToLabelLimitRowId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  if (!idCopy)
  {
    goto LABEL_7;
  }

  v6 = self->_label == 0;
  label = [idCopy label];
  v8 = label != 0;

  if (v6 == v8)
  {
    goto LABEL_7;
  }

  label = self->_label;
  if (label)
  {
    label2 = [v5 label];
    v11 = [(NSString *)label isEqual:label2];

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

- (PMLLabelLimitRowId)initWithLabel:(id)label limit:(int64_t)limit rowId:(int64_t)id
{
  labelCopy = label;
  if (labelCopy)
  {
    if ((limit & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLLabelLimitRowId.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"limit >= 0"}];

    if ((id & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLLabelLimitRowId.m" lineNumber:10 description:{@"Invalid parameter not satisfying: %@", @"label"}];

  if (limit < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((id & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PMLLabelLimitRowId.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"rowId >= 0"}];

LABEL_4:
  v17.receiver = self;
  v17.super_class = PMLLabelLimitRowId;
  v11 = [(PMLLabelLimitRowId *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, label);
    v12->_limit = limit;
    v12->_rowId = id;
  }

  return v12;
}

+ (id)labelLimitRowIdWithLabel:(id)label limit:(int64_t)limit rowId:(int64_t)id
{
  labelCopy = label;
  v9 = [[self alloc] initWithLabel:labelCopy limit:limit rowId:id];

  return v9;
}

@end