@interface PSMTLTextureStream
+ (id)mtlTextureStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 descriptor:(id)a5;
+ (id)mtlTextureStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 descriptor:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSMTLTextureStream)init;
- (PSMTLTextureStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSMTLTextureStream

- (PSMTLTextureStream)init
{
  v5.receiver = self;
  v5.super_class = PSMTLTextureStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:6];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PSMTLTextureStream;
  [(PSResourceStream *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[MTLTextureDescriptor textureType](self->_mtlTextureDescriptor forKey:{"textureType"), @"textureType"}];
  [v4 encodeInteger:-[MTLTextureDescriptor pixelFormat](self->_mtlTextureDescriptor forKey:{"pixelFormat"), @"pixelFormat"}];
  [v4 encodeInteger:-[MTLTextureDescriptor width](self->_mtlTextureDescriptor forKey:{"width"), @"width"}];
  [v4 encodeInteger:-[MTLTextureDescriptor height](self->_mtlTextureDescriptor forKey:{"height"), @"height"}];
  [v4 encodeInteger:-[MTLTextureDescriptor depth](self->_mtlTextureDescriptor forKey:{"depth"), @"depth"}];
  [v4 encodeInteger:-[MTLTextureDescriptor mipmapLevelCount](self->_mtlTextureDescriptor forKey:{"mipmapLevelCount"), @"mipmapLevelCount"}];
  [v4 encodeInteger:-[MTLTextureDescriptor sampleCount](self->_mtlTextureDescriptor forKey:{"sampleCount"), @"sampleCount"}];
  [v4 encodeInteger:-[MTLTextureDescriptor arrayLength](self->_mtlTextureDescriptor forKey:{"arrayLength"), @"arrayLength"}];
  [v4 encodeInteger:-[MTLTextureDescriptor resourceOptions](self->_mtlTextureDescriptor forKey:{"resourceOptions"), @"resourceOptions"}];
  [v4 encodeInteger:-[MTLTextureDescriptor cpuCacheMode](self->_mtlTextureDescriptor forKey:{"cpuCacheMode"), @"cpuCacheMode"}];
  [v4 encodeInteger:-[MTLTextureDescriptor storageMode](self->_mtlTextureDescriptor forKey:{"storageMode"), @"storageMode"}];
  [v4 encodeInteger:-[MTLTextureDescriptor hazardTrackingMode](self->_mtlTextureDescriptor forKey:{"hazardTrackingMode"), @"hazardTrackingMode"}];
  [v4 encodeInteger:-[MTLTextureDescriptor usage](self->_mtlTextureDescriptor forKey:{"usage"), @"usage"}];
  [v4 encodeBool:-[MTLTextureDescriptor allowGPUOptimizedContents](self->_mtlTextureDescriptor forKey:{"allowGPUOptimizedContents"), @"allowGPUOptimizedContents"}];
  v5 = [(MTLTextureDescriptor *)self->_mtlTextureDescriptor swizzle];
  [v4 encodeBytes:&v5 length:4 forKey:@"swizzle"];
}

- (PSMTLTextureStream)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PSMTLTextureStream;
  v5 = [(PSResourceStream *)&v13 initWithCoder:v4];
  p_isa = &v5->super.super.isa;
  if (!v5)
  {
    goto LABEL_4;
  }

  [(PSResourceStream *)v5 setResourceClass:6];
  v7 = objc_alloc_init(MEMORY[0x277CD7058]);
  v8 = p_isa[18];
  p_isa[18] = v7;

  [p_isa[18] setTextureType:{objc_msgSend(v4, "decodeIntegerForKey:", @"textureType"}];
  [p_isa[18] setPixelFormat:objc_msgSend(v4, "decodeIntegerForKey:", @"pixelFormat"];
  [p_isa[18] setWidth:{objc_msgSend(v4, "decodeIntegerForKey:", @"width"}];
  [p_isa[18] setHeight:{objc_msgSend(v4, "decodeIntegerForKey:", @"height"}];
  [p_isa[18] setDepth:{objc_msgSend(v4, "decodeIntegerForKey:", @"depth"}];
  [p_isa[18] setMipmapLevelCount:{objc_msgSend(v4, "decodeIntegerForKey:", @"mipmapLevelCount"}];
  [p_isa[18] setSampleCount:{objc_msgSend(v4, "decodeIntegerForKey:", @"sampleCount"}];
  [p_isa[18] setArrayLength:{objc_msgSend(v4, "decodeIntegerForKey:", @"arrayLength"}];
  [p_isa[18] setResourceOptions:{objc_msgSend(v4, "decodeIntegerForKey:", @"resourceOptions"}];
  [p_isa[18] setCpuCacheMode:{objc_msgSend(v4, "decodeIntegerForKey:", @"cpuCacheMode"}];
  [p_isa[18] setStorageMode:{objc_msgSend(v4, "decodeIntegerForKey:", @"storageMode"}];
  [p_isa[18] setHazardTrackingMode:{objc_msgSend(v4, "decodeIntegerForKey:", @"hazardTrackingMode"}];
  [p_isa[18] setUsage:{objc_msgSend(v4, "decodeIntegerForKey:", @"usage"}];
  [p_isa[18] setAllowGPUOptimizedContents:{objc_msgSend(v4, "decodeBoolForKey:", @"allowGPUOptimizedContents"}];
  v12 = 0;
  v9 = [v4 decodeBytesForKey:@"swizzle" returnedLength:&v12];
  if (v12 == 4)
  {
    [p_isa[18] setSwizzle:*v9];
    v10 = p_isa;
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v15.receiver = self;
    v15.super_class = PSMTLTextureStream;
    if ([(PSResourceStream *)&v15 isEqual:v6])
    {
      mtlTextureDescriptor = self->_mtlTextureDescriptor;
      v8 = [(PSMTLTextureStream *)v6 mtlTextureDescriptor];
      if ([(MTLTextureDescriptor *)mtlTextureDescriptor isEqual:v8])
      {
        retainableAllocator = self->_retainableAllocator;
        v10 = [(PSMTLTextureStream *)v6 retainableAllocator];
        if (retainableAllocator == v10)
        {
          retainableDeallocator = self->_retainableDeallocator;
          v13 = [(PSMTLTextureStream *)v6 retainableDeallocator];
          v11 = retainableDeallocator == v13;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)mtlTextureStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 descriptor:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v9 = [PSMTLTextureStream mtlTextureStreamWithResourceKey:v8 options:a4 descriptor:v7];

  return v9;
}

+ (id)mtlTextureStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 descriptor:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(PSMTLTextureStream);
  [(PSResourceStream *)v9 setKey:v7];
  objc_storeStrong(&v9->_mtlTextureDescriptor, a5);
  [(PSResourceStream *)v9 setOptions:a4->storage_mode, a4->creation_mode];

  return v9;
}

- (BOOL)validate:(id *)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource must have a valid/supported class"];
  if (a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v4];
  }

  return 0;
}

@end