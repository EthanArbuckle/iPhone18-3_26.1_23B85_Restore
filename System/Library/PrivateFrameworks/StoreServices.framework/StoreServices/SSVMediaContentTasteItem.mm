@interface SSVMediaContentTasteItem
- (NSString)description;
- (SSVMediaContentTasteItem)initWithCoder:(id)coder;
- (SSVMediaContentTasteItem)initWithXPCEncoding:(id)encoding;
- (id)_copyWithMediaContentTasteItemClass:(Class)class;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSVMediaContentTasteItem

- (SSVMediaContentTasteItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSVMediaContentTasteItem *)self init];
  if (v5)
  {
    v5->_contentType = [coderCopy decodeIntegerForKey:@"SSVMediaContentTasteItemContentType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSVMediaContentTasteItemPlaylistGlobalID"];
    playlistGlobalID = v5->_playlistGlobalID;
    v5->_playlistGlobalID = v6;

    v5->_storeAdamID = [coderCopy decodeInt64ForKey:@"SSVMediaContentTasteItemStoreAdamID"];
    v5->_tasteType = [coderCopy decodeIntegerForKey:@"SSVMediaContentTasteItemTasteType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contentType = self->_contentType;
  coderCopy = coder;
  [coderCopy encodeInteger:contentType forKey:@"SSVMediaContentTasteItemContentType"];
  [coderCopy encodeObject:self->_playlistGlobalID forKey:@"SSVMediaContentTasteItemPlaylistGlobalID"];
  [coderCopy encodeInt64:self->_storeAdamID forKey:@"SSVMediaContentTasteItemStoreAdamID"];
  [coderCopy encodeInteger:self->_tasteType forKey:@"SSVMediaContentTasteItemTasteType"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  contentType = self->_contentType;
  if (contentType > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E84B0F10[contentType];
  }

  v9 = [v3 stringWithFormat:@"<%@ %p contentType:%@", v5, self, v8];

  if ([(NSString *)self->_playlistGlobalID length])
  {
    [v9 appendFormat:@" playlistGlobalID:'%@'", self->_playlistGlobalID];
  }

  else
  {
    [v9 appendFormat:@" storeAdamID:%lli", self->_storeAdamID];
  }

  [v9 appendFormat:@" tasteType:%td>", self->_tasteType];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SSVMediaContentTasteItem *)self _copyWithMediaContentTasteItemClass:v4];
}

- (SSVMediaContentTasteItem)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = objc_opt_class();
  NSSecureCodingObjectForXPCObject = SSCodingCreateNSSecureCodingObjectForXPCObject(encodingCopy, v5);

  v7 = NSSecureCodingObjectForXPCObject;
  return v7;
}

- (id)_copyWithMediaContentTasteItemClass:(Class)class
{
  v4 = objc_alloc_init(class);
  v5 = v4;
  if (v4)
  {
    v4[1] = self->_contentType;
    objc_storeStrong(v4 + 2, self->_playlistGlobalID);
    *(v5 + 3) = *&self->_storeAdamID;
  }

  return v5;
}

@end