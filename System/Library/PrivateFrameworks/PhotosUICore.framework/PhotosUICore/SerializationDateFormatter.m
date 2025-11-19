@interface SerializationDateFormatter
@end

@implementation SerializationDateFormatter

uint64_t ___SerializationDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _SerializationDateFormatter__dateFormatter;
  _SerializationDateFormatter__dateFormatter = v0;

  v2 = _SerializationDateFormatter__dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

@end