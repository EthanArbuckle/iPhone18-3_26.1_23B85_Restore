@interface REMDueDateDeltaInterval
- (BOOL)isEqual:(id)equal;
- (REMDueDateDeltaInterval)initWithCoder:(id)coder;
- (REMDueDateDeltaInterval)initWithUnit:(int64_t)unit count:(int64_t)count;
- (REMDueDateDeltaInterval)initWithUnitInteger:(int64_t)integer count:(int64_t)count;
- (id)addedTo:(id)to;
- (id)description;
- (id)inverted;
- (unint64_t)hash;
- (void)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMDueDateDeltaInterval

- (REMDueDateDeltaInterval)initWithUnit:(int64_t)unit count:(int64_t)count
{
  v7.receiver = self;
  v7.super_class = REMDueDateDeltaInterval;
  result = [(REMDueDateDeltaInterval *)&v7 init];
  if (result)
  {
    result->_unit = unit;
    result->_count = count;
  }

  return result;
}

- (REMDueDateDeltaInterval)initWithUnitInteger:(int64_t)integer count:(int64_t)count
{
  v12.receiver = self;
  v12.super_class = REMDueDateDeltaInterval;
  v6 = [(REMDueDateDeltaInterval *)&v12 init];
  v7 = v6;
  if (integer <= 4 && v6)
  {
    if ((integer - 1) >= 4)
    {
      integerCopy = 0;
    }

    else
    {
      integerCopy = integer;
    }

    v6->_unit = integerCopy;
    v6->_count = count;
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

- (id)addedTo:(id)to
{
  toCopy = to;
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  unit = [(REMDueDateDeltaInterval *)self unit];
  if (unit > 1)
  {
    switch(unit)
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

  if (!unit)
  {
    [v5 setMinute:{-[REMDueDateDeltaInterval count](self, "count")}];
    goto LABEL_16;
  }

  if (unit == 1)
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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [currentCalendar dateByAddingComponents:v5 toDate:toCopy options:0];
  v11 = v10;
  if (!v10)
  {
    v12 = +[REMLog utility];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(REMDueDateDeltaInterval *)currentCalendar addedTo:?];
    }

    v11 = toCopy;
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

  v7 = [(REMDueDateDeltaInterval *)self count];
  if (v7 == [v6 count])
  {
    unit = [(REMDueDateDeltaInterval *)self unit];
    v9 = unit == [v6 unit];
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

- (REMDueDateDeltaInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"unit"];
  v6 = v5;
  if (v5 >= 5)
  {
    v8 = +[REMLog utility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMDueDateDeltaInterval initWithCoder:];
    }

    selfCopy = 0;
  }

  else
  {
    if (v5 - 1 >= 4)
    {
      v6 = 0;
    }

    self = -[REMDueDateDeltaInterval initWithUnit:count:](self, "initWithUnit:count:", v6, [coderCopy decodeIntForKey:@"count"]);
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMDueDateDeltaInterval unit](self forKey:{"unit"), @"unit"}];
  [coderCopy encodeInteger:-[REMDueDateDeltaInterval count](self forKey:{"count"), @"count"}];
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
  [self unit];
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