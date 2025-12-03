@interface REIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (REIdentifier)initWithDataSource:(id)source section:(id)section identifier:(id)identifier;
- (unsigned)characterAtIndex:(unint64_t)index;
@end

@implementation REIdentifier

- (REIdentifier)initWithDataSource:(id)source section:(id)section identifier:(id)identifier
{
  sourceCopy = source;
  sectionCopy = section;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = REIdentifier;
  v11 = [(REIdentifier *)&v23 init];
  if (v11)
  {
    v12 = [sourceCopy copy];
    dataSource = v11->_dataSource;
    v11->_dataSource = v12;

    v14 = [sectionCopy copy];
    section = v11->_section;
    v11->_section = v14;

    v16 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v16;

    v18 = [(NSString *)v11->_dataSource hash];
    v19 = [(NSString *)v11->_section hash]^ v18;
    v11->_hash = v19 ^ [(NSString *)v11->_identifier hash];
    v20 = [(NSString *)v11->_dataSource length];
    v21 = [(NSString *)v11->_section length]+ v20;
    v11->_length = v21 + [(NSString *)v11->_identifier length];
  }

  return v11;
}

- (BOOL)isEqualToString:(id)string
{
  stringCopy = string;
  if (self == stringCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = stringCopy;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = v7;
      if (v7 == identifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:identifier];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      dataSource = v5->_dataSource;
      v12 = self->_dataSource;
      v13 = v12;
      if (v12 == dataSource)
      {
      }

      else
      {
        v14 = [(NSString *)v12 isEqual:dataSource];

        if (!v14)
        {
LABEL_11:
          v10 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      section = self->_section;
      v16 = v5->_section;
      v17 = section;
      v18 = v17;
      if (v17 == v16)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)v17 isEqual:v16];
      }

      goto LABEL_17;
    }

    v20.receiver = self;
    v20.super_class = REIdentifier;
    v10 = [(REIdentifier *)&v20 isEqualToString:stringCopy];
  }

LABEL_18:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(REIdentifier *)self isEqualToString:equalCopy];
  }

  return v5;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  v5 = [(NSString *)self->_dataSource length];
  dataSource = self->_dataSource;
  if (v5 <= index && (index -= [(NSString *)dataSource length], v7 = [(NSString *)self->_section length], dataSource = self->_section, index >= v7))
  {
    indexCopy = index - [(NSString *)dataSource length];
    dataSource = self->_identifier;
  }

  else
  {
    indexCopy = index;
  }

  return [(NSString *)dataSource characterAtIndex:indexCopy];
}

@end