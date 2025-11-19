@interface OKWidgetContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)dealloc;
@end

@implementation OKWidgetContainerView

- (void)dealloc
{
  objc_storeWeak(&self->_widgetView, 0);
  v3.receiver = self;
  v3.super_class = OKWidgetContainerView;
  [(OFUIView *)&v3 dealloc];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = OKWidgetContainerView;
  if (![OKWidgetContainerView pointInside:sel_pointInside_withEvent_ withEvent:?])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(OKWidgetViewProxy *)[(OKWidgetContainerView *)self widgetView] subWidgetViews];
    v8 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (!v8)
    {
      return v8;
    }

    v10 = v8;
    v11 = *v16;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      [(OKWidgetContainerView *)self convertPoint:v13 toView:x, y];
      if ([v13 pointInside:a4 withEvent:?])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
        LOBYTE(v8) = 0;
        if (v10)
        {
          goto LABEL_6;
        }

        return v8;
      }
    }
  }

  LOBYTE(v8) = 1;
  return v8;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if ([a3 isEqualToString:@"filters"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = OKWidgetContainerView;
  return [(OKWidgetContainerView *)&v6 _shouldAnimatePropertyWithKey:a3];
}

@end