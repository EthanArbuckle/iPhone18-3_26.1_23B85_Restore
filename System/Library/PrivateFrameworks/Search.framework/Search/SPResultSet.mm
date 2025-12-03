@interface SPResultSet
+ (void)initialize;
- (SPResultSet)initWithCoder:(id)coder;
- (SPResultSet)initWithSections:(id)sections;
- (SPResultSet)initWithSections:(id)sections stableSections:(id)stableSections;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPResultSet

- (SPResultSet)initWithSections:(id)sections
{
  sectionsCopy = sections;
  v10.receiver = self;
  v10.super_class = SPResultSet;
  v6 = [(SPResultSet *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resultSections, sections);
    stableSections = v7->_stableSections;
    v7->_stableSections = 0;
  }

  return v7;
}

- (SPResultSet)initWithSections:(id)sections stableSections:(id)stableSections
{
  sectionsCopy = sections;
  stableSectionsCopy = stableSections;
  v12.receiver = self;
  v12.super_class = SPResultSet;
  v9 = [(SPResultSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultSections, sections);
    objc_storeStrong(&v10->_stableSections, stableSections);
  }

  return v10;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
    v8 = classesToDecode;
    classesToDecode = v7;

    MEMORY[0x1EEE66BB8](v7, v8);
  }
}

- (SPResultSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SPResultSet;
  v5 = [(SPResultSet *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClasses:classesToDecode forKey:@"_resultSections"];
    resultSections = v5->_resultSections;
    v5->_resultSections = v6;

    v8 = [coderCopy decodeObjectOfClasses:classesToDecode forKey:@"_stableSections"];
    stableSections = v5->_stableSections;
    v5->_stableSections = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  resultSections = self->_resultSections;
  coderCopy = coder;
  [coderCopy encodeObject:resultSections forKey:@"_resultSections"];
  [coderCopy encodeObject:self->_stableSections forKey:@"_stableSections"];
}

@end