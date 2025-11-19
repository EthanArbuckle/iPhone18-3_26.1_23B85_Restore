@interface _UICommandMenuInsertion
+ (id)insertionWithAnchor:(id)a3 fallbacks:(id)a4 insertsAtStart:(id)a5 insertsAtEnd:(id)a6 insertsBefore:(id)a7 insertsAfter:(id)a8;
- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
- (_UICommandMenuInsertion)initWithAnchor:(id)a3 fallbacks:(id)a4 insertsAtStart:(id)a5 insertsAtEnd:(id)a6 insertsBefore:(id)a7 insertsAfter:(id)a8;
- (_UICommandMenuInsertion)initWithCoder:(id)a3;
- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICommandMenuInsertion

+ (id)insertionWithAnchor:(id)a3 fallbacks:(id)a4 insertsAtStart:(id)a5 insertsAtEnd:(id)a6 insertsBefore:(id)a7 insertsAfter:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[_UICommandMenuInsertion alloc] initWithAnchor:v18 fallbacks:v17 insertsAtStart:v16 insertsAtEnd:v15 insertsBefore:v14 insertsAfter:v13];

  return v19;
}

- (_UICommandMenuInsertion)initWithAnchor:(id)a3 fallbacks:(id)a4 insertsAtStart:(id)a5 insertsAtEnd:(id)a6 insertsBefore:(id)a7 insertsAfter:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = _UICommandMenuInsertion;
  v19 = [(_UICommandChange *)&v31 initWithAnchor:a3];
  if (v19)
  {
    v20 = [v14 copy];
    fallbacks = v19->_fallbacks;
    v19->_fallbacks = v20;

    v22 = [v15 copy];
    insertsAtStart = v19->_insertsAtStart;
    v19->_insertsAtStart = v22;

    v24 = [v16 copy];
    insertsAtEnd = v19->_insertsAtEnd;
    v19->_insertsAtEnd = v24;

    v26 = [v17 copy];
    insertsBefore = v19->_insertsBefore;
    v19->_insertsBefore = v26;

    v28 = [v18 copy];
    insertsAfter = v19->_insertsAfter;
    v19->_insertsAfter = v28;
  }

  return v19;
}

- (_UICommandMenuInsertion)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = _UICommandMenuInsertion;
  v5 = [(_UICommandChange *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"fallbacks"];
    fallbacks = v5->_fallbacks;
    v5->_fallbacks = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"insertsAtStart"];
    insertsAtStart = v5->_insertsAtStart;
    v5->_insertsAtStart = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"insertsAtEnd"];
    insertsAtEnd = v5->_insertsAtEnd;
    v5->_insertsAtEnd = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"insertsBefore"];
    insertsBefore = v5->_insertsBefore;
    v5->_insertsBefore = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v29 setWithObjects:{v30, v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"insertsAfter"];
    insertsAfter = v5->_insertsAfter;
    v5->_insertsAfter = v33;
  }

  return v5;
}

- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  if (a5)
  {
    (*(a5 + 2))(a5, self);
  }
}

- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  if (a5)
  {
    return (*(a5 + 2))(a5, self);
  }

  else
  {
    return 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UICommandMenuInsertion;
  v4 = a3;
  [(_UICommandChange *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fallbacks forKey:{@"fallbacks", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_insertsAtStart forKey:@"insertsAtStart"];
  [v4 encodeObject:self->_insertsAtEnd forKey:@"insertsAtEnd"];
  [v4 encodeObject:self->_insertsBefore forKey:@"insertsBefore"];
  [v4 encodeObject:self->_insertsAfter forKey:@"insertsAfter"];
}

@end