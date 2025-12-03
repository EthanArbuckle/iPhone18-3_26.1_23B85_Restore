@interface STShowActivityRequest
- (STShowActivityRequest)initWithCoder:(id)coder;
- (id)_initWithDataType:(int64_t)type view:(int64_t)view;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowActivityRequest

- (STShowActivityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STShowActivityRequest;
  v5 = [(AFSiriRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dataType = [coderCopy decodeIntegerForKey:@"kSTShowActivityRequestDataTypeKey"];
    v5->_view = [coderCopy decodeIntegerForKey:@"kSTShowActivityRequestViewKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowActivityRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_dataType forKey:{@"kSTShowActivityRequestDataTypeKey", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_view forKey:@"kSTShowActivityRequestViewKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithDataType:(int64_t)type view:(int64_t)view
{
  v7.receiver = self;
  v7.super_class = STShowActivityRequest;
  result = [(AFSiriRequest *)&v7 init];
  if (result)
  {
    *(result + 5) = type;
    *(result + 6) = view;
  }

  return result;
}

@end