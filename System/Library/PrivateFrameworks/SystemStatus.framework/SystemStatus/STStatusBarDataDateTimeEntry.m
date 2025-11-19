@interface STStatusBarDataDateTimeEntry
+ (id)_entryForDateValue:(id)a3 mode:(int64_t)a4;
- (STStatusBarDataDateTimeEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataDateTimeEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataDateTimeEntry

+ (id)_entryForDateValue:(id)a3 mode:(int64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 2:
      v7 = +[STStatusBarData shortTimeFormatter];
      goto LABEL_7;
    case 1:
      v7 = +[STStatusBarData timeFormatter];
      goto LABEL_7;
    case 0:
      v7 = +[STStatusBarData dateFormatter];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:
  v9 = [v8 stringFromDate:v6];
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___STStatusBarDataDateTimeEntry;
  v10 = objc_msgSendSuper2(&v14, sel_entryWithStringValue_, v9);

  v11 = [v6 copy];
  v12 = v10[4];
  v10[4] = v11;

  v10[3] = a4;

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataDateTimeEntry;
  v4 = a3;
  [(STStatusBarDataStringEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_dateValue forKey:{@"dateValue", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_mode forKey:@"mode"];
}

- (STStatusBarDataDateTimeEntry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataDateTimeEntry;
  v3 = a3;
  v4 = [(STStatusBarDataStringEntry *)&v8 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"dateValue", v8.receiver, v8.super_class}];

  dateValue = v4->_dateValue;
  v4->_dateValue = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataDateTimeEntry;
  v3 = [(STStatusBarDataStringEntry *)&v7 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataDateTimeEntry *)self dateValue];
  v5 = [v3 appendObject:v4 withName:@"dateValue"];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = STStatusBarDataDateTimeEntry;
  v5 = [(STStatusBarDataStringEntry *)&v18 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataDateTimeEntry *)self dateValue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__STStatusBarDataDateTimeEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DE0B0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendObject:v7 counterpart:v16];

  mode = self->_mode;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__STStatusBarDataDateTimeEntry__equalsBuilderWithObject___block_invoke_2;
  v14[3] = &unk_1E85DEAD0;
  v15 = v8;
  v11 = v8;
  v12 = [v5 appendInteger:mode counterpart:v14];

  return v5;
}

- (id)_hashBuilder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataDateTimeEntry;
  v3 = [(STStatusBarDataStringEntry *)&v8 _hashBuilder];
  v4 = [(STStatusBarDataDateTimeEntry *)self dateValue];
  v5 = [v3 appendObject:v4];

  v6 = [v3 appendInteger:self->_mode];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataDateTimeEntry;
  v4 = a3;
  [(STStatusBarDataStringEntry *)&v6 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_dateValue forKey:{@"dateValue", v6.receiver, v6.super_class}];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mode];
  [v4 encodeObject:v5 forKey:@"modeValue"];
}

- (STStatusBarDataDateTimeEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = STStatusBarDataDateTimeEntry;
  v5 = [(STStatusBarDataStringEntry *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateValue"];
    dateValue = v5->_dateValue;
    v5->_dateValue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeValue"];
    v5->_mode = [v8 integerValue];
  }

  return v5;
}

@end