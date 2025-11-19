@interface PICompositionSerializationResult
- (PICompositionSerializationResult)init;
@end

@implementation PICompositionSerializationResult

- (PICompositionSerializationResult)init
{
  v8.receiver = self;
  v8.super_class = PICompositionSerializationResult;
  v2 = [(PICompositionSerializationResult *)&v8 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  data = v2->_data;
  v2->_data = v3;

  formatIdentifier = v2->_formatIdentifier;
  v2->_formatIdentifier = &stru_1F46EAF88;

  formatVersion = v2->_formatVersion;
  v2->_formatVersion = &stru_1F46EAF88;

  return v2;
}

@end