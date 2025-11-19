@interface REMImageAttachment
- (BOOL)isEqual:(id)a3;
- (REMImageAttachment)initWithCoder:(id)a3;
- (REMImageAttachment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 UTI:(id)a6 fileSize:(unint64_t)a7 fileURL:(id)a8 data:(id)a9 width:(unint64_t)a10 height:(unint64_t)a11;
- (id)_deepCopy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMImageAttachment

- (REMImageAttachment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 UTI:(id)a6 fileSize:(unint64_t)a7 fileURL:(id)a8 data:(id)a9 width:(unint64_t)a10 height:(unint64_t)a11
{
  v12.receiver = self;
  v12.super_class = REMImageAttachment;
  result = [(REMFileAttachment *)&v12 initWithObjectID:a3 accountID:a4 reminderID:a5 UTI:a6 fileSize:a7 fileURL:a8 data:a9];
  if (result)
  {
    result->_width = a10;
    result->_height = a11;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = REMImageAttachment;
  v4 = a3;
  [(REMFileAttachment *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[REMImageAttachment width](self forKey:{"width", v5.receiver, v5.super_class), @"width"}];
  [v4 encodeInteger:-[REMImageAttachment height](self forKey:{"height"), @"height"}];
}

- (REMImageAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = REMImageAttachment;
  v5 = [(REMFileAttachment *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_width = [v4 decodeIntegerForKey:@"width"];
    v5->_height = [v4 decodeIntegerForKey:@"height"];
  }

  return v5;
}

- (id)_deepCopy
{
  v5.receiver = self;
  v5.super_class = REMImageAttachment;
  v3 = [(REMFileAttachment *)&v5 _deepCopy];
  [v3 setWidth:{-[REMImageAttachment width](self, "width")}];
  [v3 setHeight:{-[REMImageAttachment height](self, "height")}];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = REMImageAttachment;
  if ([(REMFileAttachment *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [v5 width];
    if (v6 == [(REMImageAttachment *)self width])
    {
      v7 = [v5 height];
      v8 = v7 == [(REMImageAttachment *)self height];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end