@interface PSExecutionSessionResourceWithStrides
- (PSExecutionSessionResourceWithStrides)initWithCoder:(id)a3;
- (PSExecutionSessionResourceWithStrides)initWithResourceKey:(id)a3 strides:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSExecutionSessionResourceWithStrides

- (PSExecutionSessionResourceWithStrides)initWithResourceKey:(id)a3 strides:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSExecutionSessionResourceWithStrides;
  v9 = [(PSExecutionSessionResourceWithStrides *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->resourceKey, a3);
    objc_storeStrong(&v10->strides, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  resourceKey = self->resourceKey;
  v5 = a3;
  [v5 encodeObject:resourceKey forKey:@"resourceKey"];
  [v5 encodeObject:self->strides forKey:@"strides"];
}

- (PSExecutionSessionResourceWithStrides)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PSExecutionSessionResourceWithStrides;
  v5 = [(PSExecutionSessionResourceWithStrides *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"resourceKey"];
    resourceKey = v5->resourceKey;
    v5->resourceKey = v6;

    v8 = [v4 decodeObjectForKey:@"strides"];
    strides = v5->strides;
    v5->strides = v8;
  }

  return v5;
}

@end