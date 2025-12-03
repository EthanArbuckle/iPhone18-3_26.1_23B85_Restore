@interface QSSMutableUserLanguageProfile
- (QSSMutableUserLanguageProfile)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)profile_blob:(id)profile_blob;
- (void)setProfile_blob:(id)profile_blob;
- (void)setProfile_blob_version:(id)profile_blob_version;
- (void)setProfile_checksum:(id)profile_checksum;
@end

@implementation QSSMutableUserLanguageProfile

- (void)setProfile_checksum:(id)profile_checksum
{
  v4 = [profile_checksum copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setProfile_blob_version:(id)profile_blob_version
{
  v4 = [profile_blob_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)profile_blob:(id)profile_blob
{
  profile_blobCopy = profile_blob;
  profile_blob = [(QSSMutableUserLanguageProfile *)self profile_blob];
  bytes = [profile_blob bytes];
  profile_blob2 = [(QSSMutableUserLanguageProfile *)self profile_blob];
  profile_blobCopy[2](profile_blobCopy, bytes, [profile_blob2 length]);
}

- (void)setProfile_blob:(id)profile_blob
{
  v4 = [profile_blob copy];
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

- (QSSMutableUserLanguageProfile)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableUserLanguageProfile;
  v2 = [(QSSMutableUserLanguageProfile *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end