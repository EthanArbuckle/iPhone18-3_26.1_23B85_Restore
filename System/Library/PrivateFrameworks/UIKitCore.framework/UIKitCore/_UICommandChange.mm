@interface _UICommandChange
- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
- (BOOL)isEqual:(id)a3;
- (_UICommandChange)initWithAnchor:(id)a3;
- (_UICommandChange)initWithCoder:(id)a3;
- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
@end

@implementation _UICommandChange

- (_UICommandChange)initWithAnchor:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UICommandChange;
  v5 = [(_UICommandChange *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    anchor = v5->_anchor;
    v5->_anchor = v6;
  }

  return v5;
}

- (_UICommandChange)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UICommandChange;
  v5 = [(_UICommandChange *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v9;
  }

  return v5;
}

- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"_UICommandDiffv1.m" lineNumber:51 description:@"Use concrete subclass"];
}

- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"_UICommandDiffv1.m" lineNumber:58 description:@"Use concrete subclass"];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self->_anchor isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end