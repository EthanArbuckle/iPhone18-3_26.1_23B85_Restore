@interface UserVoiceProfile
- (UserVoiceProfile)init;
- (UserVoiceProfile)initWithJson:(id)json;
@end

@implementation UserVoiceProfile

- (UserVoiceProfile)init
{
  v6.receiver = self;
  v6.super_class = UserVoiceProfile;
  v2 = [(UserVoiceProfile *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (UserVoiceProfile)initWithJson:(id)json
{
  jsonCopy = json;
  v21.receiver = self;
  v21.super_class = UserVoiceProfile;
  v5 = [(UserVoiceProfile *)&v21 init];
  if (v5)
  {
    v6 = [jsonCopy objectForKey:@"mean"];
    v7 = [jsonCopy objectForKey:@"std"];
    v8 = [v6 objectAtIndexedSubscript:0];
    [v8 floatValue];
    v5->_pitch_mean = v9;

    v10 = [v7 objectAtIndexedSubscript:0];
    [v10 floatValue];
    v5->_pitch_std = v11;

    v12 = [v6 objectAtIndexedSubscript:1];
    [v12 floatValue];
    v5->_energy_mean = v13;

    v14 = [v7 objectAtIndexedSubscript:1];
    [v14 floatValue];
    v5->_energy_std = v15;

    v16 = [v6 objectAtIndexedSubscript:2];
    [v16 floatValue];
    v5->_duration_mean = v17;

    v18 = [v7 objectAtIndexedSubscript:2];
    [v18 floatValue];
    v5->_duration_std = v19;
  }

  return v5;
}

@end