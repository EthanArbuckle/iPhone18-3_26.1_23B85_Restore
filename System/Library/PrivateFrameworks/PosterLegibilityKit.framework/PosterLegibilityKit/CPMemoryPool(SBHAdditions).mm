@interface CPMemoryPool(SBHAdditions)
+ (id)plk_sharedMemoryPoolForDescriptor:()SBHAdditions;
+ (id)plk_sharedMemoryPoolForMaxSize:()SBHAdditions scale:contextType:;
- (BOOL)plk_compatibleWithDescriptor:()SBHAdditions;
@end

@implementation CPMemoryPool(SBHAdditions)

+ (id)plk_sharedMemoryPoolForMaxSize:()SBHAdditions scale:contextType:
{
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  v8[3] = a6;
  v6 = [a1 plk_sharedMemoryPoolForDescriptor:v8];

  return v6;
}

+ (id)plk_sharedMemoryPoolForDescriptor:()SBHAdditions
{
  if (plk_sharedMemoryPoolForDescriptor__onceToken != -1)
  {
    +[CPMemoryPool(SBHAdditions) plk_sharedMemoryPoolForDescriptor:];
  }

  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = MEMORY[0x277CCACA8];
  v9 = PLKGraphicsContextCalculateBytesNeededForSize(v7, *a3, v5, v6);
  v10 = PLKGraphicsContextTypeDescription(*(a3 + 24));
  v11 = [v8 stringWithFormat:@"PosterLegibilityKit-%zu-%@", v9, v10];

  os_unfair_lock_lock(&plk_sharedMemoryPoolForDescriptor__lock);
  v12 = [plk_sharedMemoryPoolForDescriptor__sharedMemoryPoolsForDescriptor objectForKey:v11];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x277CEC5B0]) initWithLabel:objc_msgSend(v11 slotLength:{"UTF8String"), PLKGraphicsContextCalculateBytesNeededForSize(v7, v4, v5, v6)}];
    if (v12)
    {
      [plk_sharedMemoryPoolForDescriptor__sharedMemoryPoolsForDescriptor setObject:v12 forKey:v11];
    }
  }

  os_unfair_lock_unlock(&plk_sharedMemoryPoolForDescriptor__lock);

  return v12;
}

- (BOOL)plk_compatibleWithDescriptor:()SBHAdditions
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = *(a3 + 3);
  v7 = [a1 slotLength];
  return PLKGraphicsContextCalculateBytesNeededForSize(v6, v3, v4, v5) <= v7;
}

@end