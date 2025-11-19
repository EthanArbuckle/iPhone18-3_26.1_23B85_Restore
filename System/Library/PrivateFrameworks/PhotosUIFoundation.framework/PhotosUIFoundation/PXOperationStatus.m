@interface PXOperationStatus
- (BOOL)isEqual:(id)a3;
- (PXOperationStatus)initWithState:(int64_t)a3 progress:(double)a4 indeterminate:(BOOL)a5 error:(id)a6 creationDate:(id)a7;
- (id)description;
- (id)operationStatusByMixingOperationStatus:(id)a3 withMixFactor:(double)a4;
- (id)redactedDescription;
- (unint64_t)hash;
@end

@implementation PXOperationStatus

- (id)redactedDescription
{
  if ([(PXOperationStatus *)self state]== 3 && ([(PXOperationStatus *)self error], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(PXOperationStatus *)self error];
    v7 = [v6 redactedDescription];
    v8 = [v5 stringWithFormat:@"Failed (%@)", v7];
  }

  else
  {
    v8 = [(PXOperationStatus *)self description];
  }

  return v8;
}

- (id)description
{
  v3 = [(PXOperationStatus *)self state];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v5 = MEMORY[0x1E696AEC0];
        [(PXOperationStatus *)self progress];
        v4 = [v5 stringWithFormat:@"%0.1f%%", v6 * 100.0];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = @"?";
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = @"Succeeded";
        break;
      case 3:
        v7 = MEMORY[0x1E696AEC0];
        v8 = [(PXOperationStatus *)self error];
        v4 = [v7 stringWithFormat:@"Failed (%@)", v8];

        break;
      case 4:
        v4 = @"Canceled";
        break;
      default:
        v4 = 0;
        break;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v5 state];
  if (v6 != [(PXOperationStatus *)self state])
  {
    goto LABEL_7;
  }

  v7 = [v5 isIndeterminate];
  if (v7 != [(PXOperationStatus *)self isIndeterminate])
  {
    goto LABEL_7;
  }

  [v5 progress];
  v9 = v8;
  [(PXOperationStatus *)self progress];
  if (v9 != v10)
  {
    goto LABEL_7;
  }

  v11 = [v5 creationDate];
  v12 = [(PXOperationStatus *)self creationDate];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_12;
  }

  v14 = [v11 isEqual:v12];

  if (v14)
  {
LABEL_12:
    v17 = [v5 error];
    v18 = [(PXOperationStatus *)self error];
    if (v17 == v18)
    {
      v15 = 1;
    }

    else
    {
      v19 = [v5 error];
      v20 = [(PXOperationStatus *)self error];
      v15 = [v19 isEqual:v20];
    }

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:

LABEL_10:
  return v15;
}

- (unint64_t)hash
{
  v3 = [(PXOperationStatus *)self state];
  v4 = v3 ^ [(PXOperationStatus *)self isIndeterminate];
  [(PXOperationStatus *)self progress];
  v6 = (v5 * 1000.0);
  v7 = [(PXOperationStatus *)self error];
  v8 = v4 ^ [v7 hash];

  return v8 ^ v6;
}

- (id)operationStatusByMixingOperationStatus:(id)a3 withMixFactor:(double)a4
{
  v7 = a3;
  if (a4 < 0.0 || a4 > 1.0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXOperationStatus.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"mixFactor >= 0.0 && mixFactor <= 1.0"}];
  }

  v9 = [v7 state];
  v10 = 0;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        if (v9 != 4)
        {
          goto LABEL_35;
        }

        v11 = [(PXOperationStatus *)self state];
        if ((v11 - 1) >= 4)
        {
          if (v11)
          {
            v10 = 0;
            goto LABEL_35;
          }

          goto LABEL_33;
        }

LABEL_25:
        v14 = self;
LABEL_34:
        v10 = v14;
        goto LABEL_35;
      }

LABEL_33:
      v14 = v7;
      goto LABEL_34;
    }

    v13 = [(PXOperationStatus *)self state];
    v10 = 0;
    if (v13 > 1)
    {
      switch(v13)
      {
        case 4:
          goto LABEL_33;
        case 3:
          goto LABEL_25;
        case 2:
          goto LABEL_33;
      }

      goto LABEL_35;
    }

    if (!v13)
    {
      goto LABEL_33;
    }

    if (v13 != 1)
    {
      goto LABEL_35;
    }

    v15 = [PXOperationStatus alloc];
    [(PXOperationStatus *)self progress];
    v17 = a4 + (1.0 - a4) * v16;
    goto LABEL_32;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  if (v9 != 1)
  {
    goto LABEL_35;
  }

  v12 = [(PXOperationStatus *)self state];
  v10 = 0;
  if (v12 <= 1)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    if (v12 != 1)
    {
      goto LABEL_35;
    }

    v15 = [PXOperationStatus alloc];
    [(PXOperationStatus *)self progress];
    v19 = v18;
    [v7 progress];
    v17 = v20 * a4 + (1.0 - a4) * v19;
LABEL_32:
    v21 = v15;
LABEL_39:
    v14 = [(PXOperationStatus *)v21 initWithState:1 progress:0 indeterminate:0 error:0 creationDate:v17];
    goto LABEL_34;
  }

  switch(v12)
  {
    case 2:
      v23 = [PXOperationStatus alloc];
      [v7 progress];
      v17 = 1.0 - a4 + v24 * a4;
      v21 = v23;
      goto LABEL_39;
    case 3:
      goto LABEL_25;
    case 4:
      goto LABEL_33;
  }

LABEL_35:

  return v10;
}

- (PXOperationStatus)initWithState:(int64_t)a3 progress:(double)a4 indeterminate:(BOOL)a5 error:(id)a6 creationDate:(id)a7
{
  v12 = a6;
  v13 = a7;
  v19.receiver = self;
  v19.super_class = PXOperationStatus;
  v14 = [(PXOperationStatus *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_state = a3;
    v14->_progress = a4;
    v14->_indeterminate = a5;
    v16 = [v12 copy];
    error = v15->_error;
    v15->_error = v16;

    objc_storeStrong(&v15->_creationDate, a7);
  }

  return v15;
}

@end