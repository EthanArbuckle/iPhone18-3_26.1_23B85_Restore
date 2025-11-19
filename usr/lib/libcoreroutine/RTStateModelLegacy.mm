@interface RTStateModelLegacy
- (RTStateModelLegacy)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStateModelLegacy

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeObject:self->_stateModelLut forKey:@"stateModelLut"];
}

- (RTStateModelLegacy)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RTStateModelLegacy;
  v5 = [(RTStateModelLegacy *)&v13 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"version"])
    {
      v5->_version = [v4 decodeIntegerForKey:@"version"];
    }

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"stateModelLut"];
    stateModelLut = v5->_stateModelLut;
    v5->_stateModelLut = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTStateModelLegacy *)self version];
  v5 = [(RTStateModelLegacy *)self stateModelLut];
  v6 = [v3 stringWithFormat:@"version, %lu, states, %lu", v4, objc_msgSend(v5, "count")];

  return v6;
}

@end