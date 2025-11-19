@interface ICPlayInfoResponse
- (ICPlayInfoResponse)initWithResponseDictionary:(id)a3;
@end

@implementation ICPlayInfoResponse

- (ICPlayInfoResponse)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICPlayInfoResponse;
  v5 = [(ICPlayInfoResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end