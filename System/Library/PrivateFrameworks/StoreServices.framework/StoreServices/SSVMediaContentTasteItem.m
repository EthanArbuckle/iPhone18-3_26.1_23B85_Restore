@interface SSVMediaContentTasteItem
- (NSString)description;
- (SSVMediaContentTasteItem)initWithCoder:(id)a3;
- (SSVMediaContentTasteItem)initWithXPCEncoding:(id)a3;
- (id)_copyWithMediaContentTasteItemClass:(Class)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSVMediaContentTasteItem

- (SSVMediaContentTasteItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSVMediaContentTasteItem *)self init];
  if (v5)
  {
    v5->_contentType = [v4 decodeIntegerForKey:@"SSVMediaContentTasteItemContentType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVMediaContentTasteItemPlaylistGlobalID"];
    playlistGlobalID = v5->_playlistGlobalID;
    v5->_playlistGlobalID = v6;

    v5->_storeAdamID = [v4 decodeInt64ForKey:@"SSVMediaContentTasteItemStoreAdamID"];
    v5->_tasteType = [v4 decodeIntegerForKey:@"SSVMediaContentTasteItemTasteType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contentType = self->_contentType;
  v5 = a3;
  [v5 encodeInteger:contentType forKey:@"SSVMediaContentTasteItemContentType"];
  [v5 encodeObject:self->_playlistGlobalID forKey:@"SSVMediaContentTasteItemPlaylistGlobalID"];
  [v5 encodeInt64:self->_storeAdamID forKey:@"SSVMediaContentTasteItemStoreAdamID"];
  [v5 encodeInteger:self->_tasteType forKey:@"SSVMediaContentTasteItemTasteType"];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SSVMediaContentTasteItem *)self _copyWithMediaContentTasteItemClass:v4];
}

- (SSVMediaContentTasteItem)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  NSSecureCodingObjectForXPCObject = SSCodingCreateNSSecureCodingObjectForXPCObject(v4, v5);

  v7 = NSSecureCodingObjectForXPCObject;
  return v7;
}

- (id)_copyWithMediaContentTasteItemClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
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