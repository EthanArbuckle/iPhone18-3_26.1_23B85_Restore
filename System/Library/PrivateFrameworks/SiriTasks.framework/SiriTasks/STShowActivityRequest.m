@interface STShowActivityRequest
- (STShowActivityRequest)initWithCoder:(id)a3;
- (id)_initWithDataType:(int64_t)a3 view:(int64_t)a4;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowActivityRequest

- (STShowActivityRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STShowActivityRequest;
  v5 = [(AFSiriRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_dataType = [v4 decodeIntegerForKey:@"kSTShowActivityRequestDataTypeKey"];
    v5->_view = [v4 decodeIntegerForKey:@"kSTShowActivityRequestViewKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowActivityRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_dataType forKey:{@"kSTShowActivityRequestDataTypeKey", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_view forKey:@"kSTShowActivityRequestViewKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithDataType:(int64_t)a3 view:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = STShowActivityRequest;
  result = [(AFSiriRequest *)&v7 init];
  if (result)
  {
    *(result + 5) = a3;
    *(result + 6) = a4;
  }

  return result;
}

@end