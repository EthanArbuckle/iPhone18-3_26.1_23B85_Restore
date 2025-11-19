@interface __NSScratchTextLineFragment
- (__NSScratchTextLineFragment)initWithVerticalOffset:(double)a3;
@end

@implementation __NSScratchTextLineFragment

- (__NSScratchTextLineFragment)initWithVerticalOffset:(double)a3
{
  v4 = [(NSTextLineFragment *)self initWithString:&stru_1F01AD578 attributes:MEMORY[0x1E695E0F8] range:0, 0];
  v5 = v4;
  if (v4)
  {
    [(NSTextLineFragment *)v4 setTypographicBounds:0.0, a3, 0.0, 0.0];
  }

  return v5;
}

@end