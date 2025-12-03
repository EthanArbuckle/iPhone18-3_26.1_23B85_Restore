@interface _PGInterruption
- (BOOL)isEqual:(id)equal;
- (_PGInterruption)initWithReason:(int64_t)reason attribution:(id)attribution;
- (id)description;
@end

@implementation _PGInterruption

- (_PGInterruption)initWithReason:(int64_t)reason attribution:(id)attribution
{
  attributionCopy = attribution;
  v17.receiver = self;
  v17.super_class = _PGInterruption;
  v7 = [(_PGInterruption *)&v17 init];
  v8 = v7;
  if (v7)
  {
    v7->_reason = reason;
    v9 = [(__CFString *)attributionCopy copy];
    attribution = v8->_attribution;
    v8->_attribution = v9;

    builder = [MEMORY[0x1E698E6B8] builder];
    v12 = [builder appendInteger:reason];
    v13 = v12;
    if (attributionCopy)
    {
      v14 = attributionCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
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
    attribution = [v8 attribution];
    if ([attribution isEqualToString:self->_attribution])
    {
      v10 = 1;
    }

    else
    {
      attribution2 = [v8 attribution];
      v10 = attribution2 == self->_attribution;
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

  attribution = [v3 stringWithFormat:@"%@: %@ - %@", v5, v8, attribution];

  return attribution;
}

@end