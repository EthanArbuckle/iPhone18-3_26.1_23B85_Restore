@interface PXHUDView
+ (Class)visualizationClassToViewClass:(Class)a3;
- (PXHUDView)initWithCoder:(id)a3;
- (PXHUDView)initWithFrame:(CGRect)a3;
- (void)addVisualization:(id)a3;
- (void)removeVisualization:(id)a3;
@end

@implementation PXHUDView

- (void)removeVisualization:(id)a3
{
  v8 = a3;
  v4 = [(PXHUDView *)self visualizationToView];
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    v6 = [(PXHUDView *)self visualizationToView];
    [v6 removeObjectForKey:v8];

    v7 = [(PXHUDView *)self stackView];
    [v7 removeArrangedSubview:v5];

    [v5 removeFromSuperview];
  }
}

- (void)addVisualization:(id)a3
{
  v9 = a3;
  v4 = [(PXHUDView *)self visualizationToView];
  v5 = [v4 objectForKey:v9];

  if (!v5)
  {
    v6 = objc_opt_class();
    v5 = objc_alloc_init([v6 visualizationClassToViewClass:objc_opt_class()]);
    [v5 setVisualization:v9];
    v7 = [(PXHUDView *)self stackView];
    [v7 addArrangedSubview:v5];

    v8 = [(PXHUDView *)self visualizationToView];
    [v8 setObject:v5 forKey:v9];
  }
}

- (PXHUDView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXHUDView;
  v3 = [(PXHUDView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

- (PXHUDView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXHUDView;
  v3 = [(PXHUDView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

+ (Class)visualizationClassToViewClass:(Class)a3
{
  if (visualizationClassToViewClass__onceToken != -1)
  {
    dispatch_once(&visualizationClassToViewClass__onceToken, &__block_literal_global_172071);
  }

  v4 = visualizationClassToViewClass__visualizationClassToViewClass;

  return [v4 objectForKey:a3];
}

uint64_t __43__PXHUDView_visualizationClassToViewClass___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = visualizationClassToViewClass__visualizationClassToViewClass;
  visualizationClassToViewClass__visualizationClassToViewClass = v0;

  v2 = visualizationClassToViewClass__visualizationClassToViewClass;
  v3 = objc_opt_class();
  [v2 setObject:v3 forKey:objc_opt_class()];
  v4 = visualizationClassToViewClass__visualizationClassToViewClass;
  v5 = objc_opt_class();
  [v4 setObject:v5 forKey:objc_opt_class()];
  v6 = visualizationClassToViewClass__visualizationClassToViewClass;
  v7 = objc_opt_class();
  v8 = objc_opt_class();

  return [v6 setObject:v7 forKey:v8];
}

@end