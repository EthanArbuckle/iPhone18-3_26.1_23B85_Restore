@interface SAURLSizerResults
- (SAURLSizerResults)init;
- (SAURLSizerResults)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SAURLSizerResults

- (SAURLSizerResults)init
{
  v7.receiver = self;
  v7.super_class = SAURLSizerResults;
  v2 = [(SAURLSizerResults *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_timeNow = 0;
    v4 = objc_opt_new();
    urlInfo = v3->_urlInfo;
    v3->_urlInfo = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  timeNow = self->_timeNow;
  coderCopy = coder;
  [coderCopy encodeInteger:timeNow forKey:@"time"];
  [coderCopy encodeObject:self->_urlInfo forKey:@"urlInfo"];
}

- (SAURLSizerResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SAURLSizerResults;
  v5 = [(SAURLSizerResults *)&v13 init];
  if (v5)
  {
    v5->_timeNow = [coderCopy decodeIntegerForKey:@"time"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"urlInfo"];
    urlInfo = v5->_urlInfo;
    v5->_urlInfo = v10;
  }

  return v5;
}

@end