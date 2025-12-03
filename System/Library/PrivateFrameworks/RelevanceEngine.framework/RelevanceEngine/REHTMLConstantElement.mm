@interface REHTMLConstantElement
- (REHTMLConstantElement)initWithContent:(id)content;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REHTMLConstantElement

- (REHTMLConstantElement)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = REHTMLConstantElement;
  v5 = [(REHTMLElement *)&v9 init];
  if (v5)
  {
    v6 = [contentCopy copy];
    content = v5->_content;
    v5->_content = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REHTMLConstantElement;
  v4 = [(REHTMLElement *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_content);
  return v4;
}

@end