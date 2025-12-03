@interface SSDownloadPolicy
- (BOOL)isEqual:(id)equal;
- (SSDownloadPolicy)initWithCoder:(id)coder;
- (SSDownloadPolicy)initWithDownloadKind:(id)kind URLBagType:(int64_t)type;
- (SSDownloadPolicy)initWithNetworkConstraints:(id)constraints;
- (SSDownloadPolicy)initWithXPCEncoding:(id)encoding;
- (id)_policyRuleForSizeLimit:(int64_t)limit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPolicyRule:(id)rule;
- (void)setPolicyRules:(id)rules;
- (void)unionNetworkConstraints:(id)constraints;
- (void)unionPolicyRule:(id)rule;
@end

@implementation SSDownloadPolicy

- (SSDownloadPolicy)initWithDownloadKind:(id)kind URLBagType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = SSDownloadPolicy;
  v6 = [(SSDownloadPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_bagType = type;
    v6->_downloadKind = [kind copy];
  }

  return v7;
}

- (SSDownloadPolicy)initWithNetworkConstraints:(id)constraints
{
  v7.receiver = self;
  v7.super_class = SSDownloadPolicy;
  v4 = [(SSDownloadPolicy *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SSDownloadPolicy *)v4 unionNetworkConstraints:constraints];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadPolicy;
  [(SSDownloadPolicy *)&v3 dealloc];
}

- (void)setPolicyRule:(id)rule
{
  v5 = -[SSDownloadPolicy _policyRuleForSizeLimit:](self, "_policyRuleForSizeLimit:", [rule downloadSizeLimit]);
  policyRules = self->_policyRules;
  if (v5)
  {
    v7 = [(NSMutableArray *)policyRules indexOfObjectIdenticalTo:?];
    v8 = self->_policyRules;

    [(NSMutableArray *)v8 replaceObjectAtIndex:v7 withObject:rule];
  }

  else
  {
    if (!policyRules)
    {
      policyRules = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_policyRules = policyRules;
    }

    [(NSMutableArray *)policyRules addObject:rule];
  }
}

- (void)setPolicyRules:(id)rules
{
  policyRules = self->_policyRules;
  if (policyRules != rules)
  {

    self->_policyRules = [rules mutableCopy];
  }
}

- (void)unionNetworkConstraints:(id)constraints
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__SSDownloadPolicy_unionNetworkConstraints___block_invoke;
  v3[3] = &unk_1E84AF130;
  v3[4] = constraints;
  v3[5] = self;
  SSNetworkTypeApplyBlock(v3);
}

void __44__SSDownloadPolicy_unionNetworkConstraints___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(SSDownloadPolicyRule);
  [(SSDownloadPolicyRule *)v4 addNetworkType:a2];
  -[SSDownloadPolicyRule setDownloadSizeLimit:](v4, "setDownloadSizeLimit:", [*(a1 + 32) sizeLimitForNetworkType:a2]);
  [*(a1 + 40) unionPolicyRule:v4];
}

- (void)unionPolicyRule:(id)rule
{
  v5 = -[SSDownloadPolicy _policyRuleForSizeLimit:](self, "_policyRuleForSizeLimit:", [rule downloadSizeLimit]);
  if (v5)
  {

    [v5 unionPolicyRule:rule];
  }

  else
  {
    policyRules = self->_policyRules;
    if (!policyRules)
    {
      policyRules = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_policyRules = policyRules;
    }

    [(NSMutableArray *)policyRules addObject:rule];
  }
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->_bagType == *(equal + 1))
  {
    downloadKind = self->_downloadKind;
    if (downloadKind == *(equal + 2) || (v7 = [(NSString *)downloadKind isEqualToString:?]) != 0)
    {
      policyRules = self->_policyRules;
      if (policyRules == *(equal + 3))
      {
        LOBYTE(v7) = 1;
      }

      else
      {

        LOBYTE(v7) = [(NSMutableArray *)policyRules isEqualToArray:?];
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_downloadKind forKey:@"kind"];
  [coder encodeObject:self->_policyRules forKey:@"rules"];
  v5 = SSGetStringForURLBagType(self->_bagType);

  [coder encodeObject:v5 forKey:@"bagtype"];
}

- (SSDownloadPolicy)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SSDownloadPolicy;
  v4 = [(SSDownloadPolicy *)&v9 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bagtype"];
    v4->_bagType = SSURLBagTypeForString(v5);
    v4->_downloadKind = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v4->_policyRules = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"rules", "mutableCopy"}];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_bagType;
  v5[2] = [(NSString *)self->_downloadKind copyWithZone:zone];
  v5[3] = [(NSMutableArray *)self->_policyRules mutableCopyWithZone:zone];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_downloadKind);
  SSXPCDictionarySetCFObject(v3, "1", self->_policyRules);
  xpc_dictionary_set_int64(v3, "2", self->_bagType);
  return v3;
}

- (SSDownloadPolicy)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v10.receiver = self;
    v10.super_class = SSDownloadPolicy;
    v5 = [(SSDownloadPolicy *)&v10 init];
    if (v5)
    {
      value = xpc_dictionary_get_value(encoding, "1");
      v8 = objc_opt_class();
      v9 = SSXPCCreateNSArrayFromXPCEncodedArray(value, v8);
      v5->_bagType = xpc_dictionary_get_int64(encoding, "2");
      objc_opt_class();
      v5->_downloadKind = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
      v5->_policyRules = [v9 mutableCopy];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)_policyRuleForSizeLimit:(int64_t)limit
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  policyRules = self->_policyRules;
  v5 = [(NSMutableArray *)policyRules countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(policyRules);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 downloadSizeLimit] == limit)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)policyRules countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end