@interface WBSAddressBookValueSpecifier
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSAddressBookValueSpecifier)initWithProperty:(id)property component:(id)component label:(id)label category:(id)category parentProperty:(id)parentProperty classification:(id)classification classificationHint:(id)hint;
- (id)description;
- (unint64_t)hash;
@end

@implementation WBSAddressBookValueSpecifier

- (WBSAddressBookValueSpecifier)initWithProperty:(id)property component:(id)component label:(id)label category:(id)category parentProperty:(id)parentProperty classification:(id)classification classificationHint:(id)hint
{
  propertyCopy = property;
  componentCopy = component;
  labelCopy = label;
  categoryCopy = category;
  parentPropertyCopy = parentProperty;
  classificationCopy = classification;
  hintCopy = hint;
  v39.receiver = self;
  v39.super_class = WBSAddressBookValueSpecifier;
  v22 = [(WBSAddressBookValueSpecifier *)&v39 init];
  if (v22)
  {
    v23 = [propertyCopy copy];
    property = v22->_property;
    v22->_property = v23;

    v25 = [componentCopy copy];
    component = v22->_component;
    v22->_component = v25;

    v27 = [labelCopy copy];
    label = v22->_label;
    v22->_label = v27;

    v29 = [categoryCopy copy];
    category = v22->_category;
    v22->_category = v29;

    v31 = [parentPropertyCopy copy];
    parentProperty = v22->_parentProperty;
    v22->_parentProperty = v31;

    v33 = [classificationCopy copy];
    classification = v22->_classification;
    v22->_classification = v33;

    v35 = [hintCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  property = self->_property;
  if (property)
  {
    [dictionary setObject:property forKeyedSubscript:@"property"];
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