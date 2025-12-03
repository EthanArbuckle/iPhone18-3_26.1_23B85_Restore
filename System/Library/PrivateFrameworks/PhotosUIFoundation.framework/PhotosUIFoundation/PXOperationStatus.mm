@interface PXOperationStatus
- (BOOL)isEqual:(id)equal;
- (PXOperationStatus)initWithState:(int64_t)state progress:(double)progress indeterminate:(BOOL)indeterminate error:(id)error creationDate:(id)date;
- (id)description;
- (id)operationStatusByMixingOperationStatus:(id)status withMixFactor:(double)factor;
- (id)redactedDescription;
- (unint64_t)hash;
@end

@implementation PXOperationStatus

- (id)redactedDescription
{
  if ([(PXOperationStatus *)self state]== 3 && ([(PXOperationStatus *)self error], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    v5 = MEMORY[0x1E696AEC0];
    error = [(PXOperationStatus *)self error];
    redactedDescription = [error redactedDescription];
    v8 = [v5 stringWithFormat:@"Failed (%@)", redactedDescription];
  }

  else
  {
    v8 = [(PXOperationStatus *)self description];
  }

  return v8;
}

- (id)description
{
  state = [(PXOperationStatus *)self state];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
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
    switch(state)
    {
      case 2:
        v4 = @"Succeeded";
        break;
      case 3:
        v7 = MEMORY[0x1E696AEC0];
        error = [(PXOperationStatus *)self error];
        v4 = [v7 stringWithFormat:@"Failed (%@)", error];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v5 = equalCopy;
  state = [v5 state];
  if (state != [(PXOperationStatus *)self state])
  {
    goto LABEL_7;
  }

  isIndeterminate = [v5 isIndeterminate];
  if (isIndeterminate != [(PXOperationStatus *)self isIndeterminate])
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

  creationDate = [v5 creationDate];
  creationDate2 = [(PXOperationStatus *)self creationDate];
  v13 = creationDate2;
  if (creationDate == creationDate2)
  {

    goto LABEL_12;
  }

  v14 = [creationDate isEqual:creationDate2];

  if (v14)
  {
LABEL_12:
    error = [v5 error];
    error2 = [(PXOperationStatus *)self error];
    if (error == error2)
    {
      v15 = 1;
    }

    else
    {
      error3 = [v5 error];
      error4 = [(PXOperationStatus *)self error];
      v15 = [error3 isEqual:error4];
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
  state = [(PXOperationStatus *)self state];
  v4 = state ^ [(PXOperationStatus *)self isIndeterminate];
  [(PXOperationStatus *)self progress];
  v6 = (v5 * 1000.0);
  error = [(PXOperationStatus *)self error];
  v8 = v4 ^ [error hash];

  return v8 ^ v6;
}

- (id)operationStatusByMixingOperationStatus:(id)status withMixFactor:(double)factor
{
  statusCopy = status;
  if (factor < 0.0 || factor > 1.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXOperationStatus.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"mixFactor >= 0.0 && mixFactor <= 1.0"}];
  }

  state = [statusCopy state];
  v10 = 0;
  if (state > 1)
  {
    if (state != 2)
    {
      if (state != 3)
      {
        if (state != 4)
        {
          goto LABEL_35;
        }

        state2 = [(PXOperationStatus *)self state];
        if ((state2 - 1) >= 4)
        {
          if (state2)
          {
            v10 = 0;
            goto LABEL_35;
          }

          goto LABEL_33;
        }

LABEL_25:
        selfCopy = self;
LABEL_34:
        v10 = selfCopy;
        goto LABEL_35;
      }

LABEL_33:
      selfCopy = statusCopy;
      goto LABEL_34;
    }

    state3 = [(PXOperationStatus *)self state];
    v10 = 0;
    if (state3 > 1)
    {
      switch(state3)
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

    if (!state3)
    {
      goto LABEL_33;
    }

    if (state3 != 1)
    {
      goto LABEL_35;
    }

    v15 = [PXOperationStatus alloc];
    [(PXOperationStatus *)self progress];
    v17 = factor + (1.0 - factor) * v16;
    goto LABEL_32;
  }

  if (!state)
  {
    goto LABEL_25;
  }

  if (state != 1)
  {
    goto LABEL_35;
  }

  state4 = [(PXOperationStatus *)self state];
  v10 = 0;
  if (state4 <= 1)
  {
    if (!state4)
    {
      goto LABEL_33;
    }

    if (state4 != 1)
    {
      goto LABEL_35;
    }

    v15 = [PXOperationStatus alloc];
    [(PXOperationStatus *)self progress];
    v19 = v18;
    [statusCopy progress];
    v17 = v20 * factor + (1.0 - factor) * v19;
LABEL_32:
    v21 = v15;
LABEL_39:
    selfCopy = [(PXOperationStatus *)v21 initWithState:1 progress:0 indeterminate:0 error:0 creationDate:v17];
    goto LABEL_34;
  }

  switch(state4)
  {
    case 2:
      v23 = [PXOperationStatus alloc];
      [statusCopy progress];
      v17 = 1.0 - factor + v24 * factor;
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

- (PXOperationStatus)initWithState:(int64_t)state progress:(double)progress indeterminate:(BOOL)indeterminate error:(id)error creationDate:(id)date
{
  errorCopy = error;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = PXOperationStatus;
  v14 = [(PXOperationStatus *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_state = state;
    v14->_progress = progress;
    v14->_indeterminate = indeterminate;
    v16 = [errorCopy copy];
    error = v15->_error;
    v15->_error = v16;

    objc_storeStrong(&v15->_creationDate, date);
  }

  return v15;
}

@end