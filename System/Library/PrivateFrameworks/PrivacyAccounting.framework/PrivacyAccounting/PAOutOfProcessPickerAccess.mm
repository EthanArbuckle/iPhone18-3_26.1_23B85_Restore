@interface PAOutOfProcessPickerAccess
+ (id)accessWithAccessor:(id)accessor forType:(int64_t)type;
+ (id)accessWithAuditToken:(id *)token forType:(int64_t)type;
- (BOOL)isEqualToAccess:(id)access withOptions:(unint64_t)options;
- (PAOutOfProcessPickerAccess)initWithAccessor:(id)accessor forType:(int64_t)type;
- (PAOutOfProcessPickerAccess)initWithAccessor:(id)accessor identifier:(id)identifier kind:(int64_t)kind forType:(int64_t)type;
- (PAOutOfProcessPickerAccess)initWithAuditToken:(id *)token forType:(int64_t)type;
- (PAOutOfProcessPickerAccess)initWithCoder:(id)coder;
- (PAOutOfProcessPickerAccess)initWithProto:(id)proto;
- (PAOutOfProcessPickerAccess)initWithProtoData:(id)data;
- (id)JSONObject;
- (id)category;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionForCategory;
- (id)proto;
- (unint64_t)hashWithOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAOutOfProcessPickerAccess

+ (id)accessWithAuditToken:(id *)token forType:(int64_t)type
{
  v6 = [self alloc];
  v7 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v7;
  v8 = [v6 initWithAuditToken:v10 forType:type];

  return v8;
}

+ (id)accessWithAccessor:(id)accessor forType:(int64_t)type
{
  accessorCopy = accessor;
  v7 = [[self alloc] initWithAccessor:accessorCopy forType:type];

  return v7;
}

- (PAOutOfProcessPickerAccess)initWithAuditToken:(id *)token forType:(int64_t)type
{
  v6 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v6;
  v7 = [PAApplication applicationWithAuditToken:v10];
  v8 = [(PAOutOfProcessPickerAccess *)self initWithAccessor:v7 forType:type];

  return v8;
}

- (PAOutOfProcessPickerAccess)initWithAccessor:(id)accessor forType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = PAOutOfProcessPickerAccess;
  result = [(PAAccess *)&v6 initWithAccessor:accessor];
  if (result)
  {
    result->_pickerType = type;
  }

  return result;
}

- (PAOutOfProcessPickerAccess)initWithAccessor:(id)accessor identifier:(id)identifier kind:(int64_t)kind forType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = PAOutOfProcessPickerAccess;
  result = [(PAAccess *)&v8 initWithAccessor:accessor identifier:identifier kind:kind];
  if (result)
  {
    result->_pickerType = type;
  }

  return result;
}

- (id)JSONObject
{
  v5.receiver = self;
  v5.super_class = PAOutOfProcessPickerAccess;
  jSONObject = [(PAAccess *)&v5 JSONObject];
  v3 = [jSONObject mutableCopy];

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

- (unint64_t)hashWithOptions:(unint64_t)options
{
  v6.receiver = self;
  v6.super_class = PAOutOfProcessPickerAccess;
  v4 = [(PAAccess *)&v6 hashWithOptions:options];
  return self->_pickerType - v4 + 32 * v4;
}

- (BOOL)isEqualToAccess:(id)access withOptions:(unint64_t)options
{
  accessCopy = access;
  v10.receiver = self;
  v10.super_class = PAOutOfProcessPickerAccess;
  if ([(PAAccess *)&v10 isEqualToAccess:accessCopy withOptions:options])
  {
    pickerType = self->_pickerType;
    v8 = pickerType == [accessCopy pickerType];
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
  descriptionForCategory = [(PAOutOfProcessPickerAccess *)self descriptionForCategory];
  v6 = [v3 stringWithFormat:@"%@ pickerType:<%@>", v4, descriptionForCategory];

  return v6;
}

- (PAOutOfProcessPickerAccess)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PAOutOfProcessPickerAccess;
  v5 = [(PAAccess *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_pickerType = [coderCopy decodeIntegerForKey:@"pickerType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PAOutOfProcessPickerAccess;
  coderCopy = coder;
  [(PAAccess *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_pickerType forKey:{@"pickerType", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = PAOutOfProcessPickerAccess;
  result = [(PAAccess *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 9) = self->_pickerType;
  }

  return result;
}

- (PAOutOfProcessPickerAccess)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = protoCopy;
    access = [v5 access];
    v11.receiver = self;
    v11.super_class = PAOutOfProcessPickerAccess;
    self = [(PAAccess *)&v11 initWithProto:access];

    if (self)
    {
      pickerType = [v5 pickerType];
      if (pickerType == 1)
      {
        v8 = 1;
        goto LABEL_9;
      }

      if (pickerType == 2)
      {
        v8 = 2;
LABEL_9:
        self->_pickerType = v8;
        selfCopy = self;
        goto LABEL_10;
      }
    }

    selfCopy = 0;
LABEL_10:

    goto LABEL_11;
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (PAOutOfProcessPickerAccess)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[PAPBOutOfProcessPickerAccess alloc] initWithData:dataCopy];

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
  proto = [(PAAccess *)&v9 proto];
  if (!proto)
  {
    goto LABEL_5;
  }

  [v3 setAccess:proto];
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