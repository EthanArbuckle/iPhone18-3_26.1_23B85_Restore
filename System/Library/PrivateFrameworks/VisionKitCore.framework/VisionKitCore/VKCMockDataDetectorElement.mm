@interface VKCMockDataDetectorElement
- (VKCMockDataDetectorElement)initWithDictionary:(id)a3;
- (_NSRange)characterRange;
@end

@implementation VKCMockDataDetectorElement

- (VKCMockDataDetectorElement)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = VKCMockDataDetectorElement;
  v5 = [(VKCBaseDataDetectorElement *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:VKCMockResultDataDetectorTypesKey];
    v5->_dataDetectorTypes = [v6 unsignedLongLongValue];

    v7 = [v4 objectForKeyedSubscript:VKCMockResultDataDetectorQuadsKey];
    v8 = v7;
    v9 = MEMORY[0x1E695E0F0];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v10 vk_compactMap:&__block_literal_global_18];

    boundingQuads = v5->_boundingQuads;
    v5->_boundingQuads = v11;

    v13 = [v4 objectForKeyedSubscript:VKCMockResultDataDetectorRangeKey];
    v14 = [v13 objectForKeyedSubscript:VKCMockResultRangeLocationKey];
    v15 = [v14 unsignedLongValue];

    v16 = [v13 objectForKeyedSubscript:VKCMockResultRangeLengthKey];
    v17 = [v16 unsignedLongValue];

    v5->_characterRange.location = v15;
    v5->_characterRange.length = v17;
  }

  return v5;
}

VKQuad *__49__VKCMockDataDetectorElement_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[VKQuad alloc] initWithDictionary:v2];

  return v3;
}

- (_NSRange)characterRange
{
  p_characterRange = &self->_characterRange;
  location = self->_characterRange.location;
  length = p_characterRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end