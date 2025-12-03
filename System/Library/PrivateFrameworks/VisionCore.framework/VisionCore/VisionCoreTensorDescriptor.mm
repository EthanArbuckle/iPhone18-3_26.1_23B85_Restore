@interface VisionCoreTensorDescriptor
+ (id)descriptorForEspressoBlobDimensions:(id *)dimensions dataType:(unint64_t)type error:(id *)error;
- (BOOL)E5RTExecutionContextAssignNewTensorInstanceToNamedObjects:(id)objects error:(id *)error;
- (BOOL)getByteOffset:(unint64_t *)offset forPosition:(const unint64_t *)position rank:(unint64_t)rank error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VisionCoreTensorDescriptor)initWithANSTTensorDescriptor:(id)descriptor;
- (VisionCoreTensorDescriptor)initWithCoder:(id)coder;
- (VisionCoreTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type shape:(id)shape strides:(id)strides;
- (VisionCoreTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type shape:(id)shape strides:(id)strides storageByteCount:(unint64_t)count;
- (id)E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:(id *)error;
- (id)confidencesDescriptorWithLabelsFileURL:(id)l error:(id *)error;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreTensorDescriptor

- (VisionCoreTensorDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"type"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shape"];
    if (v7)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strides"];
      if (v8)
      {
        self = -[VisionCoreTensorDescriptor initWithName:dataType:shape:strides:storageByteCount:](self, "initWithName:dataType:shape:strides:storageByteCount:", v5, v6, v7, v8, [coderCopy decodeInt64ForKey:@"storageByteCount"]);
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInteger:self->_dataType forKey:@"type"];
  [coderCopy encodeObject:self->_shape forKey:@"shape"];
  [coderCopy encodeObject:self->_strides forKey:@"strides"];
  [coderCopy encodeInt64:self->_storageByteCount forKey:@"storageByteCount"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = VisionCoreTensorDescriptor;
  v4 = [(VisionCoreDescriptor *)&v10 description];
  name = [(VisionCoreTensorDescriptor *)self name];
  v6 = NSStringFromVisionCoreTensorDataType([(VisionCoreTensorDescriptor *)self dataType]);
  shape = [(VisionCoreTensorDescriptor *)self shape];
  v8 = [v3 initWithFormat:@"%@ %@ %@ %@", v4, name, v6, shape];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(VisionCoreTensorDescriptor *)self name];
      name2 = [(VisionCoreTensorDescriptor *)v5 name];
      v8 = [name isEqualToString:name2];

      if (v8 && (v9 = -[VisionCoreTensorDescriptor dataType](self, "dataType"), v9 == -[VisionCoreTensorDescriptor dataType](v5, "dataType")) && (-[VisionCoreTensorDescriptor shape](self, "shape"), v10 = objc_claimAutoreleasedReturnValue(), -[VisionCoreTensorDescriptor shape](v5, "shape"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, v10, v12))
      {
        strides = [(VisionCoreTensorDescriptor *)self strides];
        strides2 = [(VisionCoreTensorDescriptor *)v5 strides];
        v15 = [strides isEqual:strides2];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  name = [(VisionCoreTensorDescriptor *)self name];
  v3 = [name hash];

  return v3;
}

- (BOOL)getByteOffset:(unint64_t *)offset forPosition:(const unint64_t *)position rank:(unint64_t)rank error:(id *)error
{
  shape = [(VisionCoreTensorDescriptor *)self shape];
  if ([shape rank] == rank)
  {
    sizes = [shape sizes];
    strides = [(VisionCoreTensorDescriptor *)self strides];
    byteOffsets = [strides byteOffsets];

    if (rank)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = position[v15];
        if (v17 >= *(sizes + 8 * v15))
        {
          break;
        }

        v16 += *(byteOffsets + 8 * v15++) * v17;
        if (rank == v15)
        {
          goto LABEL_10;
        }
      }

      if (error)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"A position of %lu at index %lu is out of range for a shape of %@", position[v15], v15, shape];
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
LABEL_10:
      *offset = v16;
      LOBYTE(error) = 1;
    }
  }

  else if (error)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"A rank of %lu is out of range for a shape of %@", rank, shape, v21];
LABEL_13:
    v19 = v18;
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v18];

    LOBYTE(error) = 0;
  }

  return error;
}

