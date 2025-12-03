@interface CNVCardPropertyItem
+ (id)itemWithValue:(id)value label:(id)label identifier:(id)identifier;
- (CNVCardPropertyItem)initWithValue:(id)value label:(id)label identifier:(id)identifier;
- (id)description;
@end

@implementation CNVCardPropertyItem

+ (id)itemWithValue:(id)value label:(id)label identifier:(id)identifier
{
  identifierCopy = identifier;
  labelCopy = label;
  valueCopy = value;
  v11 = [[self alloc] initWithValue:valueCopy label:labelCopy identifier:identifierCopy];

  return v11;
}

- (CNVCardPropertyItem)initWithValue:(id)value label:(id)label identifier:(id)identifier
{
  valueCopy = value;
  labelCopy = label;
  identifierCopy = identifier;
  v11 = [(CNVCardPropertyItem *)self init];
  if (v11)
  {
    v12 = [valueCopy copy];
    value = v11->_value;
    v11->_value = v12;

    v14 = [labelCopy copy];
    label = v11->_label;
    v11->_label = v14;

    v16 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v16;

    v18 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"value" object:self->_value];
  v5 = [v3 appendName:@"label" object:self->_label];
  build = [v3 build];

  return build;
}

@end