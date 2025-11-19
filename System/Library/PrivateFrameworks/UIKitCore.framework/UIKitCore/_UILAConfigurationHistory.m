@interface _UILAConfigurationHistory
- (_UILAConfigurationHistory)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_invalidateBaselineConstraint:(id)a3;
@end

@implementation _UILAConfigurationHistory

- (_UILAConfigurationHistory)init
{
  v8.receiver = self;
  v8.super_class = _UILAConfigurationHistory;
  v2 = [(_UILAConfigurationHistory *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    newlyHiddenItems = v2->_newlyHiddenItems;
    v2->_newlyHiddenItems = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    newlyUnhiddenItems = v2->_newlyUnhiddenItems;
    v2->_newlyUnhiddenItems = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setHasEstablishedBaseValues:self->_hasEstablishedBaseValues];
  [v4 setInLayoutArrangementUpdateSection:self->_inLayoutArrangementUpdateSection];
  [v4 setAxis:self->_axis];
  [v4 setLayoutFillsCanvas:self->_layoutFillsCanvas];
  [v4 setLayoutUsesCanvasMarginsWhenFilling:self->_layoutUsesCanvasMarginsWhenFilling];
  v5 = [(NSMutableSet *)self->_newlyHiddenItems mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSMutableSet *)self->_newlyUnhiddenItems mutableCopy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSMutableSet *)self->_invalidBaselineConstraints mutableCopy];
  v10 = v4[3];
  v4[3] = v9;

  return v4;
}

- (void)_invalidateBaselineConstraint:(id)a3
{
  v4 = a3;
  invalidBaselineConstraints = self->_invalidBaselineConstraints;
  v8 = v4;
  if (!invalidBaselineConstraints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_invalidBaselineConstraints;
    self->_invalidBaselineConstraints = v6;

    v4 = v8;
    invalidBaselineConstraints = self->_invalidBaselineConstraints;
  }

  [(NSMutableSet *)invalidBaselineConstraints addObject:v4];
}

@end