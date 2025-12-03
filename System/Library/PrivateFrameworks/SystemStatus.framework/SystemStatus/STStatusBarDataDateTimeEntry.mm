@interface STStatusBarDataDateTimeEntry
+ (id)_entryForDateValue:(id)value mode:(int64_t)mode;
- (STStatusBarDataDateTimeEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataDateTimeEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataDateTimeEntry

+ (id)_entryForDateValue:(id)value mode:(int64_t)mode
{
  valueCopy = value;
  switch(mode)
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
  v9 = [v8 stringFromDate:valueCopy];
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___STStatusBarDataDateTimeEntry;
  v10 = objc_msgSendSuper2(&v14, sel_entryWithStringValue_, v9);

  v11 = [valueCopy copy];
  v12 = v10[4];
  v10[4] = v11;

  v10[3] = mode;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataDateTimeEntry;
  coderCopy = coder;
  [(STStatusBarDataStringEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_dateValue forKey:{@"dateValue", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
}

- (STStatusBarDataDateTimeEntry)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataDateTimeEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataStringEntry *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"dateValue", v8.receiver, v8.super_class}];

  dateValue = v4->_dateValue;
  v4->_dateValue = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataDateTimeEntry;
  succinctDescriptionBuilder = [(STStatusBarDataStringEntry *)&v7 succinctDescriptionBuilder];
  dateValue = [(STStatusBarDataDateTimeEntry *)self dateValue];
  v5 = [succinctDescriptionBuilder appendObject:dateValue withName:@"dateValue"];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = STStatusBarDataDateTimeEntry;
  v5 = [(STStatusBarDataStringEntry *)&v18 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  dateValue = [(STStatusBarDataDateTimeEntry *)self dateValue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__STStatusBarDataDateTimeEntry__equalsBuilderWithObject___block_invoke;
  v16[3] = &unk_1E85DE0B0;
  v8 = v6;
  v17 = v8;
  v9 = [v5 appendObject:dateValue counterpart:v16];

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
  _hashBuilder = [(STStatusBarDataStringEntry *)&v8 _hashBuilder];
  dateValue = [(STStatusBarDataDateTimeEntry *)self dateValue];
  v5 = [_hashBuilder appendObject:dateValue];

  v6 = [_hashBuilder appendInteger:self->_mode];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataDateTimeEntry;
  coderCopy = coder;
  [(STStatusBarDataStringEntry *)&v6 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_dateValue forKey:{@"dateValue", v6.receiver, v6.super_class}];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mode];
  [coderCopy encodeObject:v5 forKey:@"modeValue"];
}

- (STStatusBarDataDateTimeEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = STStatusBarDataDateTimeEntry;
  v5 = [(STStatusBarDataStringEntry *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateValue"];
    dateValue = v5->_dateValue;
    v5->_dateValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeValue"];
    v5->_mode = [v8 integerValue];
  }

  return v5;
}

@end