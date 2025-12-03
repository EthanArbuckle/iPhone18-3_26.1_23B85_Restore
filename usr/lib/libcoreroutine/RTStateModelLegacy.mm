@interface RTStateModelLegacy
- (RTStateModelLegacy)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStateModelLegacy

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeObject:self->_stateModelLut forKey:@"stateModelLut"];
}

- (RTStateModelLegacy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RTStateModelLegacy;
  v5 = [(RTStateModelLegacy *)&v13 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"version"])
    {
      v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    }

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"stateModelLut"];
    stateModelLut = v5->_stateModelLut;
    v5->_stateModelLut = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  version = [(RTStateModelLegacy *)self version];
  stateModelLut = [(RTStateModelLegacy *)self stateModelLut];
  v6 = [v3 stringWithFormat:@"version, %lu, states, %lu", version, objc_msgSend(stateModelLut, "count")];

  return v6;
}

@end