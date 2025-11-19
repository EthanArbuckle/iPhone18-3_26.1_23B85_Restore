@interface WFWorkflowCollection
- (BOOL)isEqual:(id)a3;
- (WFWorkflowCollection)initWithCoder:(id)a3;
- (WFWorkflowCollection)initWithIdentifier:(id)a3 isFolder:(BOOL)a4 name:(id)a5 glyphCharacter:(unsigned __int16)a6 isDeleted:(BOOL)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowCollection

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFWorkflowCollection;
  v4 = a3;
  [(WFDatabaseObjectDescriptor *)&v7 encodeWithCoder:v4];
  v5 = [(WFWorkflowCollection *)self name:v7.receiver];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[WFWorkflowCollection glyphCharacter](self, "glyphCharacter")}];
  [v4 encodeObject:v6 forKey:@"glyphCharacter"];

  [v4 encodeBool:-[WFWorkflowCollection isFolder](self forKey:{"isFolder"), @"folder"}];
  [v4 encodeBool:-[WFWorkflowCollection isDeleted](self forKey:{"isDeleted"), @"deleted"}];
}

- (WFWorkflowCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFWorkflowCollection;
  v5 = [(WFDatabaseObjectDescriptor *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"glyphCharacter"];
    v5->_glyphCharacter = [v8 unsignedLongValue];

    v5->_folder = [v4 decodeBoolForKey:@"folder"];
    v5->_deleted = [v4 decodeBoolForKey:@"deleted"];
    v9 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WFDatabaseObjectDescriptor *)v5 identifier];
      v7 = [(WFDatabaseObjectDescriptor *)self identifier];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(WFWorkflowCollection *)v5 name];
        v9 = [(WFWorkflowCollection *)self name];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(WFWorkflowCollection *)v5 glyphCharacter];
          v11 = v10 == [(WFWorkflowCollection *)self glyphCharacter];
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

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(WFWorkflowCollection *)self name];
  v4 = [v3 hash];
  v5 = v4 ^ [(WFWorkflowCollection *)self glyphCharacter];
  v6 = [(WFWorkflowCollection *)self isFolder];
  v7 = v6 ^ [(WFWorkflowCollection *)self isDeleted];

  return v5 ^ v7;
}

- (WFWorkflowCollection)initWithIdentifier:(id)a3 isFolder:(BOOL)a4 name:(id)a5 glyphCharacter:(unsigned __int16)a6 isDeleted:(BOOL)a7
{
  v12 = a5;
  v18.receiver = self;
  v18.super_class = WFWorkflowCollection;
  v13 = [(WFDatabaseObjectDescriptor *)&v18 initWithIdentifier:a3 objectType:2];
  if (v13)
  {
    v14 = [v12 copy];
    name = v13->_name;
    v13->_name = v14;

    v13->_glyphCharacter = a6;
    v13->_folder = a4;
    v13->_deleted = a7;
    v16 = v13;
  }

  return v13;
}

@end