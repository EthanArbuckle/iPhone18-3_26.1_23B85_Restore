@interface PUIColorStatistics
- (BOOL)isSimilarToColorStatistics:(id)statistics;
- (BOOL)updateWithColorBoxes:(id)boxes;
- (PLKColorBoxes)colorBoxes;
- (PUIColorStatistics)initWithCoder:(id)coder;
- (PUIColorStatistics)initWithColorBoxes:(id)boxes;
- (UIColor)averageColor;
- (_UILegibilitySettings)legibilitySettings;
- (double)averageContrast;
- (double)averageSaturation;
- (double)contrastInRect:(CGRect)rect;
- (double)lumaInRect:(CGRect)rect;
- (double)saturationInRect:(CGRect)rect;
- (id)averageColorInRect:(CGRect)rect;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initWithAverageColor:(void *)color;
- (id)initWithAverageColor:(void *)color contrast:(uint64_t)contrast;
- (void)_lock_initializeWithColorBoxes:(uint64_t)boxes;
- (void)_notifyObserversDidUpdate;
- (void)addColorStatisticsObserver:(id)observer;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)removeColorStatisticsObserver:(id)observer;
- (void)resetWithColor:(id)color;
@end

@implementation PUIColorStatistics

- (_UILegibilitySettings)legibilitySettings
{
  os_unfair_lock_lock(&self->_lock);
  settings = [(_UILegibilitySettingsProvider *)self->_lock_legibilityProvider settings];
  os_unfair_lock_unlock(&self->_lock);

  return settings;
}

- (UIColor)averageColor
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_averageColor;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (PUIColorStatistics)initWithColorBoxes:(id)boxes
{
  boxesCopy = boxes;
  v10.receiver = self;
  v10.super_class = PUIColorStatistics;
  v5 = [(PUIColorStatistics *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    [(PUIColorStatistics *)v5 _lock_initializeWithColorBoxes:boxesCopy];
    v8 = objc_alloc_init(MEMORY[0x1E69DD5C0]);
    lock_legibilityProvider = v6->_lock_legibilityProvider;
    v6->_lock_legibilityProvider = v8;

    [(_UILegibilitySettingsProvider *)v6->_lock_legibilityProvider accumulateChangesToContentColor:v6->_lock_averageColor contrast:v6->_lock_averageContrast];
  }

  return v6;
}

- (PLKColorBoxes)colorBoxes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_colorBoxes;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)averageContrast
{
  os_unfair_lock_lock(&self->_lock);
  lock_averageContrast = self->_lock_averageContrast;
  os_unfair_lock_unlock(&self->_lock);
  return lock_averageContrast;
}

- (double)averageSaturation
{
  os_unfair_lock_lock(&self->_lock);
  lock_averageSaturation = self->_lock_averageSaturation;
  os_unfair_lock_unlock(&self->_lock);
  return lock_averageSaturation;
}

- (BOOL)updateWithColorBoxes:(id)boxes
{
  boxesCopy = boxes;
  if (boxesCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_lock_averageColor;
    v6 = self->_lock_averageColor;
    v7 = [boxesCopy isEqualToColorBoxes:self->_lock_colorBoxes];
    if (([boxesCopy isEqualToColorBoxes:self->_lock_colorBoxes] & 1) == 0)
    {
      [(PUIColorStatistics *)self updateWithColorBoxes:boxesCopy, &self->_lock_averageColor];
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      [(PUIColorStatistics *)self _notifyObserversDidUpdate];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (double)contrastInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  os_unfair_lock_lock(&self->_lock);
  [(PLKColorBoxes *)self->_lock_colorBoxes contrastInRect:x, y, width, height];
  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (double)saturationInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  os_unfair_lock_lock(&self->_lock);
  [(PLKColorBoxes *)self->_lock_colorBoxes saturationInRect:x, y, width, height];
  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (double)lumaInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  os_unfair_lock_lock(&self->_lock);
  [(PLKColorBoxes *)self->_lock_colorBoxes lumaInRect:x, y, width, height];
  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (id)averageColorInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  os_unfair_lock_lock(&self->_lock);
  height = [(PLKColorBoxes *)self->_lock_colorBoxes averageColorInRect:x, y, width, height];
  os_unfair_lock_unlock(&self->_lock);

  return height;
}

- (BOOL)isSimilarToColorStatistics:(id)statistics
{
  if (!statistics)
  {
    return 0;
  }

  statisticsCopy = statistics;
  averageColor = [(PUIColorStatistics *)self averageColor];
  averageColor2 = [statisticsCopy averageColor];
  [(PUIColorStatistics *)self averageContrast];
  v8 = v7;
  [statisticsCopy averageContrast];
  v10 = v9;
  [(PUIColorStatistics *)self averageSaturation];
  v12 = v11;
  [statisticsCopy averageSaturation];
  v14 = v13;

  v15 = [averageColor _isSimilarToColor:averageColor2 withinPercentage:0.00000011920929];
  v16 = vabdd_f64(v12, v14) <= 0.00000011920929;
  if (vabdd_f64(v8, v10) > 0.00000011920929)
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)addColorStatisticsObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  lock_observers = self->_lock_observers;
  if (!lock_observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = self->_lock_observers;
    self->_lock_observers = weakObjectsHashTable;

    lock_observers = self->_lock_observers;
  }

  [(NSHashTable *)lock_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeColorStatisticsObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PLKColorBoxes *)self->_lock_colorBoxes copy];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [[PUIColorStatistics allocWithZone:?], "initWithColorBoxes:", v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  lock_averageColor = self->_lock_averageColor;
  lock_averageContrast = self->_lock_averageContrast;
  lock_averageSaturation = self->_lock_averageSaturation;
  v8 = self->_lock_colorBoxes;
  v10 = lock_averageColor;
  os_unfair_lock_unlock(&self->_lock);
  bSColor = [(UIColor *)v10 BSColor];
  [coderCopy encodeObject:bSColor forKey:@"averageColor"];

  [coderCopy encodeDouble:@"averageContrast" forKey:lock_averageContrast];
  [coderCopy encodeDouble:@"averageSaturation" forKey:lock_averageSaturation];
  [coderCopy encodeObject:v8 forKey:@"colorBoxes"];
}

- (PUIColorStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageColor"];
  [coderCopy decodeDoubleForKey:@"averageContrast"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"averageSaturation"];
  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = coderCopy;
    [v10 setClass:objc_opt_class() forClassName:@"PUIColorBoxes"];
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorBoxes"];
  uIColor = [v5 UIColor];
  v13 = uIColor;
  if (uIColor)
  {
    systemGrayColor = uIColor;
  }

  else
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  v15 = systemGrayColor;

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = [MEMORY[0x1E69C5410] colorBoxesForAverageColor:v15 contrast:v7];
  }

  v17 = v16;
  v18 = [(PUIColorStatistics *)self initWithColorBoxes:v16];
  v19 = v18;
  if (v18)
  {
    os_unfair_lock_lock(&v18->_lock);
    objc_storeStrong(&v19->_lock_averageColor, v15);
    v19->_lock_averageContrast = v7;
    v19->_lock_averageSaturation = v9;
    objc_storeStrong(&v19->_lock_colorBoxes, v11);
    os_unfair_lock_unlock(&v19->_lock);
  }

  return v19;
}

