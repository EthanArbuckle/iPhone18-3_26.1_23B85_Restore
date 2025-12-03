@interface _UICommandChange
- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
- (BOOL)isEqual:(id)equal;
- (_UICommandChange)initWithAnchor:(id)anchor;
- (_UICommandChange)initWithCoder:(id)coder;
- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
@end

@implementation _UICommandChange

- (_UICommandChange)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v9.receiver = self;
  v9.super_class = _UICommandChange;
  v5 = [(_UICommandChange *)&v9 init];
  if (v5)
  {
    v6 = [anchorCopy copy];
    anchor = v5->_anchor;
    v5->_anchor = v6;
  }

  return v5;
}

- (_UICommandChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _UICommandChange;
  v5 = [(_UICommandChange *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v9;
  }

  return v5;
}

- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UICommandDiffv1.m" lineNumber:51 description:@"Use concrete subclass"];
}

- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UICommandDiffv1.m" lineNumber:58 description:@"Use concrete subclass"];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self->_anchor isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end