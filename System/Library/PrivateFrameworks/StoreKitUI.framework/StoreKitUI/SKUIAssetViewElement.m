@interface SKUIAssetViewElement
- (SKUIAssetViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIAssetViewElement

- (SKUIAssetViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIAssetViewElement initWithDOMElement:parent:elementFactory:];
  }

  v32.receiver = self;
  v32.super_class = SKUIAssetViewElement;
  v11 = [(SKUIViewElement *)&v32 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"offset"];
    if ([v12 length])
    {
      [v12 doubleValue];
    }

    else
    {
      v13 = 0x7FF8000000000000;
    }

    *&v11->_initialPlaybackTime = v13;
    v14 = [v8 getAttribute:@"duration"];
    if ([v14 length])
    {
      [v14 doubleValue];
    }

    else
    {
      v15 = 0x7FF8000000000000;
    }

    *&v11->_playbackDuration = v15;
    v16 = [v8 getAttribute:@"data-content-id"];
    if ([v16 length])
    {
      v11->_itemIdentifier = [v16 longLongValue];
    }

    v17 = [v8 getAttribute:*MEMORY[0x277D1AF48]];
    if ([v17 length])
    {
      objc_storeStrong(&v11->_secureKeyDeliveryType, v17);
    }

    v18 = [v8 getAttribute:{@"key-cert-url", v12}];
    if ([v18 length])
    {
      v19 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v18];
      keyCertificateURL = v11->_keyCertificateURL;
      v11->_keyCertificateURL = v19;
    }

    v31 = v10;
    v21 = v9;
    v22 = [v8 getAttribute:@"key-server-url"];
    if ([v22 length])
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v22];
      keyServerURL = v11->_keyServerURL;
      v11->_keyServerURL = v23;
    }

    v25 = [v8 getAttribute:@"is-itunes-stream"];
    v11->_ITunesStream = [v25 BOOLValue];
    v26 = [v8 getAttribute:@"src"];
    if ([v26 length])
    {
      v27 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v26];
      url = v11->_url;
      v11->_url = v27;
    }

    v9 = v21;
    v10 = v31;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SKUIAssetViewElement;
  v5 = [(SKUIViewElement *)&v18 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    [(SKUIAssetViewElement *)v4 initialPlaybackTime];
    self->_initialPlaybackTime = v7;
    self->_itemIdentifier = [(SKUIAssetViewElement *)v4 itemIdentifier];
    [(SKUIAssetViewElement *)v4 playbackDuration];
    self->_playbackDuration = v8;
    v9 = [(SKUIAssetViewElement *)v4 keyCertificateURL];
    keyCertificateURL = self->_keyCertificateURL;
    self->_keyCertificateURL = v9;

    v11 = [(SKUIAssetViewElement *)v4 keyServerURL];
    keyServerURL = self->_keyServerURL;
    self->_keyServerURL = v11;

    v13 = [(SKUIAssetViewElement *)v4 secureKeyDeliveryType];
    secureKeyDeliveryType = self->_secureKeyDeliveryType;
    self->_secureKeyDeliveryType = v13;

    self->_ITunesStream = [(SKUIAssetViewElement *)v4 isITunesStream];
    v15 = [(SKUIAssetViewElement *)v4 URL];
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