@interface _UICommandDiffv1
+ (id)diffWithChanges:(id)a3;
- (_UICommandDiffv1)initWithChanges:(id)a3;
- (_UICommandDiffv1)initWithCoder:(id)a3;
@end

@implementation _UICommandDiffv1

+ (id)diffWithChanges:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithChanges:v4];

  return v5;
}

- (_UICommandDiffv1)initWithChanges:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UICommandDiffv1;
  v5 = [(_UICommandDiffv1 *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    changes = v5->_changes;
    v5->_changes = v6;
  }

  return v5;
}

- (_UICommandDiffv1)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UICommandDiffv1;
  v5 = [(_UICommandDiffv1 *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"changes"];
    changes = v5->_changes;
    v5->_changes = v9;
  }

  return v5;
}

@end