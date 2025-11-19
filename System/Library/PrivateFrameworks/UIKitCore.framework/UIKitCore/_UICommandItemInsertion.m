@interface _UICommandItemInsertion
+ (id)insertionWithAnchor:(id)a3 fallbacks:(id)a4 insertsBefore:(id)a5 insertsAfter:(id)a6;
- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
- (_UICommandItemInsertion)initWithAnchor:(id)a3 fallbacks:(id)a4 insertsBefore:(id)a5 insertsAfter:(id)a6;
- (_UICommandItemInsertion)initWithCoder:(id)a3;
- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICommandItemInsertion

+ (id)insertionWithAnchor:(id)a3 fallbacks:(id)a4 insertsBefore:(id)a5 insertsAfter:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[_UICommandItemInsertion alloc] initWithAnchor:v12 fallbacks:v11 insertsBefore:v10 insertsAfter:v9];

  return v13;
}

- (_UICommandItemInsertion)initWithAnchor:(id)a3 fallbacks:(id)a4 insertsBefore:(id)a5 insertsAfter:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = _UICommandItemInsertion;
  v13 = [(_UICommandChange *)&v21 initWithAnchor:a3];
  if (v13)
  {
    v14 = [v10 copy];
    fallbacks = v13->_fallbacks;
    v13->_fallbacks = v14;

    v16 = [v11 copy];
    insertsBefore = v13->_insertsBefore;
    v13->_insertsBefore = v16;

    v18 = [v12 copy];
    insertsAfter = v13->_insertsAfter;
    v13->_insertsAfter = v18;
  }

  return v13;
}

- (_UICommandItemInsertion)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _UICommandItemInsertion;
  v5 = [(_UICommandChange *)&v24 initWithCoder:v4];
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
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"insertsBefore"];
    insertsBefore = v5->_insertsBefore;
    v5->_insertsBefore = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"insertsAfter"];
    insertsAfter = v5->_insertsAfter;
    v5->_insertsAfter = v21;
  }

  return v5;
}

- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  if (a3)
  {
    (*(a3 + 2))(a3, self);
  }
}

- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  if (a3)
  {
    return (*(a3 + 2))(a3, self);
  }

  else
  {
    return 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UICommandItemInsertion;
  v4 = a3;
  [(_UICommandChange *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fallbacks forKey:{@"fallbacks", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_insertsBefore forKey:@"insertsBefore"];
  [v4 encodeObject:self->_insertsAfter forKey:@"insertsAfter"];
}

@end