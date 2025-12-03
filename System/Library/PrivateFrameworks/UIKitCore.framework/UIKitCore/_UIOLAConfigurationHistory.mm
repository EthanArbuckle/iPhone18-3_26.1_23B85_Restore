@interface _UIOLAConfigurationHistory
- (double)customSpacingAfterItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCustomSpacing:(double)spacing afterItem:(id)item;
@end

@implementation _UIOLAConfigurationHistory

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UIOLAConfigurationHistory;
  v4 = [(_UILAConfigurationHistory *)&v8 copyWithZone:zone];
  [v4 setSpacing:self->_spacing];
  [v4 setDistribution:self->_distribution];
  [v4 setBaselineRelativeArrangement:self->_baselineRelativeArrangement];
  [v4 _setItemOrderingChanged:self->_itemOrderingChanged];
  [v4 setHasEstablishedOrderingValues:self->_hasEstablishedOrderingValues];
  [v4 setInOrderedArrangementUpdateSection:self->_inOrderedArrangementUpdateSection];
  [v4 setProportionalFillDenominator:self->_proportionalFillDenominator];
  [v4 _setItemFittingSizeChanged:self->_itemFittingSizeChanged];
  v5 = [(NSMapTable *)self->_customSpacings copy];
  v6 = v4[9];
  v4[9] = v5;

  return v4;
}

- (void)setCustomSpacing:(double)spacing afterItem:(id)item
{
  itemCopy = item;
  customSpacings = self->_customSpacings;
  if (!customSpacings)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    v8 = self->_customSpacings;
    self->_customSpacings = v7;

    customSpacings = self->_customSpacings;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:spacing];
  [(NSMapTable *)customSpacings setObject:v9 forKey:itemCopy];
}

- (double)customSpacingAfterItem:(id)item
{
  v3 = [(NSMapTable *)self->_customSpacings objectForKey:item];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 3.40282347e38;
  }

  return v6;
}

@end