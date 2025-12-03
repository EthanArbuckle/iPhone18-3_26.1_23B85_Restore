@interface SASButtonIdentifierTransport
- (BOOL)_identifierMatchesSiriButtonIdentifier:(int64_t)identifier;
- (SASButtonIdentifierTransport)initWithCoder:(id)coder;
- (SASButtonIdentifierTransport)initWithSiriButtonIdentifier:(int64_t)identifier;
- (SASButtonIdentifierTransport)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)siriButtonIdentifier;
- (void)encodeWithCoder:(id)coder;
- (void)siriButtonIdentifier;
@end

@implementation SASButtonIdentifierTransport

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(SASButtonIdentifierTransport *)self identifier];
  v4 = [v2 stringWithFormat:@"SASButtonIdentifierTransport:%@", identifier];

  return v4;
}

- (int64_t)siriButtonIdentifier
{
  v3 = 1;
  if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:1])
  {
    v3 = 2;
    if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:2])
    {
      v3 = 3;
      if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:3])
      {
        v3 = 4;
        if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:4])
        {
          v3 = 5;
          if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:5])
          {
            v3 = 6;
            if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:6])
            {
              v3 = 7;
              if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:7])
              {
                v3 = 100;
                if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:100])
                {
                  v3 = 101;
                  if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:101])
                  {
                    v3 = 200;
                    if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:200])
                    {
                      v3 = 201;
                      if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:201])
                      {
                        v3 = 8;
                        if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:8])
                        {
                          v3 = 9;
                          if (![(SASButtonIdentifierTransport *)self _identifierMatchesSiriButtonIdentifier:9])
                          {
                            v4 = *MEMORY[0x1E698D0A0];
                            if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
                            {
                              [(SASButtonIdentifierTransport *)v4 siriButtonIdentifier];
                            }

                            return 200;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

- (SASButtonIdentifierTransport)initWithSiriButtonIdentifier:(int64_t)identifier
{
  v7.receiver = self;
  v7.super_class = SASButtonIdentifierTransport;
  v4 = [(SASButtonIdentifierTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:identifier];
    [(SASButtonIdentifierTransport *)v4 setIdentifier:v5];
  }

  return v4;
}

- (SASButtonIdentifierTransport)initWithString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = SASButtonIdentifierTransport;
  v5 = [(SASButtonIdentifierTransport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SASButtonIdentifierTransport *)v5 setIdentifier:stringCopy];
  }

  return v6;
}

- (BOOL)_identifierMatchesSiriButtonIdentifier:(int64_t)identifier
{
  identifier = [(SASButtonIdentifierTransport *)self identifier];
  v5 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:identifier];
  v6 = [identifier isEqualToString:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  siriButtonIdentifier = [(SASButtonIdentifierTransport *)self siriButtonIdentifier];

  return [v4 initWithSiriButtonIdentifier:siriButtonIdentifier];
}

- (SASButtonIdentifierTransport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SASButtonIdentifierTransport;
  v5 = [(SASButtonIdentifierTransport *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SASButtonIdentifierTransport *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (void)siriButtonIdentifier
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  identifier = [a2 identifier];
  v6 = 136315394;
  v7 = "[SASButtonIdentifierTransport siriButtonIdentifier]";
  v8 = 2112;
  v9 = identifier;
  _os_log_error_impl(&dword_1C8137000, selfCopy, OS_LOG_TYPE_ERROR, "%s ERROR: attempted to create SiriButtonIdentifier from '%@'.", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end