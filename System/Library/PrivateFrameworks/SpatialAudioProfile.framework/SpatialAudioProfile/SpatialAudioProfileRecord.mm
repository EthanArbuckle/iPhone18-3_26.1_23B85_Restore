@interface SpatialAudioProfileRecord
- (SpatialAudioProfileRecord)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SpatialAudioProfileRecord

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(SpatialAudioProfileRecord *)self profileData];
  v5 = NSStringFromSelector(sel_profileData);
  [v4 encodeObject:v6 forKey:v5];
}

- (SpatialAudioProfileRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SpatialAudioProfileRecord;
  v5 = [(SpatialAudioProfileRecord *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_profileData);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(SpatialAudioProfileRecord *)v5 setProfileData:v8];
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SpatialAudioProfileRecord *)self profileData];
  v4 = [v2 stringWithFormat:@"SpatialAudioProfileRecord: %@", v3];

  return v4;
}

@end