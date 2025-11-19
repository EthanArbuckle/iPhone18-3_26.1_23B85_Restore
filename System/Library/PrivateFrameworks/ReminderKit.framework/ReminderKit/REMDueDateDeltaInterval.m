@interface REMDueDateDeltaInterval
- (BOOL)isEqual:(id)a3;
- (REMDueDateDeltaInterval)initWithCoder:(id)a3;
- (REMDueDateDeltaInterval)initWithUnit:(int64_t)a3 count:(int64_t)a4;
- (REMDueDateDeltaInterval)initWithUnitInteger:(int64_t)a3 count:(int64_t)a4;
- (id)addedTo:(id)a3;
- (id)description;
- (id)inverted;
- (unint64_t)hash;
- (void)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMDueDateDeltaInterval

- (REMDueDateDeltaInterval)initWithUnit:(int64_t)a3 count:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = REMDueDateDeltaInterval;
  result = [(REMDueDateDeltaInterval *)&v7 init];
  if (result)
  {
    result->_unit = a3;
    result->_count = a4;
  }

  return result;
}

- (REMDueDateDeltaInterval)initWithUnitInteger:(int64_t)a3 count:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = REMDueDateDeltaInterval;
  v6 = [(REMDueDateDeltaInterval *)&v12 init];
  v7 = v6;
  if (a3 <= 4 && v6)
  {
    if ((a3 - 1) >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    v6->_unit = v8;
    v6->_count = a4;
    v9 = v6;
  }

  else
  {
    v10 = +[REMLog utility];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMDueDateDeltaInterval initWithUnitInteger:count:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)addedTo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v6 = [(REMDueDateDeltaInterval *)self unit];
  if (v6 > 1)
  {
    switch(v6)
    {
      case 2:
        v7 = [(REMDueDateDeltaInterval *)self count];
        break;
      case 3:
        v7 = 7 * [(REMDueDateDeltaInterval *)self count];
        break;
      case 4:
        [v5 setMonth:{-[REMDueDateDeltaInterval count](self, "count")}];
        goto LABEL_16;
      default:
        goto LABEL_13;
    }

    [v5 setDay:v7];
    goto LABEL_16;
  }

  if (!v6)
  {
    [v5 setMinute:{-[REMDueDateDeltaInterval count](self, "count")}];
    goto LABEL_16;
  }

  if (v6 == 1)
  {
    [v5 setHour:{-[REMDueDateDeltaInterval count](self, "count")}];
    goto LABEL_16;
  }

LABEL_13:
  v8 = +[REMLog utility];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [REMDueDateDeltaInterval addedTo:?];
  }

LABEL_16:
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v9 dateByAddingComponents:v5 toDate:v4 options:0];
  v11 = v10;
  if (!v10)
  {
    v12 = +[REMLog utility];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(REMDueDateDeltaInterval *)v9 addedTo:?];
    }

    v11 = v4;
  }

  v13 = v11;

  return v13;
}

- (id)inverted
{
  v2 = [[REMDueDateDeltaInterval alloc] initWithUnit:[(REMDueDateDeltaInterval *)self unit] count:[(REMDueDateDeltaInterval *)self]];

  return v2;
}

- (id)description
{
  unit = self->_unit;
  if (unit >= 5)
  {
    v5 = +[REMLog utility];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(REMDueDateDeltaInterval *)self description];
    }

    v4 = @"ERROR-UNIT";
  }

  else
  {
    v4 = off_1E7509458[unit];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld%@", self->_count, v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

  v7 = [(REMDueDateDeltaInterval *)self count];
  if (v7 == [v6 count])
  {
    v8 = [(REMDueDateDeltaInterval *)self unit];
    v9 = v8 == [v6 unit];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  count = self->_count;
  *(&v3 + 1) = self->_unit;
  *&v3 = count;
  v4 = (v3 >> 36) & 0xFFFFFFFFF8000000;
  if (count >= 0)
  {
    LODWORD(v5) = count;
  }

  else
  {
    v5 = -count;
  }

  return v4 & 0xFFFFFFFFFC000000 | v5 & 0x3FFFFFF;
}

- (REMDueDateDeltaInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"unit"];
  v6 = v5;
  if (v5 >= 5)
  {
    v8 = +[REMLog utility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMDueDateDeltaInterval initWithCoder:];
    }

    v7 = 0;
  }

  else
  {
    if (v5 - 1 >= 4)
    {
      v6 = 0;
    }

    self = -[REMDueDateDeltaInterval initWithUnit:count:](self, "initWithUnit:count:", v6, [v4 decodeIntForKey:@"count"]);
    v7 = self;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMDueDateDeltaInterval unit](self forKey:{"unit"), @"unit"}];
  [v4 encodeInteger:-[REMDueDateDeltaInterval count](self forKey:{"count"), @"count"}];
}

- (void)initWithUnitInteger:count:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "[REMDueDateDeltaInterval initWithUnitInteger:count:] failed: either [super init] failed or {unit: %ld} is invalid", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)addedTo:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 unit];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addedTo:(void *)a1 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v10 = [a2 description];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)description
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 unit];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "[REMDueDateDeltaInterval initWithCoder:] failed due to invalid unit: %ld", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end