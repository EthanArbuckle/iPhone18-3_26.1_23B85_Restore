@interface TPSWelcomeDocument
- (TPSWelcomeDocument)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSWelcomeDocument

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TPSWelcomeDocument;
  v4 = [(TPSDocument *)&v7 copyWithZone:a3];
  v5 = [(TPSWelcomeDocument *)self majorVersion];
  [v4 setMajorVersion:v5];

  return v4;
}

- (TPSWelcomeDocument)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSWelcomeDocument;
  v5 = [(TPSDocument *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"majorVersion"];
    majorVersion = v5->_majorVersion;
    v5->_majorVersion = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSWelcomeDocument;
  v4 = a3;
  [(TPSDocument *)&v6 encodeWithCoder:v4];
  v5 = [(TPSWelcomeDocument *)self majorVersion:v6.receiver];
  [v4 encodeObject:v5 forKey:@"majorVersion"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = TPSWelcomeDocument;
  v4 = [(TPSDocument *)&v8 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSWelcomeDocument *)self majorVersion];
  [v5 appendFormat:@"%@ = %@", @"majorVersion", v6];

  return v5;
}

@end