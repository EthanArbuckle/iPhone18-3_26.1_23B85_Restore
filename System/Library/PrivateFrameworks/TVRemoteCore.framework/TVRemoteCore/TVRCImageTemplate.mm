@interface TVRCImageTemplate
+ (id)imageTemplateWithString:(id)string;
- (TVRCImageTemplate)initWithString:(id)string;
- (id)urlForSize:(CGSize)size;
@end

@implementation TVRCImageTemplate

+ (id)imageTemplateWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

- (TVRCImageTemplate)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = TVRCImageTemplate;
  v6 = [(TVRCImageTemplate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateString, string);
  }

  return v7;
}

- (id)urlForSize:(CGSize)size
{
  height = size.height;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size.width];
  v7 = [v5 stringWithFormat:@"%@", v6];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:height];
  v10 = [v8 stringWithFormat:@"%@", v9];

  templateString = [(TVRCImageTemplate *)self templateString];
  v12 = [templateString stringByReplacingOccurrencesOfString:@"{w}" withString:v7];

  v13 = [v12 stringByReplacingOccurrencesOfString:@"{h}" withString:v10];

  v14 = [v13 stringByReplacingOccurrencesOfString:@"{f}" withString:@"jpg"];

  v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];

  return v15;
}

@end