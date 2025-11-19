@interface SKPartitionDescriptor
+ (id)descriptorWithVolume:(id)a3;
+ (id)descriptorWithVolume:(id)a3 size:(unint64_t)a4;
- (NSString)name;
- (SKFilesystem)filesystem;
- (SKPartitionDescriptor)initWithCoder:(id)a3;
- (SKPartitionDescriptor)initWithVolume:(id)a3 size:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKPartitionDescriptor

- (SKPartitionDescriptor)initWithVolume:(id)a3 size:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SKPartitionDescriptor;
  v8 = [(SKPartitionDescriptor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_innerDescriptor, a3);
    v9->_size = a4;
  }

  return v9;
}

+ (id)descriptorWithVolume:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithVolume:v3 size:0];

  return v4;
}

+ (id)descriptorWithVolume:(id)a3 size:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithVolume:v5 size:a4];

  return v6;
}

- (NSString)name
{
  v2 = [(SKPartitionDescriptor *)self innerDescriptor];
  v3 = [v2 name];

  return v3;
}

- (SKFilesystem)filesystem
{
  v2 = [(SKPartitionDescriptor *)self innerDescriptor];
  v3 = [v2 filesystem];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SKPartitionDescriptor *)self innerDescriptor];
  [v4 encodeObject:v5 forKey:@"descriptor"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKPartitionDescriptor size](self, "size")}];
  [v4 encodeObject:v6 forKey:@"size"];
}

- (SKPartitionDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SKPartitionDescriptor;
  v5 = [(SKPartitionDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"descriptor"];
    innerDescriptor = v5->_innerDescriptor;
    v5->_innerDescriptor = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    v5->_size = [v9 unsignedLongLongValue];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SKPartitionDescriptor *)self size];
  v7 = [(SKPartitionDescriptor *)self innerDescriptor];
  v8 = [v3 stringWithFormat:@"<%@: { size: %lu, innerDescriptor: %@}>", v5, v6, v7];

  return v8;
}

@end