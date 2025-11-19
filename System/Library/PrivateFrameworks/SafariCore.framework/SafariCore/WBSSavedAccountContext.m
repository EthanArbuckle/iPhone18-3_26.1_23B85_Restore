@interface WBSSavedAccountContext
+ (WBSSavedAccountContext)defaultContext;
- (BOOL)isEqual:(id)a3;
- (WBSSavedAccountContext)initWithCoder:(id)a3;
- (WBSSavedAccountContext)initWithName:(id)a3;
- (WBSSavedAccountContext)initWithSafariProfileIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (WBSSavedAccountContext)initWithName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WBSSavedAccountContext;
  v5 = [(WBSSavedAccountContext *)&v11 init];
  if (v5)
  {
    v6 = [objc_opt_class() _nameForDefaultSafariProfile];
    if ([v4 isEqualToString:v6])
    {
      v7 = &stru_1F3064D08;
    }

    else
    {
      v7 = [v4 copy];
    }

    nameForPersistence = v5->_nameForPersistence;
    v5->_nameForPersistence = &v7->isa;

    v9 = v5;
  }

  return v5;
}

- (WBSSavedAccountContext)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSSavedAccountContext;
  v5 = [(WBSSavedAccountContext *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameForPersistence = v5->_nameForPersistence;
    v5->_nameForPersistence = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WBSSavedAccountContext allocWithZone:a3];
  nameForPersistence = self->_nameForPersistence;

  return [(WBSSavedAccountContext *)v4 initWithName:nameForPersistence];
}

- (WBSSavedAccountContext)initWithSafariProfileIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", @"DefaultProfile") & 1) == 0)
  {
    v6 = [@"SafariProfile-" stringByAppendingString:v4];
    v5 = [(WBSSavedAccountContext *)self initWithName:v6];
  }

  else
  {
    v5 = [(WBSSavedAccountContext *)self initWithName:&stru_1F3064D08];
  }

  return v5;
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
    if (objc_opt_isKindOfClass())
    {
      v5 = WBSIsEqual(self->_nameForPersistence, v4->_nameForPersistence);
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