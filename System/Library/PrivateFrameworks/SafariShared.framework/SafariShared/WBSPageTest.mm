@interface WBSPageTest
- (CGSize)viewportSize;
- (WBSPageTest)initWithIdentifier:(id)a3 pageURL:(id)a4 expectedResultsURL:(id)a5 dictionary:(id)a6;
@end

@implementation WBSPageTest

- (WBSPageTest)initWithIdentifier:(id)a3 pageURL:(id)a4 expectedResultsURL:(id)a5 dictionary:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = WBSPageTest;
  v15 = [(WBSPageTest *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_pageURL, a4);
    objc_storeStrong(&v16->_expectedResultsURL, a5);
    v17 = [v14 safari_numberForKey:@"ViewportHeight"];
    v16->_viewportSize.height = [v17 intValue];

    v18 = [v14 safari_numberForKey:@"ViewportWidth"];
    v16->_viewportSize.width = [v18 intValue];

    v19 = MEMORY[0x1E695DFF8];
    v20 = [v14 safari_stringForKey:@"MockPageURL"];
    v21 = [v19 URLWithString:v20];
    mockPageURL = v16->_mockPageURL;
    v16->_mockPageURL = v21;

    v23 = v16;
  }

  return v16;
}

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end