@interface SoftwareProperties
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SoftwareProperties

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SoftwareProperties;
  [(SoftwareProperties *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSData *)self->_appReceiptData copyWithZone:a3];
  v5[2] = [(NSData *)self->_artworkData copyWithZone:a3];
  v5[3] = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v5[4] = [(NSString *)self->_bundleVersion copyWithZone:a3];
  v5[12] = self->_downloadIdentifier;
  v5[5] = [(NSNumber *)self->_installType copyWithZone:a3];
  *(v5 + 48) = self->_isFromStore;
  v5[7] = [(NSDictionary *)self->_iTunesMetadata copyWithZone:a3];
  v5[8] = [(NSData *)self->_newsstandArtworkData copyWithZone:a3];
  v5[9] = [(NSString *)self->_packagePath copyWithZone:a3];
  v5[10] = [(NSData *)self->_sinfData copyWithZone:a3];
  v5[11] = [(NSData *)self->_transitMapData copyWithZone:a3];
  return v5;
}

@end