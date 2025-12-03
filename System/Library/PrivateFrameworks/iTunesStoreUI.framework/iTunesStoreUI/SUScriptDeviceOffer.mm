@interface SUScriptDeviceOffer
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (NSNumber)adamId;
- (NSString)description;
- (SUScriptDeviceOffer)initWithDeviceOffer:(id)offer;
- (id)isDowngrading;
- (id)isSubscribed;
- (id)scriptAttributeKeys;
- (unint64_t)offerType;
- (void)setAdamId:(id)id;
- (void)setDescription:(id)description;
- (void)setDowngrading:(id)downgrading;
- (void)setOfferType:(unint64_t)type;
- (void)setSubscribed:(id)subscribed;
@end

@implementation SUScriptDeviceOffer

- (SUScriptDeviceOffer)initWithDeviceOffer:(id)offer
{
  offerCopy = offer;
  v9.receiver = self;
  v9.super_class = SUScriptDeviceOffer;
  v6 = [(SUScriptObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_offer, offer);
  }

  return v7;
}

- (NSNumber)adamId
{
  offer = [(SUScriptDeviceOffer *)self offer];
  adamId = [offer adamId];

  return adamId;
}

- (NSString)description
{
  offer = [(SUScriptDeviceOffer *)self offer];
  v3 = [offer description];

  return v3;
}

- (id)isDowngrading
{
  offer = [(SUScriptDeviceOffer *)self offer];
  isDowngrading = [offer isDowngrading];
  v4 = MEMORY[0x1E695E4D0];
  if (!isDowngrading)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)isSubscribed
{
  offer = [(SUScriptDeviceOffer *)self offer];
  isSubscribed = [offer isSubscribed];
  v4 = MEMORY[0x1E695E4D0];
  if (!isSubscribed)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (unint64_t)offerType
{
  offer = [(SUScriptDeviceOffer *)self offer];
  offerType = [offer offerType];

  return offerType;
}

- (void)setAdamId:(id)id
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"adamId"];
  [v3 throwException:v4];
}

- (void)setDescription:(id)description
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"description"];
  [v3 throwException:v4];
}

- (void)setDowngrading:(id)downgrading
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"downgrading"];
  [v3 throwException:v4];
}

- (void)setOfferType:(unint64_t)type
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"offerType"];
  [v3 throwException:v4];
}

- (void)setSubscribed:(id)subscribed
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"subscribed"];
  [v3 throwException:v4];
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_52 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptDeviceOffer;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptDeviceOffer;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_52 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = __KeyMapping_52;
    __KeyMapping_52 = &unk_1F41EA9E8;
  }
}

@end