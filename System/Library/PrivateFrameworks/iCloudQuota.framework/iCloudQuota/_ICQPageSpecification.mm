@interface _ICQPageSpecification
- (NSString)pageClassIdentifier;
- (id)copyWithBindings:(id)bindings;
- (id)debugDescription;
@end

@implementation _ICQPageSpecification

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = _ICQPageSpecification;
  v4 = [(_ICQPageSpecification *)&v12 debugDescription];
  v5 = MEMORY[0x277CCACA8];
  pageClassIdentifier = [(_ICQPageSpecification *)self pageClassIdentifier];
  pageIdentifier = [(_ICQPageSpecification *)self pageIdentifier];
  pageTitle = [(_ICQPageSpecification *)self pageTitle];
  v9 = [v5 stringWithFormat:@"<%@: %@: %@>", pageClassIdentifier, pageIdentifier, pageTitle];
  v10 = [v3 stringWithFormat:@"%@: %@", v4, v9];

  return v10;
}

- (NSString)pageClassIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyWithBindings:(id)bindings
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(_ICQPageSpecification *)self copyWithBindings:a2, v4];
  }

  return self;
}

- (void)copyWithBindings:(NSObject *)a3 .cold.1(uint64_t a1, const char *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  _os_log_debug_impl(&dword_275572000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ subclass must implement %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end