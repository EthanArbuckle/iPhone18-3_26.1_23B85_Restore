@interface STStatusBarDataImageEntry
+ (id)entryWithImageNamed:(id)a3;
- (STStatusBarDataImageEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataImageEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataImageEntry

+ (id)entryWithImageNamed:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 copy];

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataImageEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imageName forKey:{@"imageName", v5.receiver, v5.super_class}];
}

- (STStatusBarDataImageEntry)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = STStatusBarDataImageEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v8 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"imageName", v8.receiver, v8.super_class}];

  imageName = v4->_imageName;
  v4->_imageName = v5;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataImageEntry;
  v3 = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataImageEntry *)self imageName];
  [v3 appendString:v4 withName:@"imageName"];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STStatusBarDataImageEntry;
  v5 = [(STStatusBarDataEntry *)&v12 _equalsBuilderWithObject:v4];
  v6 = [(STStatusBarDataImageEntry *)self imageName];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__STStatusBarDataImageEntry__equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_1E85DDD28;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendString:v6 counterpart:v10];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataImageEntry;
  v3 = [(STStatusBarDataEntry *)&v7 _hashBuilder];
  v4 = [(STStatusBarDataImageEntry *)self imageName];
  v5 = [v3 appendString:v4];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataImageEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_imageName forKey:{@"imageName", v5.receiver, v5.super_class}];
}

- (STStatusBarDataImageEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STStatusBarDataImageEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;
  }

  return v5;
}

@end