- (VisionCoreTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type shape:(id)shape strides:(id)strides storageByteCount:(unint64_t)count
{
  nameCopy = name;
  shapeCopy = shape;
  stridesCopy = strides;
  v20.receiver = self;
  v20.super_class = VisionCoreTensorDescriptor;
  v15 = [(VisionCoreTensorDescriptor *)&v20 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v16;

    v15->_dataType = type;
    objc_storeStrong(&v15->_shape, shape);
    v18 = stridesCopy;
    if (!stridesCopy)
    {
      v18 = [[VisionCoreTensorStrides alloc] initWithShape:shapeCopy dataType:type];
    }

    objc_storeStrong(&v15->_strides, v18);
    if (!stridesCopy)
    {
    }

    v15->_storageByteCount = count;
  }

  return v15;
}

- (VisionCoreTensorDescriptor)initWithName:(id)name dataType:(unint64_t)type shape:(id)shape strides:(id)strides
{
  stridesCopy = strides;
  shapeCopy = shape;
  nameCopy = name;
  v13 = -[VisionCoreTensorDescriptor initWithName:dataType:shape:strides:storageByteCount:](self, "initWithName:dataType:shape:strides:storageByteCount:", nameCopy, type, shapeCopy, stridesCopy, (type >> 3) * [shapeCopy elementCount]);

  return v13;
}

+ (id)descriptorForEspressoBlobDimensions:(id *)dimensions dataType:(unint64_t)type error:(id *)error
{
  if (dimensions->var0)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:dimensions->var0];
    v9 = *&dimensions->var2;
    v14[0] = *&dimensions->var0;
    v14[1] = v9;
    var4 = dimensions->var4;
    v10 = [VisionCoreEspressoTensorShape shapeForBlobDimensions:v14];
    v11 = [[self alloc] initWithName:v8 dataType:type shape:v10 strides:0];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:{@"name cannot be NULL", type}];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)confidencesDescriptorWithLabelsFileURL:(id)l error:(id *)error
{
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    labelsFileURL = [(VisionCoreTensorDescriptor *)selfCopy labelsFileURL];
    v9 = [labelsFileURL isEqual:lCopy];

    if (v9)
    {
      goto LABEL_17;
    }
  }

  dataType = [(VisionCoreTensorDescriptor *)self dataType];
  v11 = dataType;
  if (dataType == 65552 || dataType == 65568)
  {
    shape = [(VisionCoreTensorDescriptor *)self shape];
    v27 = 0;
    selfCopy = 0;
    if ([shape getOneDimensionalArrayDimensionIndex:&v27 error:error])
    {
      v13 = [VisionCoreLabeledConfidencesDescriptor alloc];
      name = [(VisionCoreTensorDescriptor *)self name];
      strides = [(VisionCoreTensorDescriptor *)self strides];
      v16 = [(VisionCoreLabeledConfidencesDescriptor *)v13 initWithName:name dataType:v11 shape:shape strides:strides labelsFileURL:lCopy];

      elementCount = [shape elementCount];
      labels = [(VisionCoreLabeledConfidencesDescriptor *)v16 labels];
      v19 = [labels count];

      if (v19 == elementCount)
      {
        selfCopy = v16;
      }

      else
      {
        if (error)
        {
          v23 = objc_alloc(MEMORY[0x1E696AEC0]);
          path = [lCopy path];
          v25 = [v23 initWithFormat:@"Labels file %@ contains %lu entries but the confidences descriptor has %lu elements", path, v19, elementCount];

          *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v25];
        }

        selfCopy = 0;
      }
    }
  }

  else
  {
    if (error)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = NSStringFromVisionCoreTensorDataType(v11);
      v22 = [v20 initWithFormat:@"%@ is not a supported confidences type", v21];

      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v22];
    }

    selfCopy = 0;
  }

LABEL_17:

  return selfCopy;
}

- (BOOL)E5RTExecutionContextAssignNewTensorInstanceToNamedObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v7 = [(VisionCoreTensorDescriptor *)self E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = IOSurfaceCreate(v7);
  if (!v9)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not create IOSurfaceRef with properties %@", v8];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v12];

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  v10 = v9;
  name = [(VisionCoreTensorDescriptor *)self name];
  LOBYTE(error) = [objectsCopy assignSurface:v10 toName:name error:error];

  CFRelease(v10);
LABEL_7:

  return error & 1;
}

- (id)E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:(id *)error
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[VisionCoreTensorDescriptor storageByteCount](self, "storageByteCount")}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696CE30]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[VisionCoreTensorDescriptor dataType](self, "dataType") >> 3}];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696CE50]];

  return v4;
}

- (VisionCoreTensorDescriptor)initWithANSTTensorDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  dataType = [descriptorCopy dataType];
  v6 = 131080;
  if (dataType > 99)
  {
    if (dataType > 103)
    {
      if (dataType == 104)
      {
        v6 = 65552;
        goto LABEL_18;
      }

      if (dataType == 105)
      {
        v6 = 131104;
        goto LABEL_18;
      }
    }

    else
    {
      if (dataType == 100)
      {
        v6 = 65600;
        goto LABEL_18;
      }

      if (dataType == 102)
      {
        v6 = 65568;
        goto LABEL_18;
      }
    }

LABEL_14:
    v6 = 0;
    goto LABEL_18;
  }

  if (dataType == 67)
  {
    v6 = 196616;
    goto LABEL_18;
  }

  if (dataType == 73)
  {
    v6 = 196640;
    goto LABEL_18;
  }

  if (dataType != 99)
  {
    goto LABEL_14;
  }

LABEL_18:
  v7 = -[VisionCoreTensorShape initWithBatchNumber:channels:height:width:]([VisionCoreTensorShape alloc], "initWithBatchNumber:channels:height:width:", [descriptorCopy lengthOfDimensionAt:0], objc_msgSend(descriptorCopy, "lengthOfDimensionAt:", 1), objc_msgSend(descriptorCopy, "lengthOfDimensionAt:", 2), objc_msgSend(descriptorCopy, "lengthOfDimensionAt:", 3));
  v8 = [[VisionCoreTensorStrides alloc] initWithShape:v7 dataType:v6];
  name = [descriptorCopy name];
  v10 = [(VisionCoreTensorDescriptor *)self initWithName:name dataType:v6 shape:v7 strides:v8];

  return v10;
}

@end