@interface SXComponentInsert
- (SXComponentInsert)initWithComponent:(id)component componentLayout:(id)layout;
- (id)description;
@end

@implementation SXComponentInsert

- (SXComponentInsert)initWithComponent:(id)component componentLayout:(id)layout
{
  componentCopy = component;
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SXComponentInsert;
  v9 = [(SXComponentInsert *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_component, component);
    objc_storeStrong(&v10->_componentLayout, layout);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  component = [(SXComponentInsert *)self component];
  [v3 appendFormat:@"component: %@", component];

  [v3 appendString:@">"];

  return v3;
}

@end