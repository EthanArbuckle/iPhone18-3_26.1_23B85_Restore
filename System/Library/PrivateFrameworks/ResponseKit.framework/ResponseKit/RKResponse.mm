@interface RKResponse
- (RKResponse)initWithString:(id)string attributes:(id)attributes category:(id)category;
@end

@implementation RKResponse

void __19___RKResponse_type__block_invoke()
{
  v15[11] = *MEMORY[0x277D85DE8];
  v14[0] = @"Postpone";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v15[0] = v13;
  v14[1] = @"YesNo";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v15[1] = v0;
  v14[2] = @"YesNoRequest";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v15[2] = v1;
  v14[3] = @"NotSure";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v15[3] = v2;
  v14[4] = @"GoodBadOk";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v15[4] = v3;
  v14[5] = @"GoodBadOkState";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v15[5] = v4;
  v14[6] = @"DontKnow";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v15[6] = v5;
  v14[7] = @"Acknowledgment";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v15[7] = v6;
  v14[8] = @"YouAreWelcome";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v15[8] = v7;
  v14[9] = @"LocationSelf";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v15[9] = v8;
  v14[10] = @"CloseFar";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v15[10] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:11];
  v11 = type_sSpeechActResponseType;
  type_sSpeechActResponseType = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (RKResponse)initWithString:(id)string attributes:(id)attributes category:(id)category
{
  stringCopy = string;
  attributesCopy = attributes;
  categoryCopy = category;
  v15.receiver = self;
  v15.super_class = RKResponse;
  v12 = [(RKResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_string, string);
    objc_storeStrong(&v13->_attributes, attributes);
    objc_storeStrong(&v13->_category, category);
  }

  return v13;
}

@end