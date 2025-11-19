@interface PUIColorStatistics
- (BOOL)isSimilarToColorStatistics:(id)a3;
- (BOOL)updateWithColorBoxes:(id)a3;
- (PLKColorBoxes)colorBoxes;
- (PUIColorStatistics)initWithCoder:(id)a3;
- (PUIColorStatistics)initWithColorBoxes:(id)a3;
- (UIColor)averageColor;
- (_UILegibilitySettings)legibilitySettings;
- (double)averageContrast;
- (double)averageSaturation;
- (double)contrastInRect:(CGRect)a3;
- (double)lumaInRect:(CGRect)a3;
- (double)saturationInRect:(CGRect)a3;
- (id)averageColorInRect:(CGRect)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initWithAverageColor:(void *)a1;
- (id)initWithAverageColor:(void *)a1 contrast:(uint64_t)a2;
- (void)_lock_initializeWithColorBoxes:(uint64_t)a1;
- (void)_notifyObserversDidUpdate;
- (void)addColorStatisticsObserver:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)removeColorStatisticsObserver:(id)a3;
- (void)resetWithColor:(id)a3;
@end

@implementation PUIColorStatistics

- (_UILegibilitySettings)legibilitySettings
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_UILegibilitySettingsProvider *)self->_lock_legibilityProvider settings];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (UIColor)averageColor
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_averageColor;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (PUIColorStatistics)initWithColorBoxes:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUIColorStatistics;
  v5 = [(PUIColorStatistics *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    [(PUIColorStatistics *)v5 _lock_initializeWithColorBoxes:v4];
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

- (BOOL)updateWithColorBoxes:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_lock_averageColor;
    v6 = self->_lock_averageColor;
    v7 = [v4 isEqualToColorBoxes:self->_lock_colorBoxes];
    if (([v4 isEqualToColorBoxes:self->_lock_colorBoxes] & 1) == 0)
    {
      [(PUIColorStatistics *)self updateWithColorBoxes:v4, &self->_lock_averageColor];
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

- (double)contrastInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  os_unfair_lock_lock(&self->_lock);
  [(PLKColorBoxes *)self->_lock_colorBoxes contrastInRect:x, y, width, height];
  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (double)saturationInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  os_unfair_lock_lock(&self->_lock);
  [(PLKColorBoxes *)self->_lock_colorBoxes saturationInRect:x, y, width, height];
  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (double)lumaInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  os_unfair_lock_lock(&self->_lock);
  [(PLKColorBoxes *)self->_lock_colorBoxes lumaInRect:x, y, width, height];
  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (id)averageColorInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(PLKColorBoxes *)self->_lock_colorBoxes averageColorInRect:x, y, width, height];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)isSimilarToColorStatistics:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PUIColorStatistics *)self averageColor];
  v6 = [v4 averageColor];
  [(PUIColorStatistics *)self averageContrast];
  v8 = v7;
  [v4 averageContrast];
  v10 = v9;
  [(PUIColorStatistics *)self averageSaturation];
  v12 = v11;
  [v4 averageSaturation];
  v14 = v13;

  v15 = [v5 _isSimilarToColor:v6 withinPercentage:0.00000011920929];
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

- (void)addColorStatisticsObserver:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_observers = self->_lock_observers;
  if (!lock_observers)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = self->_lock_observers;
    self->_lock_observers = v5;

    lock_observers = self->_lock_observers;
  }

  [(NSHashTable *)lock_observers addObject:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeColorStatisticsObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PLKColorBoxes *)self->_lock_colorBoxes copy];
  os_unfair_lock_unlock(&self->_lock);
  v6 = [[PUIColorStatistics allocWithZone:?], "initWithColorBoxes:", v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_averageColor = self->_lock_averageColor;
  lock_averageContrast = self->_lock_averageContrast;
  lock_averageSaturation = self->_lock_averageSaturation;
  v8 = self->_lock_colorBoxes;
  v10 = lock_averageColor;
  os_unfair_lock_unlock(&self->_lock);
  v9 = [(UIColor *)v10 BSColor];
  [v4 encodeObject:v9 forKey:@"averageColor"];

  [v4 encodeDouble:@"averageContrast" forKey:lock_averageContrast];
  [v4 encodeDouble:@"averageSaturation" forKey:lock_averageSaturation];
  [v4 encodeObject:v8 forKey:@"colorBoxes"];
}

- (PUIColorStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"averageColor"];
  [v4 decodeDoubleForKey:@"averageContrast"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"averageSaturation"];
  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v4;
    [v10 setClass:objc_opt_class() forClassName:@"PUIColorBoxes"];
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorBoxes"];
  v12 = [v5 UIColor];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  v15 = v14;

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
  v3 = [(PUIColorStatistics *)self averageColor];
  [(PUIColorStatistics *)self averageContrast];
  v5 = v4;
  [(PUIColorStatistics *)self averageSaturation];
  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@: %p color: %@; contrast: %.2f; saturation: %.2f>", v10, self, v3, v5, v7];;

  return v11;
}

- (id)initWithAverageColor:(void *)a1 contrast:(uint64_t)a2
{
  v2 = a1;
  if (a1)
  {
    v3 = [MEMORY[0x1E69C5410] colorBoxesForAverageColor:a2 contrast:?];
    v2 = [v2 initWithColorBoxes:v3];
  }

  return v2;
}

- (id)initWithAverageColor:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [MEMORY[0x1E69C5410] colorBoxesForAverageColor:a2 contrast:0.0];
    v2 = [v2 initWithColorBoxes:v3];
  }

  return v2;
}

- (void)_lock_initializeWithColorBoxes:(uint64_t)a1
{
  v10 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
    v4 = [v10 averageColor];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E69DC888] systemGrayColor];
    }

    v7 = *(a1 + 24);
    *(a1 + 24) = v6;

    [v10 contrast];
    *(a1 + 32) = v8;
    [v10 saturation];
    *(a1 + 40) = v9;
  }
}

- (void)resetWithColor:(id)a3
{
  v7 = [a3 colorWithAlphaComponent:1.0];
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
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = [*(a1 + 56) copy];
    os_unfair_lock_unlock((a1 + 8));
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

          [*(*(&v8 + 1) + 8 * v7++) colorStatisticsDidChange:{a1, v8}];
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
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;

    [*(a1 + 56) removeAllObjects];

    os_unfair_lock_unlock((a1 + 8));
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