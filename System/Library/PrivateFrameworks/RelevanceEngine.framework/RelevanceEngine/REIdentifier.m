@interface REIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToString:(id)a3;
- (REIdentifier)initWithDataSource:(id)a3 section:(id)a4 identifier:(id)a5;
- (unsigned)characterAtIndex:(unint64_t)a3;
@end

@implementation REIdentifier

- (REIdentifier)initWithDataSource:(id)a3 section:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = REIdentifier;
  v11 = [(REIdentifier *)&v23 init];
  if (v11)
  {
    v12 = [v8 copy];
    dataSource = v11->_dataSource;
    v11->_dataSource = v12;

    v14 = [v9 copy];
    section = v11->_section;
    v11->_section = v14;

    v16 = [v10 copy];
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

- (BOOL)isEqualToString:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v10 = [(REIdentifier *)&v20 isEqualToString:v4];
  }

LABEL_18:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(REIdentifier *)self isEqualToString:v4];
  }

  return v5;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v5 = [(NSString *)self->_dataSource length];
  dataSource = self->_dataSource;
  if (v5 <= a3 && (a3 -= [(NSString *)dataSource length], v7 = [(NSString *)self->_section length], dataSource = self->_section, a3 >= v7))
  {
    v8 = a3 - [(NSString *)dataSource length];
    dataSource = self->_identifier;
  }

  else
  {
    v8 = a3;
  }

  return [(NSString *)dataSource characterAtIndex:v8];
}

@end