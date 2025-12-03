@interface REHTMLPageNavigationLink
- (REHTMLPageNavigationLink)initWithLocation:(id)location title:(id)title;
@end

@implementation REHTMLPageNavigationLink

- (REHTMLPageNavigationLink)initWithLocation:(id)location title:(id)title
{
  locationCopy = location;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = REHTMLPageNavigationLink;
  v8 = [(REHTMLPageNavigationLink *)&v14 init];
  if (v8)
  {
    v9 = [locationCopy copy];
    location = v8->_location;
    v8->_location = v9;

    v11 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v11;
  }

  return v8;
}

@end