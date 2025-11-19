@interface searchToolL2_mobilemailOutput
- (id)featureValueForName:(id)a3;
- (searchToolL2_mobilemailOutput)initWithLabel:(int64_t)a3 prob:(id)a4;
@end

@implementation searchToolL2_mobilemailOutput

- (searchToolL2_mobilemailOutput)initWithLabel:(int64_t)a3 prob:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = searchToolL2_mobilemailOutput;
  v8 = [(searchToolL2_mobilemailOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_label = a3;
    objc_storeStrong(&v8->_prob, a4);
  }

  return v9;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"label"])
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithInt64:{-[searchToolL2_mobilemailOutput label](self, "label")}];
  }

  else if ([v4 isEqualToString:@"prob"])
  {
    v6 = MEMORY[0x1E695FE60];
    v7 = [(searchToolL2_mobilemailOutput *)self prob];
    v5 = [v6 featureValueWithDictionary:v7 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end