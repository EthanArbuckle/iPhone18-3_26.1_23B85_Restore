@interface ICAddToWishListResponse
- (ICAddToWishListResponse)initWithResponseDictionary:(id)a3;
- (id)description;
@end

@implementation ICAddToWishListResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ICAddToWishListResponse;
  v4 = [(ICAddToWishListResponse *)&v9 description];
  v5 = [(ICAddToWishListResponse *)self statusCode];
  v6 = [(ICAddToWishListResponse *)self message];
  v7 = [v3 stringWithFormat:@"%@: [status=%d, msg='%@']", v4, v5, v6];

  return v7;
}

- (ICAddToWishListResponse)initWithResponseDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICAddToWishListResponse;
  v6 = [(ICAddToWishListResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseDictionary, a3);
  }

  return v7;
}

@end