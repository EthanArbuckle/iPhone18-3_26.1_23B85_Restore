@interface PSMTLTextureStream
+ (id)mtlTextureStreamWithKey:(char *)key options:(ps_resource_options *)options descriptor:(id)descriptor;
+ (id)mtlTextureStreamWithResourceKey:(id)key options:(ps_resource_options *)options descriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSMTLTextureStream)init;
- (PSMTLTextureStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = PSMTLTextureStream;
  [(PSResourceStream *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[MTLTextureDescriptor textureType](self->_mtlTextureDescriptor forKey:{"textureType"), @"textureType"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor pixelFormat](self->_mtlTextureDescriptor forKey:{"pixelFormat"), @"pixelFormat"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor width](self->_mtlTextureDescriptor forKey:{"width"), @"width"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor height](self->_mtlTextureDescriptor forKey:{"height"), @"height"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor depth](self->_mtlTextureDescriptor forKey:{"depth"), @"depth"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor mipmapLevelCount](self->_mtlTextureDescriptor forKey:{"mipmapLevelCount"), @"mipmapLevelCount"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor sampleCount](self->_mtlTextureDescriptor forKey:{"sampleCount"), @"sampleCount"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor arrayLength](self->_mtlTextureDescriptor forKey:{"arrayLength"), @"arrayLength"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor resourceOptions](self->_mtlTextureDescriptor forKey:{"resourceOptions"), @"resourceOptions"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor cpuCacheMode](self->_mtlTextureDescriptor forKey:{"cpuCacheMode"), @"cpuCacheMode"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor storageMode](self->_mtlTextureDescriptor forKey:{"storageMode"), @"storageMode"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor hazardTrackingMode](self->_mtlTextureDescriptor forKey:{"hazardTrackingMode"), @"hazardTrackingMode"}];
  [coderCopy encodeInteger:-[MTLTextureDescriptor usage](self->_mtlTextureDescriptor forKey:{"usage"), @"usage"}];
  [coderCopy encodeBool:-[MTLTextureDescriptor allowGPUOptimizedContents](self->_mtlTextureDescriptor forKey:{"allowGPUOptimizedContents"), @"allowGPUOptimizedContents"}];
  swizzle = [(MTLTextureDescriptor *)self->_mtlTextureDescriptor swizzle];
  [coderCopy encodeBytes:&swizzle length:4 forKey:@"swizzle"];
}

- (PSMTLTextureStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PSMTLTextureStream;
  v5 = [(PSResourceStream *)&v13 initWithCoder:coderCopy];
  p_isa = &v5->super.super.isa;
  if (!v5)
  {
    goto LABEL_4;
  }

  [(PSResourceStream *)v5 setResourceClass:6];
  v7 = objc_alloc_init(MEMORY[0x277CD7058]);
  v8 = p_isa[18];
  p_isa[18] = v7;

  [p_isa[18] setTextureType:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"textureType"}];
  [p_isa[18] setPixelFormat:objc_msgSend(coderCopy, "decodeIntegerForKey:", @"pixelFormat"];
  [p_isa[18] setWidth:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"width"}];
  [p_isa[18] setHeight:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"height"}];
  [p_isa[18] setDepth:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"depth"}];
  [p_isa[18] setMipmapLevelCount:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"mipmapLevelCount"}];
  [p_isa[18] setSampleCount:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"sampleCount"}];
  [p_isa[18] setArrayLength:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"arrayLength"}];
  [p_isa[18] setResourceOptions:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"resourceOptions"}];
  [p_isa[18] setCpuCacheMode:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"cpuCacheMode"}];
  [p_isa[18] setStorageMode:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"storageMode"}];
  [p_isa[18] setHazardTrackingMode:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"hazardTrackingMode"}];
  [p_isa[18] setUsage:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"usage"}];
  [p_isa[18] setAllowGPUOptimizedContents:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"allowGPUOptimizedContents"}];
  v12 = 0;
  v9 = [coderCopy decodeBytesForKey:@"swizzle" returnedLength:&v12];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v15.receiver = self;
    v15.super_class = PSMTLTextureStream;
    if ([(PSResourceStream *)&v15 isEqual:v6])
    {
      mtlTextureDescriptor = self->_mtlTextureDescriptor;
      mtlTextureDescriptor = [(PSMTLTextureStream *)v6 mtlTextureDescriptor];
      if ([(MTLTextureDescriptor *)mtlTextureDescriptor isEqual:mtlTextureDescriptor])
      {
        retainableAllocator = self->_retainableAllocator;
        retainableAllocator = [(PSMTLTextureStream *)v6 retainableAllocator];
        if (retainableAllocator == retainableAllocator)
        {
          retainableDeallocator = self->_retainableDeallocator;
          retainableDeallocator = [(PSMTLTextureStream *)v6 retainableDeallocator];
          v11 = retainableDeallocator == retainableDeallocator;
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

+ (id)mtlTextureStreamWithKey:(char *)key options:(ps_resource_options *)options descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v9 = [PSMTLTextureStream mtlTextureStreamWithResourceKey:v8 options:options descriptor:descriptorCopy];

  return v9;
}

+ (id)mtlTextureStreamWithResourceKey:(id)key options:(ps_resource_options *)options descriptor:(id)descriptor
{
  keyCopy = key;
  descriptorCopy = descriptor;
  v9 = objc_alloc_init(PSMTLTextureStream);
  [(PSResourceStream *)v9 setKey:keyCopy];
  objc_storeStrong(&v9->_mtlTextureDescriptor, descriptor);
  [(PSResourceStream *)v9 setOptions:options->storage_mode, options->creation_mode];

  return v9;
}

- (BOOL)validate:(id *)validate
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource must have a valid/supported class"];
  if (validate)
  {
    *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v4];
  }

  return 0;
}

@end