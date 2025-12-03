@interface SpatialAudioProfileRecord
- (SpatialAudioProfileRecord)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SpatialAudioProfileRecord

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  profileData = [(SpatialAudioProfileRecord *)self profileData];
  v5 = NSStringFromSelector(sel_profileData);
  [coderCopy encodeObject:profileData forKey:v5];
}

- (SpatialAudioProfileRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SpatialAudioProfileRecord;
  v5 = [(SpatialAudioProfileRecord *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_profileData);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(SpatialAudioProfileRecord *)v5 setProfileData:v8];
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  profileData = [(SpatialAudioProfileRecord *)self profileData];
  v4 = [v2 stringWithFormat:@"SpatialAudioProfileRecord: %@", profileData];

  return v4;
}

@end