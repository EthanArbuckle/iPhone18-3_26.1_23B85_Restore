@interface PSExecutionSessionResourceWithStride
- (PSExecutionSessionResourceWithStride)initWithCoder:(id)a3;
- (PSExecutionSessionResourceWithStride)initWithResourceKey:(id)a3 stride:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSExecutionSessionResourceWithStride

- (PSExecutionSessionResourceWithStride)initWithResourceKey:(id)a3 stride:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSExecutionSessionResourceWithStride;
  v9 = [(PSExecutionSessionResourceWithStride *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->resourceKey, a3);
    objc_storeStrong(&v10->stride, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  resourceKey = self->resourceKey;
  v5 = a3;
  [v5 encodeObject:resourceKey forKey:@"resourceKey"];
  [v5 encodeObject:self->stride forKey:@"stride"];
}

- (PSExecutionSessionResourceWithStride)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PSExecutionSessionResourceWithStride;
  v5 = [(PSExecutionSessionResourceWithStride *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"resourceKey"];
    resourceKey = v5->resourceKey;
    v5->resourceKey = v6;

    v8 = [v4 decodeObjectForKey:@"stride"];
    stride = v5->stride;
    v5->stride = v8;
  }

  return v5;
}

@end