@interface STUsageTrustIdentifier
- (BOOL)isEqual:(id)a3;
- (STUsageTrustIdentifier)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_stUsageTrustIdentifierCommonInitWithIdentifier:(id)a3 usageTrusted:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STUsageTrustIdentifier

- (STUsageTrustIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 containsValueForKey:@"UsageTrusted"];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = v6;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [(STUsageTrustIdentifier *)v5 initWithCoder:v8];
    }

    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STUsageTrustIdentifier;
    v9 = [(STUsageTrustIdentifier *)&v11 init];
    -[STUsageTrustIdentifier _stUsageTrustIdentifierCommonInitWithIdentifier:usageTrusted:](v9, "_stUsageTrustIdentifierCommonInitWithIdentifier:usageTrusted:", v5, [v4 decodeBoolForKey:@"UsageTrusted"]);
  }

  return v9;
}

- (void)_stUsageTrustIdentifierCommonInitWithIdentifier:(id)a3 usageTrusted:(BOOL)a4
{
  v6 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v6;

  self->_usageTrusted = a4;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeBool:self->_usageTrusted forKey:@"UsageTrusted"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(STUsageTrustIdentifier *)self identifier];
    v7 = [v5 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(STUsageTrustIdentifier *)self usageTrusted];
      v9 = v8 ^ [v5 usageTrusted] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(STUsageTrustIdentifier *)self identifier];
  v4 = [v3 hash];
  v5 = [(STUsageTrustIdentifier *)self usageTrusted];

  return v4 ^ v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STUsageTrustIdentifier allocWithZone:a3];
  identifier = self->_identifier;
  usageTrusted = self->_usageTrusted;

  return [(STUsageTrustIdentifier *)v4 initWithIdentifier:identifier usageTrusted:usageTrusted];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_fault_impl(&dword_1B831F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to decode STUsageTrustIdentifier with identifier: %{public}@, hasUsageTrustedKey: %d", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

@end