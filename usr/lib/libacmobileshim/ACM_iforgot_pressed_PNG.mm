@interface ACM_iforgot_pressed_PNG
- (id)image;
@end

@implementation ACM_iforgot_pressed_PNG

- (id)image
{
  v2 = [MEMORY[0x29EDB8DA0] dataWithBytes:&ACM_iforgot_pressed_bytes length:4303];
  v3 = MEMORY[0x29EDC7AC8];

  return [v3 imageWithData:v2];
}

@end