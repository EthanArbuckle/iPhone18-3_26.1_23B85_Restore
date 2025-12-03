@interface SWTransparencyOperationConfiguration
- (BOOL)isEqual:(id)equal;
- (SWTransparencyOperationConfiguration)initWithCoder:(id)coder;
- (SWTransparencyOperationConfiguration)initWithName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWTransparencyOperationConfiguration

- (SWTransparencyOperationConfiguration)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SWTransparencyOperationConfiguration;
  v5 = [(SWTransparencyOperationConfiguration *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SWTransparencyOperationConfiguration *)v5 setName:nameCopy];
    [(SWTransparencyOperationConfiguration *)v6 setTimeout:0.0];
    [(SWTransparencyOperationConfiguration *)v6 setQualityOfService:-1];
    v7 = v6;
  }

  return v6;
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(SWTransparencyOperationConfiguration *)self name];
      name2 = [(SWTransparencyOperationConfiguration *)v5 name];
      v8 = [name isEqual:name2];

      if (v8 && (v9 = [(SWTransparencyOperationConfiguration *)self qualityOfService], v9 == [(SWTransparencyOperationConfiguration *)v5 qualityOfService]))
      {
        [(SWTransparencyOperationConfiguration *)self timeout];
        v11 = v10;
        [(SWTransparencyOperationConfiguration *)v5 timeout];
        v13 = v11 == v12;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(SWTransparencyOperationConfiguration *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  if ([(SWTransparencyOperationConfiguration *)self qualityOfService]!= -1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SWTransparencyOperationConfiguration qualityOfService](self, "qualityOfService")}];
    [coderCopy encodeObject:v5 forKey:@"qos"];
  }

  [(SWTransparencyOperationConfiguration *)self timeout];
  if (v6 != 0.0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(SWTransparencyOperationConfiguration *)self timeout];
    v8 = [v7 numberWithDouble:?];
    [coderCopy encodeObject:v8 forKey:@"timeout"];
  }
}

- (SWTransparencyOperationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [(SWTransparencyOperationConfiguration *)self initWithName:v5];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qos"];
    v8 = v7;
    if (v7)
    {
      HIDWORD(v9) = [v7 intValue] - 9;
      LODWORD(v9) = HIDWORD(v9);
      v10 = 8 * (v9 >> 3) + 9;
      if ((v9 >> 3) >= 4)
      {
        v11 = -1;
      }

      else
      {
        v11 = v10;
      }

      [(SWTransparencyOperationConfiguration *)v6 setQualityOfService:v11];
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
      [(SWTransparencyOperationConfiguration *)v6 setTimeout:?];
    }

    self = v6;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end