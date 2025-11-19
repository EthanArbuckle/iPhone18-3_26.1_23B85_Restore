@interface SBSHomeScreenServiceArrayOfStrings
- (SBSHomeScreenServiceArrayOfStrings)initWithArray:(id)a3;
- (SBSHomeScreenServiceArrayOfStrings)initWithCoder:(id)a3;
@end

@implementation SBSHomeScreenServiceArrayOfStrings

- (SBSHomeScreenServiceArrayOfStrings)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSHomeScreenServiceArrayOfStrings;
  v5 = [(SBSHomeScreenServiceArrayOfStrings *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    array = v5->_array;
    v5->_array = v6;
  }

  return v5;
}

- (SBSHomeScreenServiceArrayOfStrings)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"array"];

  v10 = [(SBSHomeScreenServiceArrayOfStrings *)self initWithArray:v9];
  return v10;
}

@end