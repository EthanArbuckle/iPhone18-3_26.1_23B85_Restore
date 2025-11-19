@interface FTMutableUserAcousticProfile
- (FTMutableUserAcousticProfile)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)acoustic_profile_blob:(id)a3;
- (void)setAcoustic_profile_blob:(id)a3;
- (void)setAcoustic_profile_version:(id)a3;
- (void)setProfile_checksum:(id)a3;
@end

@implementation FTMutableUserAcousticProfile

- (FTMutableUserAcousticProfile)init
{
  v6.receiver = self;
  v6.super_class = FTMutableUserAcousticProfile;
  v2 = [(FTMutableUserAcousticProfile *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setAcoustic_profile_version:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAcoustic_profile_blob:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)acoustic_profile_blob:(id)a3
{
  v7 = a3;
  v4 = [(FTMutableUserAcousticProfile *)self acoustic_profile_blob];
  v5 = [v4 bytes];
  v6 = [(FTMutableUserAcousticProfile *)self acoustic_profile_blob];
  v7[2](v7, v5, [v6 length]);
}

- (void)setProfile_checksum:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end