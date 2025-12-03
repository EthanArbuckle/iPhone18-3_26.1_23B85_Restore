@interface PXHUDView
+ (Class)visualizationClassToViewClass:(Class)class;
- (PXHUDView)initWithCoder:(id)coder;
- (PXHUDView)initWithFrame:(CGRect)frame;
- (void)addVisualization:(id)visualization;
- (void)removeVisualization:(id)visualization;
@end

@implementation PXHUDView

- (void)removeVisualization:(id)visualization
{
  visualizationCopy = visualization;
  visualizationToView = [(PXHUDView *)self visualizationToView];
  v5 = [visualizationToView objectForKey:visualizationCopy];

  if (v5)
  {
    visualizationToView2 = [(PXHUDView *)self visualizationToView];
    [visualizationToView2 removeObjectForKey:visualizationCopy];

    stackView = [(PXHUDView *)self stackView];
    [stackView removeArrangedSubview:v5];

    [v5 removeFromSuperview];
  }
}

- (void)addVisualization:(id)visualization
{
  visualizationCopy = visualization;
  visualizationToView = [(PXHUDView *)self visualizationToView];
  v5 = [visualizationToView objectForKey:visualizationCopy];

  if (!v5)
  {
    v6 = objc_opt_class();
    v5 = objc_alloc_init([v6 visualizationClassToViewClass:objc_opt_class()]);
    [v5 setVisualization:visualizationCopy];
    stackView = [(PXHUDView *)self stackView];
    [stackView addArrangedSubview:v5];

    visualizationToView2 = [(PXHUDView *)self visualizationToView];
    [visualizationToView2 setObject:v5 forKey:visualizationCopy];
  }
}

- (PXHUDView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXHUDView;
  v3 = [(PXHUDView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

- (PXHUDView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PXHUDView;
  v3 = [(PXHUDView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

+ (Class)visualizationClassToViewClass:(Class)class
{
  if (visualizationClassToViewClass__onceToken != -1)
  {
    dispatch_once(&visualizationClassToViewClass__onceToken, &__block_literal_global_172071);
  }

  v4 = visualizationClassToViewClass__visualizationClassToViewClass;

  return [v4 objectForKey:class];
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