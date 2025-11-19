@interface RBAttributeTemplateGroup
- (NSArray)attributes;
- (NSString)description;
@end

@implementation RBAttributeTemplateGroup

- (NSArray)attributes
{
  attributes = self->_attributes;
  if (attributes)
  {
    v3 = attributes;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA60] array];
  }

  return v3;
}

- (NSString)description
{
  v3 = [(RBEntitlementPredicate *)self->_originatorEntitlements count];
  v4 = [(RBEntitlementPredicate *)self->_targetEntitlements count];
  v5 = [(NSDictionary *)self->_targetBundleProperties count];
  v6 = [(NSDictionary *)self->_additionalRestrictions count];
  v37 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [objc_opt_class() description];
  v8 = [(NSArray *)self->_attributes componentsJoinedByString:@", \n\t\t\t\t\t\t"];
  v9 = @"\n\t\t\t\t\toriginatorEntitlements: ";
  if (!v3)
  {
    v9 = &stru_287507640;
  }

  v35 = v9;
  if (v3)
  {
    v38 = [(RBEntitlementPredicate *)self->_originatorEntitlements description];
  }

  else
  {
    v38 = &stru_287507640;
  }

  v10 = @"\n\t\t\t\t\ttargetEntitlements: ";
  if (!v4)
  {
    v10 = &stru_287507640;
  }

  v34 = v10;
  if (v4)
  {
    v36 = [(RBEntitlementPredicate *)self->_targetEntitlements description];
  }

  else
  {
    v36 = &stru_287507640;
  }

  v11 = @"\n\t\t\t\t\ttargetBundleProperties:{\n";
  if (!v5)
  {
    v11 = &stru_287507640;
  }

  v33 = v11;
  v40 = v8;
  if (v5)
  {
    v41 = [(NSDictionary *)self->_targetBundleProperties entriesToStringWithIndent:6 debug:1];
    v12 = @"\n\t\t\t\t\t}";
  }

  else
  {
    v12 = &stru_287507640;
    v41 = &stru_287507640;
  }

  if (v6)
  {
    v13 = @"\n\t\t\t\t\tadditionalRestrictions:{\n";
  }

  else
  {
    v13 = &stru_287507640;
  }

  v39 = v6;
  if (v6)
  {
    v14 = [(NSDictionary *)self->_additionalRestrictions entriesToStringWithIndent:6 debug:1];
    v15 = @"\n\t\t\t\t\t}";
  }

  else
  {
    v15 = &stru_287507640;
    v14 = &stru_287507640;
  }

  restriction = self->_restriction;
  if (restriction)
  {
    v17 = [(RBDomainRestriction *)restriction description];
    v18 = v12;
    v19 = v5;
    v20 = v4;
    v21 = v3;
    v22 = v17;
    v23 = @"\n\t\t\t\t\t}";
    if (!self->_restriction)
    {
      v23 = &stru_287507640;
    }

    v31 = v15;
    v29 = v13;
    v24 = v36;
    v25 = v38;
    v26 = v40;
    v27 = [v37 initWithFormat:@"<%@|\n\t\t\t\t\tattributes:[\n\t\t\t\t\t\t%@\n\t\t\t\t\t]%@%@%@%@%@%@%@%@%@%@%@%@%@>", v7, v40, v35, v38, v34, v36, v33, v41, v18, v29, v14, v31, @"\n\t\t\t\t\trestrictions:{\n", v17, v23];

    v3 = v21;
    v4 = v20;
    v5 = v19;
  }

  else
  {
    v32 = v15;
    v30 = v13;
    v24 = v36;
    v25 = v38;
    v26 = v40;
    v27 = [v37 initWithFormat:@"<%@|\n\t\t\t\t\tattributes:[\n\t\t\t\t\t\t%@\n\t\t\t\t\t]%@%@%@%@%@%@%@%@%@%@%@%@%@>", v7, v40, v35, v38, v34, v36, v33, v41, v12, v30, v14, v32, &stru_287507640, &stru_287507640, &stru_287507640];
  }

  if (v39)
  {
  }

  if (v5)
  {
  }

  if (v4)
  {
  }

  if (v3)
  {
  }

  return v27;
}

@end