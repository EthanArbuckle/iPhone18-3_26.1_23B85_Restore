@interface STS18013RequestElement
- (STS18013RequestElement)initWithName:(id)name retention:(unsigned __int16)retention;
@end

@implementation STS18013RequestElement

- (STS18013RequestElement)initWithName:(id)name retention:(unsigned __int16)retention
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = STS18013RequestElement;
  v8 = [(STS18013RequestElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_retention = retention;
  }

  return v9;
}

@end