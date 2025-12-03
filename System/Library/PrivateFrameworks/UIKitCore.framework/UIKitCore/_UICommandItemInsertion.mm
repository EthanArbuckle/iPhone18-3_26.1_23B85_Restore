@interface _UICommandItemInsertion
+ (id)insertionWithAnchor:(id)anchor fallbacks:(id)fallbacks insertsBefore:(id)before insertsAfter:(id)after;
- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
- (_UICommandItemInsertion)initWithAnchor:(id)anchor fallbacks:(id)fallbacks insertsBefore:(id)before insertsAfter:(id)after;
- (_UICommandItemInsertion)initWithCoder:(id)coder;
- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICommandItemInsertion

+ (id)insertionWithAnchor:(id)anchor fallbacks:(id)fallbacks insertsBefore:(id)before insertsAfter:(id)after
{
  afterCopy = after;
  beforeCopy = before;
  fallbacksCopy = fallbacks;
  anchorCopy = anchor;
  v13 = [[_UICommandItemInsertion alloc] initWithAnchor:anchorCopy fallbacks:fallbacksCopy insertsBefore:beforeCopy insertsAfter:afterCopy];

  return v13;
}

- (_UICommandItemInsertion)initWithAnchor:(id)anchor fallbacks:(id)fallbacks insertsBefore:(id)before insertsAfter:(id)after
{
  fallbacksCopy = fallbacks;
  beforeCopy = before;
  afterCopy = after;
  v21.receiver = self;
  v21.super_class = _UICommandItemInsertion;
  v13 = [(_UICommandChange *)&v21 initWithAnchor:anchor];
  if (v13)
  {
    v14 = [fallbacksCopy copy];
    fallbacks = v13->_fallbacks;
    v13->_fallbacks = v14;

    v16 = [beforeCopy copy];
    insertsBefore = v13->_insertsBefore;
    v13->_insertsBefore = v16;

    v18 = [afterCopy copy];
    insertsAfter = v13->_insertsAfter;
    v13->_insertsAfter = v18;
  }

  return v13;
}

- (_UICommandItemInsertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = _UICommandItemInsertion;
  v5 = [(_UICommandChange *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"fallbacks"];
    fallbacks = v5->_fallbacks;
    v5->_fallbacks = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"insertsBefore"];
    insertsBefore = v5->_insertsBefore;
    v5->_insertsBefore = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"insertsAfter"];
    insertsAfter = v5->_insertsAfter;
    v5->_insertsAfter = v21;
  }

  return v5;
}

- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  if (visit)
  {
    (*(visit + 2))(visit, self);
  }
}

- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  if (visit)
  {
    return (*(visit + 2))(visit, self);
  }

  else
  {
    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UICommandItemInsertion;
  coderCopy = coder;
  [(_UICommandChange *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fallbacks forKey:{@"fallbacks", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_insertsBefore forKey:@"insertsBefore"];
  [coderCopy encodeObject:self->_insertsAfter forKey:@"insertsAfter"];
}

@end