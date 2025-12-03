@interface REMImageAttachment
- (BOOL)isEqual:(id)equal;
- (REMImageAttachment)initWithCoder:(id)coder;
- (REMImageAttachment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID UTI:(id)i fileSize:(unint64_t)size fileURL:(id)l data:(id)data width:(unint64_t)self0 height:(unint64_t)self1;
- (id)_deepCopy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMImageAttachment

- (REMImageAttachment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID UTI:(id)i fileSize:(unint64_t)size fileURL:(id)l data:(id)data width:(unint64_t)self0 height:(unint64_t)self1
{
  v12.receiver = self;
  v12.super_class = REMImageAttachment;
  result = [(REMFileAttachment *)&v12 initWithObjectID:d accountID:iD reminderID:reminderID UTI:i fileSize:size fileURL:l data:data];
  if (result)
  {
    result->_width = width;
    result->_height = height;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = REMImageAttachment;
  coderCopy = coder;
  [(REMFileAttachment *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[REMImageAttachment width](self forKey:{"width", v5.receiver, v5.super_class), @"width"}];
  [coderCopy encodeInteger:-[REMImageAttachment height](self forKey:{"height"), @"height"}];
}

- (REMImageAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = REMImageAttachment;
  v5 = [(REMFileAttachment *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_width = [coderCopy decodeIntegerForKey:@"width"];
    v5->_height = [coderCopy decodeIntegerForKey:@"height"];
  }

  return v5;
}

- (id)_deepCopy
{
  v5.receiver = self;
  v5.super_class = REMImageAttachment;
  _deepCopy = [(REMFileAttachment *)&v5 _deepCopy];
  [_deepCopy setWidth:{-[REMImageAttachment width](self, "width")}];
  [_deepCopy setHeight:{-[REMImageAttachment height](self, "height")}];

  return _deepCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = REMImageAttachment;
  if ([(REMFileAttachment *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    width = [v5 width];
    if (width == [(REMImageAttachment *)self width])
    {
      height = [v5 height];
      v8 = height == [(REMImageAttachment *)self height];
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