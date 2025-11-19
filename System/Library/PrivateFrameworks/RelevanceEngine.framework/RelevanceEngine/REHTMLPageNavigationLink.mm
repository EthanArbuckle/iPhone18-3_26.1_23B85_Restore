@interface REHTMLPageNavigationLink
- (REHTMLPageNavigationLink)initWithLocation:(id)a3 title:(id)a4;
@end

@implementation REHTMLPageNavigationLink

- (REHTMLPageNavigationLink)initWithLocation:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = REHTMLPageNavigationLink;
  v8 = [(REHTMLPageNavigationLink *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    location = v8->_location;
    v8->_location = v9;

    v11 = [v7 copy];
    title = v8->_title;
    v8->_title = v11;
  }

  return v8;
}

@end