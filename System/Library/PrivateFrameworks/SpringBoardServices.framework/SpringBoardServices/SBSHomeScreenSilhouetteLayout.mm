@interface SBSHomeScreenSilhouetteLayout
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSHomeScreenSilhouetteLayout)initWithBSXPCCoder:(id)coder;
- (SBSHomeScreenSilhouetteLayout)initWithCoder:(id)coder;
- (SBSHomeScreenSilhouetteLayout)initWithIcons:(id)icons dock:(id)dock;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSHomeScreenSilhouetteLayout

- (SBSHomeScreenSilhouetteLayout)initWithIcons:(id)icons dock:(id)dock
{
  iconsCopy = icons;
  dockCopy = dock;
  v12.receiver = self;
  v12.super_class = SBSHomeScreenSilhouetteLayout;
  v8 = [(SBSHomeScreenSilhouetteLayout *)&v12 init];
  if (v8)
  {
    v9 = [iconsCopy copy];
    icons = v8->_icons;
    v8->_icons = v9;

    objc_storeStrong(&v8->_dock, dock);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      icons = [(SBSHomeScreenSilhouetteLayout *)self icons];
      icons2 = [(SBSHomeScreenSilhouetteLayout *)v7 icons];
      v10 = BSEqualObjects();

      if (v10)
      {
        dock = [(SBSHomeScreenSilhouetteLayout *)self dock];
        dock2 = [(SBSHomeScreenSilhouetteLayout *)v7 dock];
        v13 = BSEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  icons = [(SBSHomeScreenSilhouetteLayout *)self icons];
  v4 = [icons hash];
  dock = [(SBSHomeScreenSilhouetteLayout *)self dock];
  v6 = [dock hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __44__SBSHomeScreenSilhouetteLayout_description__block_invoke;
  v10 = &unk_1E735F7F0;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  icons = [(SBSHomeScreenSilhouetteLayout *)self icons];
  [coderCopy encodeObject:icons forKey:@"icons"];

  dock = [(SBSHomeScreenSilhouetteLayout *)self dock];
  [coderCopy encodeObject:dock forKey:@"dock"];
}

- (SBSHomeScreenSilhouetteLayout)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_self();
  v7 = [v4 setWithObject:v6];
  v8 = [coderCopy decodeArrayOfObjectsOfClasses:v7 forKey:@"icons"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"dock"];

  v11 = [(SBSHomeScreenSilhouetteLayout *)self initWithIcons:v8 dock:v10];
  return v11;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  icons = [(SBSHomeScreenSilhouetteLayout *)self icons];
  [coderCopy encodeObject:icons forKey:@"icons"];

  dock = [(SBSHomeScreenSilhouetteLayout *)self dock];
  [coderCopy encodeObject:dock forKey:@"dock"];
}

- (SBSHomeScreenSilhouetteLayout)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = [coderCopy decodeCollectionOfClass:v5 containingClass:v6 forKey:@"icons"];

  v8 = objc_opt_self();
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"dock"];

  v10 = [(SBSHomeScreenSilhouetteLayout *)self initWithIcons:v7 dock:v9];
  return v10;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  icons = [(SBSHomeScreenSilhouetteLayout *)self icons];
  v5 = [formatterCopy appendObject:icons withName:@"icons"];

  dock = [(SBSHomeScreenSilhouetteLayout *)self dock];
  v7 = [formatterCopy appendObject:dock withName:@"dock"];
}

@end