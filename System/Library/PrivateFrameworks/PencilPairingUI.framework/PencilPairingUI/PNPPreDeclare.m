@interface PNPPreDeclare
+ (void)squeezeInteraction:(id)a3 setMiniPaletteVisible:(BOOL)a4 hoverLocation:(CGPoint)a5 inView:(id)a6;
@end

@implementation PNPPreDeclare

+ (void)squeezeInteraction:(id)a3 setMiniPaletteVisible:(BOOL)a4 hoverLocation:(CGPoint)a5 inView:(id)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v11 = a3;
  v10 = a6;
  if (objc_opt_respondsToSelector())
  {
    [v11 _setMiniPaletteVisible:v9 hoverLocation:v10 inView:{x, y}];
  }
}

@end