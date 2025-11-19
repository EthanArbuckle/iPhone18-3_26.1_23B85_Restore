@interface PUIStyleVibrantMonotoneCoordinatorImpl
@end

@implementation PUIStyleVibrantMonotoneCoordinatorImpl

void __80___PUIStyleVibrantMonotoneCoordinatorImpl_transparancyBackgroundImageForHeight___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  v9.size.width = *(a1 + 32);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.height = v9.size.width;
  CGContextAddRect(v4, v9);
  v5 = [v3 CGContext];
  v10.origin.x = *(a1 + 32);
  v10.origin.y = v10.origin.x;
  v10.size.width = v10.origin.x;
  v10.size.height = v10.origin.x;
  CGContextAddRect(v5, v10);
  v6 = [MEMORY[0x1E69DC888] colorWithDisplayP3Red:0.851 green:0.847 blue:0.855 alpha:1.0];
  [v6 setFill];

  v7 = [v3 CGContext];

  CGContextFillPath(v7);
}

@end