@interface QSSMutableUserAcousticProfile
- (QSSMutableUserAcousticProfile)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)acoustic_profile_blob:(id)acoustic_profile_blob;
- (void)setAcoustic_profile_blob:(id)acoustic_profile_blob;
- (void)setAcoustic_profile_version:(id)acoustic_profile_version;
- (void)setProfile_checksum:(id)profile_checksum;
@end

@implementation QSSMutableUserAcousticProfile

- (void)setProfile_checksum:(id)profile_checksum
{
  v4 = [profile_checksum copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)acoustic_profile_blob:(id)acoustic_profile_blob
{
  acoustic_profile_blobCopy = acoustic_profile_blob;
  acoustic_profile_blob = [(QSSMutableUserAcousticProfile *)self acoustic_profile_blob];
  bytes = [acoustic_profile_blob bytes];
  acoustic_profile_blob2 = [(QSSMutableUserAcousticProfile *)self acoustic_profile_blob];
  acoustic_profile_blobCopy[2](acoustic_profile_blobCopy, bytes, [acoustic_profile_blob2 length]);
}

- (void)setAcoustic_profile_blob:(id)acoustic_profile_blob
{
  v4 = [acoustic_profile_blob copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAcoustic_profile_version:(id)acoustic_profile_version
{
  v4 = [acoustic_profile_version copy];
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

- (QSSMutableUserAcousticProfile)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableUserAcousticProfile;
  v2 = [(QSSMutableUserAcousticProfile *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end