@interface OKAutoLayoutLayoutInfo
- (CGRect)rectForRectName:(id)a3;
- (CGSize)targetScreenSize;
- (OKAutoLayoutLayoutInfo)initWithLayout:(id)a3;
- (void)_parseLayout;
- (void)dealloc;
@end

@implementation OKAutoLayoutLayoutInfo

- (void)_parseLayout
{
  origLayout = self->_origLayout;
  if (origLayout)
  {
    [-[NSDictionary objectForKey:](origLayout objectForKey:{@"baseScore", "doubleValue"}];
    *&v4 = v4;
    self->_currentScore = *&v4;
    self->_baseScore = *&v4;
    [-[NSDictionary objectForKey:](self->_origLayout objectForKey:{@"screen rect", "CGRectValue"}];
    v6 = v5;
    v8 = v7;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(NSDictionary *)self->_origLayout objectForKey:@"appearOrder", 0];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = *v22;
    v13 = v6 * v8;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [(NSDictionary *)self->_origLayout objectForKey:v15];
        if ([v15 hasPrefix:@"media"])
        {
          [objc_msgSend(v16 objectForKey:{@"rect", "CGRectValue"}];
          v18 = v17;
          v20 = v19;
          [(NSMutableArray *)self->_areaPercentInAppearOrder addObject:[NSNumber numberWithDouble:v17 * v19 / v13]];
          [(NSMutableArray *)self->_aspectRatiosInAppearOrder addObject:[NSNumber numberWithDouble:v18 / v20]];
          [(NSMutableArray *)self->_rectNamesInAppearOrder addObject:v15];
          continue;
        }

        if ([objc_msgSend(v16 objectForKeyedSubscript:{@"isTitle", "BOOLValue"}] && !self->_isTitle)
        {
          self->_isTitle = 1;
LABEL_15:
          if (!self->_textWidgetName)
          {
            self->_textWidgetName = v15;
          }

          continue;
        }

        if ([objc_msgSend(v16 objectForKeyedSubscript:{@"isSubtitle", "BOOLValue"}] && !self->_isSubtitle)
        {
          self->_isSubtitle = 1;
          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v11)
      {
LABEL_19:
        self->_numOfMedia = [(NSMutableArray *)self->_aspectRatiosInAppearOrder count];
        return;
      }
    }
  }
}

- (OKAutoLayoutLayoutInfo)initWithLayout:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKAutoLayoutLayoutInfo;
  v4 = [(OKAutoLayoutLayoutInfo *)&v6 init];
  if (v4)
  {
    v4->_origLayout = a3;
    v4->_areaPercentInAppearOrder = objc_opt_new();
    v4->_aspectRatiosInAppearOrder = objc_opt_new();
    v4->_rectNamesInAppearOrder = objc_opt_new();
    [(OKAutoLayoutLayoutInfo *)v4 _parseLayout];
  }

  return v4;
}

- (void)dealloc
{
  origLayout = self->_origLayout;
  if (origLayout)
  {

    self->_origLayout = 0;
  }

  areaPercentInAppearOrder = self->_areaPercentInAppearOrder;
  if (areaPercentInAppearOrder)
  {

    self->_areaPercentInAppearOrder = 0;
  }

  aspectRatiosInAppearOrder = self->_aspectRatiosInAppearOrder;
  if (aspectRatiosInAppearOrder)
  {

    self->_aspectRatiosInAppearOrder = 0;
  }

  rectNamesInAppearOrder = self->_rectNamesInAppearOrder;
  if (rectNamesInAppearOrder)
  {

    self->_rectNamesInAppearOrder = 0;
  }

  textWidgetName = self->_textWidgetName;
  if (textWidgetName)
  {

    self->_textWidgetName = 0;
  }

  v8.receiver = self;
  v8.super_class = OKAutoLayoutLayoutInfo;
  [(OKAutoLayoutLayoutInfo *)&v8 dealloc];
}

- (CGRect)rectForRectName:(id)a3
{
  v3 = [-[NSDictionary objectForKey:](self->_origLayout objectForKey:{a3), "objectForKey:", @"rect"}];

  [v3 CGRectValue];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGSize)targetScreenSize
{
  [-[NSDictionary objectForKey:](self->_origLayout objectForKey:{@"screen rect", "CGRectValue"}];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

@end