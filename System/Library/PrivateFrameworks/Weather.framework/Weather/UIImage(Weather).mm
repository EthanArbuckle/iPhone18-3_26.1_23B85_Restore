@interface UIImage(Weather)
- (id)wa_imageWithSize:()Weather;
@end

@implementation UIImage(Weather)

- (id)wa_imageWithSize:()Weather
{
  v6 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a2, a3}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__UIImage_Weather__wa_imageWithSize___block_invoke;
  v9[3] = &unk_279E69360;
  v9[4] = self;
  *&v9[5] = a2;
  *&v9[6] = a3;
  v7 = [v6 imageWithActions:v9];

  return v7;
}

@end