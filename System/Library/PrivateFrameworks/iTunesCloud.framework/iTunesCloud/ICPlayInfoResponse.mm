@interface ICPlayInfoResponse
- (ICPlayInfoResponse)initWithResponseDictionary:(id)dictionary;
@end

@implementation ICPlayInfoResponse

- (ICPlayInfoResponse)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICPlayInfoResponse;
  v5 = [(ICPlayInfoResponse *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end