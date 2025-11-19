@interface _PGInterruption
- (BOOL)isEqual:(id)a3;
- (_PGInterruption)initWithReason:(int64_t)a3 attribution:(id)a4;
- (id)description;
@end

@implementation _PGInterruption

- (_PGInterruption)initWithReason:(int64_t)a3 attribution:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = _PGInterruption;
  v7 = [(_PGInterruption *)&v17 init];
  v8 = v7;
  if (v7)
  {
    v7->_reason = a3;
    v9 = [(__CFString *)v6 copy];
    attribution = v8->_attribution;
    v8->_attribution = v9;

    v11 = [MEMORY[0x1E698E6B8] builder];
    v12 = [v11 appendInteger:a3];
    v13 = v12;
    if (v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = &stru_1F394B800;
    }

    v15 = [v12 appendString:v14];
    v8->_bs_hash = [v15 hash];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && [v8 reason] == self->_reason)
  {
    v9 = [v8 attribution];
    if ([v9 isEqualToString:self->_attribution])
    {
      v10 = 1;
    }

    else
    {
      v11 = [v8 attribution];
      v10 = v11 == self->_attribution;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  reason = self->_reason;
  if (reason > 4)
  {
    v8 = @"invalid";
  }

  else
  {
    v8 = off_1E7F32660[reason];
  }

  attribution = self->_attribution;
  if (!attribution)
  {
    attribution = @"<nil>";
  }

  v10 = [v3 stringWithFormat:@"%@: %@ - %@", v5, v8, attribution];

  return v10;
}

@end