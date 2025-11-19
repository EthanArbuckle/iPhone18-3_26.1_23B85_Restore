@interface SBSHomeScreenServiceArrayOfNumbers
- (SBSHomeScreenServiceArrayOfNumbers)initWithArray:(id)a3;
- (SBSHomeScreenServiceArrayOfNumbers)initWithCoder:(id)a3;
@end

@implementation SBSHomeScreenServiceArrayOfNumbers

- (SBSHomeScreenServiceArrayOfNumbers)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSHomeScreenServiceArrayOfNumbers;
  v5 = [(SBSHomeScreenServiceArrayOfNumbers *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    array = v5->_array;
    v5->_array = v6;
  }

  return v5;
}

- (SBSHomeScreenServiceArrayOfNumbers)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"array"];

  v10 = [(SBSHomeScreenServiceArrayOfNumbers *)self initWithArray:v9];
  return v10;
}

@end