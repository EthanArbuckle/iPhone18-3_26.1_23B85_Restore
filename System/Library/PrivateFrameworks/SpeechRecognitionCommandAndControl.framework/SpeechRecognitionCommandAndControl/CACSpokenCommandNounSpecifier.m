@interface CACSpokenCommandNounSpecifier
- (CACSpokenCommandNounSpecifier)initWithType:(unsigned int)a3 item:(id)a4;
- (CACSpokenCommandNounSpecifier)initWithType:(unsigned int)a3 items:(id)a4;
@end

@implementation CACSpokenCommandNounSpecifier

- (CACSpokenCommandNounSpecifier)initWithType:(unsigned int)a3 items:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CACSpokenCommandNounSpecifier;
  v8 = [(CACSpokenCommandNounSpecifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_items, a4);
  }

  return v9;
}

- (CACSpokenCommandNounSpecifier)initWithType:(unsigned int)a3 item:(id)a4
{
  v4 = *&a3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:a4];
  v7 = [(CACSpokenCommandNounSpecifier *)self initWithType:v4 items:v6];

  return v7;
}

@end