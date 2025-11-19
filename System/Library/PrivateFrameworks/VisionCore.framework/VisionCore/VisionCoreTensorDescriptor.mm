@interface VisionCoreTensorDescriptor
+ (id)descriptorForEspressoBlobDimensions:(id *)a3 dataType:(unint64_t)a4 error:(id *)a5;
- (BOOL)E5RTExecutionContextAssignNewTensorInstanceToNamedObjects:(id)a3 error:(id *)a4;
- (BOOL)getByteOffset:(unint64_t *)a3 forPosition:(const unint64_t *)a4 rank:(unint64_t)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (VisionCoreTensorDescriptor)initWithANSTTensorDescriptor:(id)a3;
- (VisionCoreTensorDescriptor)initWithCoder:(id)a3;
- (VisionCoreTensorDescriptor)initWithName:(id)a3 dataType:(unint64_t)a4 shape:(id)a5 strides:(id)a6;
- (VisionCoreTensorDescriptor)initWithName:(id)a3 dataType:(unint64_t)a4 shape:(id)a5 strides:(id)a6 storageByteCount:(unint64_t)a7;
- (id)E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:(id *)a3;
- (id)confidencesDescriptorWithLabelsFileURL:(id)a3 error:(id *)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreTensorDescriptor

- (VisionCoreTensorDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"type"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shape"];
    if (v7)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"strides"];
      if (v8)
      {
        self = -[VisionCoreTensorDescriptor initWithName:dataType:shape:strides:storageByteCount:](self, "initWithName:dataType:shape:strides:storageByteCount:", v5, v6, v7, v8, [v4 decodeInt64ForKey:@"storageByteCount"]);
        v9 = self;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeInteger:self->_dataType forKey:@"type"];
  [v5 encodeObject:self->_shape forKey:@"shape"];
  [v5 encodeObject:self->_strides forKey:@"strides"];
  [v5 encodeInt64:self->_storageByteCount forKey:@"storageByteCount"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = VisionCoreTensorDescriptor;
  v4 = [(VisionCoreDescriptor *)&v10 description];
  v5 = [(VisionCoreTensorDescriptor *)self name];
  v6 = NSStringFromVisionCoreTensorDataType([(VisionCoreTensorDescriptor *)self dataType]);
  v7 = [(VisionCoreTensorDescriptor *)self shape];
  v8 = [v3 initWithFormat:@"%@ %@ %@ %@", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VisionCoreTensorDescriptor *)self name];
      v7 = [(VisionCoreTensorDescriptor *)v5 name];
      v8 = [v6 isEqualToString:v7];

      if (v8 && (v9 = -[VisionCoreTensorDescriptor dataType](self, "dataType"), v9 == -[VisionCoreTensorDescriptor dataType](v5, "dataType")) && (-[VisionCoreTensorDescriptor shape](self, "shape"), v10 = objc_claimAutoreleasedReturnValue(), -[VisionCoreTensorDescriptor shape](v5, "shape"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, v10, v12))
      {
        v13 = [(VisionCoreTensorDescriptor *)self strides];
        v14 = [(VisionCoreTensorDescriptor *)v5 strides];
        v15 = [v13 isEqual:v14];
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
  v2 = [(VisionCoreTensorDescriptor *)self name];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)getByteOffset:(unint64_t *)a3 forPosition:(const unint64_t *)a4 rank:(unint64_t)a5 error:(id *)a6
{
  v11 = [(VisionCoreTensorDescriptor *)self shape];
  if ([v11 rank] == a5)
  {
    v12 = [v11 sizes];
    v13 = [(VisionCoreTensorDescriptor *)self strides];
    v14 = [v13 byteOffsets];

    if (a5)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = a4[v15];
        if (v17 >= *(v12 + 8 * v15))
        {
          break;
        }

        v16 += *(v14 + 8 * v15++) * v17;
        if (a5 == v15)
        {
          goto LABEL_10;
        }
      }

      if (a6)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"A position of %lu at index %lu is out of range for a shape of %@", a4[v15], v15, v11];
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
LABEL_10:
      *a3 = v16;
      LOBYTE(a6) = 1;
    }
  }

  else if (a6)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"A rank of %lu is out of range for a shape of %@", a5, v11, v21];
LABEL_13:
    v19 = v18;
    *a6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v18];

    LOBYTE(a6) = 0;
  }

  return a6;
}

- (VisionCoreTensorDescriptor)initWithName:(id)a3 dataType:(unint64_t)a4 shape:(id)a5 strides:(id)a6 storageByteCount:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = VisionCoreTensorDescriptor;
  v15 = [(VisionCoreTensorDescriptor *)&v20 init];
  if (v15)
  {
    v16 = [v12 copy];
    name = v15->_name;
    v15->_name = v16;

    v15->_dataType = a4;
    objc_storeStrong(&v15->_shape, a5);
    v18 = v14;
    if (!v14)
    {
      v18 = [[VisionCoreTensorStrides alloc] initWithShape:v13 dataType:a4];
    }

    objc_storeStrong(&v15->_strides, v18);
    if (!v14)
    {
    }

    v15->_storageByteCount = a7;
  }

  return v15;
}

