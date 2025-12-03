@interface SSVCloudServiceCapabilitiesResponse
- (NSString)debugDescription;
- (NSString)description;
- (SSVCloudServiceCapabilitiesResponse)initWithXPCEncoding:(id)encoding;
- (id)_descriptionWithSubscriptionStatusDescriptorBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
@end

@implementation SSVCloudServiceCapabilitiesResponse

- (id)_descriptionWithSubscriptionStatusDescriptorBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithFormat:@"<%@: %p", v7, self];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v8);
  }

  if (self->_supportsMusicCatalogPlayback)
  {
    [v8 appendString:@"; supportsMusicCatalogPlayback = YES"];
  }

  if (self->_supportsAddToCloudMusicLibrary)
  {
    [v8 appendString:@"; supportsAddToCloudMusicLibrary = YES"];
  }

  if (self->_canSubscribeToMusicCatalog)
  {
    [v8 appendString:@"; canSubscribeToMusicCatalog = YES"];
  }

  [v8 appendString:@">"];

  return v8;
}

- (NSString)description
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SSVCloudServiceCapabilitiesResponse_description__block_invoke;
  v4[3] = &unk_1E84ACF48;
  v4[4] = self;
  v2 = [(SSVCloudServiceCapabilitiesResponse *)self _descriptionWithSubscriptionStatusDescriptorBlock:v4];

  return v2;
}

void __50__SSVCloudServiceCapabilitiesResponse_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v7 = a2;
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v7 appendFormat:@"; subscriptionStatus = <%@: %p>", v5, *(*(a1 + 32) + 16)];

    v6 = v5;
  }

  else
  {
    [v7 appendFormat:@"; subscriptionStatus = %@", 0];
    v6 = v7;
  }
}

- (NSString)debugDescription
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SSVCloudServiceCapabilitiesResponse_debugDescription__block_invoke;
  v4[3] = &unk_1E84ACF48;
  v4[4] = self;
  v2 = [(SSVCloudServiceCapabilitiesResponse *)self _descriptionWithSubscriptionStatusDescriptorBlock:v4];

  return v2;
}

void __55__SSVCloudServiceCapabilitiesResponse_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v2 debugDescription];
  [v3 appendFormat:@"; subscriptionStatus = %@", v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(SSVSubscriptionStatus *)self->_subscriptionStatus copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 8) = self->_supportsMusicCatalogPlayback;
  *(v4 + 9) = self->_supportsAddToCloudMusicLibrary;
  *(v4 + 10) = self->_canSubscribeToMusicCatalog;
  return v4;
}

- (SSVCloudServiceCapabilitiesResponse)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v12.receiver = self;
    v12.super_class = SSVCloudServiceCapabilitiesResponse;
    v6 = [(SSVCloudServiceCapabilitiesResponse *)&v12 init];
    if (v6)
    {
      v8 = [SSVSubscriptionStatus alloc];
      v9 = xpc_dictionary_get_dictionary(v5, "0");
      v10 = [(SSVSubscriptionStatus *)v8 initWithXPCEncoding:v9];
      subscriptionStatus = v6->_subscriptionStatus;
      v6->_subscriptionStatus = v10;

      v6->_supportsMusicCatalogPlayback = xpc_dictionary_get_BOOL(v5, "1");
      v6->_supportsAddToCloudMusicLibrary = xpc_dictionary_get_BOOL(v5, "2");
      v6->_canSubscribeToMusicCatalog = xpc_dictionary_get_BOOL(v5, "3");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_subscriptionStatus);
  xpc_dictionary_set_BOOL(v3, "1", self->_supportsMusicCatalogPlayback);
  xpc_dictionary_set_BOOL(v3, "2", self->_supportsAddToCloudMusicLibrary);
  xpc_dictionary_set_BOOL(v3, "3", self->_canSubscribeToMusicCatalog);
  return v3;
}

@end