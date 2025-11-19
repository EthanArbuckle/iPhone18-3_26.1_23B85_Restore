@interface PAOutOfProcessPickerAccess
+ (id)accessWithAccessor:(id)a3 forType:(int64_t)a4;
+ (id)accessWithAuditToken:(id *)a3 forType:(int64_t)a4;
- (BOOL)isEqualToAccess:(id)a3 withOptions:(unint64_t)a4;
- (PAOutOfProcessPickerAccess)initWithAccessor:(id)a3 forType:(int64_t)a4;
- (PAOutOfProcessPickerAccess)initWithAccessor:(id)a3 identifier:(id)a4 kind:(int64_t)a5 forType:(int64_t)a6;
- (PAOutOfProcessPickerAccess)initWithAuditToken:(id *)a3 forType:(int64_t)a4;
- (PAOutOfProcessPickerAccess)initWithCoder:(id)a3;
- (PAOutOfProcessPickerAccess)initWithProto:(id)a3;
- (PAOutOfProcessPickerAccess)initWithProtoData:(id)a3;
- (id)JSONObject;
- (id)category;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionForCategory;
- (id)proto;
- (unint64_t)hashWithOptions:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PAOutOfProcessPickerAccess

+ (id)accessWithAuditToken:(id *)a3 forType:(int64_t)a4
{
  v6 = [a1 alloc];
  v7 = *&a3->var0[4];
  v10[0] = *a3->var0;
  v10[1] = v7;
  v8 = [v6 initWithAuditToken:v10 forType:a4];

  return v8;
}

+ (id)accessWithAccessor:(id)a3 forType:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithAccessor:v6 forType:a4];

  return v7;
}

- (PAOutOfProcessPickerAccess)initWithAuditToken:(id *)a3 forType:(int64_t)a4
{
  v6 = *&a3->var0[4];
  v10[0] = *a3->var0;
  v10[1] = v6;
  v7 = [PAApplication applicationWithAuditToken:v10];
  v8 = [(PAOutOfProcessPickerAccess *)self initWithAccessor:v7 forType:a4];

  return v8;
}

- (PAOutOfProcessPickerAccess)initWithAccessor:(id)a3 forType:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = PAOutOfProcessPickerAccess;
  result = [(PAAccess *)&v6 initWithAccessor:a3];
  if (result)
  {
    result->_pickerType = a4;
  }

  return result;
}

- (PAOutOfProcessPickerAccess)initWithAccessor:(id)a3 identifier:(id)a4 kind:(int64_t)a5 forType:(int64_t)a6
{
  v8.receiver = self;
  v8.super_class = PAOutOfProcessPickerAccess;
  result = [(PAAccess *)&v8 initWithAccessor:a3 identifier:a4 kind:a5];
  if (result)
  {
    result->_pickerType = a6;
  }

  return result;
}

- (id)JSONObject
{
  v5.receiver = self;
  v5.super_class = PAOutOfProcessPickerAccess;
  v2 = [(PAAccess *)&v5 JSONObject];
  v3 = [v2 mutableCopy];

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"outOfProcess"];

  return v3;
}

- (id)category
{
  pickerType = self->_pickerType;
  if (pickerType == 1)
  {
    v4 = @"outOfProcessPhotos";
  }

  else if (pickerType == 2)
  {
    v4 = @"outOfProcessContacts";
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

- (id)descriptionForCategory
{
  pickerType = self->_pickerType;
  v3 = @"unknown";
  if (pickerType == 2)
  {
    v3 = @"contacts";
  }

  if (pickerType == 1)
  {
    return @"photos";
  }

  else
  {
    return v3;
  }
}

- (unint64_t)hashWithOptions:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PAOutOfProcessPickerAccess;
  v4 = [(PAAccess *)&v6 hashWithOptions:a3];
  return self->_pickerType - v4 + 32 * v4;
}

- (BOOL)isEqualToAccess:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PAOutOfProcessPickerAccess;
  if ([(PAAccess *)&v10 isEqualToAccess:v6 withOptions:a4])
  {
    pickerType = self->_pickerType;
    v8 = pickerType == [v6 pickerType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PAOutOfProcessPickerAccess;
  v4 = [(PAAccess *)&v8 description];
  v5 = [(PAOutOfProcessPickerAccess *)self descriptionForCategory];
  v6 = [v3 stringWithFormat:@"%@ pickerType:<%@>", v4, v5];

  return v6;
}

- (PAOutOfProcessPickerAccess)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PAOutOfProcessPickerAccess;
  v5 = [(PAAccess *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_pickerType = [v4 decodeIntegerForKey:@"pickerType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PAOutOfProcessPickerAccess;
  v4 = a3;
  [(PAAccess *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_pickerType forKey:{@"pickerType", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = PAOutOfProcessPickerAccess;
  result = [(PAAccess *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 9) = self->_pickerType;
  }

  return result;
}

- (PAOutOfProcessPickerAccess)initWithProto:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 access];
    v11.receiver = self;
    v11.super_class = PAOutOfProcessPickerAccess;
    self = [(PAAccess *)&v11 initWithProto:v6];

    if (self)
    {
      v7 = [v5 pickerType];
      if (v7 == 1)
      {
        v8 = 1;
        goto LABEL_9;
      }

      if (v7 == 2)
      {
        v8 = 2;
LABEL_9:
        self->_pickerType = v8;
        v9 = self;
        goto LABEL_10;
      }
    }

    v9 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (PAOutOfProcessPickerAccess)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[PAPBOutOfProcessPickerAccess alloc] initWithData:v4];

    v6 = [(PAOutOfProcessPickerAccess *)self initWithProto:v5];
    self = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = PAOutOfProcessPickerAccess;
  v4 = [(PAAccess *)&v9 proto];
  if (!v4)
  {
    goto LABEL_5;
  }

  [v3 setAccess:v4];
  pickerType = self->_pickerType;
  if (pickerType == 1)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (pickerType != 2)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = 2;
LABEL_7:
  [v3 setPickerType:v6];
  v7 = v3;
LABEL_8:

  return v7;
}

@end