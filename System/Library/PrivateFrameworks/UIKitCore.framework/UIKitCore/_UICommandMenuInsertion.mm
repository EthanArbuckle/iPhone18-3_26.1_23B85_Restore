@interface _UICommandMenuInsertion
+ (id)insertionWithAnchor:(id)anchor fallbacks:(id)fallbacks insertsAtStart:(id)start insertsAtEnd:(id)end insertsBefore:(id)before insertsAfter:(id)after;
- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
- (_UICommandMenuInsertion)initWithAnchor:(id)anchor fallbacks:(id)fallbacks insertsAtStart:(id)start insertsAtEnd:(id)end insertsBefore:(id)before insertsAfter:(id)after;
- (_UICommandMenuInsertion)initWithCoder:(id)coder;
- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICommandMenuInsertion

+ (id)insertionWithAnchor:(id)anchor fallbacks:(id)fallbacks insertsAtStart:(id)start insertsAtEnd:(id)end insertsBefore:(id)before insertsAfter:(id)after
{
  afterCopy = after;
  beforeCopy = before;
  endCopy = end;
  startCopy = start;
  fallbacksCopy = fallbacks;
  anchorCopy = anchor;
  v19 = [[_UICommandMenuInsertion alloc] initWithAnchor:anchorCopy fallbacks:fallbacksCopy insertsAtStart:startCopy insertsAtEnd:endCopy insertsBefore:beforeCopy insertsAfter:afterCopy];

  return v19;
}

- (_UICommandMenuInsertion)initWithAnchor:(id)anchor fallbacks:(id)fallbacks insertsAtStart:(id)start insertsAtEnd:(id)end insertsBefore:(id)before insertsAfter:(id)after
{
  fallbacksCopy = fallbacks;
  startCopy = start;
  endCopy = end;
  beforeCopy = before;
  afterCopy = after;
  v31.receiver = self;
  v31.super_class = _UICommandMenuInsertion;
  v19 = [(_UICommandChange *)&v31 initWithAnchor:anchor];
  if (v19)
  {
    v20 = [fallbacksCopy copy];
    fallbacks = v19->_fallbacks;
    v19->_fallbacks = v20;

    v22 = [startCopy copy];
    insertsAtStart = v19->_insertsAtStart;
    v19->_insertsAtStart = v22;

    v24 = [endCopy copy];
    insertsAtEnd = v19->_insertsAtEnd;
    v19->_insertsAtEnd = v24;

    v26 = [beforeCopy copy];
    insertsBefore = v19->_insertsBefore;
    v19->_insertsBefore = v26;

    v28 = [afterCopy copy];
    insertsAfter = v19->_insertsAfter;
    v19->_insertsAfter = v28;
  }

  return v19;
}

- (_UICommandMenuInsertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = _UICommandMenuInsertion;
  v5 = [(_UICommandChange *)&v36 initWithCoder:coderCopy];
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"insertsAtStart"];
    insertsAtStart = v5->_insertsAtStart;
    v5->_insertsAtStart = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"insertsAtEnd"];
    insertsAtEnd = v5->_insertsAtEnd;
    v5->_insertsAtEnd = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"insertsBefore"];
    insertsBefore = v5->_insertsBefore;
    v5->_insertsBefore = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v29 setWithObjects:{v30, v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"insertsAfter"];
    insertsAfter = v5->_insertsAfter;
    v5->_insertsAfter = v33;
  }

  return v5;
}

- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  if (insertionVisit)
  {
    (*(insertionVisit + 2))(insertionVisit, self);
  }
}

- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  if (insertionVisit)
  {
    return (*(insertionVisit + 2))(insertionVisit, self);
  }

  else
  {
    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UICommandMenuInsertion;
  coderCopy = coder;
  [(_UICommandChange *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fallbacks forKey:{@"fallbacks", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_insertsAtStart forKey:@"insertsAtStart"];
  [coderCopy encodeObject:self->_insertsAtEnd forKey:@"insertsAtEnd"];
  [coderCopy encodeObject:self->_insertsBefore forKey:@"insertsBefore"];
  [coderCopy encodeObject:self->_insertsAfter forKey:@"insertsAfter"];
}

@end