- (id)description
{
  averageColor = [(PUIColorStatistics *)self averageColor];
  [(PUIColorStatistics *)self averageContrast];
  v5 = v4;
  [(PUIColorStatistics *)self averageSaturation];
  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@: %p color: %@; contrast: %.2f; saturation: %.2f>", v10, self, averageColor, v5, v7];;

  return v11;
}

- (id)initWithAverageColor:(void *)color contrast:(uint64_t)contrast
{
  colorCopy = color;
  if (color)
  {
    v3 = [MEMORY[0x1E69C5410] colorBoxesForAverageColor:contrast contrast:?];
    colorCopy = [colorCopy initWithColorBoxes:v3];
  }

  return colorCopy;
}

- (id)initWithAverageColor:(void *)color
{
  colorCopy = color;
  if (color)
  {
    v3 = [MEMORY[0x1E69C5410] colorBoxesForAverageColor:a2 contrast:0.0];
    colorCopy = [colorCopy initWithColorBoxes:v3];
  }

  return colorCopy;
}

- (void)_lock_initializeWithColorBoxes:(uint64_t)boxes
{
  v10 = a2;
  if (boxes)
  {
    objc_storeStrong((boxes + 48), a2);
    averageColor = [v10 averageColor];
    v5 = averageColor;
    if (averageColor)
    {
      systemGrayColor = averageColor;
    }

    else
    {
      systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    }

    v7 = *(boxes + 24);
    *(boxes + 24) = systemGrayColor;

    [v10 contrast];
    *(boxes + 32) = v8;
    [v10 saturation];
    *(boxes + 40) = v9;
  }
}

- (void)resetWithColor:(id)color
{
  v7 = [color colorWithAlphaComponent:1.0];
  v4 = [MEMORY[0x1E69C5410] colorBoxesForAverageColor:v7 contrast:0.0];
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_averageColor;
  [(PUIColorStatistics *)self _lock_initializeWithColorBoxes:v4];
  [(_UILegibilitySettingsProvider *)self->_lock_legibilityProvider clearContentColorAccumulator];
  [(_UILegibilitySettingsProvider *)self->_lock_legibilityProvider accumulateChangesToContentColor:self->_lock_averageColor contrast:self->_lock_averageContrast];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [(UIColor *)v5 _isSimilarToColor:v7 withinPercentage:0.00000011920929];

  if ((v6 & 1) == 0)
  {
    [(PUIColorStatistics *)self _notifyObserversDidUpdate];
  }
}

- (void)_notifyObserversDidUpdate
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = [*(self + 56) copy];
    os_unfair_lock_unlock((self + 8));
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) colorStatisticsDidChange:{self, v8}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)invalidate
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 48);
    *(self + 48) = 0;

    [*(self + 56) removeAllObjects];

    os_unfair_lock_unlock((self + 8));
  }
}

- (uint64_t)updateWithColorBoxes:(uint64_t *)a3 .cold.1(uint64_t a1, void *a2, uint64_t *a3)
{
  [(PUIColorStatistics *)a1 _lock_initializeWithColorBoxes:a2];
  [*(a1 + 16) clearContentColorAccumulator];
  v5 = *(a1 + 16);
  v6 = *a3;
  v7 = *(a1 + 32);

  return [v5 accumulateChangesToContentColor:v6 contrast:v7];
}

@end