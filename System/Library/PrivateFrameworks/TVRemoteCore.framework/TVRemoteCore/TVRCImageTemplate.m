@interface TVRCImageTemplate
+ (id)imageTemplateWithString:(id)a3;
- (TVRCImageTemplate)initWithString:(id)a3;
- (id)urlForSize:(CGSize)a3;
@end

@implementation TVRCImageTemplate

+ (id)imageTemplateWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

- (TVRCImageTemplate)initWithString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TVRCImageTemplate;
  v6 = [(TVRCImageTemplate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateString, a3);
  }

  return v7;
}

- (id)urlForSize:(CGSize)a3
{
  height = a3.height;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3.width];
  v7 = [v5 stringWithFormat:@"%@", v6];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:height];
  v10 = [v8 stringWithFormat:@"%@", v9];

  v11 = [(TVRCImageTemplate *)self templateString];
  v12 = [v11 stringByReplacingOccurrencesOfString:@"{w}" withString:v7];

  v13 = [v12 stringByReplacingOccurrencesOfString:@"{h}" withString:v10];

  v14 = [v13 stringByReplacingOccurrencesOfString:@"{f}" withString:@"jpg"];

  v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];

  return v15;
}

@end