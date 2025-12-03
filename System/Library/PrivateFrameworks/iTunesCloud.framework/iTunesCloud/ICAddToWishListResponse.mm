@interface ICAddToWishListResponse
- (ICAddToWishListResponse)initWithResponseDictionary:(id)dictionary;
- (id)description;
@end

@implementation ICAddToWishListResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ICAddToWishListResponse;
  v4 = [(ICAddToWishListResponse *)&v9 description];
  statusCode = [(ICAddToWishListResponse *)self statusCode];
  message = [(ICAddToWishListResponse *)self message];
  v7 = [v3 stringWithFormat:@"%@: [status=%d, msg='%@']", v4, statusCode, message];

  return v7;
}

- (ICAddToWishListResponse)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICAddToWishListResponse;
  v6 = [(ICAddToWishListResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseDictionary, dictionary);
  }

  return v7;
}

@end