@interface STS18013RequestElement
- (STS18013RequestElement)initWithName:(id)a3 retention:(unsigned __int16)a4;
@end

@implementation STS18013RequestElement

- (STS18013RequestElement)initWithName:(id)a3 retention:(unsigned __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = STS18013RequestElement;
  v8 = [(STS18013RequestElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_retention = a4;
  }

  return v9;
}

@end