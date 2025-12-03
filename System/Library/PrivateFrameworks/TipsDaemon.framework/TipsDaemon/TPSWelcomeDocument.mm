@interface TPSWelcomeDocument
- (TPSWelcomeDocument)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSWelcomeDocument

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TPSWelcomeDocument;
  v4 = [(TPSDocument *)&v7 copyWithZone:zone];
  majorVersion = [(TPSWelcomeDocument *)self majorVersion];
  [v4 setMajorVersion:majorVersion];

  return v4;
}

- (TPSWelcomeDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TPSWelcomeDocument;
  v5 = [(TPSDocument *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"majorVersion"];
    majorVersion = v5->_majorVersion;
    v5->_majorVersion = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSWelcomeDocument;
  coderCopy = coder;
  [(TPSDocument *)&v6 encodeWithCoder:coderCopy];
  v5 = [(TPSWelcomeDocument *)self majorVersion:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"majorVersion"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = TPSWelcomeDocument;
  v4 = [(TPSDocument *)&v8 debugDescription];
  v5 = [v3 initWithString:v4];

  majorVersion = [(TPSWelcomeDocument *)self majorVersion];
  [v5 appendFormat:@"%@ = %@", @"majorVersion", majorVersion];

  return v5;
}

@end