@interface RESectionPath
+ (RESectionPath)sectionPathWithSectionName:(id)a3 element:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)sectionName;
- (RESectionPath)initWithSectionName:(id)a3 element:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation RESectionPath

+ (RESectionPath)sectionPathWithSectionName:(id)a3 element:(unint64_t)a4
{
  v5 = a3;
  v6 = [[RESectionPath alloc] initWithSectionName:v5 element:a4];

  return v6;
}

- (RESectionPath)initWithSectionName:(id)a3 element:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RESectionPath;
  v7 = [(RESectionPath *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    sectionName = v7->_sectionName;
    v7->_sectionName = v8;

    v7->_element = a4;
  }

  return v7;
}

- (NSString)sectionName
{
  v2 = [(NSString *)self->_sectionName copy];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_element == v5->_element)
      {
        sectionName = self->_sectionName;
        v8 = v5->_sectionName;
        v9 = sectionName;
        v10 = v9;
        if (v9 == v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSString *)v9 isEqual:v8];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RESectionPath;
  v4 = [(RESectionPath *)&v8 description];
  v5 = REStringForSectionPath(self);
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RESectionPath allocWithZone:a3];
  sectionName = self->_sectionName;
  element = self->_element;

  return [(RESectionPath *)v4 initWithSectionName:sectionName element:element];
}

@end