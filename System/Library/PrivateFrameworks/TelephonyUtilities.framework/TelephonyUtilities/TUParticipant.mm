@interface TUParticipant
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToParticipant:(id)participant;
- (NSURL)imageURL;
- (TUParticipant)initWithCoder:(id)coder;
- (TUParticipant)initWithName:(id)name;
- (TUParticipant)initWithParticipant:(id)participant;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setImageURL:(id)l;
@end

@implementation TUParticipant

- (TUParticipant)initWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUParticipant initWithName:]", @"name"}];
  }

  v9.receiver = self;
  v9.super_class = TUParticipant;
  v5 = [(TUParticipant *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (TUParticipant)initWithParticipant:(id)participant
{
  participantCopy = participant;
  v11.receiver = self;
  v11.super_class = TUParticipant;
  v5 = [(TUParticipant *)&v11 init];
  if (v5)
  {
    name = [participantCopy name];
    name = v5->_name;
    v5->_name = name;

    sandboxExtendedImageURL = [participantCopy sandboxExtendedImageURL];
    sandboxExtendedImageURL = v5->_sandboxExtendedImageURL;
    v5->_sandboxExtendedImageURL = sandboxExtendedImageURL;
  }

  return v5;
}

- (NSURL)imageURL
{
  sandboxExtendedImageURL = [(TUParticipant *)self sandboxExtendedImageURL];
  v3 = [sandboxExtendedImageURL URL];

  return v3;
}

- (void)setImageURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v5 = [[TUSandboxExtendedURL alloc] initWithURL:lCopy];
  }

  else
  {
    v5 = 0;
  }

  [(TUParticipant *)self setSandboxExtendedImageURL:v5];
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v6];

  sandboxExtendedImageURL = self->_sandboxExtendedImageURL;
  v8 = NSStringFromSelector(sel_sandboxExtendedImageURL);
  [coderCopy encodeObject:sandboxExtendedImageURL forKey:v8];
}

- (TUParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TUParticipant;
  v5 = [(TUParticipant *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_name);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    name = v5->_name;
    v5->_name = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_sandboxExtendedImageURL);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    sandboxExtendedImageURL = v5->_sandboxExtendedImageURL;
    v5->_sandboxExtendedImageURL = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUParticipant allocWithZone:zone];

  return [(TUParticipant *)v4 initWithParticipant:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUMutableParticipant allocWithZone:zone];

  return [(TUParticipant *)v4 initWithParticipant:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_name);
  name = [(TUParticipant *)self name];
  [v3 appendFormat:@" %@=%@", v4, name];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_imageURL);
  imageURL = [(TUParticipant *)self imageURL];
  [v3 appendFormat:@" %@=%@", v6, imageURL];

  [v3 appendString:@">"];

  return v3;
}

- (unint64_t)hash
{
  name = [(TUParticipant *)self name];
  v4 = [name hash];
  sandboxExtendedImageURL = [(TUParticipant *)self sandboxExtendedImageURL];
  v6 = [sandboxExtendedImageURL hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUParticipant *)self isEqualToParticipant:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToParticipant:(id)participant
{
  participantCopy = participant;
  name = self->_name;
  name = [participantCopy name];
  if (TUObjectsAreEqualOrNil(name, name))
  {
    sandboxExtendedImageURL = self->_sandboxExtendedImageURL;
    sandboxExtendedImageURL = [participantCopy sandboxExtendedImageURL];
    v9 = TUObjectsAreEqualOrNil(sandboxExtendedImageURL, sandboxExtendedImageURL);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end