@interface PSExecutionSessionResourceWithStride
- (PSExecutionSessionResourceWithStride)initWithCoder:(id)coder;
- (PSExecutionSessionResourceWithStride)initWithResourceKey:(id)key stride:(id)stride;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSExecutionSessionResourceWithStride

- (PSExecutionSessionResourceWithStride)initWithResourceKey:(id)key stride:(id)stride
{
  keyCopy = key;
  strideCopy = stride;
  v12.receiver = self;
  v12.super_class = PSExecutionSessionResourceWithStride;
  v9 = [(PSExecutionSessionResourceWithStride *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->resourceKey, key);
    objc_storeStrong(&v10->stride, stride);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  resourceKey = self->resourceKey;
  coderCopy = coder;
  [coderCopy encodeObject:resourceKey forKey:@"resourceKey"];
  [coderCopy encodeObject:self->stride forKey:@"stride"];
}

- (PSExecutionSessionResourceWithStride)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PSExecutionSessionResourceWithStride;
  v5 = [(PSExecutionSessionResourceWithStride *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"resourceKey"];
    resourceKey = v5->resourceKey;
    v5->resourceKey = v6;

    v8 = [coderCopy decodeObjectForKey:@"stride"];
    stride = v5->stride;
    v5->stride = v8;
  }

  return v5;
}

@end