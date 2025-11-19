@interface _UICalendarDateViewCellState
- (BOOL)isEqual:(id)a3;
- (_UICalendarDateViewCellState)initWithTraits:(id)a3;
- (unint64_t)hash;
@end

@implementation _UICalendarDateViewCellState

- (_UICalendarDateViewCellState)initWithTraits:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UICalendarDateViewCellState;
  v6 = [(_UICalendarDateViewCellState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traits, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[_UICalendarDateViewCellState highlightsToday](self, "highlightsToday"), v5 == [v4 highlightsToday]) && (v6 = -[_UICalendarDateViewCellState isOutOfRange](self, "isOutOfRange"), v6 == objc_msgSend(v4, "isOutOfRange")) && (v7 = -[_UICalendarDateViewCellState isOverhangMonth](self, "isOverhangMonth"), v7 == objc_msgSend(v4, "isOverhangMonth")) && (v8 = -[_UICalendarDateViewCellState isToday](self, "isToday"), v8 == objc_msgSend(v4, "isToday")) && (v9 = -[_UICalendarDateViewCellState isSelected](self, "isSelected"), v9 == objc_msgSend(v4, "isSelected")) && (v10 = -[_UICalendarDateViewCellState isHighlighted](self, "isHighlighted"), v10 == objc_msgSend(v4, "isHighlighted")))
  {
    v13 = [(_UICalendarDateViewCellState *)self forceEmphasizedFont];
    v11 = v13 ^ [v4 forceEmphasizedFont] ^ 1;
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

  v4 = [(_UICalendarDateViewCellState *)self isOutOfRange];
  v5 = 4;
  if (!v4)
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

  v8 = [(_UICalendarDateViewCellState *)self isToday];
  v9 = 16;
  if (!v8)
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

  v12 = [(_UICalendarDateViewCellState *)self isHighlighted];
  v13 = 64;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  v15 = [(_UICalendarDateViewCellState *)self forceEmphasizedFont];
  v16 = 128;
  if (!v15)
  {
    v16 = 0;
  }

  return v10 | v14 | v16;
}

@end