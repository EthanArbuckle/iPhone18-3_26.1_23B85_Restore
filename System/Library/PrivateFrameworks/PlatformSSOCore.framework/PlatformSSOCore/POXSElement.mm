@interface POXSElement
- (POXSElement)initWithElementName:(id)a3 namespaceURI:(id)a4 type:(Class)a5;
@end

@implementation POXSElement

- (POXSElement)initWithElementName:(id)a3 namespaceURI:(id)a4 type:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = POXSElement;
  v11 = [(POXSElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_elementName, a3);
    objc_storeStrong(&v12->_namespaceURI, a4);
    objc_storeStrong(&v12->_type, a5);
  }

  return v12;
}

@end