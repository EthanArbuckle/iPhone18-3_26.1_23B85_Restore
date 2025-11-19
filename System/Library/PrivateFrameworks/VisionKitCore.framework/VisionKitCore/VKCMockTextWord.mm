@interface VKCMockTextWord
- (VKCMockTextWord)initWithWordsDictionary:(id)a3;
- (_NSRange)range;
@end

@implementation VKCMockTextWord

- (VKCMockTextWord)initWithWordsDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VKCMockTextWord;
  v5 = [(VKCMockTextWord *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:VKCMockResultTextKey];
    [(VKCMockTextWord *)v5 setText:v6];

    v7 = [v4 objectForKeyedSubscript:VKCMockResultQuadKey];
    v8 = [[VKQuad alloc] initWithDictionary:v7];
    [(VKCMockTextWord *)v5 setQuad:v8];
  }

  return v5;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end