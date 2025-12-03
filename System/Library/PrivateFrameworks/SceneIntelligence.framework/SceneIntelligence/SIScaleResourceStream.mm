@interface SIScaleResourceStream
+ (id)cvPixelStreamWithResourceKey:(id)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator cvPixelBufferProps:(id)props;
@end

@implementation SIScaleResourceStream

+ (id)cvPixelStreamWithResourceKey:(id)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator cvPixelBufferProps:(id)props
{
  propsCopy = props;
  keyCopy = key;
  v13 = objc_alloc_init(SIScaleResourceStream);
  [(PSResourceStream *)v13 setKey:keyCopy];

  [(PSResourceStream *)v13 setProvider:9];
  [(PSCVPixelStream *)v13 setDeallocator:deallocator];
  [(PSCVPixelStream *)v13 setAllocator:allocator];
  [(PSResourceStream *)v13 setOptions:options->storage_mode, options->creation_mode];
  cvPixelBufferProps = v13->_cvPixelBufferProps;
  v13->_cvPixelBufferProps = propsCopy;

  return v13;
}

@end