@interface SAURLSizerResults
- (SAURLSizerResults)init;
- (SAURLSizerResults)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  timeNow = self->_timeNow;
  v5 = a3;
  [v5 encodeInteger:timeNow forKey:@"time"];
  [v5 encodeObject:self->_urlInfo forKey:@"urlInfo"];
}

- (SAURLSizerResults)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SAURLSizerResults;
  v5 = [(SAURLSizerResults *)&v13 init];
  if (v5)
  {
    v5->_timeNow = [v4 decodeIntegerForKey:@"time"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"urlInfo"];
    urlInfo = v5->_urlInfo;
    v5->_urlInfo = v10;
  }

  return v5;
}

@end