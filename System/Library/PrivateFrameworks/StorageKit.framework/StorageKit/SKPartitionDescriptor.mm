@interface SKPartitionDescriptor
+ (id)descriptorWithVolume:(id)volume;
+ (id)descriptorWithVolume:(id)volume size:(unint64_t)size;
- (NSString)name;
- (SKFilesystem)filesystem;
- (SKPartitionDescriptor)initWithCoder:(id)coder;
- (SKPartitionDescriptor)initWithVolume:(id)volume size:(unint64_t)size;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKPartitionDescriptor

- (SKPartitionDescriptor)initWithVolume:(id)volume size:(unint64_t)size
{
  volumeCopy = volume;
  v11.receiver = self;
  v11.super_class = SKPartitionDescriptor;
  v8 = [(SKPartitionDescriptor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_innerDescriptor, volume);
    v9->_size = size;
  }

  return v9;
}

+ (id)descriptorWithVolume:(id)volume
{
  volumeCopy = volume;
  v4 = [objc_alloc(objc_opt_class()) initWithVolume:volumeCopy size:0];

  return v4;
}

+ (id)descriptorWithVolume:(id)volume size:(unint64_t)size
{
  volumeCopy = volume;
  v6 = [objc_alloc(objc_opt_class()) initWithVolume:volumeCopy size:size];

  return v6;
}

- (NSString)name
{
  innerDescriptor = [(SKPartitionDescriptor *)self innerDescriptor];
  name = [innerDescriptor name];

  return name;
}

- (SKFilesystem)filesystem
{
  innerDescriptor = [(SKPartitionDescriptor *)self innerDescriptor];
  filesystem = [innerDescriptor filesystem];

  return filesystem;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  innerDescriptor = [(SKPartitionDescriptor *)self innerDescriptor];
  [coderCopy encodeObject:innerDescriptor forKey:@"descriptor"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKPartitionDescriptor size](self, "size")}];
  [coderCopy encodeObject:v6 forKey:@"size"];
}

- (SKPartitionDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SKPartitionDescriptor;
  v5 = [(SKPartitionDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"descriptor"];
    innerDescriptor = v5->_innerDescriptor;
    v5->_innerDescriptor = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
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
  innerDescriptor = [(SKPartitionDescriptor *)self innerDescriptor];
  v8 = [v3 stringWithFormat:@"<%@: { size: %lu, innerDescriptor: %@}>", v5, v6, innerDescriptor];

  return v8;
}

@end