@interface SXComponentInsert
- (SXComponentInsert)initWithComponent:(id)a3 componentLayout:(id)a4;
- (id)description;
@end

@implementation SXComponentInsert

- (SXComponentInsert)initWithComponent:(id)a3 componentLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXComponentInsert;
  v9 = [(SXComponentInsert *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_component, a3);
    objc_storeStrong(&v10->_componentLayout, a4);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(SXComponentInsert *)self component];
  [v3 appendFormat:@"component: %@", v4];

  [v3 appendString:@">"];

  return v3;
}

@end