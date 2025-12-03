@interface REMTemplateConfiguration
- (BOOL)isEqual:(id)equal;
- (REMTemplateConfiguration)initWithCoder:(id)coder;
- (REMTemplateConfiguration)initWithSourceListID:(id)d shouldSaveCompleted:(BOOL)completed;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTemplateConfiguration

- (REMTemplateConfiguration)initWithSourceListID:(id)d shouldSaveCompleted:(BOOL)completed
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = REMTemplateConfiguration;
  v8 = [(REMTemplateConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sourceListID, d);
    v9->_shouldSaveCompleted = completed;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, equalCopy);

    sourceListID = [(REMTemplateConfiguration *)self sourceListID];
    sourceListID2 = [v6 sourceListID];
    v9 = sourceListID2;
    if (sourceListID == sourceListID2)
    {
    }

    else
    {
      sourceListID3 = [(REMTemplateConfiguration *)self sourceListID];
      sourceListID4 = [v6 sourceListID];
      v12 = [sourceListID3 isEqual:sourceListID4];

      if (!v12)
      {
        LOBYTE(v13) = 0;
LABEL_8:

        return v13;
      }
    }

    shouldSaveCompleted = [(REMTemplateConfiguration *)self shouldSaveCompleted];
    v13 = shouldSaveCompleted ^ [v6 shouldSaveCompleted] ^ 1;
    goto LABEL_8;
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMTemplateConfiguration alloc];
  sourceListID = [(REMTemplateConfiguration *)self sourceListID];
  v6 = [(REMTemplateConfiguration *)v4 initWithSourceListID:sourceListID shouldSaveCompleted:[(REMTemplateConfiguration *)self shouldSaveCompleted]];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceListID = [(REMTemplateConfiguration *)self sourceListID];
  [coderCopy encodeObject:sourceListID forKey:@"sourceListID"];

  [coderCopy encodeBool:-[REMTemplateConfiguration shouldSaveCompleted](self forKey:{"shouldSaveCompleted"), @"shouldSaveCompleted"}];
}

- (REMTemplateConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = REMTemplateConfiguration;
  v5 = [(REMTemplateConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceListID"];
    sourceListID = v5->_sourceListID;
    v5->_sourceListID = v6;

    v5->_shouldSaveCompleted = [coderCopy decodeBoolForKey:@"shouldSaveCompleted"];
  }

  return v5;
}

@end