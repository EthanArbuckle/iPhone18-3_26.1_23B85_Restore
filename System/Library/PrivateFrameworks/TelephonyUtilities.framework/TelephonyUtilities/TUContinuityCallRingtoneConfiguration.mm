@interface TUContinuityCallRingtoneConfiguration
- (TUContinuityCallRingtoneConfiguration)initWithCoder:(id)coder;
- (TUContinuityCallRingtoneConfiguration)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuityCallRingtoneConfiguration

- (TUContinuityCallRingtoneConfiguration)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TUContinuityCallRingtoneConfiguration;
  v5 = [(TUContinuityCallRingtoneConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
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

- (TUContinuityCallRingtoneConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_ringtoneIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUContinuityCallRingtoneConfiguration *)self initWithIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  ringtoneIdentifier = self->_ringtoneIdentifier;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_ringtoneIdentifier);
  [coderCopy encodeObject:ringtoneIdentifier forKey:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUContinuityCallRingtoneConfiguration allocWithZone:zone];
  ringtoneIdentifier = self->_ringtoneIdentifier;

  return [(TUContinuityCallRingtoneConfiguration *)v4 initWithIdentifier:ringtoneIdentifier];
}

@end