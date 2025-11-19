@interface REMTemplateConfiguration
- (BOOL)isEqual:(id)a3;
- (REMTemplateConfiguration)initWithCoder:(id)a3;
- (REMTemplateConfiguration)initWithSourceListID:(id)a3 shouldSaveCompleted:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTemplateConfiguration

- (REMTemplateConfiguration)initWithSourceListID:(id)a3 shouldSaveCompleted:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMTemplateConfiguration;
  v8 = [(REMTemplateConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sourceListID, a3);
    v9->_shouldSaveCompleted = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, v4);

    v7 = [(REMTemplateConfiguration *)self sourceListID];
    v8 = [v6 sourceListID];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(REMTemplateConfiguration *)self sourceListID];
      v11 = [v6 sourceListID];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        LOBYTE(v13) = 0;
LABEL_8:

        return v13;
      }
    }

    v14 = [(REMTemplateConfiguration *)self shouldSaveCompleted];
    v13 = v14 ^ [v6 shouldSaveCompleted] ^ 1;
    goto LABEL_8;
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMTemplateConfiguration alloc];
  v5 = [(REMTemplateConfiguration *)self sourceListID];
  v6 = [(REMTemplateConfiguration *)v4 initWithSourceListID:v5 shouldSaveCompleted:[(REMTemplateConfiguration *)self shouldSaveCompleted]];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(REMTemplateConfiguration *)self sourceListID];
  [v5 encodeObject:v4 forKey:@"sourceListID"];

  [v5 encodeBool:-[REMTemplateConfiguration shouldSaveCompleted](self forKey:{"shouldSaveCompleted"), @"shouldSaveCompleted"}];
}

- (REMTemplateConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMTemplateConfiguration;
  v5 = [(REMTemplateConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceListID"];
    sourceListID = v5->_sourceListID;
    v5->_sourceListID = v6;

    v5->_shouldSaveCompleted = [v4 decodeBoolForKey:@"shouldSaveCompleted"];
  }

  return v5;
}

@end