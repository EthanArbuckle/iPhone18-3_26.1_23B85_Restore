@interface _UICalendarDateViewCellState
- (BOOL)isEqual:(id)equal;
- (_UICalendarDateViewCellState)initWithTraits:(id)traits;
- (unint64_t)hash;
@end

@implementation _UICalendarDateViewCellState

- (_UICalendarDateViewCellState)initWithTraits:(id)traits
{
  traitsCopy = traits;
  v9.receiver = self;
  v9.super_class = _UICalendarDateViewCellState;
  v6 = [(_UICalendarDateViewCellState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traits, traits);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[_UICalendarDateViewCellState highlightsToday](self, "highlightsToday"), v5 == [equalCopy highlightsToday]) && (v6 = -[_UICalendarDateViewCellState isOutOfRange](self, "isOutOfRange"), v6 == objc_msgSend(equalCopy, "isOutOfRange")) && (v7 = -[_UICalendarDateViewCellState isOverhangMonth](self, "isOverhangMonth"), v7 == objc_msgSend(equalCopy, "isOverhangMonth")) && (v8 = -[_UICalendarDateViewCellState isToday](self, "isToday"), v8 == objc_msgSend(equalCopy, "isToday")) && (v9 = -[_UICalendarDateViewCellState isSelected](self, "isSelected"), v9 == objc_msgSend(equalCopy, "isSelected")) && (v10 = -[_UICalendarDateViewCellState isHighlighted](self, "isHighlighted"), v10 == objc_msgSend(equalCopy, "isHighlighted")))
  {
    forceEmphasizedFont = [(_UICalendarDateViewCellState *)self forceEmphasizedFont];
    v11 = forceEmphasizedFont ^ [equalCopy forceEmphasizedFont] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  if ([(_UICalendarDateViewCellState *)self highlightsToday])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  isOutOfRange = [(_UICalendarDateViewCellState *)self isOutOfRange];
  v5 = 4;
  if (!isOutOfRange)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if ([(_UICalendarDateViewCellState *)self isOverhangMonth])
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  isToday = [(_UICalendarDateViewCellState *)self isToday];
  v9 = 16;
  if (!isToday)
  {
    v9 = 0;
  }

  v10 = v6 | v7 | v9;
  if ([(_UICalendarDateViewCellState *)self isSelected])
  {
    v11 = 32;
  }

  else
  {
    v11 = 0;
  }

  isHighlighted = [(_UICalendarDateViewCellState *)self isHighlighted];
  v13 = 64;
  if (!isHighlighted)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  forceEmphasizedFont = [(_UICalendarDateViewCellState *)self forceEmphasizedFont];
  v16 = 128;
  if (!forceEmphasizedFont)
  {
    v16 = 0;
  }

  return v10 | v14 | v16;
}

@end