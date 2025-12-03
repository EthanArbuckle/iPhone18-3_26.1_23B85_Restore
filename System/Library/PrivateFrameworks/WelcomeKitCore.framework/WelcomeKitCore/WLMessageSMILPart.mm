@interface WLMessageSMILPart
- (WLMessageSMILPart)initWithElementName:(id)name attributes:(id)attributes;
- (id)fileName;
@end

@implementation WLMessageSMILPart

- (WLMessageSMILPart)initWithElementName:(id)name attributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = WLMessageSMILPart;
  v9 = [(WLMessageSMILPart *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_elementName, name);
    objc_storeStrong(&v10->_attributes, attributes);
  }

  return v10;
}

- (id)fileName
{
  v2 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"src"];
  if (v2)
  {
    v3 = v2;
    lastPathComponent = [v2 lastPathComponent];
  }

  else
  {
    lastPathComponent = 0;
  }

  return lastPathComponent;
}

@end