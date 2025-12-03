@interface VisionCoreImageTensorDescriptor
- (BOOL)isEqual:(id)equal;
- (VisionCoreImageTensorDescriptor)initWithANSTPixelBufferDescriptor:(id)descriptor;
- (VisionCoreImageTensorDescriptor)initWithCoder:(id)coder;
- (VisionCoreImageTensorDescriptor)initWithName:(id)name pixelFormatType:(unsigned int)type pixelWidth:(unint64_t)width pixelHeight:(unint64_t)height;
- (id)E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:(id *)error;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreImageTensorDescriptor

- (VisionCoreImageTensorDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    self = -[VisionCoreImageTensorDescriptor initWithName:pixelFormatType:pixelWidth:pixelHeight:](self, "initWithName:pixelFormatType:pixelWidth:pixelHeight:", v5, [coderCopy decodeInt32ForKey:@"pixelFormat"], objc_msgSend(coderCopy, "decodeInt32ForKey:", @"w"), objc_msgSend(coderCopy, "decodeInt32ForKey:", @"h"));
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(VisionCoreTensorDescriptor *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInt32:-[VisionCoreImageTensorDescriptor pixelFormatType](self forKey:{"pixelFormatType"), @"pixelFormat"}];
  [coderCopy encodeInt32:-[VisionCoreImageTensorDescriptor pixelWidth](self forKey:{"pixelWidth"), @"w"}];
  [coderCopy encodeInt32:-[VisionCoreImageTensorDescriptor pixelHeight](self forKey:{"pixelHeight"), @"h"}];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VisionCoreImageTensorDescriptor;
  v4 = [(VisionCoreTensorDescriptor *)&v8 description];
  v5 = VisionCoreFourCharCodeToString([(VisionCoreImageTensorDescriptor *)self pixelFormatType]);
  v6 = [v3 initWithFormat:@"%@ %@ %lu x %lu", v4, v5, -[VisionCoreImageTensorDescriptor pixelWidth](self, "pixelWidth"), -[VisionCoreImageTensorDescriptor pixelHeight](self, "pixelHeight")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      pixelFormatType = [(VisionCoreImageTensorDescriptor *)self pixelFormatType];
      if (pixelFormatType == [(VisionCoreImageTensorDescriptor *)v5 pixelFormatType]&& (v7 = [(VisionCoreImageTensorDescriptor *)self pixelWidth], v7 == [(VisionCoreImageTensorDescriptor *)v5 pixelWidth]) && (v8 = [(VisionCoreImageTensorDescriptor *)self pixelHeight], v8 == [(VisionCoreImageTensorDescriptor *)v5 pixelHeight]))
      {
        bytesPerRow = [(VisionCoreImageTensorDescriptor *)self bytesPerRow];
        v10 = bytesPerRow == [(VisionCoreImageTensorDescriptor *)v5 bytesPerRow];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = VisionCoreImageTensorDescriptor;
  v3 = [(VisionCoreTensorDescriptor *)&v8 hash];
  pixelFormatType = [(VisionCoreImageTensorDescriptor *)self pixelFormatType];
  v5 = pixelFormatType ^ [(VisionCoreImageTensorDescriptor *)self pixelWidth];
  v6 = v5 ^ [(VisionCoreImageTensorDescriptor *)self pixelHeight];
  return v3 ^ v6 ^ [(VisionCoreImageTensorDescriptor *)self bytesPerRow];
}

- (VisionCoreImageTensorDescriptor)initWithName:(id)name pixelFormatType:(unsigned int)type pixelWidth:(unint64_t)width pixelHeight:(unint64_t)height
{
  v8 = *&type;
  nameCopy = name;
  if (v8 <= 1278226487)
  {
    if (v8 <= 39)
    {
      if (v8 == 8)
      {
        goto LABEL_19;
      }

      if (v8 == 32)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8 == 40)
      {
        goto LABEL_19;
      }

      if (v8 == 1094862674 || v8 == 1111970369)
      {
        goto LABEL_18;
      }
    }

LABEL_21:
    v12 = 0;
    v11 = 1;
    goto LABEL_22;
  }

  if (v8 <= 1380401728)
  {
    if (v8 != 1278226488)
    {
      if (v8 == 1278226534)
      {
        v11 = 0;
        v12 = 983072;
        goto LABEL_22;
      }

      if (v8 == 1278226536)
      {
        v11 = 0;
        v12 = 983056;
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_19:
    v11 = 0;
    v12 = 983048;
    goto LABEL_22;
  }

  if (v8 == 1380401729)
  {
LABEL_18:
    v11 = 0;
    v12 = 196640;
    goto LABEL_22;
  }

  v11 = 0;
  v12 = 65600;
  if (v8 != 1647719521 && v8 != 1815491698)
  {
    goto LABEL_21;
  }

LABEL_22:
  v13 = [[VisionCoreTensorShape alloc] initWithPixelFormatType:v8 width:width height:height];
  v17.receiver = self;
  v17.super_class = VisionCoreImageTensorDescriptor;
  v14 = [(VisionCoreTensorDescriptor *)&v17 initWithName:nameCopy dataType:v12 shape:v13 strides:0];

  if (v14)
  {
    v14->_pixelFormatType = v8;
    v14->_pixelWidth = width;
    v14->_pixelHeight = height;
    v15 = ((v12 >> 3) & 0xF) * width;
    if (v11)
    {
      v15 = 0;
    }

    v14->_bytesPerRow = v15;
  }

  return v14;
}

- (VisionCoreImageTensorDescriptor)initWithANSTPixelBufferDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  pixelFormatType = [descriptorCopy pixelFormatType];
  width = [descriptorCopy width];
  height = [descriptorCopy height];
  name = [descriptorCopy name];

  v9 = [(VisionCoreImageTensorDescriptor *)self initWithName:name pixelFormatType:pixelFormatType pixelWidth:width pixelHeight:height];
  return v9;
}

- (id)E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:(id *)error
{
  v11.receiver = self;
  v11.super_class = VisionCoreImageTensorDescriptor;
  v4 = [(VisionCoreTensorDescriptor *)&v11 E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:error];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[VisionCoreImageTensorDescriptor pixelWidth](self, "pixelWidth")}];
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696D130]];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[VisionCoreImageTensorDescriptor pixelHeight](self, "pixelHeight")}];
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696CF58]];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[VisionCoreImageTensorDescriptor bytesPerRow](self, "bytesPerRow")}];
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696CE58]];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VisionCoreImageTensorDescriptor pixelFormatType](self, "pixelFormatType")}];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696CFC0]];

    v9 = v4;
  }

  return v4;
}

@end