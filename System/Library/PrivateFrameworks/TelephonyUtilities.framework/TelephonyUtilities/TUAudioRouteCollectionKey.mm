@interface TUAudioRouteCollectionKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAudioRouteCollectionKey:(id)key;
- (TUAudioRouteCollectionKey)initWithCategory:(id)category mode:(id)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation TUAudioRouteCollectionKey

- (TUAudioRouteCollectionKey)initWithCategory:(id)category mode:(id)mode
{
  categoryCopy = category;
  modeCopy = mode;
  v14.receiver = self;
  v14.super_class = TUAudioRouteCollectionKey;
  v8 = [(TUAudioRouteCollectionKey *)&v14 init];
  if (v8)
  {
    if (initWithCategory_mode___pred__AVAudioSessionCategoryPhoneCall != -1)
    {
      [TUAudioRouteCollectionKey initWithCategory:mode:];
    }

    if ([(__CFString *)categoryCopy isEqualToString:initWithCategory_mode___AVAudioSessionCategoryPhoneCall])
    {

      categoryCopy = @"PhoneCall";
    }

    v9 = [(__CFString *)categoryCopy copy];
    category = v8->_category;
    v8->_category = v9;

    v11 = [modeCopy copy];
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
  category = [(TUAudioRouteCollectionKey *)self category];
  mode = [(TUAudioRouteCollectionKey *)self mode];
  v7 = [v3 stringWithFormat:@"<%@ %p category=%@ mode=%@>", v4, self, category, mode];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUAudioRouteCollectionKey *)self isEqualToAudioRouteCollectionKey:equalCopy];

  return v5;
}

- (BOOL)isEqualToAudioRouteCollectionKey:(id)key
{
  keyCopy = key;
  category = [(TUAudioRouteCollectionKey *)self category];
  category2 = [keyCopy category];
  if (TUStringsAreEqualOrNil(category, category2))
  {
    mode = [(TUAudioRouteCollectionKey *)self mode];
    mode2 = [keyCopy mode];
    v9 = TUStringsAreEqualOrNil(mode, mode2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  category = [(TUAudioRouteCollectionKey *)self category];
  v4 = [category hash];
  mode = [(TUAudioRouteCollectionKey *)self mode];
  v6 = [mode hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  category = [(TUAudioRouteCollectionKey *)self category];
  mode = [(TUAudioRouteCollectionKey *)self mode];
  v7 = [v4 initWithCategory:category mode:mode];

  return v7;
}

@end