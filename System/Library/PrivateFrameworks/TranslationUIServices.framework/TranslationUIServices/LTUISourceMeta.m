@interface LTUISourceMeta
- (LTUISourceMeta)init;
- (id)dictionaryRepresentation;
@end

@implementation LTUISourceMeta

- (LTUISourceMeta)init
{
  v7.receiver = self;
  v7.super_class = LTUISourceMeta;
  v2 = [(LTUISourceMeta *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_origin = 0;
    languageHints = v2->_languageHints;
    v2->_languageHints = MEMORY[0x277CBEBF8];

    v5 = v3;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v12[0] = @"origin";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LTUISourceMeta origin](self, "origin")}];
  v12[1] = @"languageHints";
  v13[0] = v4;
  v5 = [(LTUISourceMeta *)self languageHints];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v7 = [v3 dictionaryWithDictionary:v6];

  v8 = [(LTUISourceMeta *)self context];

  if (v8)
  {
    v9 = [(LTUISourceMeta *)self context];
    [v7 setObject:v9 forKeyedSubscript:@"context"];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

@end