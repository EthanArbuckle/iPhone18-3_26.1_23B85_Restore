@interface QSSMutableUpdateAudioInfo
- (QSSMutableUpdateAudioInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setProduct_id:(id)product_id;
- (void)setVendor_id:(id)vendor_id;
@end

@implementation QSSMutableUpdateAudioInfo

- (void)setVendor_id:(id)vendor_id
{
  v4 = [vendor_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setProduct_id:(id)product_id
{
  v4 = [product_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableUpdateAudioInfo)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableUpdateAudioInfo;
  v2 = [(QSSMutableUpdateAudioInfo *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end