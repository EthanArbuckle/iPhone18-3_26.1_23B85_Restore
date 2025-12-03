@interface CACLocalAXElement
- (id)description;
@end

@implementation CACLocalAXElement

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  localElement = [(CACLocalAXElement *)self localElement];
  if (localElement)
  {
    localElement2 = [(CACLocalAXElement *)self localElement];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
  }

  else
  {
    v9 = @"none";
  }

  localElement3 = [(CACLocalAXElement *)self localElement];
  v11 = [v4 stringWithFormat:@"<%@: %p> - <%@: %p>", v6, self, v9, localElement3];

  if (localElement)
  {
  }

  return v11;
}

@end