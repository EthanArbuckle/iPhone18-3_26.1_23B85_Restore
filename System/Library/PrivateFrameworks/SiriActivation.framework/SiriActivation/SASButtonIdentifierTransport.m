@interface SASButtonIdentifierTransport
- (BOOL)_identifierMatchesSiriButtonIdentifier:(int64_t)a3;
- (SASButtonIdentifierTransport)initWithCoder:(id)a3;
- (SASButtonIdentifierTransport)initWithSiriButtonIdentifier:(int64_t)a3;
- (SASButtonIdentifierTransport)initWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)siriButtonIdentifier;
- (void)encodeWithCoder:(id)a3;
- (void)siriButtonIdentifier;
@end

@implementation SASButtonIdentifierTransport

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SASButtonIdentifierTransport *)self identifier];
  v4 = [v2 stringWithFormat:@"SASButtonIdentifierTransport:%@", v3];

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

- (SASButtonIdentifierTransport)initWithSiriButtonIdentifier:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SASButtonIdentifierTransport;
  v4 = [(SASButtonIdentifierTransport *)&v7 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:a3];
    [(SASButtonIdentifierTransport *)v4 setIdentifier:v5];
  }

  return v4;
}

- (SASButtonIdentifierTransport)initWithString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASButtonIdentifierTransport;
  v5 = [(SASButtonIdentifierTransport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SASButtonIdentifierTransport *)v5 setIdentifier:v4];
  }

  return v6;
}

- (BOOL)_identifierMatchesSiriButtonIdentifier:(int64_t)a3
{
  v4 = [(SASButtonIdentifierTransport *)self identifier];
  v5 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:a3];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SASButtonIdentifierTransport *)self siriButtonIdentifier];

  return [v4 initWithSiriButtonIdentifier:v5];
}

- (SASButtonIdentifierTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SASButtonIdentifierTransport;
  v5 = [(SASButtonIdentifierTransport *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SASButtonIdentifierTransport *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (void)siriButtonIdentifier
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  v6 = 136315394;
  v7 = "[SASButtonIdentifierTransport siriButtonIdentifier]";
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1C8137000, v3, OS_LOG_TYPE_ERROR, "%s ERROR: attempted to create SiriButtonIdentifier from '%@'.", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end