@interface SBSHomeScreenSilhouetteLayout
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBSHomeScreenSilhouetteLayout)initWithBSXPCCoder:(id)a3;
- (SBSHomeScreenSilhouetteLayout)initWithCoder:(id)a3;
- (SBSHomeScreenSilhouetteLayout)initWithIcons:(id)a3 dock:(id)a4;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSHomeScreenSilhouetteLayout

- (SBSHomeScreenSilhouetteLayout)initWithIcons:(id)a3 dock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBSHomeScreenSilhouetteLayout;
  v8 = [(SBSHomeScreenSilhouetteLayout *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    icons = v8->_icons;
    v8->_icons = v9;

    objc_storeStrong(&v8->_dock, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(SBSHomeScreenSilhouetteLayout *)self icons];
      v9 = [(SBSHomeScreenSilhouetteLayout *)v7 icons];
      v10 = BSEqualObjects();

      if (v10)
      {
        v11 = [(SBSHomeScreenSilhouetteLayout *)self dock];
        v12 = [(SBSHomeScreenSilhouetteLayout *)v7 dock];
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
  v3 = [(SBSHomeScreenSilhouetteLayout *)self icons];
  v4 = [v3 hash];
  v5 = [(SBSHomeScreenSilhouetteLayout *)self dock];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __44__SBSHomeScreenSilhouetteLayout_description__block_invoke;
  v10 = &unk_1E735F7F0;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBSHomeScreenSilhouetteLayout *)self icons];
  [v4 encodeObject:v5 forKey:@"icons"];

  v6 = [(SBSHomeScreenSilhouetteLayout *)self dock];
  [v4 encodeObject:v6 forKey:@"dock"];
}

- (SBSHomeScreenSilhouetteLayout)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [v4 setWithObject:v6];
  v8 = [v5 decodeArrayOfObjectsOfClasses:v7 forKey:@"icons"];

  v9 = objc_opt_self();
  v10 = [v5 decodeObjectOfClass:v9 forKey:@"dock"];

  v11 = [(SBSHomeScreenSilhouetteLayout *)self initWithIcons:v8 dock:v10];
  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBSHomeScreenSilhouetteLayout *)self icons];
  [v4 encodeObject:v5 forKey:@"icons"];

  v6 = [(SBSHomeScreenSilhouetteLayout *)self dock];
  [v4 encodeObject:v6 forKey:@"dock"];
}

- (SBSHomeScreenSilhouetteLayout)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = [v4 decodeCollectionOfClass:v5 containingClass:v6 forKey:@"icons"];

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"dock"];

  v10 = [(SBSHomeScreenSilhouetteLayout *)self initWithIcons:v7 dock:v9];
  return v10;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(SBSHomeScreenSilhouetteLayout *)self icons];
  v5 = [v8 appendObject:v4 withName:@"icons"];

  v6 = [(SBSHomeScreenSilhouetteLayout *)self dock];
  v7 = [v8 appendObject:v6 withName:@"dock"];
}

@end