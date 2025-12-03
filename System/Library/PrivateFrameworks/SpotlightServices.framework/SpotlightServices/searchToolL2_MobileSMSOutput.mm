@interface searchToolL2_MobileSMSOutput
- (id)featureValueForName:(id)name;
- (searchToolL2_MobileSMSOutput)initWithLabel:(int64_t)label prob:(id)prob;
@end

@implementation searchToolL2_MobileSMSOutput

- (searchToolL2_MobileSMSOutput)initWithLabel:(int64_t)label prob:(id)prob
{
  probCopy = prob;
  v11.receiver = self;
  v11.super_class = searchToolL2_MobileSMSOutput;
  v8 = [(searchToolL2_MobileSMSOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_label = label;
    objc_storeStrong(&v8->_prob, prob);
  }

  return v9;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"label"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithInt64:{-[searchToolL2_MobileSMSOutput label](self, "label")}];
  }

  else if ([nameCopy isEqualToString:@"prob"])
  {
    v6 = MEMORY[0x1E695FE60];
    prob = [(searchToolL2_MobileSMSOutput *)self prob];
    v5 = [v6 featureValueWithDictionary:prob error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end