- (VisionCoreTensorDescriptor)initWithName:(id)a3 dataType:(unint64_t)a4 shape:(id)a5 strides:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = -[VisionCoreTensorDescriptor initWithName:dataType:shape:strides:storageByteCount:](self, "initWithName:dataType:shape:strides:storageByteCount:", v12, a4, v11, v10, (a4 >> 3) * [v11 elementCount]);

  return v13;
}

+ (id)descriptorForEspressoBlobDimensions:(id *)a3 dataType:(unint64_t)a4 error:(id *)a5
{
  if (a3->var0)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3->var0];
    v9 = *&a3->var2;
    v14[0] = *&a3->var0;
    v14[1] = v9;
    var4 = a3->var4;
    v10 = [VisionCoreEspressoTensorShape shapeForBlobDimensions:v14];
    v11 = [[a1 alloc] initWithName:v8 dataType:a4 shape:v10 strides:0];
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:{@"name cannot be NULL", a4}];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)confidencesDescriptorWithLabelsFileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = self;
    v8 = [(VisionCoreTensorDescriptor *)v7 labelsFileURL];
    v9 = [v8 isEqual:v6];

    if (v9)
    {
      goto LABEL_17;
    }
  }

  v10 = [(VisionCoreTensorDescriptor *)self dataType];
  v11 = v10;
  if (v10 == 65552 || v10 == 65568)
  {
    v12 = [(VisionCoreTensorDescriptor *)self shape];
    v27 = 0;
    v7 = 0;
    if ([v12 getOneDimensionalArrayDimensionIndex:&v27 error:a4])
    {
      v13 = [VisionCoreLabeledConfidencesDescriptor alloc];
      v14 = [(VisionCoreTensorDescriptor *)self name];
      v15 = [(VisionCoreTensorDescriptor *)self strides];
      v16 = [(VisionCoreLabeledConfidencesDescriptor *)v13 initWithName:v14 dataType:v11 shape:v12 strides:v15 labelsFileURL:v6];

      v17 = [v12 elementCount];
      v18 = [(VisionCoreLabeledConfidencesDescriptor *)v16 labels];
      v19 = [v18 count];

      if (v19 == v17)
      {
        v7 = v16;
      }

      else
      {
        if (a4)
        {
          v23 = objc_alloc(MEMORY[0x1E696AEC0]);
          v24 = [v6 path];
          v25 = [v23 initWithFormat:@"Labels file %@ contains %lu entries but the confidences descriptor has %lu elements", v24, v19, v17];

          *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v25];
        }

        v7 = 0;
      }
    }
  }

  else
  {
    if (a4)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = NSStringFromVisionCoreTensorDataType(v11);
      v22 = [v20 initWithFormat:@"%@ is not a supported confidences type", v21];

      *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v22];
    }

    v7 = 0;
  }

LABEL_17:

  return v7;
}

- (BOOL)E5RTExecutionContextAssignNewTensorInstanceToNamedObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VisionCoreTensorDescriptor *)self E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:a4];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = IOSurfaceCreate(v7);
  if (!v9)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not create IOSurfaceRef with properties %@", v8];
    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v12];

LABEL_6:
    LOBYTE(a4) = 0;
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [(VisionCoreTensorDescriptor *)self name];
  LOBYTE(a4) = [v6 assignSurface:v10 toName:v11 error:a4];

  CFRelease(v10);
LABEL_7:

  return a4 & 1;
}

- (id)E5RTExecutionContextNewIOSurfacePropertiesAndReturnError:(id *)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[VisionCoreTensorDescriptor storageByteCount](self, "storageByteCount")}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696CE30]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[VisionCoreTensorDescriptor dataType](self, "dataType") >> 3}];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696CE50]];

  return v4;
}

- (VisionCoreTensorDescriptor)initWithANSTTensorDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 dataType];
  v6 = 131080;
  if (v5 > 99)
  {
    if (v5 > 103)
    {
      if (v5 == 104)
      {
        v6 = 65552;
        goto LABEL_18;
      }

      if (v5 == 105)
      {
        v6 = 131104;
        goto LABEL_18;
      }
    }

    else
    {
      if (v5 == 100)
      {
        v6 = 65600;
        goto LABEL_18;
      }

      if (v5 == 102)
      {
        v6 = 65568;
        goto LABEL_18;
      }
    }

LABEL_14:
    v6 = 0;
    goto LABEL_18;
  }

  if (v5 == 67)
  {
    v6 = 196616;
    goto LABEL_18;
  }

  if (v5 == 73)
  {
    v6 = 196640;
    goto LABEL_18;
  }

  if (v5 != 99)
  {
    goto LABEL_14;
  }

LABEL_18:
  v7 = -[VisionCoreTensorShape initWithBatchNumber:channels:height:width:]([VisionCoreTensorShape alloc], "initWithBatchNumber:channels:height:width:", [v4 lengthOfDimensionAt:0], objc_msgSend(v4, "lengthOfDimensionAt:", 1), objc_msgSend(v4, "lengthOfDimensionAt:", 2), objc_msgSend(v4, "lengthOfDimensionAt:", 3));
  v8 = [[VisionCoreTensorStrides alloc] initWithShape:v7 dataType:v6];
  v9 = [v4 name];
  v10 = [(VisionCoreTensorDescriptor *)self initWithName:v9 dataType:v6 shape:v7 strides:v8];

  return v10;
}

@end