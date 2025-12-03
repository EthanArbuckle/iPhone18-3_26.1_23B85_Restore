@interface WFWorkflowCollection
- (BOOL)isEqual:(id)equal;
- (WFWorkflowCollection)initWithCoder:(id)coder;
- (WFWorkflowCollection)initWithIdentifier:(id)identifier isFolder:(BOOL)folder name:(id)name glyphCharacter:(unsigned __int16)character isDeleted:(BOOL)deleted;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowCollection

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFWorkflowCollection;
  coderCopy = coder;
  [(WFDatabaseObjectDescriptor *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFWorkflowCollection *)self name:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"name"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[WFWorkflowCollection glyphCharacter](self, "glyphCharacter")}];
  [coderCopy encodeObject:v6 forKey:@"glyphCharacter"];

  [coderCopy encodeBool:-[WFWorkflowCollection isFolder](self forKey:{"isFolder"), @"folder"}];
  [coderCopy encodeBool:-[WFWorkflowCollection isDeleted](self forKey:{"isDeleted"), @"deleted"}];
}

- (WFWorkflowCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WFWorkflowCollection;
  v5 = [(WFDatabaseObjectDescriptor *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"glyphCharacter"];
    v5->_glyphCharacter = [v8 unsignedLongValue];

    v5->_folder = [coderCopy decodeBoolForKey:@"folder"];
    v5->_deleted = [coderCopy decodeBoolForKey:@"deleted"];
    v9 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(WFDatabaseObjectDescriptor *)v5 identifier];
      identifier2 = [(WFDatabaseObjectDescriptor *)self identifier];
      if ([identifier isEqualToString:identifier2])
      {
        name = [(WFWorkflowCollection *)v5 name];
        name2 = [(WFWorkflowCollection *)self name];
        if ([name isEqualToString:name2])
        {
          glyphCharacter = [(WFWorkflowCollection *)v5 glyphCharacter];
          v11 = glyphCharacter == [(WFWorkflowCollection *)self glyphCharacter];
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
  name = [(WFWorkflowCollection *)self name];
  v4 = [name hash];
  v5 = v4 ^ [(WFWorkflowCollection *)self glyphCharacter];
  isFolder = [(WFWorkflowCollection *)self isFolder];
  v7 = isFolder ^ [(WFWorkflowCollection *)self isDeleted];

  return v5 ^ v7;
}

- (WFWorkflowCollection)initWithIdentifier:(id)identifier isFolder:(BOOL)folder name:(id)name glyphCharacter:(unsigned __int16)character isDeleted:(BOOL)deleted
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = WFWorkflowCollection;
  v13 = [(WFDatabaseObjectDescriptor *)&v18 initWithIdentifier:identifier objectType:2];
  if (v13)
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v13->_glyphCharacter = character;
    v13->_folder = folder;
    v13->_deleted = deleted;
    v16 = v13;
  }

  return v13;
}

@end