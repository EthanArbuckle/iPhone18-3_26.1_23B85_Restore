@interface PNPPreDeclare
+ (void)squeezeInteraction:(id)interaction setMiniPaletteVisible:(BOOL)visible hoverLocation:(CGPoint)location inView:(id)view;
@end

@implementation PNPPreDeclare

+ (void)squeezeInteraction:(id)interaction setMiniPaletteVisible:(BOOL)visible hoverLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  visibleCopy = visible;
  interactionCopy = interaction;
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [interactionCopy _setMiniPaletteVisible:visibleCopy hoverLocation:viewCopy inView:{x, y}];
  }
}

@end