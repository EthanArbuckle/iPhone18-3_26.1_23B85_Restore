@interface PSExecutionSessionResourceWithStrides
- (PSExecutionSessionResourceWithStrides)initWithCoder:(id)coder;
- (PSExecutionSessionResourceWithStrides)initWithResourceKey:(id)key strides:(id)strides;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSExecutionSessionResourceWithStrides

- (PSExecutionSessionResourceWithStrides)initWithResourceKey:(id)key strides:(id)strides
{
  keyCopy = key;
  stridesCopy = strides;
  v12.receiver = self;
  v12.super_class = PSExecutionSessionResourceWithStrides;
  v9 = [(PSExecutionSessionResourceWithStrides *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->resourceKey, key);
    objc_storeStrong(&v10->strides, strides);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  resourceKey = self->resourceKey;
  coderCopy = coder;
  [coderCopy encodeObject:resourceKey forKey:@"resourceKey"];
  [coderCopy encodeObject:self->strides forKey:@"strides"];
}

- (PSExecutionSessionResourceWithStrides)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PSExecutionSessionResourceWithStrides;
  v5 = [(PSExecutionSessionResourceWithStrides *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"resourceKey"];
    resourceKey = v5->resourceKey;
    v5->resourceKey = v6;

    v8 = [coderCopy decodeObjectForKey:@"strides"];
    strides = v5->strides;
    v5->strides = v8;
  }

  return v5;
}

@end