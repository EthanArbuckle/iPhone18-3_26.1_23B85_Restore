@interface WLKStoreOfferPeriod
- (WLKStoreOfferPeriod)initWithString:(id)string;
- (id)_offerPeriodForString:(id)string;
@end

@implementation WLKStoreOfferPeriod

- (WLKStoreOfferPeriod)initWithString:(id)string
{
  selfCopy = self;
  v4 = [(WLKStoreOfferPeriod *)self _offerPeriodForString:string];
  if (v4)
  {
    v14.receiver = selfCopy;
    v14.super_class = WLKStoreOfferPeriod;
    v5 = [(WLKStoreOfferPeriod *)&v14 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"duration"];
      v7 = [v6 copy];
      duration = v5->_duration;
      v5->_duration = v7;

      v9 = [v4 objectForKeyedSubscript:@"type"];
      v10 = [v9 copy];
      type = v5->_type;
      v5->_type = v10;
    }

    selfCopy = v5;
    v12 = selfCopy;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_offerPeriodForString:(id)string
{
  v3 = _offerPeriodForString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    [WLKStoreOfferPeriod _offerPeriodForString:];
  }

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  uppercaseString = [v6 uppercaseString];

  if ([uppercaseString length] >= 3 && objc_msgSend(uppercaseString, "characterAtIndex:", 0) == 80)
  {
    v8 = [uppercaseString substringFromIndex:1];
    if ([v8 length] < 2)
    {
      v13 = 0;
    }

    else
    {
      v9 = [MEMORY[0x277CCAC80] scannerWithString:v8];
      v18 = 0;
      v10 = [v9 scanUpToCharactersFromSet:_offerPeriodForString____durationSet intoString:&v18];
      v11 = v18;
      v12 = v11;
      if (v10 && ([v11 isEqualToString:v8] & 1) == 0)
      {
        v14 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 1, 1}];
        v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
        [v15 wlk_setObjectUnlessNil:v16 forKey:@"duration"];
        [v15 wlk_setObjectUnlessNil:v14 forKey:@"type"];
        v13 = [v15 copy];
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __45__WLKStoreOfferPeriod__offerPeriodForString___block_invoke()
{
  _offerPeriodForString____durationSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"MDY"];

  return MEMORY[0x2821F96F8]();
}

@end