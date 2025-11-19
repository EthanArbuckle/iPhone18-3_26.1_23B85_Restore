@interface PFSQLiteLimitOffset
+ (id)limit:(unint64_t)a3;
+ (id)limit:(unint64_t)a3 offset:(unint64_t)a4;
+ (id)offset:(unint64_t)a3;
- (BOOL)pf_bindToStatement:(sqlite3_stmt *)a3 index:(unint64_t)a4 offset:(unint64_t)a5;
- (NSString)description;
- (PFSQLiteLimitOffset)init;
- (id)pf_toSQLWithBindings:(unint64_t *)a3;
- (void)initWithLimit:(uint64_t)a3 offset:;
@end

@implementation PFSQLiteLimitOffset

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  limit = self->_limit;
  if (limit != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v3 appendUnsignedInteger:limit withName:@"limit"];
  }

  offset = self->_offset;
  if (offset != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v4 appendUnsignedInteger:offset withName:@"offset"];
  }

  v9 = [v4 build];

  return v9;
}

- (PFSQLiteLimitOffset)init
{
  [(PFSQLiteLimitOffset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)pf_toSQLWithBindings:(unint64_t *)a3
{
  v5 = objc_opt_new();
  v6 = v5;
  if (self->_limit == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    if (!a3)
    {
      [v5 appendFormat:@" LIMIT %lu", self->_limit];
      offset = self->_offset;
      if (offset == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_14;
      }

      v7 = 1;
LABEL_10:
      v11 = offset;
      v9 = @" OFFSET %lu";
      goto LABEL_11;
    }

    [v5 appendFormat:@" LIMIT ?"];
    v7 = 1;
  }

  offset = self->_offset;
  if (offset == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v9 = @" OFFSET ?";
LABEL_11:
  [v6 appendFormat:v9, v11];
  ++v7;
LABEL_12:
  if (a3)
  {
    *a3 = v7;
  }

LABEL_14:

  return v6;
}

- (BOOL)pf_bindToStatement:(sqlite3_stmt *)a3 index:(unint64_t)a4 offset:(unint64_t)a5
{
  limit = self->_limit;
  offset = self->_offset;
  if (limit != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (offset != 0x7FFFFFFFFFFFFFFFLL && a4 != 0)
    {
      limit = self->_offset;
      if (a4 != 1)
      {
        return 0;
      }
    }

    return sqlite3_bind_int(a3, a4 + a5 + 1, limit) == 0;
  }

  limit = self->_offset;
  if (offset != 0x7FFFFFFFFFFFFFFFLL)
  {
    return sqlite3_bind_int(a3, a4 + a5 + 1, limit) == 0;
  }

  return 0;
}

+ (id)limit:(unint64_t)a3
{
  v4 = [PFSQLiteLimitOffset alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = PFSQLiteLimitOffset;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (v4)
    {
      v4->_limit = a3;
      v4->_offset = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v4;
}

- (void)initWithLimit:(uint64_t)a3 offset:
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = PFSQLiteLimitOffset;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      result[1] = a2;
      result[2] = a3;
    }
  }

  return result;
}

+ (id)offset:(unint64_t)a3
{
  v4 = [PFSQLiteLimitOffset alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = PFSQLiteLimitOffset;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (v4)
    {
      v4->_limit = 0x7FFFFFFFFFFFFFFFLL;
      v4->_offset = a3;
    }
  }

  return v4;
}

+ (id)limit:(unint64_t)a3 offset:(unint64_t)a4
{
  v6 = [PFSQLiteLimitOffset alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = PFSQLiteLimitOffset;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    if (v6)
    {
      v6->_limit = a3;
      v6->_offset = a4;
    }
  }

  return v6;
}

@end