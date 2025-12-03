@interface USTrustIdentifier
- (BOOL)isEqual:(id)equal;
- (USTrustIdentifier)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_USTrustIdentifierCommonInitWithIdentifier:(id)identifier trusted:(BOOL)trusted;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USTrustIdentifier

- (USTrustIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy containsValueForKey:@"Trusted"];
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
    -[USTrustIdentifier _USTrustIdentifierCommonInitWithIdentifier:trusted:](v9, "_USTrustIdentifierCommonInitWithIdentifier:trusted:", v5, [coderCopy decodeBoolForKey:@"Trusted"]);
  }

  return v9;
}

- (void)_USTrustIdentifierCommonInitWithIdentifier:(id)identifier trusted:(BOOL)trusted
{
  v6 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v6;

  self->_trusted = trusted;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeBool:self->_trusted forKey:@"Trusted"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = USTrustIdentifier;
  v4 = [(USTrustIdentifier *)&v8 description];
  identifier = [(USTrustIdentifier *)self identifier];
  v6 = [v3 stringWithFormat:@"%@, Identifier: %@, Trusted: %d", v4, identifier, -[USTrustIdentifier trusted](self, "trusted")];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(USTrustIdentifier *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      trusted = [(USTrustIdentifier *)self trusted];
      v9 = trusted ^ [v5 trusted] ^ 1;
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
  identifier = [(USTrustIdentifier *)self identifier];
  v4 = [identifier hash];
  trusted = [(USTrustIdentifier *)self trusted];

  return v4 ^ trusted;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  identifier = selfCopy->_identifier;
  trusted = selfCopy->_trusted;

  return [(USTrustIdentifier *)selfCopy initWithIdentifier:identifier trusted:trusted];
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