@interface WBSSavedAccountContext
+ (WBSSavedAccountContext)defaultContext;
- (BOOL)isEqual:(id)equal;
- (WBSSavedAccountContext)initWithCoder:(id)coder;
- (WBSSavedAccountContext)initWithName:(id)name;
- (WBSSavedAccountContext)initWithSafariProfileIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation WBSSavedAccountContext

+ (WBSSavedAccountContext)defaultContext
{
  if (defaultContext_onceToken != -1)
  {
    +[WBSSavedAccountContext defaultContext];
  }

  v3 = defaultContext_defaultContext;

  return v3;
}

void __40__WBSSavedAccountContext_defaultContext__block_invoke()
{
  v0 = [[WBSSavedAccountContext alloc] initWithName:&stru_1F3064D08];
  v1 = defaultContext_defaultContext;
  defaultContext_defaultContext = v0;
}

- (WBSSavedAccountContext)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = WBSSavedAccountContext;
  v5 = [(WBSSavedAccountContext *)&v11 init];
  if (v5)
  {
    _nameForDefaultSafariProfile = [objc_opt_class() _nameForDefaultSafariProfile];
    if ([nameCopy isEqualToString:_nameForDefaultSafariProfile])
    {
      v7 = &stru_1F3064D08;
    }

    else
    {
      v7 = [nameCopy copy];
    }

    nameForPersistence = v5->_nameForPersistence;
    v5->_nameForPersistence = &v7->isa;

    v9 = v5;
  }

  return v5;
}

- (WBSSavedAccountContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WBSSavedAccountContext;
  v5 = [(WBSSavedAccountContext *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameForPersistence = v5->_nameForPersistence;
    v5->_nameForPersistence = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WBSSavedAccountContext allocWithZone:zone];
  nameForPersistence = self->_nameForPersistence;

  return [(WBSSavedAccountContext *)v4 initWithName:nameForPersistence];
}

- (WBSSavedAccountContext)initWithSafariProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length] && (objc_msgSend(identifierCopy, "isEqualToString:", @"DefaultProfile") & 1) == 0)
  {
    v6 = [@"SafariProfile-" stringByAppendingString:identifierCopy];
    v5 = [(WBSSavedAccountContext *)self initWithName:v6];
  }

  else
  {
    v5 = [(WBSSavedAccountContext *)self initWithName:&stru_1F3064D08];
  }

  return v5;
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
    if (objc_opt_isKindOfClass())
    {
      v5 = WBSIsEqual(self->_nameForPersistence, equalCopy->_nameForPersistence);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = WBSSavedAccountContext;
  v4 = [(WBSSavedAccountContext *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ name='%@'>", v4, self->_nameForPersistence];

  return v5;
}

@end