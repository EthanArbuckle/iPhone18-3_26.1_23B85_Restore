@interface ICAuthorizeMachineResponse
- (ICAuthorizeMachineResponse)initWithResponseDictionary:(id)dictionary;
- (NSData)keybagData;
- (NSData)tokenData;
@end

@implementation ICAuthorizeMachineResponse

- (NSData)tokenData
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"token"];
  if (_NSIsNSData())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  if (_NSIsNSString())
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (NSData)keybagData
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"keybag"];
  if (_NSIsNSData())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  if (_NSIsNSString())
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (ICAuthorizeMachineResponse)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICAuthorizeMachineResponse;
  v5 = [(ICAuthorizeMachineResponse *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end