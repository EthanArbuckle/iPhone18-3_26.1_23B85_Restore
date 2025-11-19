@interface SUScriptDeviceOffer
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (NSNumber)adamId;
- (NSString)description;
- (SUScriptDeviceOffer)initWithDeviceOffer:(id)a3;
- (id)isDowngrading;
- (id)isSubscribed;
- (id)scriptAttributeKeys;
- (unint64_t)offerType;
- (void)setAdamId:(id)a3;
- (void)setDescription:(id)a3;
- (void)setDowngrading:(id)a3;
- (void)setOfferType:(unint64_t)a3;
- (void)setSubscribed:(id)a3;
@end

@implementation SUScriptDeviceOffer

- (SUScriptDeviceOffer)initWithDeviceOffer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUScriptDeviceOffer;
  v6 = [(SUScriptObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_offer, a3);
  }

  return v7;
}

- (NSNumber)adamId
{
  v2 = [(SUScriptDeviceOffer *)self offer];
  v3 = [v2 adamId];

  return v3;
}

- (NSString)description
{
  v2 = [(SUScriptDeviceOffer *)self offer];
  v3 = [v2 description];

  return v3;
}

- (id)isDowngrading
{
  v2 = [(SUScriptDeviceOffer *)self offer];
  v3 = [v2 isDowngrading];
  v4 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)isSubscribed
{
  v2 = [(SUScriptDeviceOffer *)self offer];
  v3 = [v2 isSubscribed];
  v4 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (unint64_t)offerType
{
  v2 = [(SUScriptDeviceOffer *)self offer];
  v3 = [v2 offerType];

  return v3;
}

- (void)setAdamId:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"adamId"];
  [v3 throwException:v4];
}

- (void)setDescription:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"description"];
  [v3 throwException:v4];
}

- (void)setDowngrading:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"downgrading"];
  [v3 throwException:v4];
}

- (void)setOfferType:(unint64_t)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"offerType"];
  [v3 throwException:v4];
}

- (void)setSubscribed:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"subscribed"];
  [v3 throwException:v4];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_52 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptDeviceOffer;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptDeviceOffer;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_52 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = __KeyMapping_52;
    __KeyMapping_52 = &unk_1F41EA9E8;
  }
}

@end