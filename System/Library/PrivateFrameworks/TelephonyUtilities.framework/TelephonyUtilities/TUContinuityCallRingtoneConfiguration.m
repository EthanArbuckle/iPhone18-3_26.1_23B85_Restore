@interface TUContinuityCallRingtoneConfiguration
- (TUContinuityCallRingtoneConfiguration)initWithCoder:(id)a3;
- (TUContinuityCallRingtoneConfiguration)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUContinuityCallRingtoneConfiguration

- (TUContinuityCallRingtoneConfiguration)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUContinuityCallRingtoneConfiguration;
  v5 = [(TUContinuityCallRingtoneConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    ringtoneIdentifier = v5->_ringtoneIdentifier;
    v5->_ringtoneIdentifier = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" ringtoneIdentifier=%@", self->_ringtoneIdentifier];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

- (TUContinuityCallRingtoneConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_ringtoneIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUContinuityCallRingtoneConfiguration *)self initWithIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  ringtoneIdentifier = self->_ringtoneIdentifier;
  v4 = a3;
  v5 = NSStringFromSelector(sel_ringtoneIdentifier);
  [v4 encodeObject:ringtoneIdentifier forKey:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUContinuityCallRingtoneConfiguration allocWithZone:a3];
  ringtoneIdentifier = self->_ringtoneIdentifier;

  return [(TUContinuityCallRingtoneConfiguration *)v4 initWithIdentifier:ringtoneIdentifier];
}

@end