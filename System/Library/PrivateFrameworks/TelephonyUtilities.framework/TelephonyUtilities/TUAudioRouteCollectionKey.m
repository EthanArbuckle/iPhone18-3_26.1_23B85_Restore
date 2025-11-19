@interface TUAudioRouteCollectionKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAudioRouteCollectionKey:(id)a3;
- (TUAudioRouteCollectionKey)initWithCategory:(id)a3 mode:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TUAudioRouteCollectionKey

- (TUAudioRouteCollectionKey)initWithCategory:(id)a3 mode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TUAudioRouteCollectionKey;
  v8 = [(TUAudioRouteCollectionKey *)&v14 init];
  if (v8)
  {
    if (initWithCategory_mode___pred__AVAudioSessionCategoryPhoneCall != -1)
    {
      [TUAudioRouteCollectionKey initWithCategory:mode:];
    }

    if ([(__CFString *)v6 isEqualToString:initWithCategory_mode___AVAudioSessionCategoryPhoneCall])
    {

      v6 = @"PhoneCall";
    }

    v9 = [(__CFString *)v6 copy];
    category = v8->_category;
    v8->_category = v9;

    v11 = [v7 copy];
    mode = v8->_mode;
    v8->_mode = v11;
  }

  return v8;
}

void __51__TUAudioRouteCollectionKey_initWithCategory_mode___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&initWithCategory_mode___AVAudioSessionCategoryPhoneCall, v1);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUAudioRouteCollectionKey *)self category];
  v6 = [(TUAudioRouteCollectionKey *)self mode];
  v7 = [v3 stringWithFormat:@"<%@ %p category=%@ mode=%@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUAudioRouteCollectionKey *)self isEqualToAudioRouteCollectionKey:v4];

  return v5;
}

- (BOOL)isEqualToAudioRouteCollectionKey:(id)a3
{
  v4 = a3;
  v5 = [(TUAudioRouteCollectionKey *)self category];
  v6 = [v4 category];
  if (TUStringsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUAudioRouteCollectionKey *)self mode];
    v8 = [v4 mode];
    v9 = TUStringsAreEqualOrNil(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(TUAudioRouteCollectionKey *)self category];
  v4 = [v3 hash];
  v5 = [(TUAudioRouteCollectionKey *)self mode];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUAudioRouteCollectionKey *)self category];
  v6 = [(TUAudioRouteCollectionKey *)self mode];
  v7 = [v4 initWithCategory:v5 mode:v6];

  return v7;
}

@end