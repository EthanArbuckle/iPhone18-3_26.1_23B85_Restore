@interface WBSPageTest
- (CGSize)viewportSize;
- (WBSPageTest)initWithIdentifier:(id)identifier pageURL:(id)l expectedResultsURL:(id)rL dictionary:(id)dictionary;
@end

@implementation WBSPageTest

- (WBSPageTest)initWithIdentifier:(id)identifier pageURL:(id)l expectedResultsURL:(id)rL dictionary:(id)dictionary
{
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = WBSPageTest;
  v15 = [(WBSPageTest *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_pageURL, l);
    objc_storeStrong(&v16->_expectedResultsURL, rL);
    v17 = [dictionaryCopy safari_numberForKey:@"ViewportHeight"];
    v16->_viewportSize.height = [v17 intValue];

    v18 = [dictionaryCopy safari_numberForKey:@"ViewportWidth"];
    v16->_viewportSize.width = [v18 intValue];

    v19 = MEMORY[0x1E695DFF8];
    v20 = [dictionaryCopy safari_stringForKey:@"MockPageURL"];
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