@interface POXSElement
- (POXSElement)initWithElementName:(id)name namespaceURI:(id)i type:(Class)type;
@end

@implementation POXSElement

- (POXSElement)initWithElementName:(id)name namespaceURI:(id)i type:(Class)type
{
  nameCopy = name;
  iCopy = i;
  v14.receiver = self;
  v14.super_class = POXSElement;
  v11 = [(POXSElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_elementName, name);
    objc_storeStrong(&v12->_namespaceURI, i);
    objc_storeStrong(&v12->_type, type);
  }

  return v12;
}

@end