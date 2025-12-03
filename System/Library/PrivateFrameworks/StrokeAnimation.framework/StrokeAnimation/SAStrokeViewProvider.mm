@interface SAStrokeViewProvider
- (id)strokeViewWithDelegate:(id)delegate;
@end

@implementation SAStrokeViewProvider

- (id)strokeViewWithDelegate:(id)delegate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v5 = objc_alloc_init(_TtC15StrokeAnimation10StrokeView);
  [(StrokeView *)v5 setInteractionDelegate:location[0]];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end