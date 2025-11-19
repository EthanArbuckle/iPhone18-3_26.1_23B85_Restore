@interface RBDomainAttributeTemplate
- (NSArray)attributeGroups;
- (NSString)description;
- (uint64_t)domain;
- (uint64_t)endowmentNamespace;
- (uint64_t)name;
- (void)setDomain:(void *)a1;
- (void)setEndowmentNamespace:(void *)a1;
- (void)setName:(void *)a1;
@end

@implementation RBDomainAttributeTemplate

- (NSArray)attributeGroups
{
  attributeGroups = self->_attributeGroups;
  if (attributeGroups)
  {
    v3 = attributeGroups;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA60] array];
  }

  return v3;
}

- (uint64_t)endowmentNamespace
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (NSString)description
{
  v3 = [(RBEntitlementPredicate *)self->_originatorEntitlements count];
  v4 = [(RBEntitlementPredicate *)self->_targetEntitlements count];
  v5 = [(NSDictionary *)self->_targetBundleProperties count];
  v6 = [(NSDictionary *)self->_additionalRestrictions count];
  v33 = objc_alloc(MEMORY[0x277CCACA8]);
  v37 = [objc_opt_class() description];
  domain = self->_domain;
  endowmentNamespace = self->_endowmentNamespace;
  v8 = @" endowmentNamespace:";
  v9 = &stru_287507640;
  if (!endowmentNamespace)
  {
    v8 = &stru_287507640;
  }

  v29 = v8;
  name = self->_name;
  if (endowmentNamespace)
  {
    v10 = self->_endowmentNamespace;
  }

  else
  {
    v10 = &stru_287507640;
  }

  v11 = @"\n\t\t\toriginatorEntitlements: ";
  if (!v3)
  {
    v11 = &stru_287507640;
  }

  v27 = v11;
  v28 = v10;
  v39 = v3;
  if (v3)
  {
    v34 = [(RBEntitlementPredicate *)self->_originatorEntitlements description];
  }

  else
  {
    v34 = &stru_287507640;
  }

  v12 = @"\n\t\t\ttargetEntitlements: ";
  if (!v4)
  {
    v12 = &stru_287507640;
  }

  v26 = v12;
  if (v4)
  {
    v31 = [(RBEntitlementPredicate *)self->_targetEntitlements description];
  }

  else
  {
    v31 = &stru_287507640;
  }

  v38 = v4;
  v13 = @"\n\t\t\ttargetBundleProperties:{\n";
  if (!v5)
  {
    v13 = &stru_287507640;
  }

  v25 = v13;
  if (v5)
  {
    v14 = [(NSDictionary *)self->_targetBundleProperties entriesToStringWithIndent:4 debug:1];
    v24 = @"\t\t\t}";
  }

  else
  {
    v24 = &stru_287507640;
    v14 = &stru_287507640;
  }

  if (v6)
  {
    v15 = @"\n\t\t\tadditionalRestrictions:{\n";
  }

  else
  {
    v15 = &stru_287507640;
  }

  v35 = v6;
  if (v6)
  {
    v16 = [(NSDictionary *)self->_additionalRestrictions entriesToStringWithIndent:4 debug:1];
    v17 = @"\t\t\t}";
  }

  else
  {
    v17 = &stru_287507640;
    v16 = &stru_287507640;
  }

  v36 = v5;
  restriction = self->_restriction;
  if (restriction)
  {
    v19 = @"\n\t\t\t\t\trestrictions:{\n";
  }

  else
  {
    v19 = &stru_287507640;
  }

  if (restriction)
  {
    v20 = [(RBDomainRestriction *)self->_restriction description];
    if (self->_restriction)
    {
      v9 = @"\n\t\t\t\t\t}";
    }
  }

  else
  {
    v20 = &stru_287507640;
  }

  v21 = [(NSArray *)self->_attributeGroups componentsJoinedByString:@", \n\t\t\t\t"];
  v22 = [v33 initWithFormat:@"<%@| domain:%@ name:%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@\n\t\t\tattributeGroups:[\n\t\t\t\t%@\n\t\t\t]>", v37, domain, name, v29, v28, v27, v34, v26, v31, v25, v14, v24, v15, v16, v17, v19, v20, v9, v21];

  if (restriction)
  {
  }

  if (v35)
  {
  }

  if (v36)
  {
  }

  if (v38)
  {
  }

  if (v39)
  {
  }

  return v22;
}

- (uint64_t)domain
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setDomain:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 16);
  }
}

- (uint64_t)name
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setName:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 24);
  }
}

- (void)setEndowmentNamespace:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 72);
  }
}

@end