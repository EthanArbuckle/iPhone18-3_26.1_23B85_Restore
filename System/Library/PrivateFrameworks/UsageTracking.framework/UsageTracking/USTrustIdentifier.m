@interface USTrustIdentifier
- (BOOL)isEqual:(id)a3;
- (USTrustIdentifier)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_USTrustIdentifierCommonInitWithIdentifier:(id)a3 trusted:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USTrustIdentifier

- (USTrustIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 containsValueForKey:@"Trusted"];
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

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [(USTrustIdentifier *)v5 initWithCoder:v8];
    }

    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = USTrustIdentifier;
    v9 = [(USTrustIdentifier *)&v11 init];
    -[USTrustIdentifier _USTrustIdentifierCommonInitWithIdentifier:trusted:](v9, "_USTrustIdentifierCommonInitWithIdentifier:trusted:", v5, [v4 decodeBoolForKey:@"Trusted"]);
  }

  return v9;
}

- (void)_USTrustIdentifierCommonInitWithIdentifier:(id)a3 trusted:(BOOL)a4
{
  v6 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v6;

  self->_trusted = a4;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeBool:self->_trusted forKey:@"Trusted"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = USTrustIdentifier;
  v4 = [(USTrustIdentifier *)&v8 description];
  v5 = [(USTrustIdentifier *)self identifier];
  v6 = [v3 stringWithFormat:@"%@, Identifier: %@, Trusted: %d", v4, v5, -[USTrustIdentifier trusted](self, "trusted")];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(USTrustIdentifier *)self identifier];
    v7 = [v5 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(USTrustIdentifier *)self trusted];
      v9 = v8 ^ [v5 trusted] ^ 1;
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
  v3 = [(USTrustIdentifier *)self identifier];
  v4 = [v3 hash];
  v5 = [(USTrustIdentifier *)self trusted];

  return v4 ^ v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  identifier = v3->_identifier;
  trusted = v3->_trusted;

  return [(USTrustIdentifier *)v3 initWithIdentifier:identifier trusted:trusted];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 1026;
  v6 = a2 & 1;
  _os_log_fault_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to decode USTrustIdentifier with identifier: %{public}@, hasTrustedKey: %{public}d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end