@interface _UICommandDiffv1
+ (id)diffWithChanges:(id)changes;
- (_UICommandDiffv1)initWithChanges:(id)changes;
- (_UICommandDiffv1)initWithCoder:(id)coder;
@end

@implementation _UICommandDiffv1

+ (id)diffWithChanges:(id)changes
{
  changesCopy = changes;
  v5 = [[self alloc] initWithChanges:changesCopy];

  return v5;
}

- (_UICommandDiffv1)initWithChanges:(id)changes
{
  changesCopy = changes;
  v9.receiver = self;
  v9.super_class = _UICommandDiffv1;
  v5 = [(_UICommandDiffv1 *)&v9 init];
  if (v5)
  {
    v6 = [changesCopy copy];
    changes = v5->_changes;
    v5->_changes = v6;
  }

  return v5;
}

- (_UICommandDiffv1)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _UICommandDiffv1;
  v5 = [(_UICommandDiffv1 *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"changes"];
    changes = v5->_changes;
    v5->_changes = v9;
  }

  return v5;
}

@end