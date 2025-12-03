@interface SKUIAssetViewElement
- (SKUIAssetViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIAssetViewElement

- (SKUIAssetViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIAssetViewElement initWithDOMElement:parent:elementFactory:];
  }

  v32.receiver = self;
  v32.super_class = SKUIAssetViewElement;
  v11 = [(SKUIViewElement *)&v32 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"offset"];
    if ([v12 length])
    {
      [v12 doubleValue];
    }

    else
    {
      v13 = 0x7FF8000000000000;
    }

    *&v11->_initialPlaybackTime = v13;
    v14 = [elementCopy getAttribute:@"duration"];
    if ([v14 length])
    {
      [v14 doubleValue];
    }

    else
    {
      v15 = 0x7FF8000000000000;
    }

    *&v11->_playbackDuration = v15;
    v16 = [elementCopy getAttribute:@"data-content-id"];
    if ([v16 length])
    {
      v11->_itemIdentifier = [v16 longLongValue];
    }

    v17 = [elementCopy getAttribute:*MEMORY[0x277D1AF48]];
    if ([v17 length])
    {
      objc_storeStrong(&v11->_secureKeyDeliveryType, v17);
    }

    v18 = [elementCopy getAttribute:{@"key-cert-url", v12}];
    if ([v18 length])
    {
      v19 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v18];
      keyCertificateURL = v11->_keyCertificateURL;
      v11->_keyCertificateURL = v19;
    }

    v31 = factoryCopy;
    v21 = parentCopy;
    v22 = [elementCopy getAttribute:@"key-server-url"];
    if ([v22 length])
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v22];
      keyServerURL = v11->_keyServerURL;
      v11->_keyServerURL = v23;
    }

    v25 = [elementCopy getAttribute:@"is-itunes-stream"];
    v11->_ITunesStream = [v25 BOOLValue];
    v26 = [elementCopy getAttribute:@"src"];
    if ([v26 length])
    {
      v27 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v26];
      url = v11->_url;
      v11->_url = v27;
    }

    parentCopy = v21;
    factoryCopy = v31;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SKUIAssetViewElement;
  v5 = [(SKUIViewElement *)&v18 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    [(SKUIAssetViewElement *)elementCopy initialPlaybackTime];
    self->_initialPlaybackTime = v7;
    self->_itemIdentifier = [(SKUIAssetViewElement *)elementCopy itemIdentifier];
    [(SKUIAssetViewElement *)elementCopy playbackDuration];
    self->_playbackDuration = v8;
    keyCertificateURL = [(SKUIAssetViewElement *)elementCopy keyCertificateURL];
    keyCertificateURL = self->_keyCertificateURL;
    self->_keyCertificateURL = keyCertificateURL;

    keyServerURL = [(SKUIAssetViewElement *)elementCopy keyServerURL];
    keyServerURL = self->_keyServerURL;
    self->_keyServerURL = keyServerURL;

    secureKeyDeliveryType = [(SKUIAssetViewElement *)elementCopy secureKeyDeliveryType];
    secureKeyDeliveryType = self->_secureKeyDeliveryType;
    self->_secureKeyDeliveryType = secureKeyDeliveryType;

    self->_ITunesStream = [(SKUIAssetViewElement *)elementCopy isITunesStream];
    v15 = [(SKUIAssetViewElement *)elementCopy URL];
    url = self->_url;
    self->_url = v15;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAssetViewElement initWithDOMElement:parent:elementFactory:]";
}

@end