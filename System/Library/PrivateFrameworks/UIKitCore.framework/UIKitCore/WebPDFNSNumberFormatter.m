@interface WebPDFNSNumberFormatter
+ (id)copyNumberFormater;
- (void)dealloc;
@end

@implementation WebPDFNSNumberFormatter

+ (id)copyNumberFormater
{
  v2 = sWebPDFNSNumberFormatter;
  if (sWebPDFNSNumberFormatter)
  {

    return v2;
  }

  else
  {
    sWebPDFNSNumberFormatter = objc_alloc_init(WebPDFNSNumberFormatter);
    [sWebPDFNSNumberFormatter setFormatterBehavior:1040];
    [sWebPDFNSNumberFormatter setNumberStyle:0];
    return sWebPDFNSNumberFormatter;
  }
}

- (void)dealloc
{
  if (sWebPDFNSNumberFormatter == self)
  {
    sWebPDFNSNumberFormatter = 0;
  }

  v5 = v2;
  v6 = v3;
  v4.receiver = self;
  v4.super_class = WebPDFNSNumberFormatter;
  [(WebPDFNSNumberFormatter *)&v4 dealloc];
}

@end