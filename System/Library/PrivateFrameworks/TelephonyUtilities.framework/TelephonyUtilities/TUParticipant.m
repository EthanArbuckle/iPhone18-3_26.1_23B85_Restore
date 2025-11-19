@interface TUParticipant
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToParticipant:(id)a3;
- (NSURL)imageURL;
- (TUParticipant)initWithCoder:(id)a3;
- (TUParticipant)initWithName:(id)a3;
- (TUParticipant)initWithParticipant:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setImageURL:(id)a3;
@end

@implementation TUParticipant

- (TUParticipant)initWithName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUParticipant initWithName:]", @"name"}];
  }

  v9.receiver = self;
  v9.super_class = TUParticipant;
  v5 = [(TUParticipant *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (TUParticipant)initWithParticipant:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUParticipant;
  v5 = [(TUParticipant *)&v11 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 sandboxExtendedImageURL];
    sandboxExtendedImageURL = v5->_sandboxExtendedImageURL;
    v5->_sandboxExtendedImageURL = v8;
  }

  return v5;
}

- (NSURL)imageURL
{
  v2 = [(TUParticipant *)self sandboxExtendedImageURL];
  v3 = [v2 URL];

  return v3;
}

- (void)setImageURL:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[TUSandboxExtendedURL alloc] initWithURL:v4];
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

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  v6 = NSStringFromSelector(sel_name);
  [v5 encodeObject:name forKey:v6];

  sandboxExtendedImageURL = self->_sandboxExtendedImageURL;
  v8 = NSStringFromSelector(sel_sandboxExtendedImageURL);
  [v5 encodeObject:sandboxExtendedImageURL forKey:v8];
}

- (TUParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TUParticipant;
  v5 = [(TUParticipant *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_name);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    name = v5->_name;
    v5->_name = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_sandboxExtendedImageURL);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    sandboxExtendedImageURL = v5->_sandboxExtendedImageURL;
    v5->_sandboxExtendedImageURL = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUParticipant allocWithZone:a3];

  return [(TUParticipant *)v4 initWithParticipant:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUMutableParticipant allocWithZone:a3];

  return [(TUParticipant *)v4 initWithParticipant:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_name);
  v5 = [(TUParticipant *)self name];
  [v3 appendFormat:@" %@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_imageURL);
  v7 = [(TUParticipant *)self imageURL];
  [v3 appendFormat:@" %@=%@", v6, v7];

  [v3 appendString:@">"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(TUParticipant *)self name];
  v4 = [v3 hash];
  v5 = [(TUParticipant *)self sandboxExtendedImageURL];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUParticipant *)self isEqualToParticipant:v4];
  }

  return v5;
}

- (BOOL)isEqualToParticipant:(id)a3
{
  v4 = a3;
  name = self->_name;
  v6 = [v4 name];
  if (TUObjectsAreEqualOrNil(name, v6))
  {
    sandboxExtendedImageURL = self->_sandboxExtendedImageURL;
    v8 = [v4 sandboxExtendedImageURL];
    v9 = TUObjectsAreEqualOrNil(sandboxExtendedImageURL, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end