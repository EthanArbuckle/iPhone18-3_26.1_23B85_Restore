@interface SoftwareProperties
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SoftwareProperties

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SoftwareProperties;
  [(SoftwareProperties *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSData *)self->_appReceiptData copyWithZone:zone];
  v5[2] = [(NSData *)self->_artworkData copyWithZone:zone];
  v5[3] = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v5[4] = [(NSString *)self->_bundleVersion copyWithZone:zone];
  v5[12] = self->_downloadIdentifier;
  v5[5] = [(NSNumber *)self->_installType copyWithZone:zone];
  *(v5 + 48) = self->_isFromStore;
  v5[7] = [(NSDictionary *)self->_iTunesMetadata copyWithZone:zone];
  v5[8] = [(NSData *)self->_newsstandArtworkData copyWithZone:zone];
  v5[9] = [(NSString *)self->_packagePath copyWithZone:zone];
  v5[10] = [(NSData *)self->_sinfData copyWithZone:zone];
  v5[11] = [(NSData *)self->_transitMapData copyWithZone:zone];
  return v5;
}

@end