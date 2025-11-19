@interface REHTMLDataElement
- (REHTMLDataElement)initWithData:(id)a3;
@end

@implementation REHTMLDataElement

- (REHTMLDataElement)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REHTMLDataElement;
  v6 = [(REHTMLElement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

@end