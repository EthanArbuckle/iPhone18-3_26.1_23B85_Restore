@interface SBSHomeScreenServiceArrayOfStrings
- (SBSHomeScreenServiceArrayOfStrings)initWithArray:(id)array;
- (SBSHomeScreenServiceArrayOfStrings)initWithCoder:(id)coder;
@end

@implementation SBSHomeScreenServiceArrayOfStrings

- (SBSHomeScreenServiceArrayOfStrings)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = SBSHomeScreenServiceArrayOfStrings;
  v5 = [(SBSHomeScreenServiceArrayOfStrings *)&v9 init];
  if (v5)
  {
    v6 = [arrayCopy copy];
    array = v5->_array;
    v5->_array = v6;
  }

  return v5;
}

- (SBSHomeScreenServiceArrayOfStrings)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"array"];

  v10 = [(SBSHomeScreenServiceArrayOfStrings *)self initWithArray:v9];
  return v10;
}

@end