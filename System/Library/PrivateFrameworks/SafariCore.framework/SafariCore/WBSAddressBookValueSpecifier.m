@interface WBSAddressBookValueSpecifier
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSAddressBookValueSpecifier)initWithProperty:(id)a3 component:(id)a4 label:(id)a5 category:(id)a6 parentProperty:(id)a7 classification:(id)a8 classificationHint:(id)a9;
- (id)description;
- (unint64_t)hash;
@end

@implementation WBSAddressBookValueSpecifier

- (WBSAddressBookValueSpecifier)initWithProperty:(id)a3 component:(id)a4 label:(id)a5 category:(id)a6 parentProperty:(id)a7 classification:(id)a8 classificationHint:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v39.receiver = self;
  v39.super_class = WBSAddressBookValueSpecifier;
  v22 = [(WBSAddressBookValueSpecifier *)&v39 init];
  if (v22)
  {
    v23 = [v15 copy];
    property = v22->_property;
    v22->_property = v23;

    v25 = [v16 copy];
    component = v22->_component;
    v22->_component = v25;

    v27 = [v17 copy];
    label = v22->_label;
    v22->_label = v27;

    v29 = [v18 copy];
    category = v22->_category;
    v22->_category = v29;

    v31 = [v19 copy];
    parentProperty = v22->_parentProperty;
    v22->_parentProperty = v31;

    v33 = [v20 copy];
    classification = v22->_classification;
    v22->_classification = v33;

    v35 = [v21 copy];
    classificationHint = v22->_classificationHint;
    v22->_classificationHint = v35;

    v37 = v22;
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_property hash];
  v4 = [(NSString *)self->_component hash]^ v3;
  return v4 ^ [(NSString *)self->_label hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      property = self->_property;
      v9 = 0;
      if (property == v5->_property || [(NSString *)property isEqualToString:?])
      {
        component = self->_component;
        if (component == v5->_component || [(NSString *)component isEqualToString:?])
        {
          label = self->_label;
          if (label == v5->_label || [(NSString *)label isEqualToString:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p property: %@ component: %@; label: %@>", v5, self, self->_property, self->_component, self->_label];;

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  property = self->_property;
  if (property)
  {
    [v3 setObject:property forKeyedSubscript:@"property"];
  }

  component = self->_component;
  if (component)
  {
    [v4 setObject:component forKeyedSubscript:@"component"];
  }

  label = self->_label;
  if (label)
  {
    [v4 setObject:label forKeyedSubscript:@"label"];
  }

  category = self->_category;
  if (category)
  {
    [v4 setObject:category forKeyedSubscript:@"category"];
  }

  parentProperty = self->_parentProperty;
  if (parentProperty)
  {
    [v4 setObject:parentProperty forKeyedSubscript:@"parentProperty"];
  }

  classification = self->_classification;
  if (classification)
  {
    [v4 setObject:classification forKeyedSubscript:@"classification"];
  }

  classificationHint = self->_classificationHint;
  if (classificationHint)
  {
    [v4 setObject:classificationHint forKeyedSubscript:@"classificationHint"];
  }

  return v4;
}

@end