@interface QSSMutableUserAcousticProfile
- (QSSMutableUserAcousticProfile)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)acoustic_profile_blob:(id)a3;
- (void)setAcoustic_profile_blob:(id)a3;
- (void)setAcoustic_profile_version:(id)a3;
- (void)setProfile_checksum:(id)a3;
@end

@implementation QSSMutableUserAcousticProfile

- (void)setProfile_checksum:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)acoustic_profile_blob:(id)a3
{
  v7 = a3;
  v4 = [(QSSMutableUserAcousticProfile *)self acoustic_profile_blob];
  v5 = [v4 bytes];
  v6 = [(QSSMutableUserAcousticProfile *)self acoustic_profile_blob];
  v7[2](v7, v5, [v6 length]);
}

- (void)setAcoustic_profile_blob:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAcoustic_profile_version:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end