@interface VisionCoreImageTensorDescriptor
- (BOOL)isEqual:(id)a3;
- (VisionCoreImageTensorDescriptor)initWithANSTPixelBufferDescriptor:(id)a3;
- (VisionCoreImageTensorDescriptor)initWithCoder:(id)a3;
- (VisionCoreImageTensorDescriptor)initWithName:(id)a3 pixelFormatType:(unsigned int)a4 pixelWidth:(unint64_t)a5 pixelHeight:(unint64_t)a6;
- (id)E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:(id *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreImageTensorDescriptor

- (VisionCoreImageTensorDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    self = -[VisionCoreImageTensorDescriptor initWithName:pixelFormatType:pixelWidth:pixelHeight:](self, "initWithName:pixelFormatType:pixelWidth:pixelHeight:", v5, [v4 decodeInt32ForKey:@"pixelFormat"], objc_msgSend(v4, "decodeInt32ForKey:", @"w"), objc_msgSend(v4, "decodeInt32ForKey:", @"h"));
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(VisionCoreTensorDescriptor *)self name];
  [v5 encodeObject:v4 forKey:@"name"];

  [v5 encodeInt32:-[VisionCoreImageTensorDescriptor pixelFormatType](self forKey:{"pixelFormatType"), @"pixelFormat"}];
  [v5 encodeInt32:-[VisionCoreImageTensorDescriptor pixelWidth](self forKey:{"pixelWidth"), @"w"}];
  [v5 encodeInt32:-[VisionCoreImageTensorDescriptor pixelHeight](self forKey:{"pixelHeight"), @"h"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VisionCoreImageTensorDescriptor *)self pixelFormatType];
      if (v6 == [(VisionCoreImageTensorDescriptor *)v5 pixelFormatType]&& (v7 = [(VisionCoreImageTensorDescriptor *)self pixelWidth], v7 == [(VisionCoreImageTensorDescriptor *)v5 pixelWidth]) && (v8 = [(VisionCoreImageTensorDescriptor *)self pixelHeight], v8 == [(VisionCoreImageTensorDescriptor *)v5 pixelHeight]))
      {
        v9 = [(VisionCoreImageTensorDescriptor *)self bytesPerRow];
        v10 = v9 == [(VisionCoreImageTensorDescriptor *)v5 bytesPerRow];
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
  v4 = [(VisionCoreImageTensorDescriptor *)self pixelFormatType];
  v5 = v4 ^ [(VisionCoreImageTensorDescriptor *)self pixelWidth];
  v6 = v5 ^ [(VisionCoreImageTensorDescriptor *)self pixelHeight];
  return v3 ^ v6 ^ [(VisionCoreImageTensorDescriptor *)self bytesPerRow];
}

- (VisionCoreImageTensorDescriptor)initWithName:(id)a3 pixelFormatType:(unsigned int)a4 pixelWidth:(unint64_t)a5 pixelHeight:(unint64_t)a6
{
  v8 = *&a4;
  v10 = a3;
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
  v13 = [[VisionCoreTensorShape alloc] initWithPixelFormatType:v8 width:a5 height:a6];
  v17.receiver = self;
  v17.super_class = VisionCoreImageTensorDescriptor;
  v14 = [(VisionCoreTensorDescriptor *)&v17 initWithName:v10 dataType:v12 shape:v13 strides:0];

  if (v14)
  {
    v14->_pixelFormatType = v8;
    v14->_pixelWidth = a5;
    v14->_pixelHeight = a6;
    v15 = ((v12 >> 3) & 0xF) * a5;
    if (v11)
    {
      v15 = 0;
    }

    v14->_bytesPerRow = v15;
  }

  return v14;
}

- (VisionCoreImageTensorDescriptor)initWithANSTPixelBufferDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 pixelFormatType];
  v6 = [v4 width];
  v7 = [v4 height];
  v8 = [v4 name];

  v9 = [(VisionCoreImageTensorDescriptor *)self initWithName:v8 pixelFormatType:v5 pixelWidth:v6 pixelHeight:v7];
  return v9;
}

- (id)E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:(id *)a3
{
  v11.receiver = self;
  v11.super_class = VisionCoreImageTensorDescriptor;
  v4 = [(VisionCoreTensorDescriptor *)&v11 E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:a3];
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