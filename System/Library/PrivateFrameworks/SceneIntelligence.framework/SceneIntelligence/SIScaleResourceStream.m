@interface SIScaleResourceStream
+ (id)cvPixelStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6 cvPixelBufferProps:(id)a7;
@end

@implementation SIScaleResourceStream

+ (id)cvPixelStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6 cvPixelBufferProps:(id)a7
{
  v11 = a7;
  v12 = a3;
  v13 = objc_alloc_init(SIScaleResourceStream);
  [(PSResourceStream *)v13 setKey:v12];

  [(PSResourceStream *)v13 setProvider:9];
  [(PSCVPixelStream *)v13 setDeallocator:a6];
  [(PSCVPixelStream *)v13 setAllocator:a5];
  [(PSResourceStream *)v13 setOptions:a4->storage_mode, a4->creation_mode];
  cvPixelBufferProps = v13->_cvPixelBufferProps;
  v13->_cvPixelBufferProps = v11;

  return v13;
}

@end